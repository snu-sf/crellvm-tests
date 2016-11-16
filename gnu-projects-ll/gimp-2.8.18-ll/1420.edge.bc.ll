; ModuleID = './plug-ins/common/edge.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.EdgeVals = type { double, i32, i32 }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Edge detection amount\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"wrapmode\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Edge detection behavior { WRAP (1), SMEAR (2), BLACK (3) }\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"edgemode\00", align 1
@.str.11 = private unnamed_addr constant [110 x i8] c"Edge detection algorithm { SOBEL (0), PREWITT (1), GRADIENT (2), ROBERTS (3), DIFFERENTIAL (4), LAPLACE (5) }\00", align 1
@.str.12 = private unnamed_addr constant [271 x i8] c"Perform edge detection on the contents of the specified drawable.AMOUNT is an arbitrary constant, WRAPMODE is like displace plug-in (useful for tilable image). EDGEMODE sets the kind of matrix transform applied to the pixels, SOBEL was the method used in older versions.\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"plug-in-edge\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Several simple methods for detecting edges\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Peter Mattis & (ported to 1.0 by) Eiichi Takamori\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Peter Mattis\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"_Edge...\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"<Image>/Filters/Edge-Detect\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@evals = internal global %struct.EdgeVals { double 2.000000e+00, i32 0, i32 2 }, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"Edge detection\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Edge Detection\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"gimp-edge\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Sobel\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Prewitt compass\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Roberts\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Differential\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Laplace\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"_Algorithm:\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"A_mount:\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"_Wrap\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"_Smear\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"_Black\00", align 1
@sobel.v_kernel = internal constant [9 x i32] [i32 -1, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 0, i32 1], align 16
@sobel.h_kernel = internal constant [9 x i32] [i32 -1, i32 -2, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 1], align 16
@gradient.v_kernel = internal constant [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 -4, i32 0, i32 0, i32 0], align 16
@gradient.h_kernel = internal constant [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 -4, i32 0, i32 0, i32 4, i32 0], align 16
@roberts.v_kernel = internal constant [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 -4], align 16
@roberts.h_kernel = internal constant [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 -4, i32 0], align 16
@differential.v_kernel = internal constant [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2, i32 -2, i32 0, i32 2, i32 -2], align 16
@differential.h_kernel = internal constant [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 -2, i32 -2, i32 0, i32 2, i32 2], align 16
@laplace.kernel = internal constant [9 x i32] [i32 1, i32 1, i32 1, i32 1, i32 -8, i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %help_string = alloca i8*, align 8
  store i8* getelementptr inbounds ([271 x i8], [271 x i8]* @.str.12, i32 0, i32 0), i8** %help_string, align 8
  %0 = load i8*, i8** %help_string, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (%struct.EdgeVals* @evals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @edge_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 5
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %sw.bb.9
  %10 = load i32, i32* %nparams.addr, align 4
  %cmp10 = icmp ne i32 %10, 6
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true, %sw.bb.9
  %11 = load i32, i32* %status, align 4
  %cmp13 = icmp eq i32 %11, 3
  br i1 %cmp13, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.end.12
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data16 to double*
  %13 = load double, double* %d_float, align 8
  store double %13, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 4
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  %16 = load i32, i32* %nparams.addr, align 4
  %cmp20 = icmp sgt i32 %16, 5
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 5
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int3223 = bitcast %union._GimpParamData* %data22 to i32*
  %18 = load i32, i32* %d_int3223, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 1), align 4
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end, %if.end.12
  br label %sw.epilog

sw.bb.25:                                         ; preds = %do.end
  %call26 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (%struct.EdgeVals* @evals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.25, %if.end.24, %if.end
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id, align 4
  %call27 = call i32 @gimp_drawable_is_rgb(i32 %20)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id29, align 4
  %call30 = call i32 @gimp_drawable_is_gray(i32 %22)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %lor.lhs.false, %sw.epilog
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #5
  %call34 = call i32 @gimp_progress_init(i8* %call33)
  call void @gimp_tile_cache_ntiles(i64 48)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @edge(%struct._GimpDrawable* %23)
  %24 = load i32, i32* %run_mode, align 4
  %cmp35 = icmp ne i32 %24, 1
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.32
  %call37 = call i32 @gimp_displays_flush()
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.32
  %25 = load i32, i32* %run_mode, align 4
  %cmp39 = icmp eq i32 %25, 0
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.38
  %call41 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (%struct.EdgeVals* @evals to i8*), i32 16)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.38
  br label %if.end.43

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.end.42
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %27)
  br label %return

return:                                           ; preds = %if.end.43, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @edge_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %group = alloca %struct._GSList*, align 8
  %run = alloca i32, align 4
  %use_wrap = alloca i32, align 4
  %use_smear = alloca i32, align 4
  %use_black = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %use_wrap, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  %cmp1 = icmp eq i32 %1, 2
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* %use_smear, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  %cmp3 = icmp eq i32 %2, 3
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %use_black, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #5
  %call5 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -6, i32 -1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %8)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %main_vbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  %call15 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %14)
  %15 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call16)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 1, i32 1, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %19, i32* null)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %preview, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 1, i32 1, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @edge_preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call22 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %table, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %29, i32 6)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)) #5
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)) #5
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #5
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)) #5
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #5
  %call35 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call29, i32 0, i8* %call30, i32 1, i8* %call31, i32 2, i8* %call32, i32 3, i8* %call33, i32 4, i8* %call34, i32 5, i8* null)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %combo, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_int_combo_box_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call36)
  %40 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpIntComboBox*
  %41 = load i32, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 1), align 4
  %call38 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %40, i32 %41, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 1) to i8*))
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call39)
  %44 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0)) #5
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call42 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %44, i32 0, i32 0, i8* %call41, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %45, i32 2, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 2)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call44)
  %52 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)) #5
  %53 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %call47 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %52, i32 0, i32 1, i8* %call46, i32 100, i32 0, double %53, double 1.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 0, double 1.000000e+00, double 0x47EFFFFFE0000000, i8* null, i8* null)
  store %struct._GtkObject* %call47, %struct._GtkObject** %scale_data, align 8
  %54 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %55 = bitcast %struct._GtkObject* %54 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.EdgeVals* @evals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 2)
  %call50 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %hbox, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call51)
  %62 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %62, %struct._GtkWidget* %63, i32 0, i32 3, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #5
  %call54 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %65, i8* %call53)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %toggle, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_radio_button_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call55)
  %68 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkRadioButton*
  %call57 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %68)
  store %struct._GSList* %call57, %struct._GSList** %group, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #4
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call58)
  %71 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 1, i32 1, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_toggle_button_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call60)
  %75 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkToggleButton*
  %76 = load i32, i32* %use_wrap, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %75, i32 %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = bitcast i32* %use_wrap to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 2)
  %85 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)) #5
  %call65 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %85, i8* %call64)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %toggle, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_radio_button_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call66)
  %88 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkRadioButton*
  %call68 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %88)
  store %struct._GSList* %call68, %struct._GSList** %group, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_box_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call69)
  %91 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkBox*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %91, %struct._GtkWidget* %92, i32 1, i32 1, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_toggle_button_get_type() #4
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call71)
  %95 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkToggleButton*
  %96 = load i32, i32* %use_smear, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %95, i32 %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %99 = bitcast %struct._GtkWidget* %98 to i8*
  %100 = bitcast i32* %use_smear to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %100, void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %102 = bitcast %struct._GtkWidget* %101 to i8*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %104, void (i8*, %struct._GClosure*)* null, i32 2)
  %105 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0)) #5
  %call76 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %105, i8* %call75)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %toggle, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_radio_button_get_type() #4
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call77)
  %108 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkRadioButton*
  %call79 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %108)
  store %struct._GSList* %call79, %struct._GSList** %group, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #4
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call80)
  %111 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %111, %struct._GtkWidget* %112, i32 1, i32 1, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_toggle_button_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call82)
  %115 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkToggleButton*
  %116 = load i32, i32* %use_black, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %115, i32 %116)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %120 = bitcast i32* %use_black to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 0)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %124, void (i8*, %struct._GClosure*)* null, i32 2)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_dialog_get_type() #4
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call86)
  %128 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpDialog*
  %call88 = call i32 @gimp_dialog_run(%struct._GimpDialog* %128)
  %cmp89 = icmp eq i32 %call88, -5
  %conv90 = zext i1 %cmp89 to i32
  store i32 %conv90, i32* %run, align 4
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %129)
  %130 = load i32, i32* %use_wrap, align 4
  %tobool = icmp ne i32 %130, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  br label %if.end.97

if.else:                                          ; preds = %entry
  %131 = load i32, i32* %use_smear, align 4
  %tobool91 = icmp ne i32 %131, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.else
  store i32 2, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  br label %if.end.96

if.else.93:                                       ; preds = %if.else
  %132 = load i32, i32* %use_black, align 4
  %tobool94 = icmp ne i32 %132, 0
  br i1 %tobool94, label %if.then.95, label %if.end

if.then.95:                                       ; preds = %if.else.93
  store i32 3, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then.95, %if.else.93
  br label %if.end.96

if.end.96:                                        ; preds = %if.end, %if.then.92
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then
  %133 = load i32, i32* %run, align 4
  ret i32 %133
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @edge(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %srcrow = alloca i8*, align 8
  %src = alloca i8*, align 8
  %destrow = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %pix00 = alloca [4 x i8], align 1
  %pix01 = alloca [4 x i8], align 1
  %pix02 = alloca [4 x i8], align 1
  %pix10 = alloca [4 x i8], align 1
  %pix11 = alloca [4 x i8], align 1
  %pix12 = alloca [4 x i8], align 1
  %pix20 = alloca [4 x i8], align 1
  %pix21 = alloca [4 x i8], align 1
  %pix22 = alloca [4 x i8], align 1
  %alpha = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %chan = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %cur_progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %per_progress = alloca double, align 8
  %kernel = alloca [9 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %kernel97 = alloca [9 x i8], align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %cmp = fcmp olt double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %1, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %2 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 2), align 4
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %2, i32 %3)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_mask_bounds(i32 %5, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id2, align 4
  %call3 = call i32 @gimp_drawable_bpp(i32 %7)
  store i32 %call3, i32* %alpha, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_has_alpha(i32 %9)
  store i32 %call5, i32* %has_alpha, align 4
  %10 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %alpha, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %alpha, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 0, i32* %cur_progress, align 4
  store double 0.000000e+00, double* %per_progress, align 8
  %12 = load i32, i32* %x2, align 4
  %13 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* %y2, align 4
  %15 = load i32, i32* %y1, align 4
  %sub8 = sub nsw i32 %14, %15
  %mul = mul nsw i32 %sub, %sub8
  %div = sdiv i32 %mul, 100
  store i32 %div, i32* %max_progress, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = load i32, i32* %x1, align 4
  %18 = load i32, i32* %y1, align 4
  %19 = load i32, i32* %x2, align 4
  %20 = load i32, i32* %x1, align 4
  %sub9 = sub nsw i32 %19, %20
  %21 = load i32, i32* %y2, align 4
  %22 = load i32, i32* %y1, align 4
  %sub10 = sub nsw i32 %21, %22
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %16, i32 %17, i32 %18, i32 %sub9, i32 %sub10, i32 0, i32 0)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = load i32, i32* %x1, align 4
  %25 = load i32, i32* %y1, align 4
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %x1, align 4
  %sub11 = sub nsw i32 %26, %27
  %28 = load i32, i32* %y2, align 4
  %29 = load i32, i32* %y1, align 4
  %sub12 = sub nsw i32 %28, %29
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %23, i32 %24, i32 %25, i32 %sub11, i32 %sub12, i32 1, i32 1)
  %call13 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call13, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.168, %if.end.7
  %30 = load i8*, i8** %pr, align 8
  %cmp14 = icmp ne i8* %30, null
  br i1 %cmp14, label %for.body, label %for.end.170

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %31 = load i8*, i8** %data, align 8
  store i8* %31, i8** %srcrow, align 8
  %data15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %32 = load i8*, i8** %data15, align 8
  store i8* %32, i8** %destrow, align 8
  %y16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %33 = load i32, i32* %y16, align 4
  store i32 %33, i32* %y, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.148, %for.body
  %34 = load i32, i32* %y, align 4
  %y18 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %35 = load i32, i32* %y18, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %36 = load i32, i32* %h, align 4
  %add = add nsw i32 %35, %36
  %cmp19 = icmp slt i32 %34, %add
  br i1 %cmp19, label %for.body.20, label %for.end.156

for.body.20:                                      ; preds = %for.cond.17
  %37 = load i8*, i8** %srcrow, align 8
  store i8* %37, i8** %src, align 8
  %38 = load i8*, i8** %destrow, align 8
  store i8* %38, i8** %dest, align 8
  %x21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %39 = load i32, i32* %x21, align 4
  store i32 %39, i32* %x, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.141, %for.body.20
  %40 = load i32, i32* %x, align 4
  %x23 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %41 = load i32, i32* %x23, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %42 = load i32, i32* %w, align 4
  %add24 = add nsw i32 %41, %42
  %cmp25 = icmp slt i32 %40, %add24
  br i1 %cmp25, label %for.body.26, label %for.end.147

for.body.26:                                      ; preds = %for.cond.22
  %x27 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %43 = load i32, i32* %x27, align 4
  %44 = load i32, i32* %x, align 4
  %cmp28 = icmp slt i32 %43, %44
  br i1 %cmp28, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.26
  %45 = load i32, i32* %x, align 4
  %x29 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %46 = load i32, i32* %x29, align 4
  %w30 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %47 = load i32, i32* %w30, align 4
  %add31 = add nsw i32 %46, %47
  %sub32 = sub nsw i32 %add31, 2
  %cmp33 = icmp slt i32 %45, %sub32
  br i1 %cmp33, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %y35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %48 = load i32, i32* %y35, align 4
  %49 = load i32, i32* %y, align 4
  %cmp36 = icmp slt i32 %48, %49
  br i1 %cmp36, label %land.lhs.true.37, label %if.else

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %50 = load i32, i32* %y, align 4
  %y38 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %51 = load i32, i32* %y38, align 4
  %h39 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %52 = load i32, i32* %h39, align 4
  %add40 = add nsw i32 %51, %52
  %sub41 = sub nsw i32 %add40, 2
  %cmp42 = icmp slt i32 %50, %sub41
  br i1 %cmp42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %land.lhs.true.37
  store i32 0, i32* %chan, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.69, %if.then.43
  %53 = load i32, i32* %chan, align 4
  %54 = load i32, i32* %alpha, align 4
  %cmp45 = icmp slt i32 %53, %54
  br i1 %cmp45, label %for.body.46, label %for.end.71

for.body.46:                                      ; preds = %for.cond.44
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.63, %for.body.46
  %55 = load i32, i32* %i, align 4
  %cmp48 = icmp slt i32 %55, 3
  br i1 %cmp48, label %for.body.49, label %for.end.65

for.body.49:                                      ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc, %for.body.49
  %56 = load i32, i32* %j, align 4
  %cmp51 = icmp slt i32 %56, 3
  br i1 %cmp51, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.50
  %57 = load i32, i32* %j, align 4
  %sub53 = sub nsw i32 %57, 1
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %58 = load i32, i32* %rowstride, align 4
  %mul54 = mul nsw i32 %sub53, %58
  %59 = load i32, i32* %i, align 4
  %sub55 = sub nsw i32 %59, 1
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %60 = load i32, i32* %bpp, align 4
  %mul56 = mul nsw i32 %sub55, %60
  %add57 = add nsw i32 %mul54, %mul56
  %61 = load i32, i32* %chan, align 4
  %add58 = add nsw i32 %add57, %61
  %idxprom = sext i32 %add58 to i64
  %62 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %62, i64 %idxprom
  %63 = load i8, i8* %arrayidx, align 1
  %64 = load i32, i32* %i, align 4
  %mul59 = mul nsw i32 3, %64
  %65 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %mul59, %65
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 %idxprom61
  store i8 %63, i8* %arrayidx62, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.52
  %66 = load i32, i32* %j, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.50

for.end:                                          ; preds = %for.cond.50
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end
  %67 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %67, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.47

for.end.65:                                       ; preds = %for.cond.47
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i32 0
  %call66 = call i32 @edge_detect(i8* %arraydecay)
  %conv = trunc i32 %call66 to i8
  %68 = load i32, i32* %chan, align 4
  %idxprom67 = sext i32 %68 to i64
  %69 = load i8*, i8** %dest, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 %idxprom67
  store i8 %conv, i8* %arrayidx68, align 1
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.65
  %70 = load i32, i32* %chan, align 4
  %inc70 = add nsw i32 %70, 1
  store i32 %inc70, i32* %chan, align 4
  br label %for.cond.44

for.end.71:                                       ; preds = %for.cond.44
  br label %if.end.133

if.else:                                          ; preds = %land.lhs.true.37, %land.lhs.true.34, %land.lhs.true, %for.body.26
  %71 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %72 = load i32, i32* %x, align 4
  %sub72 = sub nsw i32 %72, 1
  %73 = load i32, i32* %y, align 4
  %sub73 = sub nsw i32 %73, 1
  %arraydecay74 = getelementptr inbounds [4 x i8], [4 x i8]* %pix00, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %71, i32 %sub72, i32 %sub73, i8* %arraydecay74)
  %74 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %y, align 4
  %sub75 = sub nsw i32 %76, 1
  %arraydecay76 = getelementptr inbounds [4 x i8], [4 x i8]* %pix10, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %74, i32 %75, i32 %sub75, i8* %arraydecay76)
  %77 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %78 = load i32, i32* %x, align 4
  %add77 = add nsw i32 %78, 1
  %79 = load i32, i32* %y, align 4
  %sub78 = sub nsw i32 %79, 1
  %arraydecay79 = getelementptr inbounds [4 x i8], [4 x i8]* %pix20, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %77, i32 %add77, i32 %sub78, i8* %arraydecay79)
  %80 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %81 = load i32, i32* %x, align 4
  %sub80 = sub nsw i32 %81, 1
  %82 = load i32, i32* %y, align 4
  %arraydecay81 = getelementptr inbounds [4 x i8], [4 x i8]* %pix01, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %80, i32 %sub80, i32 %82, i8* %arraydecay81)
  %83 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %84 = load i32, i32* %x, align 4
  %85 = load i32, i32* %y, align 4
  %arraydecay82 = getelementptr inbounds [4 x i8], [4 x i8]* %pix11, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %83, i32 %84, i32 %85, i8* %arraydecay82)
  %86 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %87 = load i32, i32* %x, align 4
  %add83 = add nsw i32 %87, 1
  %88 = load i32, i32* %y, align 4
  %arraydecay84 = getelementptr inbounds [4 x i8], [4 x i8]* %pix21, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %86, i32 %add83, i32 %88, i8* %arraydecay84)
  %89 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %90 = load i32, i32* %x, align 4
  %sub85 = sub nsw i32 %90, 1
  %91 = load i32, i32* %y, align 4
  %add86 = add nsw i32 %91, 1
  %arraydecay87 = getelementptr inbounds [4 x i8], [4 x i8]* %pix02, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %89, i32 %sub85, i32 %add86, i8* %arraydecay87)
  %92 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %93 = load i32, i32* %x, align 4
  %94 = load i32, i32* %y, align 4
  %add88 = add nsw i32 %94, 1
  %arraydecay89 = getelementptr inbounds [4 x i8], [4 x i8]* %pix12, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %92, i32 %93, i32 %add88, i8* %arraydecay89)
  %95 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %96 = load i32, i32* %x, align 4
  %add90 = add nsw i32 %96, 1
  %97 = load i32, i32* %y, align 4
  %add91 = add nsw i32 %97, 1
  %arraydecay92 = getelementptr inbounds [4 x i8], [4 x i8]* %pix22, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %95, i32 %add90, i32 %add91, i8* %arraydecay92)
  store i32 0, i32* %chan, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.130, %if.else
  %98 = load i32, i32* %chan, align 4
  %99 = load i32, i32* %alpha, align 4
  %cmp94 = icmp slt i32 %98, %99
  br i1 %cmp94, label %for.body.96, label %for.end.132

for.body.96:                                      ; preds = %for.cond.93
  %100 = load i32, i32* %chan, align 4
  %idxprom98 = sext i32 %100 to i64
  %arrayidx99 = getelementptr inbounds [4 x i8], [4 x i8]* %pix00, i32 0, i64 %idxprom98
  %101 = load i8, i8* %arrayidx99, align 1
  %arrayidx100 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 0
  store i8 %101, i8* %arrayidx100, align 1
  %102 = load i32, i32* %chan, align 4
  %idxprom101 = sext i32 %102 to i64
  %arrayidx102 = getelementptr inbounds [4 x i8], [4 x i8]* %pix01, i32 0, i64 %idxprom101
  %103 = load i8, i8* %arrayidx102, align 1
  %arrayidx103 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 1
  store i8 %103, i8* %arrayidx103, align 1
  %104 = load i32, i32* %chan, align 4
  %idxprom104 = sext i32 %104 to i64
  %arrayidx105 = getelementptr inbounds [4 x i8], [4 x i8]* %pix02, i32 0, i64 %idxprom104
  %105 = load i8, i8* %arrayidx105, align 1
  %arrayidx106 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 2
  store i8 %105, i8* %arrayidx106, align 1
  %106 = load i32, i32* %chan, align 4
  %idxprom107 = sext i32 %106 to i64
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* %pix10, i32 0, i64 %idxprom107
  %107 = load i8, i8* %arrayidx108, align 1
  %arrayidx109 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 3
  store i8 %107, i8* %arrayidx109, align 1
  %108 = load i32, i32* %chan, align 4
  %idxprom110 = sext i32 %108 to i64
  %arrayidx111 = getelementptr inbounds [4 x i8], [4 x i8]* %pix11, i32 0, i64 %idxprom110
  %109 = load i8, i8* %arrayidx111, align 1
  %arrayidx112 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 4
  store i8 %109, i8* %arrayidx112, align 1
  %110 = load i32, i32* %chan, align 4
  %idxprom113 = sext i32 %110 to i64
  %arrayidx114 = getelementptr inbounds [4 x i8], [4 x i8]* %pix12, i32 0, i64 %idxprom113
  %111 = load i8, i8* %arrayidx114, align 1
  %arrayidx115 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 5
  store i8 %111, i8* %arrayidx115, align 1
  %112 = load i32, i32* %chan, align 4
  %idxprom116 = sext i32 %112 to i64
  %arrayidx117 = getelementptr inbounds [4 x i8], [4 x i8]* %pix20, i32 0, i64 %idxprom116
  %113 = load i8, i8* %arrayidx117, align 1
  %arrayidx118 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 6
  store i8 %113, i8* %arrayidx118, align 1
  %114 = load i32, i32* %chan, align 4
  %idxprom119 = sext i32 %114 to i64
  %arrayidx120 = getelementptr inbounds [4 x i8], [4 x i8]* %pix21, i32 0, i64 %idxprom119
  %115 = load i8, i8* %arrayidx120, align 1
  %arrayidx121 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 7
  store i8 %115, i8* %arrayidx121, align 1
  %116 = load i32, i32* %chan, align 4
  %idxprom122 = sext i32 %116 to i64
  %arrayidx123 = getelementptr inbounds [4 x i8], [4 x i8]* %pix22, i32 0, i64 %idxprom122
  %117 = load i8, i8* %arrayidx123, align 1
  %arrayidx124 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i64 8
  store i8 %117, i8* %arrayidx124, align 1
  %arraydecay125 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel97, i32 0, i32 0
  %call126 = call i32 @edge_detect(i8* %arraydecay125)
  %conv127 = trunc i32 %call126 to i8
  %118 = load i32, i32* %chan, align 4
  %idxprom128 = sext i32 %118 to i64
  %119 = load i8*, i8** %dest, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %119, i64 %idxprom128
  store i8 %conv127, i8* %arrayidx129, align 1
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.96
  %120 = load i32, i32* %chan, align 4
  %inc131 = add nsw i32 %120, 1
  store i32 %inc131, i32* %chan, align 4
  br label %for.cond.93

for.end.132:                                      ; preds = %for.cond.93
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %for.end.71
  %121 = load i32, i32* %has_alpha, align 4
  %tobool134 = icmp ne i32 %121, 0
  br i1 %tobool134, label %if.then.135, label %if.end.140

if.then.135:                                      ; preds = %if.end.133
  %122 = load i32, i32* %alpha, align 4
  %idxprom136 = sext i32 %122 to i64
  %123 = load i8*, i8** %src, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %123, i64 %idxprom136
  %124 = load i8, i8* %arrayidx137, align 1
  %125 = load i32, i32* %alpha, align 4
  %idxprom138 = sext i32 %125 to i64
  %126 = load i8*, i8** %dest, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %126, i64 %idxprom138
  store i8 %124, i8* %arrayidx139, align 1
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.135, %if.end.133
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %127 = load i32, i32* %x, align 4
  %inc142 = add nsw i32 %127, 1
  store i32 %inc142, i32* %x, align 4
  %bpp143 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %128 = load i32, i32* %bpp143, align 4
  %129 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %128 to i64
  %add.ptr = getelementptr inbounds i8, i8* %129, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bpp144 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %130 = load i32, i32* %bpp144, align 4
  %131 = load i8*, i8** %dest, align 8
  %idx.ext145 = sext i32 %130 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %131, i64 %idx.ext145
  store i8* %add.ptr146, i8** %dest, align 8
  br label %for.cond.22

for.end.147:                                      ; preds = %for.cond.22
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.end.147
  %132 = load i32, i32* %y, align 4
  %inc149 = add nsw i32 %132, 1
  store i32 %inc149, i32* %y, align 4
  %rowstride150 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %133 = load i32, i32* %rowstride150, align 4
  %134 = load i8*, i8** %srcrow, align 8
  %idx.ext151 = sext i32 %133 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %134, i64 %idx.ext151
  store i8* %add.ptr152, i8** %srcrow, align 8
  %rowstride153 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %135 = load i32, i32* %rowstride153, align 4
  %136 = load i8*, i8** %destrow, align 8
  %idx.ext154 = sext i32 %135 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %136, i64 %idx.ext154
  store i8* %add.ptr155, i8** %destrow, align 8
  br label %for.cond.17

for.end.156:                                      ; preds = %for.cond.17
  %w157 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %137 = load i32, i32* %w157, align 4
  %h158 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %138 = load i32, i32* %h158, align 4
  %mul159 = mul nsw i32 %137, %138
  %139 = load i32, i32* %cur_progress, align 4
  %add160 = add nsw i32 %139, %mul159
  store i32 %add160, i32* %cur_progress, align 4
  %140 = load i32, i32* %cur_progress, align 4
  %141 = load i32, i32* %max_progress, align 4
  %cmp161 = icmp sgt i32 %140, %141
  br i1 %cmp161, label %if.then.163, label %if.end.167

if.then.163:                                      ; preds = %for.end.156
  %142 = load i32, i32* %cur_progress, align 4
  %143 = load i32, i32* %max_progress, align 4
  %sub164 = sub nsw i32 %142, %143
  store i32 %sub164, i32* %cur_progress, align 4
  %144 = load double, double* %per_progress, align 8
  %add165 = fadd double %144, 1.000000e-02
  store double %add165, double* %per_progress, align 8
  %145 = load double, double* %per_progress, align 8
  %call166 = call i32 @gimp_progress_update(double %145)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.163, %for.end.156
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %146 = load i8*, i8** %pr, align 8
  %call169 = call i8* @gimp_pixel_rgns_process(i8* %146)
  store i8* %call169, i8** %pr, align 8
  br label %for.cond

for.end.170:                                      ; preds = %for.cond
  %call171 = call i32 @gimp_progress_update(double 1.000000e+00)
  %147 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %147)
  %148 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %148)
  %149 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id172 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %149, i32 0, i32 0
  %150 = load i32, i32* %drawable_id172, align 4
  %call173 = call i32 @gimp_drawable_merge_shadow(i32 %150, i32 1)
  %151 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id174 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %151, i32 0, i32 0
  %152 = load i32, i32* %drawable_id174, align 4
  %153 = load i32, i32* %x1, align 4
  %154 = load i32, i32* %y1, align 4
  %155 = load i32, i32* %x2, align 4
  %156 = load i32, i32* %x1, align 4
  %sub175 = sub nsw i32 %155, %156
  %157 = load i32, i32* %y2, align 4
  %158 = load i32, i32* %y1, align 4
  %sub176 = sub nsw i32 %157, %158
  %call177 = call i32 @gimp_drawable_update(i32 %152, i32 %153, i32 %154, i32 %sub175, i32 %sub176)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

; Function Attrs: nounwind uwtable
define internal void @edge_preview_update(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %bytes = alloca i64, align 8
  %alpha = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %src = alloca i8*, align 8
  %render_buffer = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %chan = alloca i32, align 4
  %kernel = alloca [9 x i8], align 1
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %src, align 8
  store i8* null, i8** %render_buffer, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %2)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_drawable_bpp(i32 %4)
  %conv = sext i32 %call3 to i64
  store i64 %conv, i64* %bytes, align 8
  %5 = load i64, i64* %bytes, align 8
  %conv4 = trunc i64 %5 to i32
  store i32 %conv4, i32* %alpha, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_drawable_has_alpha(i32 %7)
  store i32 %call6, i32* %has_alpha, align 4
  %8 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %alpha, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %10, i32* %x1, i32* %y1)
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %11, i32* %width, i32* %height)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = load i32, i32* %x1, align 4
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 0, i32 0)
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %17, %18
  %conv7 = sext i32 %mul to i64
  %19 = load i64, i64* %bytes, align 8
  %mul8 = mul nsw i64 %conv7, %19
  %call9 = call noalias i8* @g_malloc_n(i64 %mul8, i64 1)
  store i8* %call9, i8** %src, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %mul10 = mul nsw i32 %20, %21
  %conv11 = sext i32 %mul10 to i64
  %22 = load i64, i64* %bytes, align 8
  %mul12 = mul nsw i64 %conv11, %22
  %call13 = call noalias i8* @g_malloc_n(i64 %mul12, i64 1)
  store i8* %call13, i8** %render_buffer, align 8
  %23 = load i8*, i8** %src, align 8
  %24 = load i32, i32* %x1, align 4
  %25 = load i32, i32* %y1, align 4
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %srcPR, i8* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %28 = load i8*, i8** %render_buffer, align 8
  store i8* %28, i8** %dest, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.394, %if.end
  %29 = load i32, i32* %y, align 4
  %30 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end.396

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.391, %for.body
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %width, align 4
  %cmp16 = icmp slt i32 %31, %32
  br i1 %cmp16, label %for.body.18, label %for.end.393

for.body.18:                                      ; preds = %for.cond.15
  store i32 0, i32* %chan, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body.18
  %33 = load i32, i32* %chan, align 4
  %34 = load i32, i32* %alpha, align 4
  %cmp20 = icmp slt i32 %33, %34
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %35 = load i64, i64* %bytes, align 8
  %36 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %36, 1
  %37 = load i32, i32* %width, align 4
  %sub23 = sub nsw i32 %37, 1
  %cmp24 = icmp sgt i32 %sub, %sub23
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.22
  %38 = load i32, i32* %width, align 4
  %sub26 = sub nsw i32 %38, 1
  br label %cond.end.33

cond.false:                                       ; preds = %for.body.22
  %39 = load i32, i32* %x, align 4
  %sub27 = sub nsw i32 %39, 1
  %cmp28 = icmp slt i32 %sub27, 0
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %40 = load i32, i32* %x, align 4
  %sub32 = sub nsw i32 %40, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond = phi i32 [ 0, %cond.true.30 ], [ %sub32, %cond.false.31 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi i32 [ %sub26, %cond.true ], [ %cond, %cond.end ]
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %y, align 4
  %sub35 = sub nsw i32 %42, 1
  %43 = load i32, i32* %height, align 4
  %sub36 = sub nsw i32 %43, 1
  %cmp37 = icmp sgt i32 %sub35, %sub36
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.end.33
  %44 = load i32, i32* %height, align 4
  %sub40 = sub nsw i32 %44, 1
  br label %cond.end.50

cond.false.41:                                    ; preds = %cond.end.33
  %45 = load i32, i32* %y, align 4
  %sub42 = sub nsw i32 %45, 1
  %cmp43 = icmp slt i32 %sub42, 0
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false.41
  br label %cond.end.48

cond.false.46:                                    ; preds = %cond.false.41
  %46 = load i32, i32* %y, align 4
  %sub47 = sub nsw i32 %46, 1
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.45
  %cond49 = phi i32 [ 0, %cond.true.45 ], [ %sub47, %cond.false.46 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.39
  %cond51 = phi i32 [ %sub40, %cond.true.39 ], [ %cond49, %cond.end.48 ]
  %mul52 = mul nsw i32 %41, %cond51
  %add = add nsw i32 %cond34, %mul52
  %conv53 = sext i32 %add to i64
  %mul54 = mul nsw i64 %35, %conv53
  %47 = load i32, i32* %chan, align 4
  %conv55 = sext i32 %47 to i64
  %add56 = add nsw i64 %mul54, %conv55
  %48 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 %add56
  %49 = load i8, i8* %arrayidx, align 1
  %arrayidx57 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 0
  store i8 %49, i8* %arrayidx57, align 1
  %50 = load i64, i64* %bytes, align 8
  %51 = load i32, i32* %x, align 4
  %sub58 = sub nsw i32 %51, 1
  %52 = load i32, i32* %width, align 4
  %sub59 = sub nsw i32 %52, 1
  %cmp60 = icmp sgt i32 %sub58, %sub59
  br i1 %cmp60, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.end.50
  %53 = load i32, i32* %width, align 4
  %sub63 = sub nsw i32 %53, 1
  br label %cond.end.73

cond.false.64:                                    ; preds = %cond.end.50
  %54 = load i32, i32* %x, align 4
  %sub65 = sub nsw i32 %54, 1
  %cmp66 = icmp slt i32 %sub65, 0
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.false.64
  br label %cond.end.71

cond.false.69:                                    ; preds = %cond.false.64
  %55 = load i32, i32* %x, align 4
  %sub70 = sub nsw i32 %55, 1
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.68
  %cond72 = phi i32 [ 0, %cond.true.68 ], [ %sub70, %cond.false.69 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.62
  %cond74 = phi i32 [ %sub63, %cond.true.62 ], [ %cond72, %cond.end.71 ]
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %height, align 4
  %sub75 = sub nsw i32 %58, 1
  %cmp76 = icmp sgt i32 %57, %sub75
  br i1 %cmp76, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %cond.end.73
  %59 = load i32, i32* %height, align 4
  %sub79 = sub nsw i32 %59, 1
  br label %cond.end.87

cond.false.80:                                    ; preds = %cond.end.73
  %60 = load i32, i32* %y, align 4
  %cmp81 = icmp slt i32 %60, 0
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.false.80
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.false.80
  %61 = load i32, i32* %y, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ 0, %cond.true.83 ], [ %61, %cond.false.84 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.78
  %cond88 = phi i32 [ %sub79, %cond.true.78 ], [ %cond86, %cond.end.85 ]
  %mul89 = mul nsw i32 %56, %cond88
  %add90 = add nsw i32 %cond74, %mul89
  %conv91 = sext i32 %add90 to i64
  %mul92 = mul nsw i64 %50, %conv91
  %62 = load i32, i32* %chan, align 4
  %conv93 = sext i32 %62 to i64
  %add94 = add nsw i64 %mul92, %conv93
  %63 = load i8*, i8** %src, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %63, i64 %add94
  %64 = load i8, i8* %arrayidx95, align 1
  %arrayidx96 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 1
  store i8 %64, i8* %arrayidx96, align 1
  %65 = load i64, i64* %bytes, align 8
  %66 = load i32, i32* %x, align 4
  %sub97 = sub nsw i32 %66, 1
  %67 = load i32, i32* %width, align 4
  %sub98 = sub nsw i32 %67, 1
  %cmp99 = icmp sgt i32 %sub97, %sub98
  br i1 %cmp99, label %cond.true.101, label %cond.false.103

cond.true.101:                                    ; preds = %cond.end.87
  %68 = load i32, i32* %width, align 4
  %sub102 = sub nsw i32 %68, 1
  br label %cond.end.112

cond.false.103:                                   ; preds = %cond.end.87
  %69 = load i32, i32* %x, align 4
  %sub104 = sub nsw i32 %69, 1
  %cmp105 = icmp slt i32 %sub104, 0
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.false.103
  br label %cond.end.110

cond.false.108:                                   ; preds = %cond.false.103
  %70 = load i32, i32* %x, align 4
  %sub109 = sub nsw i32 %70, 1
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.108, %cond.true.107
  %cond111 = phi i32 [ 0, %cond.true.107 ], [ %sub109, %cond.false.108 ]
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.end.110, %cond.true.101
  %cond113 = phi i32 [ %sub102, %cond.true.101 ], [ %cond111, %cond.end.110 ]
  %71 = load i32, i32* %width, align 4
  %72 = load i32, i32* %y, align 4
  %add114 = add nsw i32 %72, 1
  %73 = load i32, i32* %height, align 4
  %sub115 = sub nsw i32 %73, 1
  %cmp116 = icmp sgt i32 %add114, %sub115
  br i1 %cmp116, label %cond.true.118, label %cond.false.120

cond.true.118:                                    ; preds = %cond.end.112
  %74 = load i32, i32* %height, align 4
  %sub119 = sub nsw i32 %74, 1
  br label %cond.end.129

cond.false.120:                                   ; preds = %cond.end.112
  %75 = load i32, i32* %y, align 4
  %add121 = add nsw i32 %75, 1
  %cmp122 = icmp slt i32 %add121, 0
  br i1 %cmp122, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %cond.false.120
  br label %cond.end.127

cond.false.125:                                   ; preds = %cond.false.120
  %76 = load i32, i32* %y, align 4
  %add126 = add nsw i32 %76, 1
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.124
  %cond128 = phi i32 [ 0, %cond.true.124 ], [ %add126, %cond.false.125 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.118
  %cond130 = phi i32 [ %sub119, %cond.true.118 ], [ %cond128, %cond.end.127 ]
  %mul131 = mul nsw i32 %71, %cond130
  %add132 = add nsw i32 %cond113, %mul131
  %conv133 = sext i32 %add132 to i64
  %mul134 = mul nsw i64 %65, %conv133
  %77 = load i32, i32* %chan, align 4
  %conv135 = sext i32 %77 to i64
  %add136 = add nsw i64 %mul134, %conv135
  %78 = load i8*, i8** %src, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %78, i64 %add136
  %79 = load i8, i8* %arrayidx137, align 1
  %arrayidx138 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 2
  store i8 %79, i8* %arrayidx138, align 1
  %80 = load i64, i64* %bytes, align 8
  %81 = load i32, i32* %x, align 4
  %82 = load i32, i32* %width, align 4
  %sub139 = sub nsw i32 %82, 1
  %cmp140 = icmp sgt i32 %81, %sub139
  br i1 %cmp140, label %cond.true.142, label %cond.false.144

cond.true.142:                                    ; preds = %cond.end.129
  %83 = load i32, i32* %width, align 4
  %sub143 = sub nsw i32 %83, 1
  br label %cond.end.151

cond.false.144:                                   ; preds = %cond.end.129
  %84 = load i32, i32* %x, align 4
  %cmp145 = icmp slt i32 %84, 0
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.false.144
  br label %cond.end.149

cond.false.148:                                   ; preds = %cond.false.144
  %85 = load i32, i32* %x, align 4
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.147
  %cond150 = phi i32 [ 0, %cond.true.147 ], [ %85, %cond.false.148 ]
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.end.149, %cond.true.142
  %cond152 = phi i32 [ %sub143, %cond.true.142 ], [ %cond150, %cond.end.149 ]
  %86 = load i32, i32* %width, align 4
  %87 = load i32, i32* %y, align 4
  %sub153 = sub nsw i32 %87, 1
  %88 = load i32, i32* %height, align 4
  %sub154 = sub nsw i32 %88, 1
  %cmp155 = icmp sgt i32 %sub153, %sub154
  br i1 %cmp155, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %cond.end.151
  %89 = load i32, i32* %height, align 4
  %sub158 = sub nsw i32 %89, 1
  br label %cond.end.168

cond.false.159:                                   ; preds = %cond.end.151
  %90 = load i32, i32* %y, align 4
  %sub160 = sub nsw i32 %90, 1
  %cmp161 = icmp slt i32 %sub160, 0
  br i1 %cmp161, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %cond.false.159
  br label %cond.end.166

cond.false.164:                                   ; preds = %cond.false.159
  %91 = load i32, i32* %y, align 4
  %sub165 = sub nsw i32 %91, 1
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.164, %cond.true.163
  %cond167 = phi i32 [ 0, %cond.true.163 ], [ %sub165, %cond.false.164 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end.166, %cond.true.157
  %cond169 = phi i32 [ %sub158, %cond.true.157 ], [ %cond167, %cond.end.166 ]
  %mul170 = mul nsw i32 %86, %cond169
  %add171 = add nsw i32 %cond152, %mul170
  %conv172 = sext i32 %add171 to i64
  %mul173 = mul nsw i64 %80, %conv172
  %92 = load i32, i32* %chan, align 4
  %conv174 = sext i32 %92 to i64
  %add175 = add nsw i64 %mul173, %conv174
  %93 = load i8*, i8** %src, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %93, i64 %add175
  %94 = load i8, i8* %arrayidx176, align 1
  %arrayidx177 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 3
  store i8 %94, i8* %arrayidx177, align 1
  %95 = load i64, i64* %bytes, align 8
  %96 = load i32, i32* %x, align 4
  %97 = load i32, i32* %width, align 4
  %sub178 = sub nsw i32 %97, 1
  %cmp179 = icmp sgt i32 %96, %sub178
  br i1 %cmp179, label %cond.true.181, label %cond.false.183

cond.true.181:                                    ; preds = %cond.end.168
  %98 = load i32, i32* %width, align 4
  %sub182 = sub nsw i32 %98, 1
  br label %cond.end.190

cond.false.183:                                   ; preds = %cond.end.168
  %99 = load i32, i32* %x, align 4
  %cmp184 = icmp slt i32 %99, 0
  br i1 %cmp184, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.false.183
  br label %cond.end.188

cond.false.187:                                   ; preds = %cond.false.183
  %100 = load i32, i32* %x, align 4
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.186
  %cond189 = phi i32 [ 0, %cond.true.186 ], [ %100, %cond.false.187 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.181
  %cond191 = phi i32 [ %sub182, %cond.true.181 ], [ %cond189, %cond.end.188 ]
  %101 = load i32, i32* %width, align 4
  %102 = load i32, i32* %y, align 4
  %103 = load i32, i32* %height, align 4
  %sub192 = sub nsw i32 %103, 1
  %cmp193 = icmp sgt i32 %102, %sub192
  br i1 %cmp193, label %cond.true.195, label %cond.false.197

cond.true.195:                                    ; preds = %cond.end.190
  %104 = load i32, i32* %height, align 4
  %sub196 = sub nsw i32 %104, 1
  br label %cond.end.204

cond.false.197:                                   ; preds = %cond.end.190
  %105 = load i32, i32* %y, align 4
  %cmp198 = icmp slt i32 %105, 0
  br i1 %cmp198, label %cond.true.200, label %cond.false.201

cond.true.200:                                    ; preds = %cond.false.197
  br label %cond.end.202

cond.false.201:                                   ; preds = %cond.false.197
  %106 = load i32, i32* %y, align 4
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.200
  %cond203 = phi i32 [ 0, %cond.true.200 ], [ %106, %cond.false.201 ]
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.end.202, %cond.true.195
  %cond205 = phi i32 [ %sub196, %cond.true.195 ], [ %cond203, %cond.end.202 ]
  %mul206 = mul nsw i32 %101, %cond205
  %add207 = add nsw i32 %cond191, %mul206
  %conv208 = sext i32 %add207 to i64
  %mul209 = mul nsw i64 %95, %conv208
  %107 = load i32, i32* %chan, align 4
  %conv210 = sext i32 %107 to i64
  %add211 = add nsw i64 %mul209, %conv210
  %108 = load i8*, i8** %src, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %108, i64 %add211
  %109 = load i8, i8* %arrayidx212, align 1
  %arrayidx213 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 4
  store i8 %109, i8* %arrayidx213, align 1
  %110 = load i64, i64* %bytes, align 8
  %111 = load i32, i32* %x, align 4
  %112 = load i32, i32* %width, align 4
  %sub214 = sub nsw i32 %112, 1
  %cmp215 = icmp sgt i32 %111, %sub214
  br i1 %cmp215, label %cond.true.217, label %cond.false.219

cond.true.217:                                    ; preds = %cond.end.204
  %113 = load i32, i32* %width, align 4
  %sub218 = sub nsw i32 %113, 1
  br label %cond.end.226

cond.false.219:                                   ; preds = %cond.end.204
  %114 = load i32, i32* %x, align 4
  %cmp220 = icmp slt i32 %114, 0
  br i1 %cmp220, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %cond.false.219
  br label %cond.end.224

cond.false.223:                                   ; preds = %cond.false.219
  %115 = load i32, i32* %x, align 4
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.223, %cond.true.222
  %cond225 = phi i32 [ 0, %cond.true.222 ], [ %115, %cond.false.223 ]
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.end.224, %cond.true.217
  %cond227 = phi i32 [ %sub218, %cond.true.217 ], [ %cond225, %cond.end.224 ]
  %116 = load i32, i32* %width, align 4
  %117 = load i32, i32* %y, align 4
  %add228 = add nsw i32 %117, 1
  %118 = load i32, i32* %height, align 4
  %sub229 = sub nsw i32 %118, 1
  %cmp230 = icmp sgt i32 %add228, %sub229
  br i1 %cmp230, label %cond.true.232, label %cond.false.234

cond.true.232:                                    ; preds = %cond.end.226
  %119 = load i32, i32* %height, align 4
  %sub233 = sub nsw i32 %119, 1
  br label %cond.end.243

cond.false.234:                                   ; preds = %cond.end.226
  %120 = load i32, i32* %y, align 4
  %add235 = add nsw i32 %120, 1
  %cmp236 = icmp slt i32 %add235, 0
  br i1 %cmp236, label %cond.true.238, label %cond.false.239

cond.true.238:                                    ; preds = %cond.false.234
  br label %cond.end.241

cond.false.239:                                   ; preds = %cond.false.234
  %121 = load i32, i32* %y, align 4
  %add240 = add nsw i32 %121, 1
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.239, %cond.true.238
  %cond242 = phi i32 [ 0, %cond.true.238 ], [ %add240, %cond.false.239 ]
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.end.241, %cond.true.232
  %cond244 = phi i32 [ %sub233, %cond.true.232 ], [ %cond242, %cond.end.241 ]
  %mul245 = mul nsw i32 %116, %cond244
  %add246 = add nsw i32 %cond227, %mul245
  %conv247 = sext i32 %add246 to i64
  %mul248 = mul nsw i64 %110, %conv247
  %122 = load i32, i32* %chan, align 4
  %conv249 = sext i32 %122 to i64
  %add250 = add nsw i64 %mul248, %conv249
  %123 = load i8*, i8** %src, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %123, i64 %add250
  %124 = load i8, i8* %arrayidx251, align 1
  %arrayidx252 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 5
  store i8 %124, i8* %arrayidx252, align 1
  %125 = load i64, i64* %bytes, align 8
  %126 = load i32, i32* %x, align 4
  %add253 = add nsw i32 %126, 1
  %127 = load i32, i32* %width, align 4
  %sub254 = sub nsw i32 %127, 1
  %cmp255 = icmp sgt i32 %add253, %sub254
  br i1 %cmp255, label %cond.true.257, label %cond.false.259

cond.true.257:                                    ; preds = %cond.end.243
  %128 = load i32, i32* %width, align 4
  %sub258 = sub nsw i32 %128, 1
  br label %cond.end.268

cond.false.259:                                   ; preds = %cond.end.243
  %129 = load i32, i32* %x, align 4
  %add260 = add nsw i32 %129, 1
  %cmp261 = icmp slt i32 %add260, 0
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %cond.false.259
  br label %cond.end.266

cond.false.264:                                   ; preds = %cond.false.259
  %130 = load i32, i32* %x, align 4
  %add265 = add nsw i32 %130, 1
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.264, %cond.true.263
  %cond267 = phi i32 [ 0, %cond.true.263 ], [ %add265, %cond.false.264 ]
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.end.266, %cond.true.257
  %cond269 = phi i32 [ %sub258, %cond.true.257 ], [ %cond267, %cond.end.266 ]
  %131 = load i32, i32* %width, align 4
  %132 = load i32, i32* %y, align 4
  %sub270 = sub nsw i32 %132, 1
  %133 = load i32, i32* %height, align 4
  %sub271 = sub nsw i32 %133, 1
  %cmp272 = icmp sgt i32 %sub270, %sub271
  br i1 %cmp272, label %cond.true.274, label %cond.false.276

cond.true.274:                                    ; preds = %cond.end.268
  %134 = load i32, i32* %height, align 4
  %sub275 = sub nsw i32 %134, 1
  br label %cond.end.285

cond.false.276:                                   ; preds = %cond.end.268
  %135 = load i32, i32* %y, align 4
  %sub277 = sub nsw i32 %135, 1
  %cmp278 = icmp slt i32 %sub277, 0
  br i1 %cmp278, label %cond.true.280, label %cond.false.281

cond.true.280:                                    ; preds = %cond.false.276
  br label %cond.end.283

cond.false.281:                                   ; preds = %cond.false.276
  %136 = load i32, i32* %y, align 4
  %sub282 = sub nsw i32 %136, 1
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.281, %cond.true.280
  %cond284 = phi i32 [ 0, %cond.true.280 ], [ %sub282, %cond.false.281 ]
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.end.283, %cond.true.274
  %cond286 = phi i32 [ %sub275, %cond.true.274 ], [ %cond284, %cond.end.283 ]
  %mul287 = mul nsw i32 %131, %cond286
  %add288 = add nsw i32 %cond269, %mul287
  %conv289 = sext i32 %add288 to i64
  %mul290 = mul nsw i64 %125, %conv289
  %137 = load i32, i32* %chan, align 4
  %conv291 = sext i32 %137 to i64
  %add292 = add nsw i64 %mul290, %conv291
  %138 = load i8*, i8** %src, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %138, i64 %add292
  %139 = load i8, i8* %arrayidx293, align 1
  %arrayidx294 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 6
  store i8 %139, i8* %arrayidx294, align 1
  %140 = load i64, i64* %bytes, align 8
  %141 = load i32, i32* %x, align 4
  %add295 = add nsw i32 %141, 1
  %142 = load i32, i32* %width, align 4
  %sub296 = sub nsw i32 %142, 1
  %cmp297 = icmp sgt i32 %add295, %sub296
  br i1 %cmp297, label %cond.true.299, label %cond.false.301

cond.true.299:                                    ; preds = %cond.end.285
  %143 = load i32, i32* %width, align 4
  %sub300 = sub nsw i32 %143, 1
  br label %cond.end.310

cond.false.301:                                   ; preds = %cond.end.285
  %144 = load i32, i32* %x, align 4
  %add302 = add nsw i32 %144, 1
  %cmp303 = icmp slt i32 %add302, 0
  br i1 %cmp303, label %cond.true.305, label %cond.false.306

cond.true.305:                                    ; preds = %cond.false.301
  br label %cond.end.308

cond.false.306:                                   ; preds = %cond.false.301
  %145 = load i32, i32* %x, align 4
  %add307 = add nsw i32 %145, 1
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.306, %cond.true.305
  %cond309 = phi i32 [ 0, %cond.true.305 ], [ %add307, %cond.false.306 ]
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.end.308, %cond.true.299
  %cond311 = phi i32 [ %sub300, %cond.true.299 ], [ %cond309, %cond.end.308 ]
  %146 = load i32, i32* %width, align 4
  %147 = load i32, i32* %y, align 4
  %148 = load i32, i32* %height, align 4
  %sub312 = sub nsw i32 %148, 1
  %cmp313 = icmp sgt i32 %147, %sub312
  br i1 %cmp313, label %cond.true.315, label %cond.false.317

cond.true.315:                                    ; preds = %cond.end.310
  %149 = load i32, i32* %height, align 4
  %sub316 = sub nsw i32 %149, 1
  br label %cond.end.324

cond.false.317:                                   ; preds = %cond.end.310
  %150 = load i32, i32* %y, align 4
  %cmp318 = icmp slt i32 %150, 0
  br i1 %cmp318, label %cond.true.320, label %cond.false.321

cond.true.320:                                    ; preds = %cond.false.317
  br label %cond.end.322

cond.false.321:                                   ; preds = %cond.false.317
  %151 = load i32, i32* %y, align 4
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.321, %cond.true.320
  %cond323 = phi i32 [ 0, %cond.true.320 ], [ %151, %cond.false.321 ]
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.end.322, %cond.true.315
  %cond325 = phi i32 [ %sub316, %cond.true.315 ], [ %cond323, %cond.end.322 ]
  %mul326 = mul nsw i32 %146, %cond325
  %add327 = add nsw i32 %cond311, %mul326
  %conv328 = sext i32 %add327 to i64
  %mul329 = mul nsw i64 %140, %conv328
  %152 = load i32, i32* %chan, align 4
  %conv330 = sext i32 %152 to i64
  %add331 = add nsw i64 %mul329, %conv330
  %153 = load i8*, i8** %src, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %153, i64 %add331
  %154 = load i8, i8* %arrayidx332, align 1
  %arrayidx333 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 7
  store i8 %154, i8* %arrayidx333, align 1
  %155 = load i64, i64* %bytes, align 8
  %156 = load i32, i32* %x, align 4
  %add334 = add nsw i32 %156, 1
  %157 = load i32, i32* %width, align 4
  %sub335 = sub nsw i32 %157, 1
  %cmp336 = icmp sgt i32 %add334, %sub335
  br i1 %cmp336, label %cond.true.338, label %cond.false.340

cond.true.338:                                    ; preds = %cond.end.324
  %158 = load i32, i32* %width, align 4
  %sub339 = sub nsw i32 %158, 1
  br label %cond.end.349

cond.false.340:                                   ; preds = %cond.end.324
  %159 = load i32, i32* %x, align 4
  %add341 = add nsw i32 %159, 1
  %cmp342 = icmp slt i32 %add341, 0
  br i1 %cmp342, label %cond.true.344, label %cond.false.345

cond.true.344:                                    ; preds = %cond.false.340
  br label %cond.end.347

cond.false.345:                                   ; preds = %cond.false.340
  %160 = load i32, i32* %x, align 4
  %add346 = add nsw i32 %160, 1
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.345, %cond.true.344
  %cond348 = phi i32 [ 0, %cond.true.344 ], [ %add346, %cond.false.345 ]
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.end.347, %cond.true.338
  %cond350 = phi i32 [ %sub339, %cond.true.338 ], [ %cond348, %cond.end.347 ]
  %161 = load i32, i32* %width, align 4
  %162 = load i32, i32* %y, align 4
  %add351 = add nsw i32 %162, 1
  %163 = load i32, i32* %height, align 4
  %sub352 = sub nsw i32 %163, 1
  %cmp353 = icmp sgt i32 %add351, %sub352
  br i1 %cmp353, label %cond.true.355, label %cond.false.357

cond.true.355:                                    ; preds = %cond.end.349
  %164 = load i32, i32* %height, align 4
  %sub356 = sub nsw i32 %164, 1
  br label %cond.end.366

cond.false.357:                                   ; preds = %cond.end.349
  %165 = load i32, i32* %y, align 4
  %add358 = add nsw i32 %165, 1
  %cmp359 = icmp slt i32 %add358, 0
  br i1 %cmp359, label %cond.true.361, label %cond.false.362

cond.true.361:                                    ; preds = %cond.false.357
  br label %cond.end.364

cond.false.362:                                   ; preds = %cond.false.357
  %166 = load i32, i32* %y, align 4
  %add363 = add nsw i32 %166, 1
  br label %cond.end.364

cond.end.364:                                     ; preds = %cond.false.362, %cond.true.361
  %cond365 = phi i32 [ 0, %cond.true.361 ], [ %add363, %cond.false.362 ]
  br label %cond.end.366

cond.end.366:                                     ; preds = %cond.end.364, %cond.true.355
  %cond367 = phi i32 [ %sub356, %cond.true.355 ], [ %cond365, %cond.end.364 ]
  %mul368 = mul nsw i32 %161, %cond367
  %add369 = add nsw i32 %cond350, %mul368
  %conv370 = sext i32 %add369 to i64
  %mul371 = mul nsw i64 %155, %conv370
  %167 = load i32, i32* %chan, align 4
  %conv372 = sext i32 %167 to i64
  %add373 = add nsw i64 %mul371, %conv372
  %168 = load i8*, i8** %src, align 8
  %arrayidx374 = getelementptr inbounds i8, i8* %168, i64 %add373
  %169 = load i8, i8* %arrayidx374, align 1
  %arrayidx375 = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i64 8
  store i8 %169, i8* %arrayidx375, align 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %kernel, i32 0, i32 0
  %call376 = call i32 @edge_detect(i8* %arraydecay)
  %conv377 = trunc i32 %call376 to i8
  %170 = load i32, i32* %chan, align 4
  %idxprom = sext i32 %170 to i64
  %171 = load i8*, i8** %dest, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %171, i64 %idxprom
  store i8 %conv377, i8* %arrayidx378, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.366
  %172 = load i32, i32* %chan, align 4
  %inc = add nsw i32 %172, 1
  store i32 %inc, i32* %chan, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %173 = load i32, i32* %has_alpha, align 4
  %tobool379 = icmp ne i32 %173, 0
  br i1 %tobool379, label %if.then.380, label %if.end.390

if.then.380:                                      ; preds = %for.end
  %174 = load i64, i64* %bytes, align 8
  %175 = load i32, i32* %x, align 4
  %176 = load i32, i32* %width, align 4
  %177 = load i32, i32* %y, align 4
  %mul381 = mul nsw i32 %176, %177
  %add382 = add nsw i32 %175, %mul381
  %conv383 = sext i32 %add382 to i64
  %mul384 = mul nsw i64 %174, %conv383
  %178 = load i32, i32* %alpha, align 4
  %conv385 = sext i32 %178 to i64
  %add386 = add nsw i64 %mul384, %conv385
  %179 = load i8*, i8** %src, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %179, i64 %add386
  %180 = load i8, i8* %arrayidx387, align 1
  %181 = load i32, i32* %alpha, align 4
  %idxprom388 = sext i32 %181 to i64
  %182 = load i8*, i8** %dest, align 8
  %arrayidx389 = getelementptr inbounds i8, i8* %182, i64 %idxprom388
  store i8 %180, i8* %arrayidx389, align 1
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.380, %for.end
  %183 = load i64, i64* %bytes, align 8
  %184 = load i8*, i8** %dest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %184, i64 %183
  store i8* %add.ptr, i8** %dest, align 8
  br label %for.inc.391

for.inc.391:                                      ; preds = %if.end.390
  %185 = load i32, i32* %x, align 4
  %inc392 = add nsw i32 %185, 1
  store i32 %inc392, i32* %x, align 4
  br label %for.cond.15

for.end.393:                                      ; preds = %for.cond.15
  br label %for.inc.394

for.inc.394:                                      ; preds = %for.end.393
  %186 = load i32, i32* %y, align 4
  %inc395 = add nsw i32 %186, 1
  store i32 %inc395, i32* %y, align 4
  br label %for.cond

for.end.396:                                      ; preds = %for.cond
  %187 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %188 = load i8*, i8** %render_buffer, align 8
  %189 = load i32, i32* %width, align 4
  %conv397 = sext i32 %189 to i64
  %190 = load i64, i64* %bytes, align 8
  %mul398 = mul nsw i64 %conv397, %190
  %conv399 = trunc i64 %mul398 to i32
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %187, i8* %188, i32 %conv399)
  %191 = load i8*, i8** %render_buffer, align 8
  call void @g_free(i8* %191)
  %192 = load i8*, i8** %src, align 8
  call void @g_free(i8* %192)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @edge_detect(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 1), align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %call = call i32 @sobel(i8* %1)
  store i32 %call, i32* %ret, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @prewitt(i8* %2)
  store i32 %call2, i32* %ret, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %3 = load i8*, i8** %data.addr, align 8
  %call4 = call i32 @gradient(i8* %3)
  store i32 %call4, i32* %ret, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %call6 = call i32 @roberts(i8* %4)
  store i32 %call6, i32* %ret, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %5 = load i8*, i8** %data.addr, align 8
  %call8 = call i32 @differential(i8* %5)
  store i32 %call8, i32* %ret, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %6 = load i8*, i8** %data.addr, align 8
  %call10 = call i32 @laplace(i8* %6)
  store i32 %call10, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %7 = load i32, i32* %ret, align 4
  %cmp = icmp sgt i32 %7, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end.14

cond.false:                                       ; preds = %sw.epilog
  %8 = load i32, i32* %ret, align 4
  %cmp11 = icmp slt i32 %8, 0
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false
  br label %cond.end

cond.false.13:                                    ; preds = %cond.false
  %9 = load i32, i32* %ret, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.13, %cond.true.12
  %cond = phi i32 [ 0, %cond.true.12 ], [ %9, %cond.false.13 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond15
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sobel(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %v_grad = alloca i32, align 4
  %h_grad = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %v_grad, align 4
  store i32 0, i32* %h_grad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @sobel.v_kernel, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nsw i32 %2, %conv
  %6 = load i32, i32* %v_grad, align 4
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %v_grad, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [9 x i32], [9 x i32]* @sobel.h_kernel, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %mul8 = mul nsw i32 %8, %conv7
  %12 = load i32, i32* %h_grad, align 4
  %add9 = add nsw i32 %12, %mul8
  store i32 %add9, i32* %h_grad, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %v_grad, align 4
  %15 = load i32, i32* %v_grad, align 4
  %mul10 = mul nsw i32 %14, %15
  %conv11 = sitofp i32 %mul10 to double
  %16 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul12 = fmul double %conv11, %16
  %17 = load i32, i32* %h_grad, align 4
  %18 = load i32, i32* %h_grad, align 4
  %mul13 = mul nsw i32 %17, %18
  %conv14 = sitofp i32 %mul13 to double
  %19 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul15 = fmul double %conv14, %19
  %add16 = fadd double %mul12, %mul15
  %call = call double @sqrt(double %add16) #5
  %conv17 = fptosi double %call to i32
  ret i32 %conv17
}

; Function Attrs: nounwind uwtable
define internal i32 @prewitt(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %max = alloca i32, align 4
  %m = alloca [8 x i32], align 16
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %conv, %conv2
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %add5 = add nsw i32 %add, %conv4
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %add8 = add nsw i32 %add5, %conv7
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %mul = mul nsw i32 2, %conv10
  %sub = sub nsw i32 %add8, %mul
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %add13 = add nsw i32 %sub, %conv12
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %sub16 = sub nsw i32 %add13, %conv15
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %sub19 = sub nsw i32 %sub16, %conv18
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  %sub22 = sub nsw i32 %sub19, %conv21
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 0
  store i32 %sub22, i32* %arrayidx23, align 4
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %19 to i32
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %21 to i32
  %add28 = add nsw i32 %conv25, %conv27
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %add31 = add nsw i32 %add28, %conv30
  %24 = load i8*, i8** %data.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %25 to i32
  %add34 = add nsw i32 %add31, %conv33
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 4
  %27 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %27 to i32
  %mul37 = mul nsw i32 2, %conv36
  %sub38 = sub nsw i32 %add34, %mul37
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i64 5
  %29 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %29 to i32
  %sub41 = sub nsw i32 %sub38, %conv40
  %30 = load i8*, i8** %data.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %30, i64 6
  %31 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %31 to i32
  %add44 = add nsw i32 %sub41, %conv43
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %32, i64 7
  %33 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %33 to i32
  %sub47 = sub nsw i32 %add44, %conv46
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %34, i64 8
  %35 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %35 to i32
  %sub50 = sub nsw i32 %sub47, %conv49
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 1
  store i32 %sub50, i32* %arrayidx51, align 4
  %36 = load i8*, i8** %data.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %37 to i32
  %38 = load i8*, i8** %data.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %39 to i32
  %add56 = add nsw i32 %conv53, %conv55
  %40 = load i8*, i8** %data.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %40, i64 2
  %41 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %41 to i32
  %sub59 = sub nsw i32 %add56, %conv58
  %42 = load i8*, i8** %data.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %42, i64 3
  %43 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %43 to i32
  %add62 = add nsw i32 %sub59, %conv61
  %44 = load i8*, i8** %data.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %44, i64 4
  %45 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %45 to i32
  %mul65 = mul nsw i32 2, %conv64
  %sub66 = sub nsw i32 %add62, %mul65
  %46 = load i8*, i8** %data.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %46, i64 5
  %47 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %47 to i32
  %sub69 = sub nsw i32 %sub66, %conv68
  %48 = load i8*, i8** %data.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %48, i64 6
  %49 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %49 to i32
  %add72 = add nsw i32 %sub69, %conv71
  %50 = load i8*, i8** %data.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %50, i64 7
  %51 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %51 to i32
  %add75 = add nsw i32 %add72, %conv74
  %52 = load i8*, i8** %data.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %52, i64 8
  %53 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %53 to i32
  %sub78 = sub nsw i32 %add75, %conv77
  %arrayidx79 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 2
  store i32 %sub78, i32* %arrayidx79, align 4
  %54 = load i8*, i8** %data.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %55 to i32
  %56 = load i8*, i8** %data.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %57 to i32
  %sub84 = sub nsw i32 %conv81, %conv83
  %58 = load i8*, i8** %data.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %59 to i32
  %sub87 = sub nsw i32 %sub84, %conv86
  %60 = load i8*, i8** %data.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %60, i64 3
  %61 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %61 to i32
  %add90 = add nsw i32 %sub87, %conv89
  %62 = load i8*, i8** %data.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %62, i64 4
  %63 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %63 to i32
  %mul93 = mul nsw i32 2, %conv92
  %sub94 = sub nsw i32 %add90, %mul93
  %64 = load i8*, i8** %data.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %64, i64 5
  %65 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %65 to i32
  %sub97 = sub nsw i32 %sub94, %conv96
  %66 = load i8*, i8** %data.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %66, i64 6
  %67 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %67 to i32
  %add100 = add nsw i32 %sub97, %conv99
  %68 = load i8*, i8** %data.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %68, i64 7
  %69 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %69 to i32
  %add103 = add nsw i32 %add100, %conv102
  %70 = load i8*, i8** %data.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %70, i64 8
  %71 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %71 to i32
  %add106 = add nsw i32 %add103, %conv105
  %arrayidx107 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 3
  store i32 %add106, i32* %arrayidx107, align 4
  %72 = load i8*, i8** %data.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %73 to i32
  %sub110 = sub nsw i32 0, %conv109
  %74 = load i8*, i8** %data.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %75 to i32
  %sub113 = sub nsw i32 %sub110, %conv112
  %76 = load i8*, i8** %data.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %76, i64 2
  %77 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %77 to i32
  %sub116 = sub nsw i32 %sub113, %conv115
  %78 = load i8*, i8** %data.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %78, i64 3
  %79 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %79 to i32
  %add119 = add nsw i32 %sub116, %conv118
  %80 = load i8*, i8** %data.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %80, i64 4
  %81 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %81 to i32
  %mul122 = mul nsw i32 2, %conv121
  %sub123 = sub nsw i32 %add119, %mul122
  %82 = load i8*, i8** %data.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %82, i64 5
  %83 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %83 to i32
  %add126 = add nsw i32 %sub123, %conv125
  %84 = load i8*, i8** %data.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %84, i64 6
  %85 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %85 to i32
  %add129 = add nsw i32 %add126, %conv128
  %86 = load i8*, i8** %data.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %86, i64 7
  %87 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %87 to i32
  %add132 = add nsw i32 %add129, %conv131
  %88 = load i8*, i8** %data.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %88, i64 8
  %89 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %89 to i32
  %add135 = add nsw i32 %add132, %conv134
  %arrayidx136 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 4
  store i32 %add135, i32* %arrayidx136, align 4
  %90 = load i8*, i8** %data.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %91 to i32
  %sub139 = sub nsw i32 0, %conv138
  %92 = load i8*, i8** %data.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %93 to i32
  %sub142 = sub nsw i32 %sub139, %conv141
  %94 = load i8*, i8** %data.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %95 to i32
  %add145 = add nsw i32 %sub142, %conv144
  %96 = load i8*, i8** %data.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %96, i64 3
  %97 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %97 to i32
  %sub148 = sub nsw i32 %add145, %conv147
  %98 = load i8*, i8** %data.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %98, i64 4
  %99 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %99 to i32
  %mul151 = mul nsw i32 2, %conv150
  %sub152 = sub nsw i32 %sub148, %mul151
  %100 = load i8*, i8** %data.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %100, i64 5
  %101 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %101 to i32
  %add155 = add nsw i32 %sub152, %conv154
  %102 = load i8*, i8** %data.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %102, i64 6
  %103 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %103 to i32
  %add158 = add nsw i32 %add155, %conv157
  %104 = load i8*, i8** %data.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %104, i64 7
  %105 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %105 to i32
  %add161 = add nsw i32 %add158, %conv160
  %106 = load i8*, i8** %data.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %106, i64 8
  %107 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %107 to i32
  %add164 = add nsw i32 %add161, %conv163
  %arrayidx165 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 5
  store i32 %add164, i32* %arrayidx165, align 4
  %108 = load i8*, i8** %data.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %108, i64 0
  %109 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %109 to i32
  %sub168 = sub nsw i32 0, %conv167
  %110 = load i8*, i8** %data.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %111 to i32
  %add171 = add nsw i32 %sub168, %conv170
  %112 = load i8*, i8** %data.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %112, i64 2
  %113 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %113 to i32
  %add174 = add nsw i32 %add171, %conv173
  %114 = load i8*, i8** %data.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %114, i64 3
  %115 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %115 to i32
  %sub177 = sub nsw i32 %add174, %conv176
  %116 = load i8*, i8** %data.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %116, i64 4
  %117 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %117 to i32
  %mul180 = mul nsw i32 2, %conv179
  %sub181 = sub nsw i32 %sub177, %mul180
  %118 = load i8*, i8** %data.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %118, i64 5
  %119 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %119 to i32
  %add184 = add nsw i32 %sub181, %conv183
  %120 = load i8*, i8** %data.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %120, i64 6
  %121 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %121 to i32
  %sub187 = sub nsw i32 %add184, %conv186
  %122 = load i8*, i8** %data.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %122, i64 7
  %123 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %123 to i32
  %add190 = add nsw i32 %sub187, %conv189
  %124 = load i8*, i8** %data.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %124, i64 8
  %125 = load i8, i8* %arrayidx191, align 1
  %conv192 = zext i8 %125 to i32
  %add193 = add nsw i32 %add190, %conv192
  %arrayidx194 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 6
  store i32 %add193, i32* %arrayidx194, align 4
  %126 = load i8*, i8** %data.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %127 to i32
  %128 = load i8*, i8** %data.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %128, i64 1
  %129 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %129 to i32
  %add199 = add nsw i32 %conv196, %conv198
  %130 = load i8*, i8** %data.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %130, i64 2
  %131 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %131 to i32
  %add202 = add nsw i32 %add199, %conv201
  %132 = load i8*, i8** %data.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %132, i64 3
  %133 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %133 to i32
  %sub205 = sub nsw i32 %add202, %conv204
  %134 = load i8*, i8** %data.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %134, i64 4
  %135 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %135 to i32
  %mul208 = mul nsw i32 2, %conv207
  %sub209 = sub nsw i32 %sub205, %mul208
  %136 = load i8*, i8** %data.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %136, i64 5
  %137 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %137 to i32
  %add212 = add nsw i32 %sub209, %conv211
  %138 = load i8*, i8** %data.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %138, i64 6
  %139 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %139 to i32
  %sub215 = sub nsw i32 %add212, %conv214
  %140 = load i8*, i8** %data.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %140, i64 7
  %141 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %141 to i32
  %sub218 = sub nsw i32 %sub215, %conv217
  %142 = load i8*, i8** %data.addr, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %142, i64 8
  %143 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %143 to i32
  %add221 = add nsw i32 %sub218, %conv220
  %arrayidx222 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 7
  store i32 %add221, i32* %arrayidx222, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %max, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %144 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %144, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %145 = load i32, i32* %max, align 4
  %146 = load i32, i32* %k, align 4
  %idxprom = sext i32 %146 to i64
  %arrayidx224 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 %idxprom
  %147 = load i32, i32* %arrayidx224, align 4
  %cmp225 = icmp slt i32 %145, %147
  br i1 %cmp225, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %148 = load i32, i32* %k, align 4
  %idxprom227 = sext i32 %148 to i64
  %arrayidx228 = getelementptr inbounds [8 x i32], [8 x i32]* %m, i32 0, i64 %idxprom227
  %149 = load i32, i32* %arrayidx228, align 4
  store i32 %149, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %150 = load i32, i32* %k, align 4
  %inc = add nsw i32 %150, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %151 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %152 = load i32, i32* %max, align 4
  %conv229 = sitofp i32 %152 to double
  %mul230 = fmul double %151, %conv229
  %conv231 = fptosi double %mul230 to i32
  ret i32 %conv231
}

; Function Attrs: nounwind uwtable
define internal i32 @gradient(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %v_grad = alloca i32, align 4
  %h_grad = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %v_grad, align 4
  store i32 0, i32* %h_grad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @gradient.v_kernel, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nsw i32 %2, %conv
  %6 = load i32, i32* %v_grad, align 4
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %v_grad, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [9 x i32], [9 x i32]* @gradient.h_kernel, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %mul8 = mul nsw i32 %8, %conv7
  %12 = load i32, i32* %h_grad, align 4
  %add9 = add nsw i32 %12, %mul8
  store i32 %add9, i32* %h_grad, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %v_grad, align 4
  %15 = load i32, i32* %v_grad, align 4
  %mul10 = mul nsw i32 %14, %15
  %conv11 = sitofp i32 %mul10 to double
  %16 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul12 = fmul double %conv11, %16
  %17 = load i32, i32* %h_grad, align 4
  %18 = load i32, i32* %h_grad, align 4
  %mul13 = mul nsw i32 %17, %18
  %conv14 = sitofp i32 %mul13 to double
  %19 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul15 = fmul double %conv14, %19
  %add16 = fadd double %mul12, %mul15
  %call = call double @sqrt(double %add16) #5
  %conv17 = fptosi double %call to i32
  ret i32 %conv17
}

; Function Attrs: nounwind uwtable
define internal i32 @roberts(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %v_grad = alloca i32, align 4
  %h_grad = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %v_grad, align 4
  store i32 0, i32* %h_grad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @roberts.v_kernel, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nsw i32 %2, %conv
  %6 = load i32, i32* %v_grad, align 4
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %v_grad, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [9 x i32], [9 x i32]* @roberts.h_kernel, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %mul8 = mul nsw i32 %8, %conv7
  %12 = load i32, i32* %h_grad, align 4
  %add9 = add nsw i32 %12, %mul8
  store i32 %add9, i32* %h_grad, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %v_grad, align 4
  %15 = load i32, i32* %v_grad, align 4
  %mul10 = mul nsw i32 %14, %15
  %conv11 = sitofp i32 %mul10 to double
  %16 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul12 = fmul double %conv11, %16
  %17 = load i32, i32* %h_grad, align 4
  %18 = load i32, i32* %h_grad, align 4
  %mul13 = mul nsw i32 %17, %18
  %conv14 = sitofp i32 %mul13 to double
  %19 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul15 = fmul double %conv14, %19
  %add16 = fadd double %mul12, %mul15
  %call = call double @sqrt(double %add16) #5
  %conv17 = fptosi double %call to i32
  ret i32 %conv17
}

; Function Attrs: nounwind uwtable
define internal i32 @differential(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %v_grad = alloca i32, align 4
  %h_grad = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %v_grad, align 4
  store i32 0, i32* %h_grad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @differential.v_kernel, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nsw i32 %2, %conv
  %6 = load i32, i32* %v_grad, align 4
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %v_grad, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [9 x i32], [9 x i32]* @differential.h_kernel, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %mul8 = mul nsw i32 %8, %conv7
  %12 = load i32, i32* %h_grad, align 4
  %add9 = add nsw i32 %12, %mul8
  store i32 %add9, i32* %h_grad, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %v_grad, align 4
  %15 = load i32, i32* %v_grad, align 4
  %mul10 = mul nsw i32 %14, %15
  %conv11 = sitofp i32 %mul10 to double
  %16 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul12 = fmul double %conv11, %16
  %17 = load i32, i32* %h_grad, align 4
  %18 = load i32, i32* %h_grad, align 4
  %mul13 = mul nsw i32 %17, %18
  %conv14 = sitofp i32 %mul13 to double
  %19 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul15 = fmul double %conv14, %19
  %add16 = fadd double %mul12, %mul15
  %call = call double @sqrt(double %add16) #5
  %conv17 = fptosi double %call to i32
  ret i32 %conv17
}

; Function Attrs: nounwind uwtable
define internal i32 @laplace(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %grad = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %grad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @laplace.kernel, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nsw i32 %2, %conv
  %6 = load i32, i32* %grad, align 4
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %grad, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %grad, align 4
  %conv3 = sitofp i32 %8 to double
  %9 = load double, double* getelementptr inbounds (%struct.EdgeVals, %struct.EdgeVals* @evals, i32 0, i32 0), align 8
  %mul4 = fmul double %conv3, %9
  %conv5 = fptosi double %mul4 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
