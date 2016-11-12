; ModuleID = './plug-ins/common/blur-gauss-selective.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.BlurValues = type { double, i32 }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Radius of gaussian blur (in pixels, > 0.0)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"max-delta\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Maximum delta\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"plug-in-sel-gauss\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Blur neighboring pixels, but only in low-contrast areas\00", align 1
@.str.12 = private unnamed_addr constant [307 x i8] c"This filter functions similar to the regular gaussian blur filter except that neighbouring pixels that differ more than the given maxdelta parameter will not be blended with. This way with the correct parameters, an image can be smoothed out without losing details. However, this filter can be rather slow.\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Thom van Os\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"_Selective Gaussian Blur...\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"<Image>/Filters/Blur\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@bvals = internal global %struct.BlurValues { double 5.000000e+00, i32 50 }, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"Selective Gaussian Blur\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"blur-gauss-selective\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"gimp-blur-gauss-selective\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"_Blur radius:\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"_Max. delta:\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"blur-gauss-selective.c\00", align 1
@__func__.matrixmult_mmx = private unnamed_addr constant [15 x i8] c"matrixmult_mmx\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"has_alpha ? (bytes == 4) : (bytes == 3 || bytes == 1)\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0))
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
  %radius = alloca double, align 8
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call) #7
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #7
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #7
  br label %do.end

do.end:                                           ; preds = %do.body
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
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 5
  %8 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %8
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.BlurValues* @bvals to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @sel_gauss_dialog(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %11, 5
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %sw.bb.9
  %12 = load i32, i32* %status, align 4
  %cmp13 = icmp eq i32 %12, 3
  br i1 %cmp13, label %if.then.15, label %if.end.39

if.then.15:                                       ; preds = %if.end.12
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data17 to double*
  %14 = load double, double* %d_float, align 8
  store double %14, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_int3220 = bitcast %union._GimpParamData* %data19 to i32*
  %16 = load i32, i32* %d_int3220, align 4
  %cmp21 = icmp sgt i32 %16, 255
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  br label %cond.end.33

cond.false:                                       ; preds = %if.then.15
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 4
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_int3225 = bitcast %union._GimpParamData* %data24 to i32*
  %18 = load i32, i32* %d_int3225, align 4
  %cmp26 = icmp slt i32 %18, 0
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false
  br label %cond.end

cond.false.29:                                    ; preds = %cond.false
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 4
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %20 = load i32, i32* %d_int3232, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.29, %cond.true.28
  %cond = phi i32 [ 0, %cond.true.28 ], [ %20, %cond.false.29 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond34, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 4
  %21 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %cmp35 = fcmp ole double %21, 0.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %cond.end.33
  store i32 1, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %cond.end.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.12
  br label %sw.epilog

sw.bb.40:                                         ; preds = %do.end
  %call41 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.BlurValues* @bvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.40, %if.end.39, %if.end
  %22 = load i32, i32* %status, align 4
  %cmp42 = icmp ne i32 %22, 3
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.epilog
  %23 = load i32, i32* %status, align 4
  store i32 %23, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.45:                                        ; preds = %sw.epilog
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 0
  %25 = load i32, i32* %drawable_id, align 4
  %call46 = call i32 @gimp_drawable_is_rgb(i32 %25)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.45
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 0
  %27 = load i32, i32* %drawable_id48, align 4
  %call49 = call i32 @gimp_drawable_is_gray(i32 %27)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %lor.lhs.false, %if.end.45
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)) #7
  %call53 = call i32 @gimp_progress_init(i8* %call52)
  %28 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %call54 = call double @fabs(double %28) #6
  %add = fadd double %call54, 1.000000e+00
  store double %add, double* %radius, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = load double, double* %radius, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 4
  call void @sel_gauss(%struct._GimpDrawable* %29, double %30, i32 %31)
  %32 = load i32, i32* %run_mode, align 4
  %cmp55 = icmp eq i32 %32, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.51
  %call58 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.BlurValues* @bvals to i8*), i32 16)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.51
  %33 = load i32, i32* %run_mode, align 4
  %cmp60 = icmp ne i32 %33, 1
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %call63 = call i32 @gimp_displays_flush()
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  br label %if.end.67

if.else:                                          ; preds = %lor.lhs.false
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0)) #7
  %call66 = call i32 @gimp_message(i8* %call65)
  store i32 0, i32* %status, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.end.64
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %34)
  %35 = load i32, i32* %status, align 4
  store i32 %35, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.67, %if.then.44, %if.then
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

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sel_gauss_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %26, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %29, i32 6)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %call25 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %35, double 0.000000e+00, double 0x41DFFFFFFFC00000, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %spinbutton, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)) #7
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call29 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %38, i32 0, i32 0, i8* %call28, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %39, i32 1, i32 1)
  %40 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %41 = bitcast %struct._GtkObject* %40 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.BlurValues* @bvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 2)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #7
  %49 = load i32, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 4
  %conv = sitofp i32 %49 to double
  %call35 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %48, i32 0, i32 1, i8* %call34, i32 128, i32 0, double %conv, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call35, %struct._GtkObject** %adj, align 8
  %50 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %51 = bitcast %struct._GtkObject* %50 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %53 = bitcast %struct._GtkObject* %52 to i8*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 2)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_dialog_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpDialog*
  %call40 = call i32 @gimp_dialog_run(%struct._GimpDialog* %59)
  %cmp = icmp eq i32 %call40, -5
  %conv41 = zext i1 %cmp to i32
  store i32 %conv41, i32* %run, align 4
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %60)
  %61 = load i32, i32* %run, align 4
  ret i32 %61
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal void @sel_gauss(%struct._GimpDrawable* %drawable, double %radius, i32 %maxdelta) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %radius.addr = alloca double, align 8
  %maxdelta.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bytes = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %mat = alloca double*, align 8
  %numrad = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %radius, double* %radius.addr, align 8
  store i32 %maxdelta, i32* %maxdelta.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 3
  %3 = load i32, i32* %bpp, align 4
  store i32 %3, i32* %bytes, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %5)
  store i32 %call2, i32* %has_alpha, align 4
  %6 = load double, double* %radius.addr, align 8
  %add = fadd double %6, 1.000000e+00
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %numrad, align 4
  %7 = load i32, i32* %numrad, align 4
  %conv3 = sext i32 %7 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 8)
  %8 = bitcast i8* %call4 to double*
  store double* %8, double** %mat, align 8
  %9 = load double, double* %radius.addr, align 8
  %10 = load double*, double** %mat, align 8
  %11 = load i32, i32* %numrad, align 4
  call void @init_matrix(double %9, double* %10, i32 %11)
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %width, align 4
  %add5 = add nsw i32 %12, %13
  %sub = sub nsw i32 %add5, 1
  %14 = load i32, i32* %numrad, align 4
  %add6 = add nsw i32 %sub, %14
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width7, align 4
  %cmp = icmp ult i32 %add6, %16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* %width, align 4
  %add9 = add nsw i32 %17, %18
  %sub10 = sub nsw i32 %add9, 1
  %19 = load i32, i32* %numrad, align 4
  %add11 = add nsw i32 %sub10, %19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 1
  %21 = load i32, i32* %width12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add11, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %x2, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %height, align 4
  %add13 = add nsw i32 %22, %23
  %sub14 = sub nsw i32 %add13, 1
  %24 = load i32, i32* %numrad, align 4
  %add15 = add nsw i32 %sub14, %24
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 2
  %26 = load i32, i32* %height16, align 4
  %cmp17 = icmp ult i32 %add15, %26
  br i1 %cmp17, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %cond.end
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %height, align 4
  %add20 = add nsw i32 %27, %28
  %sub21 = sub nsw i32 %add20, 1
  %29 = load i32, i32* %numrad, align 4
  %add22 = add nsw i32 %sub21, %29
  br label %cond.end.25

cond.false.23:                                    ; preds = %cond.end
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height24, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.19
  %cond26 = phi i32 [ %add22, %cond.true.19 ], [ %31, %cond.false.23 ]
  store i32 %cond26, i32* %y2, align 4
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %numrad, align 4
  %sub27 = sub nsw i32 %32, %33
  %add28 = add nsw i32 %sub27, 1
  %cmp29 = icmp sgt i32 %add28, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.34

cond.true.31:                                     ; preds = %cond.end.25
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %numrad, align 4
  %sub32 = sub nsw i32 %34, %35
  %add33 = add nsw i32 %sub32, 1
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end.25
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.31
  %cond36 = phi i32 [ %add33, %cond.true.31 ], [ 0, %cond.false.34 ]
  store i32 %cond36, i32* %x, align 4
  %36 = load i32, i32* %y, align 4
  %37 = load i32, i32* %numrad, align 4
  %sub37 = sub nsw i32 %36, %37
  %add38 = add nsw i32 %sub37, 1
  %cmp39 = icmp sgt i32 %add38, 0
  br i1 %cmp39, label %cond.true.41, label %cond.false.44

cond.true.41:                                     ; preds = %cond.end.35
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %numrad, align 4
  %sub42 = sub nsw i32 %38, %39
  %add43 = add nsw i32 %sub42, 1
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.35
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.41
  %cond46 = phi i32 [ %add43, %cond.true.41 ], [ 0, %cond.false.44 ]
  store i32 %cond46, i32* %y, align 4
  %40 = load i32, i32* %x2, align 4
  %41 = load i32, i32* %x, align 4
  %sub47 = sub nsw i32 %40, %41
  store i32 %sub47, i32* %width, align 4
  %42 = load i32, i32* %y2, align 4
  %43 = load i32, i32* %y, align 4
  %sub48 = sub nsw i32 %42, %43
  store i32 %sub48, i32* %height, align 4
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %44, %45
  %46 = load i32, i32* %bytes, align 4
  %mul49 = mul nsw i32 %mul, %46
  %add50 = add nsw i32 %mul49, 16
  %conv51 = sext i32 %add50 to i64
  %call52 = call noalias i8* @g_malloc_n(i64 %conv51, i64 1)
  store i8* %call52, i8** %src, align 8
  %47 = load i32, i32* %width, align 4
  %48 = load i32, i32* %height, align 4
  %mul53 = mul nsw i32 %47, %48
  %49 = load i32, i32* %bytes, align 4
  %mul54 = mul nsw i32 %mul53, %49
  %conv55 = sext i32 %mul54 to i64
  %call56 = call noalias i8* @g_malloc_n(i64 %conv55, i64 1)
  store i8* %call56, i8** %dest, align 8
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 0, i32 0)
  %55 = load i8*, i8** %src, align 8
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %width, align 4
  %59 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %60 = load i8*, i8** %src, align 8
  %61 = load i8*, i8** %dest, align 8
  %62 = load i32, i32* %width, align 4
  %63 = load i32, i32* %height, align 4
  %64 = load double*, double** %mat, align 8
  %65 = load i32, i32* %numrad, align 4
  %66 = load i32, i32* %bytes, align 4
  %67 = load i32, i32* %has_alpha, align 4
  %68 = load i32, i32* %maxdelta.addr, align 4
  call void @matrixmult(i8* %60, i8* %61, i32 %62, i32 %63, double* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 0)
  %call57 = call i32 @gimp_progress_update(double 1.000000e+00)
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %70 = load i32, i32* %x, align 4
  %71 = load i32, i32* %y, align 4
  %72 = load i32, i32* %width, align 4
  %73 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 1, i32 1)
  %74 = load i8*, i8** %dest, align 8
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dest_rgn, i8* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %79)
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id58 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %80, i32 0, i32 0
  %81 = load i32, i32* %drawable_id58, align 4
  %call59 = call i32 @gimp_drawable_merge_shadow(i32 %81, i32 1)
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id60 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 0
  %83 = load i32, i32* %drawable_id60, align 4
  %84 = load i32, i32* %x, align 4
  %85 = load i32, i32* %y, align 4
  %86 = load i32, i32* %width, align 4
  %87 = load i32, i32* %height, align 4
  %call61 = call i32 @gimp_drawable_update(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %88 = load i8*, i8** %src, align 8
  call void @g_free(i8* %88)
  %89 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %89)
  %90 = load double*, double** %mat, align 8
  %91 = bitcast double* %90 to i8*
  call void @g_free(i8* %91)
  br label %return

return:                                           ; preds = %cond.end.45, %if.then
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_message(i8*) #1

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
define internal void @preview_update(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %bytes = alloca i64, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %render_buffer = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %src = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %numrad = alloca i32, align 4
  %mat = alloca double*, align 8
  %radius = alloca double, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %2)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 3
  %4 = load i32, i32* %bpp, align 4
  %conv = zext i32 %4 to i64
  store i64 %conv, i64* %bytes, align 8
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %5, i32* %x, i32* %y)
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %6, i32* %width, i32* %height)
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 0, i32 0)
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %12, %13
  %conv3 = sext i32 %mul to i64
  %14 = load i64, i64* %bytes, align 8
  %mul4 = mul nsw i64 %conv3, %14
  %call5 = call noalias i8* @g_malloc_n(i64 %mul4, i64 1)
  store i8* %call5, i8** %render_buffer, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  %mul6 = mul nsw i32 %15, %16
  %conv7 = sext i32 %mul6 to i64
  %17 = load i64, i64* %bytes, align 8
  %mul8 = mul nsw i64 %conv7, %17
  %add = add nsw i64 %mul8, 16
  %call9 = call noalias i8* @g_malloc_n(i64 %add, i64 1)
  store i8* %call9, i8** %src, align 8
  %18 = load i8*, i8** %src, align 8
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %srcPR, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_has_alpha(i32 %24)
  store i32 %call10, i32* %has_alpha, align 4
  %25 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %call11 = call double @fabs(double %25) #6
  %add12 = fadd double %call11, 1.000000e+00
  store double %add12, double* %radius, align 8
  %26 = load double, double* %radius, align 8
  %add13 = fadd double %26, 1.000000e+00
  %conv14 = fptosi double %add13 to i32
  store i32 %conv14, i32* %numrad, align 4
  %27 = load i32, i32* %numrad, align 4
  %conv15 = sext i32 %27 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 8)
  %28 = bitcast i8* %call16 to double*
  store double* %28, double** %mat, align 8
  %29 = load double, double* %radius, align 8
  %30 = load double*, double** %mat, align 8
  %31 = load i32, i32* %numrad, align 4
  call void @init_matrix(double %29, double* %30, i32 %31)
  %32 = load i8*, i8** %src, align 8
  %33 = load i8*, i8** %render_buffer, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  %36 = load double*, double** %mat, align 8
  %37 = load i32, i32* %numrad, align 4
  %38 = load i64, i64* %bytes, align 8
  %conv17 = trunc i64 %38 to i32
  %39 = load i32, i32* %has_alpha, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 4
  call void @matrixmult(i8* %32, i8* %33, i32 %34, i32 %35, double* %36, i32 %37, i32 %conv17, i32 %39, i32 %40, i32 1)
  %41 = load double*, double** %mat, align 8
  %42 = bitcast double* %41 to i8*
  call void @g_free(i8* %42)
  %43 = load i8*, i8** %src, align 8
  call void @g_free(i8* %43)
  %44 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %45 = load i8*, i8** %render_buffer, align 8
  %46 = load i32, i32* %width, align 4
  %conv18 = sext i32 %46 to i64
  %47 = load i64, i64* %bytes, align 8
  %mul19 = mul nsw i64 %conv18, %47
  %conv20 = trunc i64 %mul19 to i32
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %44, i8* %45, i32 %conv20)
  %48 = load i8*, i8** %render_buffer, align 8
  call void @g_free(i8* %48)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_matrix(double %radius, double* %mat, i32 %num) #0 {
entry:
  %radius.addr = alloca double, align 8
  %mat.addr = alloca double*, align 8
  %num.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %sd = alloca double, align 8
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  store double %radius, double* %radius.addr, align 8
  store double* %mat, double** %mat.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load double, double* %radius.addr, align 8
  %div = fdiv double %0, 0x400AA1E147B6AB81
  store double %div, double* %sd, align 8
  %1 = load double, double* %sd, align 8
  %mul = fmul double 0x401921FB54442D18, %1
  %call = call double @sqrt(double %mul) #7
  %div1 = fdiv double 1.000000e+00, %call
  store double %div1, double* %c1, align 8
  %2 = load double, double* %sd, align 8
  %3 = load double, double* %sd, align 8
  %mul2 = fmul double %2, %3
  %mul3 = fmul double -2.000000e+00, %mul2
  store double %mul3, double* %c2, align 8
  store i32 0, i32* %dx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %dx, align 4
  %5 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double, double* %c1, align 8
  %7 = load i32, i32* %dx, align 4
  %8 = load i32, i32* %dx, align 4
  %mul4 = mul nsw i32 %7, %8
  %conv = sitofp i32 %mul4 to double
  %9 = load double, double* %c2, align 8
  %div5 = fdiv double %conv, %9
  %call6 = call double @exp(double %div5) #7
  %mul7 = fmul double %6, %call6
  %10 = load i32, i32* %dx, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load double*, double** %mat.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %mul7, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %dx, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %dx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @matrixmult(i8* %src, i8* %dest, i32 %width, i32 %height, double* %mat, i32 %numrad, i32 %bytes, i32 %has_alpha, i32 %maxdelta, i32 %preview_mode) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mat.addr = alloca double*, align 8
  %numrad.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %maxdelta.addr = alloca i32, align 4
  %preview_mode.addr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double* %mat, double** %mat.addr, align 8
  store i32 %numrad, i32* %numrad.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32 %maxdelta, i32* %maxdelta.addr, align 4
  store i32 %preview_mode, i32* %preview_mode.addr, align 4
  %0 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %has_alpha.addr, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %has_alpha.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %src.addr, align 8
  %4 = load i8*, i8** %dest.addr, align 8
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %7 = load double*, double** %mat.addr, align 8
  %8 = load i32, i32* %numrad.addr, align 4
  %9 = load i32, i32* %maxdelta.addr, align 4
  %10 = load i32, i32* %preview_mode.addr, align 4
  call void @matrixmult_int(i8* %3, i8* %4, i32 %5, i32 %6, double* %7, i32 %8, i32 1, i32 0, i32 %9, i32 %10)
  br label %if.end.21

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load i32, i32* %bytes.addr, align 4
  %cmp2 = icmp eq i32 %11, 2
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.6

land.lhs.true.3:                                  ; preds = %if.end
  %12 = load i32, i32* %has_alpha.addr, align 4
  %cmp4 = icmp eq i32 %12, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true.3
  %13 = load i8*, i8** %src.addr, align 8
  %14 = load i8*, i8** %dest.addr, align 8
  %15 = load i32, i32* %width.addr, align 4
  %16 = load i32, i32* %height.addr, align 4
  %17 = load double*, double** %mat.addr, align 8
  %18 = load i32, i32* %numrad.addr, align 4
  %19 = load i32, i32* %maxdelta.addr, align 4
  %20 = load i32, i32* %preview_mode.addr, align 4
  call void @matrixmult_int(i8* %13, i8* %14, i32 %15, i32 %16, double* %17, i32 %18, i32 2, i32 1, i32 %19, i32 %20)
  br label %if.end.21

if.end.6:                                         ; preds = %land.lhs.true.3, %if.end
  %21 = load i32, i32* %bytes.addr, align 4
  %cmp7 = icmp eq i32 %21, 3
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.end.6
  %22 = load i32, i32* %has_alpha.addr, align 4
  %cmp9 = icmp eq i32 %22, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.8
  %23 = load i8*, i8** %src.addr, align 8
  %24 = load i8*, i8** %dest.addr, align 8
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %height.addr, align 4
  %27 = load double*, double** %mat.addr, align 8
  %28 = load i32, i32* %numrad.addr, align 4
  %29 = load i32, i32* %maxdelta.addr, align 4
  %30 = load i32, i32* %preview_mode.addr, align 4
  call void @matrixmult_int(i8* %23, i8* %24, i32 %25, i32 %26, double* %27, i32 %28, i32 3, i32 0, i32 %29, i32 %30)
  br label %if.end.21

if.end.11:                                        ; preds = %land.lhs.true.8, %if.end.6
  %31 = load i32, i32* %bytes.addr, align 4
  %cmp12 = icmp eq i32 %31, 4
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.16

land.lhs.true.13:                                 ; preds = %if.end.11
  %32 = load i32, i32* %has_alpha.addr, align 4
  %cmp14 = icmp eq i32 %32, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.13
  %33 = load i8*, i8** %src.addr, align 8
  %34 = load i8*, i8** %dest.addr, align 8
  %35 = load i32, i32* %width.addr, align 4
  %36 = load i32, i32* %height.addr, align 4
  %37 = load double*, double** %mat.addr, align 8
  %38 = load i32, i32* %numrad.addr, align 4
  %39 = load i32, i32* %maxdelta.addr, align 4
  %40 = load i32, i32* %preview_mode.addr, align 4
  call void @matrixmult_int(i8* %33, i8* %34, i32 %35, i32 %36, double* %37, i32 %38, i32 4, i32 1, i32 %39, i32 %40)
  br label %if.end.21

if.end.16:                                        ; preds = %land.lhs.true.13, %if.end.11
  %41 = load i32, i32* %bytes.addr, align 4
  %42 = load i32, i32* %bytes.addr, align 4
  %cmp17 = icmp eq i32 %41, %42
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %if.end.16
  %43 = load i32, i32* %has_alpha.addr, align 4
  %44 = load i32, i32* %has_alpha.addr, align 4
  %cmp19 = icmp eq i32 %43, %44
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.18
  %45 = load i8*, i8** %src.addr, align 8
  %46 = load i8*, i8** %dest.addr, align 8
  %47 = load i32, i32* %width.addr, align 4
  %48 = load i32, i32* %height.addr, align 4
  %49 = load double*, double** %mat.addr, align 8
  %50 = load i32, i32* %numrad.addr, align 4
  %51 = load i32, i32* %bytes.addr, align 4
  %52 = load i32, i32* %has_alpha.addr, align 4
  %53 = load i32, i32* %maxdelta.addr, align 4
  %54 = load i32, i32* %preview_mode.addr, align 4
  call void @matrixmult_int(i8* %45, i8* %46, i32 %47, i32 %48, double* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.5, %if.then.10, %if.then.15, %if.then.20, %land.lhs.true.18, %if.end.16
  ret void
}

declare void @g_free(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @matrixmult_int(i8* %src, i8* %dest, i32 %width, i32 %height, double* %mat, i32 %numrad, i32 %bytes, i32 %has_alpha, i32 %maxdelta, i32 %preview_mode) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mat.addr = alloca double*, align 8
  %numrad.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %maxdelta.addr = alloca i32, align 4
  %preview_mode.addr = alloca i32, align 4
  %nb = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %imat = alloca i16*, align 8
  %fsum = alloca double, align 8
  %fscale = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %d = alloca i32, align 4
  %cpu = alloca i32, align 4
  %dix = alloca i32, align 4
  %src_db = alloca i8*, align 8
  %sum = alloca i32, align 4
  %fact = alloca i32, align 4
  %offset = alloca i32, align 4
  %src_b = alloca i8*, align 8
  %rowsum = alloca i32, align 4
  %rowfact = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double* %mat, double** %mat.addr, align 8
  store i32 %numrad, i32* %numrad.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32 %maxdelta, i32* %maxdelta.addr, align 4
  store i32 %preview_mode, i32* %preview_mode.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %sub = sub nsw i32 %0, %cond
  store i32 %sub, i32* %nb, align 4
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %rowstride, align 4
  %4 = load i32, i32* %has_alpha.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then, label %if.end.6

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %bytes.addr, align 4
  %cmp2 = icmp eq i32 %6, 3
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false
  %7 = load i32, i32* %bytes.addr, align 4
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %cond.true
  %call = call i32 @gimp_cpu_accel_get_support()
  store i32 %call, i32* %cpu, align 4
  %8 = load i32, i32* %cpu, align 4
  %and = and i32 %8, 805306368
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load i8*, i8** %src.addr, align 8
  %10 = load i8*, i8** %dest.addr, align 8
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %13 = load double*, double** %mat.addr, align 8
  %14 = load i32, i32* %numrad.addr, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %16 = load i32, i32* %has_alpha.addr, align 4
  %17 = load i32, i32* %maxdelta.addr, align 4
  %18 = load i32, i32* %preview_mode.addr, align 4
  call void @matrixmult_mmx(i8* %9, i8* %10, i32 %11, i32 %12, double* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  br label %for.end.174

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %lor.lhs.false, %cond.true
  %19 = load i32, i32* %numrad.addr, align 4
  %mul7 = mul nsw i32 2, %19
  %conv = sext i32 %mul7 to i64
  %mul8 = mul i64 2, %conv
  %20 = alloca i8, i64 %mul8
  %21 = bitcast i8* %20 to i16*
  store i16* %21, i16** %imat, align 8
  store double 0.000000e+00, double* %fsum, align 8
  %22 = load i32, i32* %numrad.addr, align 4
  %sub9 = sub nsw i32 1, %22
  store i32 %sub9, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %numrad.addr, align 4
  %cmp10 = icmp slt i32 %23, %24
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %y, align 4
  %cmp12 = icmp slt i32 %25, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %for.body
  %26 = load i32, i32* %y, align 4
  %sub15 = sub nsw i32 0, %26
  br label %cond.end

cond.false.16:                                    ; preds = %for.body
  %27 = load i32, i32* %y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.14
  %cond17 = phi i32 [ %sub15, %cond.true.14 ], [ %27, %cond.false.16 ]
  %idxprom = sext i32 %cond17 to i64
  %28 = load double*, double** %mat.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %28, i64 %idxprom
  %29 = load double, double* %arrayidx, align 8
  %30 = load double, double* %fsum, align 8
  %add = fadd double %30, %29
  store double %add, double* %fsum, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %31 = load i32, i32* %y, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load double, double* %fsum, align 8
  %div = fdiv double 4.096000e+03, %32
  store double %div, double* %fscale, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.32, %for.end
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %numrad.addr, align 4
  %cmp19 = icmp slt i32 %33, %34
  br i1 %cmp19, label %for.body.21, label %for.end.34

for.body.21:                                      ; preds = %for.cond.18
  %35 = load i32, i32* %y, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load double*, double** %mat.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %36, i64 %idxprom22
  %37 = load double, double* %arrayidx23, align 8
  %38 = load double, double* %fscale, align 8
  %mul24 = fmul double %37, %38
  %conv25 = fptoui double %mul24 to i16
  %39 = load i32, i32* %numrad.addr, align 4
  %40 = load i32, i32* %y, align 4
  %add26 = add nsw i32 %39, %40
  %idxprom27 = sext i32 %add26 to i64
  %41 = load i16*, i16** %imat, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %41, i64 %idxprom27
  store i16 %conv25, i16* %arrayidx28, align 2
  %42 = load i32, i32* %numrad.addr, align 4
  %43 = load i32, i32* %y, align 4
  %sub29 = sub nsw i32 %42, %43
  %idxprom30 = sext i32 %sub29 to i64
  %44 = load i16*, i16** %imat, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %44, i64 %idxprom30
  store i16 %conv25, i16* %arrayidx31, align 2
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.21
  %45 = load i32, i32* %y, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* %y, align 4
  br label %for.cond.18

for.end.34:                                       ; preds = %for.cond.18
  store i32 0, i32* %y, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.172, %for.end.34
  %46 = load i32, i32* %y, align 4
  %47 = load i32, i32* %height.addr, align 4
  %cmp36 = icmp slt i32 %46, %47
  br i1 %cmp36, label %for.body.38, label %for.end.174

for.body.38:                                      ; preds = %for.cond.35
  store i32 0, i32* %x, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.161, %for.body.38
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %width.addr, align 4
  %cmp40 = icmp slt i32 %48, %49
  br i1 %cmp40, label %for.body.42, label %for.end.163

for.body.42:                                      ; preds = %for.cond.39
  %50 = load i32, i32* %bytes.addr, align 4
  %51 = load i32, i32* %width.addr, align 4
  %52 = load i32, i32* %y, align 4
  %mul43 = mul nsw i32 %51, %52
  %53 = load i32, i32* %x, align 4
  %add44 = add nsw i32 %mul43, %53
  %mul45 = mul nsw i32 %50, %add44
  store i32 %mul45, i32* %dix, align 4
  %54 = load i32, i32* %has_alpha.addr, align 4
  %tobool46 = icmp ne i32 %54, 0
  br i1 %tobool46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %for.body.42
  %55 = load i32, i32* %dix, align 4
  %56 = load i32, i32* %nb, align 4
  %add48 = add nsw i32 %55, %56
  %idxprom49 = sext i32 %add48 to i64
  %57 = load i8*, i8** %src.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %57, i64 %idxprom49
  %58 = load i8, i8* %arrayidx50, align 1
  %59 = load i32, i32* %dix, align 4
  %60 = load i32, i32* %nb, align 4
  %add51 = add nsw i32 %59, %60
  %idxprom52 = sext i32 %add51 to i64
  %61 = load i8*, i8** %dest.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %61, i64 %idxprom52
  store i8 %58, i8* %arrayidx53, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %for.body.42
  store i32 0, i32* %b, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.158, %if.end.54
  %62 = load i32, i32* %b, align 4
  %63 = load i32, i32* %nb, align 4
  %cmp56 = icmp slt i32 %62, %63
  br i1 %cmp56, label %for.body.58, label %for.end.160

for.body.58:                                      ; preds = %for.cond.55
  %64 = load i8*, i8** %src.addr, align 8
  %65 = load i32, i32* %dix, align 4
  %idx.ext = sext i32 %65 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  %66 = load i32, i32* %b, align 4
  %idx.ext59 = sext i32 %66 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext59
  store i8* %add.ptr60, i8** %src_db, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %fact, align 4
  %67 = load i32, i32* %rowstride, align 4
  %68 = load i32, i32* %y, align 4
  %69 = load i32, i32* %numrad.addr, align 4
  %sub61 = sub nsw i32 %68, %69
  %mul62 = mul nsw i32 %67, %sub61
  %70 = load i32, i32* %bytes.addr, align 4
  %71 = load i32, i32* %x, align 4
  %72 = load i32, i32* %numrad.addr, align 4
  %sub63 = sub nsw i32 %71, %72
  %mul64 = mul nsw i32 %70, %sub63
  %add65 = add nsw i32 %mul62, %mul64
  store i32 %add65, i32* %offset, align 4
  %73 = load i32, i32* %numrad.addr, align 4
  %sub66 = sub nsw i32 1, %73
  store i32 %sub66, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.143, %for.body.58
  %74 = load i32, i32* %j, align 4
  %75 = load i32, i32* %numrad.addr, align 4
  %cmp68 = icmp slt i32 %74, %75
  br i1 %cmp68, label %for.body.70, label %for.end.145

for.body.70:                                      ; preds = %for.cond.67
  store i32 0, i32* %rowsum, align 4
  store i32 0, i32* %rowfact, align 4
  %76 = load i32, i32* %rowstride, align 4
  %77 = load i32, i32* %offset, align 4
  %add71 = add nsw i32 %77, %76
  store i32 %add71, i32* %offset, align 4
  %78 = load i32, i32* %y, align 4
  %79 = load i32, i32* %j, align 4
  %add72 = add nsw i32 %78, %79
  %cmp73 = icmp slt i32 %add72, 0
  br i1 %cmp73, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %for.body.70
  %80 = load i32, i32* %y, align 4
  %81 = load i32, i32* %j, align 4
  %add76 = add nsw i32 %80, %81
  %82 = load i32, i32* %height.addr, align 4
  %cmp77 = icmp sge i32 %add76, %82
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.75, %for.body.70
  br label %for.inc.143

if.end.80:                                        ; preds = %lor.lhs.false.75
  %83 = load i8*, i8** %src.addr, align 8
  %84 = load i32, i32* %offset, align 4
  %idx.ext81 = sext i32 %84 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %83, i64 %idx.ext81
  %85 = load i32, i32* %b, align 4
  %idx.ext83 = sext i32 %85 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %add.ptr82, i64 %idx.ext83
  store i8* %add.ptr84, i8** %src_b, align 8
  %86 = load i32, i32* %numrad.addr, align 4
  %sub85 = sub nsw i32 1, %86
  store i32 %sub85, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.128, %if.end.80
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %numrad.addr, align 4
  %cmp87 = icmp slt i32 %87, %88
  br i1 %cmp87, label %for.body.89, label %for.end.130

for.body.89:                                      ; preds = %for.cond.86
  %89 = load i32, i32* %bytes.addr, align 4
  %90 = load i8*, i8** %src_b, align 8
  %idx.ext90 = sext i32 %89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %90, i64 %idx.ext90
  store i8* %add.ptr91, i8** %src_b, align 8
  %91 = load i32, i32* %x, align 4
  %92 = load i32, i32* %i, align 4
  %add92 = add nsw i32 %91, %92
  %cmp93 = icmp slt i32 %add92, 0
  br i1 %cmp93, label %if.then.99, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %for.body.89
  %93 = load i32, i32* %x, align 4
  %94 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %93, %94
  %95 = load i32, i32* %width.addr, align 4
  %cmp97 = icmp sge i32 %add96, %95
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %lor.lhs.false.95, %for.body.89
  br label %for.inc.128

if.end.100:                                       ; preds = %lor.lhs.false.95
  %96 = load i8*, i8** %src_db, align 8
  %97 = load i8, i8* %96, align 1
  %conv101 = zext i8 %97 to i32
  %98 = load i8*, i8** %src_b, align 8
  %99 = load i8, i8* %98, align 1
  %conv102 = zext i8 %99 to i32
  %sub103 = sub nsw i32 %conv101, %conv102
  store i32 %sub103, i32* %tmp, align 4
  %100 = load i32, i32* %tmp, align 4
  %101 = load i32, i32* %maxdelta.addr, align 4
  %cmp104 = icmp sgt i32 %100, %101
  br i1 %cmp104, label %if.then.110, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.end.100
  %102 = load i32, i32* %tmp, align 4
  %103 = load i32, i32* %maxdelta.addr, align 4
  %sub107 = sub nsw i32 0, %103
  %cmp108 = icmp slt i32 %102, %sub107
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %lor.lhs.false.106, %if.end.100
  br label %for.inc.128

if.end.111:                                       ; preds = %lor.lhs.false.106
  %104 = load i32, i32* %numrad.addr, align 4
  %105 = load i32, i32* %i, align 4
  %add112 = add nsw i32 %104, %105
  %idxprom113 = sext i32 %add112 to i64
  %106 = load i16*, i16** %imat, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %106, i64 %idxprom113
  %107 = load i16, i16* %arrayidx114, align 2
  %conv115 = zext i16 %107 to i32
  store i32 %conv115, i32* %d, align 4
  %108 = load i32, i32* %has_alpha.addr, align 4
  %tobool116 = icmp ne i32 %108, 0
  br i1 %tobool116, label %if.then.117, label %if.end.123

if.then.117:                                      ; preds = %if.end.111
  %109 = load i32, i32* %nb, align 4
  %110 = load i32, i32* %b, align 4
  %sub118 = sub nsw i32 %109, %110
  %idxprom119 = sext i32 %sub118 to i64
  %111 = load i8*, i8** %src_b, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %111, i64 %idxprom119
  %112 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %112 to i32
  %113 = load i32, i32* %d, align 4
  %mul122 = mul nsw i32 %113, %conv121
  store i32 %mul122, i32* %d, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.117, %if.end.111
  %114 = load i32, i32* %d, align 4
  %115 = load i8*, i8** %src_b, align 8
  %116 = load i8, i8* %115, align 1
  %conv124 = zext i8 %116 to i32
  %mul125 = mul nsw i32 %114, %conv124
  %117 = load i32, i32* %rowsum, align 4
  %add126 = add i32 %117, %mul125
  store i32 %add126, i32* %rowsum, align 4
  %118 = load i32, i32* %d, align 4
  %119 = load i32, i32* %rowfact, align 4
  %add127 = add i32 %119, %118
  store i32 %add127, i32* %rowfact, align 4
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.123, %if.then.110, %if.then.99
  %120 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %120, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond.86

for.end.130:                                      ; preds = %for.cond.86
  %121 = load i32, i32* %numrad.addr, align 4
  %122 = load i32, i32* %j, align 4
  %add131 = add nsw i32 %121, %122
  %idxprom132 = sext i32 %add131 to i64
  %123 = load i16*, i16** %imat, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %123, i64 %idxprom132
  %124 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %124 to i32
  store i32 %conv134, i32* %d, align 4
  %125 = load i32, i32* %has_alpha.addr, align 4
  %tobool135 = icmp ne i32 %125, 0
  br i1 %tobool135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %for.end.130
  %126 = load i32, i32* %rowsum, align 4
  %shr = lshr i32 %126, 8
  store i32 %shr, i32* %rowsum, align 4
  %127 = load i32, i32* %rowfact, align 4
  %shr137 = lshr i32 %127, 8
  store i32 %shr137, i32* %rowfact, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %for.end.130
  %128 = load i32, i32* %d, align 4
  %129 = load i32, i32* %rowsum, align 4
  %mul139 = mul i32 %128, %129
  %130 = load i32, i32* %sum, align 4
  %add140 = add i32 %130, %mul139
  store i32 %add140, i32* %sum, align 4
  %131 = load i32, i32* %d, align 4
  %132 = load i32, i32* %rowfact, align 4
  %mul141 = mul i32 %131, %132
  %133 = load i32, i32* %fact, align 4
  %add142 = add i32 %133, %mul141
  store i32 %add142, i32* %fact, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.138, %if.then.79
  %134 = load i32, i32* %j, align 4
  %inc144 = add nsw i32 %134, 1
  store i32 %inc144, i32* %j, align 4
  br label %for.cond.67

for.end.145:                                      ; preds = %for.cond.67
  %135 = load i32, i32* %fact, align 4
  %cmp146 = icmp eq i32 %135, 0
  br i1 %cmp146, label %if.then.148, label %if.else

if.then.148:                                      ; preds = %for.end.145
  %136 = load i8*, i8** %src_db, align 8
  %137 = load i8, i8* %136, align 1
  %138 = load i32, i32* %dix, align 4
  %139 = load i32, i32* %b, align 4
  %add149 = add nsw i32 %138, %139
  %idxprom150 = sext i32 %add149 to i64
  %140 = load i8*, i8** %dest.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %140, i64 %idxprom150
  store i8 %137, i8* %arrayidx151, align 1
  br label %if.end.157

if.else:                                          ; preds = %for.end.145
  %141 = load i32, i32* %sum, align 4
  %142 = load i32, i32* %fact, align 4
  %div152 = udiv i32 %141, %142
  %conv153 = trunc i32 %div152 to i8
  %143 = load i32, i32* %dix, align 4
  %144 = load i32, i32* %b, align 4
  %add154 = add nsw i32 %143, %144
  %idxprom155 = sext i32 %add154 to i64
  %145 = load i8*, i8** %dest.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %145, i64 %idxprom155
  store i8 %conv153, i8* %arrayidx156, align 1
  br label %if.end.157

if.end.157:                                       ; preds = %if.else, %if.then.148
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %146 = load i32, i32* %b, align 4
  %inc159 = add nsw i32 %146, 1
  store i32 %inc159, i32* %b, align 4
  br label %for.cond.55

for.end.160:                                      ; preds = %for.cond.55
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.end.160
  %147 = load i32, i32* %x, align 4
  %inc162 = add nsw i32 %147, 1
  store i32 %inc162, i32* %x, align 4
  br label %for.cond.39

for.end.163:                                      ; preds = %for.cond.39
  %148 = load i32, i32* %y, align 4
  %rem = srem i32 %148, 16
  %tobool164 = icmp ne i32 %rem, 0
  br i1 %tobool164, label %if.end.171, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.163
  %149 = load i32, i32* %preview_mode.addr, align 4
  %tobool165 = icmp ne i32 %149, 0
  br i1 %tobool165, label %if.end.171, label %if.then.166

if.then.166:                                      ; preds = %land.lhs.true
  %150 = load i32, i32* %y, align 4
  %conv167 = sitofp i32 %150 to double
  %151 = load i32, i32* %height.addr, align 4
  %conv168 = sitofp i32 %151 to double
  %div169 = fdiv double %conv167, %conv168
  %call170 = call i32 @gimp_progress_update(double %div169)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.166, %land.lhs.true, %for.end.163
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %152 = load i32, i32* %y, align 4
  %inc173 = add nsw i32 %152, 1
  store i32 %inc173, i32* %y, align 4
  br label %for.cond.35

for.end.174:                                      ; preds = %if.then.5, %for.cond.35
  ret void
}

declare i32 @gimp_cpu_accel_get_support() #1

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @matrixmult_mmx(i8* %src, i8* %dest, i32 %width, i32 %height, double* %mat, i32 %numrad, i32 %bytes, i32 %has_alpha, i32 %maxdelta, i32 %preview_mode) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mat.addr = alloca double*, align 8
  %numrad.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %maxdelta.addr = alloca i32, align 4
  %preview_mode.addr = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %maxdelta4 = alloca i64, align 8
  %imat = alloca i16*, align 8
  %fsum = alloca double, align 8
  %fscale = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %fr = alloca i32, align 4
  %fg = alloca i32, align 4
  %fb = alloca i32, align 4
  %offset = alloca i32, align 4
  %dix = alloca i32, align 4
  %src_b = alloca i8*, align 8
  %rowsum = alloca i32, align 4
  %rowfact = alloca i32, align 4
  %src_b154 = alloca i8*, align 8
  %rf = alloca [4 x i16], align 2
  %rr = alloca i32, align 4
  %rg = alloca i32, align 4
  %rb = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double* %mat, double** %mat.addr, align 8
  store i32 %numrad, i32* %numrad.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32 %maxdelta, i32* %maxdelta.addr, align 4
  store i32 %preview_mode, i32* %preview_mode.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32, i32* %maxdelta.addr, align 4
  %conv = sext i32 %2 to i64
  %mul1 = mul i64 %conv, 281479271743489
  store i64 %mul1, i64* %maxdelta4, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %4 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.else

cond.false:                                       ; preds = %do.body
  %5 = load i32, i32* %bytes.addr, align 4
  %cmp3 = icmp eq i32 %5, 3
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false
  %6 = load i32, i32* %bytes.addr, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %cond.true
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %cond.true
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.matrixmult_mmx, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.31, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i32, i32* %numrad.addr, align 4
  %mul7 = mul nsw i32 2, %7
  %add = add nsw i32 %mul7, 3
  %conv8 = sext i32 %add to i64
  %mul9 = mul i64 2, %conv8
  %8 = alloca i8, i64 %mul9
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** %imat, align 8
  store double 0.000000e+00, double* %fsum, align 8
  %10 = load i32, i32* %numrad.addr, align 4
  %sub = sub nsw i32 1, %10
  store i32 %sub, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %numrad.addr, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %y, align 4
  %cmp12 = icmp slt i32 %13, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %for.body
  %14 = load i32, i32* %y, align 4
  %sub15 = sub nsw i32 0, %14
  br label %cond.end

cond.false.16:                                    ; preds = %for.body
  %15 = load i32, i32* %y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.14
  %cond = phi i32 [ %sub15, %cond.true.14 ], [ %15, %cond.false.16 ]
  %idxprom = sext i32 %cond to i64
  %16 = load double*, double** %mat.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %16, i64 %idxprom
  %17 = load double, double* %arrayidx, align 8
  %18 = load double, double* %fsum, align 8
  %add17 = fadd double %18, %17
  store double %add17, double* %fsum, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, i32* %y, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load double*, double** %mat.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %20, i64 0
  %21 = load double, double* %arrayidx18, align 8
  %div = fdiv double 2.560000e+02, %21
  %22 = load double, double* %fsum, align 8
  %div19 = fdiv double 4.096000e+03, %22
  %cmp20 = fcmp olt double %div, %div19
  br i1 %cmp20, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %for.end
  %23 = load double*, double** %mat.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %23, i64 0
  %24 = load double, double* %arrayidx23, align 8
  %div24 = fdiv double 2.560000e+02, %24
  br label %cond.end.27

cond.false.25:                                    ; preds = %for.end
  %25 = load double, double* %fsum, align 8
  %div26 = fdiv double 4.096000e+03, %25
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.22
  %cond28 = phi double [ %div24, %cond.true.22 ], [ %div26, %cond.false.25 ]
  store double %cond28, double* %fscale, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.43, %cond.end.27
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %numrad.addr, align 4
  %cmp30 = icmp slt i32 %26, %27
  br i1 %cmp30, label %for.body.32, label %for.end.45

for.body.32:                                      ; preds = %for.cond.29
  %28 = load i32, i32* %y, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load double*, double** %mat.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %29, i64 %idxprom33
  %30 = load double, double* %arrayidx34, align 8
  %31 = load double, double* %fscale, align 8
  %mul35 = fmul double %30, %31
  %conv36 = fptoui double %mul35 to i16
  %32 = load i32, i32* %numrad.addr, align 4
  %33 = load i32, i32* %y, align 4
  %add37 = add nsw i32 %32, %33
  %idxprom38 = sext i32 %add37 to i64
  %34 = load i16*, i16** %imat, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %34, i64 %idxprom38
  store i16 %conv36, i16* %arrayidx39, align 2
  %35 = load i32, i32* %numrad.addr, align 4
  %36 = load i32, i32* %y, align 4
  %sub40 = sub nsw i32 %35, %36
  %idxprom41 = sext i32 %sub40 to i64
  %37 = load i16*, i16** %imat, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %37, i64 %idxprom41
  store i16 %conv36, i16* %arrayidx42, align 2
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.32
  %38 = load i32, i32* %y, align 4
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, i32* %y, align 4
  br label %for.cond.29

for.end.45:                                       ; preds = %for.cond.29
  %39 = load i32, i32* %numrad.addr, align 4
  store i32 %39, i32* %y, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %for.end.45
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %numrad.addr, align 4
  %add47 = add nsw i32 %41, 3
  %cmp48 = icmp slt i32 %40, %add47
  br i1 %cmp48, label %for.body.50, label %for.end.56

for.body.50:                                      ; preds = %for.cond.46
  %42 = load i32, i32* %numrad.addr, align 4
  %43 = load i32, i32* %y, align 4
  %add51 = add nsw i32 %42, %43
  %idxprom52 = sext i32 %add51 to i64
  %44 = load i16*, i16** %imat, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %44, i64 %idxprom52
  store i16 0, i16* %arrayidx53, align 2
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.50
  %45 = load i32, i32* %y, align 4
  %inc55 = add nsw i32 %45, 1
  store i32 %inc55, i32* %y, align 4
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  store i32 0, i32* %y, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.275, %for.end.56
  %46 = load i32, i32* %y, align 4
  %47 = load i32, i32* %height.addr, align 4
  %cmp58 = icmp slt i32 %46, %47
  br i1 %cmp58, label %for.body.60, label %for.end.277

for.body.60:                                      ; preds = %for.cond.57
  call void asm sideeffect "pxor  %mm7, %mm7 \0A\09", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !1
  store i32 0, i32* %x, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.265, %for.body.60
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %width.addr, align 4
  %cmp62 = icmp slt i32 %48, %49
  br i1 %cmp62, label %for.body.64, label %for.end.267

for.body.64:                                      ; preds = %for.cond.61
  store i32 0, i32* %fb, align 4
  store i32 0, i32* %fg, align 4
  store i32 0, i32* %fr, align 4
  store i32 0, i32* %b, align 4
  store i32 0, i32* %g, align 4
  store i32 0, i32* %r, align 4
  %50 = load i32, i32* %bytes.addr, align 4
  %51 = load i32, i32* %width.addr, align 4
  %52 = load i32, i32* %y, align 4
  %mul65 = mul nsw i32 %51, %52
  %53 = load i32, i32* %x, align 4
  %add66 = add nsw i32 %mul65, %53
  %mul67 = mul nsw i32 %50, %add66
  store i32 %mul67, i32* %dix, align 4
  %54 = load i32, i32* %has_alpha.addr, align 4
  %tobool68 = icmp ne i32 %54, 0
  br i1 %tobool68, label %if.then.69, label %if.end.80

if.then.69:                                       ; preds = %for.body.64
  %55 = load i32, i32* %dix, align 4
  %idxprom70 = sext i32 %55 to i64
  %56 = load i8*, i8** %src.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %56, i64 %idxprom70
  %57 = bitcast i8* %arrayidx71 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %dix, align 4
  %idxprom72 = sext i32 %59 to i64
  %60 = load i8*, i8** %dest.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %60, i64 %idxprom72
  %61 = bitcast i8* %arrayidx73 to i32*
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %dix, align 4
  %add74 = add nsw i32 %62, 3
  %idxprom75 = sext i32 %add74 to i64
  %63 = load i8*, i8** %src.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %63, i64 %idxprom75
  %64 = load i8, i8* %arrayidx76, align 1
  %tobool77 = icmp ne i8 %64, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.then.69
  br label %for.inc.265

if.end.79:                                        ; preds = %if.then.69
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.body.64
  %65 = load i32, i32* %dix, align 4
  %idxprom81 = sext i32 %65 to i64
  %66 = load i8*, i8** %src.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %66, i64 %idxprom81
  call void asm sideeffect "movd         $0, %mm6 \0A\09punpcklbw %mm7, %mm6 \0A\09", "*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx82) #7, !srcloc !2
  %67 = load i32, i32* %rowstride, align 4
  %68 = load i32, i32* %y, align 4
  %69 = load i32, i32* %numrad.addr, align 4
  %sub83 = sub nsw i32 %68, %69
  %mul84 = mul nsw i32 %67, %sub83
  %70 = load i32, i32* %bytes.addr, align 4
  %71 = load i32, i32* %x, align 4
  %72 = load i32, i32* %numrad.addr, align 4
  %sub85 = sub nsw i32 %71, %72
  %mul86 = mul nsw i32 %70, %sub85
  %add87 = add nsw i32 %mul84, %mul86
  store i32 %add87, i32* %offset, align 4
  %73 = load i32, i32* %bytes.addr, align 4
  %cmp88 = icmp eq i32 %73, 1
  br i1 %cmp88, label %if.then.90, label %if.else.148

if.then.90:                                       ; preds = %if.end.80
  call void asm sideeffect "pshufw $$0, %mm6, %mm6 \0A\09", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !3
  %74 = load i32, i32* %numrad.addr, align 4
  %sub91 = sub nsw i32 1, %74
  store i32 %sub91, i32* %j, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.138, %if.then.90
  %75 = load i32, i32* %j, align 4
  %76 = load i32, i32* %numrad.addr, align 4
  %cmp93 = icmp slt i32 %75, %76
  br i1 %cmp93, label %for.body.95, label %for.end.140

for.body.95:                                      ; preds = %for.cond.92
  store i32 0, i32* %rowsum, align 4
  store i32 0, i32* %rowfact, align 4
  %77 = load i32, i32* %rowstride, align 4
  %78 = load i32, i32* %offset, align 4
  %add96 = add nsw i32 %78, %77
  store i32 %add96, i32* %offset, align 4
  %79 = load i32, i32* %y, align 4
  %80 = load i32, i32* %j, align 4
  %add97 = add nsw i32 %79, %80
  %cmp98 = icmp slt i32 %add97, 0
  br i1 %cmp98, label %if.then.104, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %for.body.95
  %81 = load i32, i32* %y, align 4
  %82 = load i32, i32* %j, align 4
  %add101 = add nsw i32 %81, %82
  %83 = load i32, i32* %height.addr, align 4
  %cmp102 = icmp sge i32 %add101, %83
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.100, %for.body.95
  br label %for.inc.138

if.end.105:                                       ; preds = %lor.lhs.false.100
  %84 = load i8*, i8** %src.addr, align 8
  %85 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %85 to i64
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 %idx.ext
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr, i64 -3
  store i8* %add.ptr106, i8** %src_b, align 8
  call void asm sideeffect "pxor  %mm5, %mm5 \0A\09pxor  %mm4, %mm4 \0A\09", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !4
  %86 = load i32, i32* %numrad.addr, align 4
  %sub107 = sub nsw i32 1, %86
  store i32 %sub107, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.125, %if.end.105
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %numrad.addr, align 4
  %cmp109 = icmp slt i32 %87, %88
  br i1 %cmp109, label %for.body.111, label %for.end.127

for.body.111:                                     ; preds = %for.cond.108
  %89 = load i8*, i8** %src_b, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %89, i64 4
  store i8* %add.ptr112, i8** %src_b, align 8
  %90 = load i32, i32* %x, align 4
  %91 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %90, %91
  %cmp114 = icmp slt i32 %add113, 0
  br i1 %cmp114, label %if.then.120, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %for.body.111
  %92 = load i32, i32* %x, align 4
  %93 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %92, %93
  %94 = load i32, i32* %width.addr, align 4
  %cmp118 = icmp sge i32 %add117, %94
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %lor.lhs.false.116, %for.body.111
  br label %for.inc.125

if.end.121:                                       ; preds = %lor.lhs.false.116
  %95 = load i8*, i8** %src_b, align 8
  %96 = load i32, i32* %numrad.addr, align 4
  %97 = load i32, i32* %i, align 4
  %add122 = add nsw i32 %96, %97
  %idxprom123 = sext i32 %add122 to i64
  %98 = load i16*, i16** %imat, align 8
  %arrayidx124 = getelementptr inbounds i16, i16* %98, i64 %idxprom123
  call void asm sideeffect "movd         $0, %mm0 \0A\09movq      %mm6, %mm1 \0A\09punpcklbw %mm7, %mm0 \0A\09psubusw   %mm0, %mm1 \0A\09movq      %mm0, %mm2 \0A\09psubusw   %mm6, %mm2 \0A\09por       %mm2, %mm1 \0A\09pcmpgtw      $1, %mm1 \0A\09pandn        $2, %mm1 \0A\09pmullw    %mm1, %mm0 \0A\09paddusw   %mm1, %mm5 \0A\09movq      %mm0, %mm2 \0A\09punpcklwd %mm7, %mm0 \0A\09punpckhwd %mm7, %mm2 \0A\09paddd     %mm0, %mm4 \0A\09paddd     %mm2, %mm4 \0A\09", "*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i8* %95, i64* %maxdelta4, i16* %arrayidx124) #7, !srcloc !5
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.121, %if.then.120
  %99 = load i32, i32* %i, align 4
  %add126 = add nsw i32 %99, 4
  store i32 %add126, i32* %i, align 4
  br label %for.cond.108

for.end.127:                                      ; preds = %for.cond.108
  call void asm sideeffect "pshufw $$0xb1, %mm5, %mm3 \0A\09paddusw       %mm3, %mm5 \0A\09pshufw $$0x0e, %mm4, %mm2 \0A\09pshufw $$0x0e, %mm5, %mm3 \0A\09paddd         %mm2, %mm4 \0A\09paddusw       %mm3, %mm5 \0A\09movd          %mm4, $0    \0A\09movd          %mm5, $1    \0A\09", "=*imr,=*imr,~{dirflag},~{fpsr},~{flags}"(i32* %rowsum, i32* %rowfact) #7, !srcloc !6
  %100 = load i32, i32* %numrad.addr, align 4
  %101 = load i32, i32* %j, align 4
  %add128 = add nsw i32 %100, %101
  %idxprom129 = sext i32 %add128 to i64
  %102 = load i16*, i16** %imat, align 8
  %arrayidx130 = getelementptr inbounds i16, i16* %102, i64 %idxprom129
  %103 = load i16, i16* %arrayidx130, align 2
  %conv131 = zext i16 %103 to i32
  store i32 %conv131, i32* %d, align 4
  %104 = load i32, i32* %d, align 4
  %105 = load i32, i32* %rowsum, align 4
  %mul132 = mul i32 %104, %105
  %106 = load i32, i32* %r, align 4
  %add133 = add i32 %106, %mul132
  store i32 %add133, i32* %r, align 4
  %107 = load i32, i32* %d, align 4
  %108 = load i32, i32* %rowfact, align 4
  %conv134 = trunc i32 %108 to i16
  %conv135 = zext i16 %conv134 to i32
  %mul136 = mul nsw i32 %107, %conv135
  %109 = load i32, i32* %fr, align 4
  %add137 = add i32 %109, %mul136
  store i32 %add137, i32* %fr, align 4
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.127, %if.then.104
  %110 = load i32, i32* %j, align 4
  %inc139 = add nsw i32 %110, 1
  store i32 %inc139, i32* %j, align 4
  br label %for.cond.92

for.end.140:                                      ; preds = %for.cond.92
  %111 = load i32, i32* %fr, align 4
  %tobool141 = icmp ne i32 %111, 0
  br i1 %tobool141, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %for.end.140
  %112 = load i32, i32* %r, align 4
  %113 = load i32, i32* %fr, align 4
  %div143 = udiv i32 %112, %113
  %conv144 = trunc i32 %div143 to i8
  %114 = load i32, i32* %dix, align 4
  %idxprom145 = sext i32 %114 to i64
  %115 = load i8*, i8** %dest.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %115, i64 %idxprom145
  store i8 %conv144, i8* %arrayidx146, align 1
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.142, %for.end.140
  br label %if.end.264

if.else.148:                                      ; preds = %if.end.80
  %116 = load i32, i32* %numrad.addr, align 4
  %sub149 = sub nsw i32 1, %116
  store i32 %sub149, i32* %j, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.218, %if.else.148
  %117 = load i32, i32* %j, align 4
  %118 = load i32, i32* %numrad.addr, align 4
  %cmp151 = icmp slt i32 %117, %118
  br i1 %cmp151, label %for.body.153, label %for.end.220

for.body.153:                                     ; preds = %for.cond.150
  %119 = load i32, i32* %rowstride, align 4
  %120 = load i32, i32* %offset, align 4
  %add155 = add nsw i32 %120, %119
  store i32 %add155, i32* %offset, align 4
  %121 = load i32, i32* %y, align 4
  %122 = load i32, i32* %j, align 4
  %add156 = add nsw i32 %121, %122
  %cmp157 = icmp slt i32 %add156, 0
  br i1 %cmp157, label %if.then.163, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %for.body.153
  %123 = load i32, i32* %y, align 4
  %124 = load i32, i32* %j, align 4
  %add160 = add nsw i32 %123, %124
  %125 = load i32, i32* %height.addr, align 4
  %cmp161 = icmp sge i32 %add160, %125
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %lor.lhs.false.159, %for.body.153
  br label %for.inc.218

if.end.164:                                       ; preds = %lor.lhs.false.159
  %126 = load i8*, i8** %src.addr, align 8
  %127 = load i32, i32* %offset, align 4
  %idx.ext165 = sext i32 %127 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %126, i64 %idx.ext165
  store i8* %add.ptr166, i8** %src_b154, align 8
  call void asm sideeffect "pxor  %mm5, %mm5 \0A\09pxor  %mm4, %mm4 \0A\09pxor  %mm3, %mm3 \0A\09", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !7
  %128 = load i32, i32* %numrad.addr, align 4
  %sub167 = sub nsw i32 1, %128
  store i32 %sub167, i32* %i, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.193, %if.end.164
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %numrad.addr, align 4
  %cmp169 = icmp slt i32 %129, %130
  br i1 %cmp169, label %for.body.171, label %for.end.195

for.body.171:                                     ; preds = %for.cond.168
  %131 = load i32, i32* %bytes.addr, align 4
  %132 = load i8*, i8** %src_b154, align 8
  %idx.ext172 = sext i32 %131 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %132, i64 %idx.ext172
  store i8* %add.ptr173, i8** %src_b154, align 8
  %133 = load i32, i32* %x, align 4
  %134 = load i32, i32* %i, align 4
  %add174 = add nsw i32 %133, %134
  %cmp175 = icmp slt i32 %add174, 0
  br i1 %cmp175, label %if.then.181, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %for.body.171
  %135 = load i32, i32* %x, align 4
  %136 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %135, %136
  %137 = load i32, i32* %width.addr, align 4
  %cmp179 = icmp sge i32 %add178, %137
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %lor.lhs.false.177, %for.body.171
  br label %for.inc.193

if.end.182:                                       ; preds = %lor.lhs.false.177
  %138 = load i32, i32* %has_alpha.addr, align 4
  %tobool183 = icmp ne i32 %138, 0
  br i1 %tobool183, label %if.then.184, label %if.else.188

if.then.184:                                      ; preds = %if.end.182
  %139 = load i8*, i8** %src_b154, align 8
  %140 = load i32, i32* %numrad.addr, align 4
  %141 = load i32, i32* %i, align 4
  %add185 = add nsw i32 %140, %141
  %idxprom186 = sext i32 %add185 to i64
  %142 = load i16*, i16** %imat, align 8
  %arrayidx187 = getelementptr inbounds i16, i16* %142, i64 %idxprom186
  call void asm sideeffect "movd         $0, %mm0 \0A\09movq      %mm6, %mm1 \0A\09punpcklbw %mm7, %mm0 \0A\09psubusw   %mm0, %mm1 \0A\09movq      %mm0, %mm2 \0A\09psubusw   %mm6, %mm2 \0A\09por       %mm2, %mm1 \0A\09pcmpgtw      $1, %mm1 \0A\09pshufw   $$0, $2, %mm2 \0A\09pandn     %mm2, %mm1 \0A\09pshufw $$0xff, %mm0, %mm2 \0A\09psllw        $$8, %mm2 \0A\09pmulhuw   %mm2, %mm1 \0A\09pmullw    %mm1, %mm0 \0A\09paddusw   %mm1, %mm5 \0A\09movq      %mm0, %mm2 \0A\09punpcklwd %mm7, %mm0 \0A\09punpckhwd %mm7, %mm2 \0A\09paddd     %mm0, %mm4 \0A\09paddd     %mm2, %mm3 \0A\09", "*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i8* %139, i64* %maxdelta4, i16* %arrayidx187) #7, !srcloc !8
  br label %if.end.192

if.else.188:                                      ; preds = %if.end.182
  %143 = load i8*, i8** %src_b154, align 8
  %144 = load i32, i32* %numrad.addr, align 4
  %145 = load i32, i32* %i, align 4
  %add189 = add nsw i32 %144, %145
  %idxprom190 = sext i32 %add189 to i64
  %146 = load i16*, i16** %imat, align 8
  %arrayidx191 = getelementptr inbounds i16, i16* %146, i64 %idxprom190
  call void asm sideeffect "movd         $0, %mm0 \0A\09movq      %mm6, %mm1 \0A\09punpcklbw %mm7, %mm0 \0A\09psubusw   %mm0, %mm1 \0A\09movq      %mm0, %mm2 \0A\09psubusw   %mm6, %mm2 \0A\09por       %mm2, %mm1 \0A\09pcmpgtw      $1, %mm1 \0A\09pshufw   $$0, $2, %mm2 \0A\09pandn     %mm2, %mm1 \0A\09pmullw    %mm1, %mm0 \0A\09paddusw   %mm1, %mm5 \0A\09movq      %mm0, %mm2 \0A\09punpcklwd %mm7, %mm0 \0A\09punpckhwd %mm7, %mm2 \0A\09paddd     %mm0, %mm4 \0A\09paddd     %mm2, %mm3 \0A\09", "*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i8* %143, i64* %maxdelta4, i16* %arrayidx191) #7, !srcloc !9
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.188, %if.then.184
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192, %if.then.181
  %147 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %147, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.168

for.end.195:                                      ; preds = %for.cond.168
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %rf, i32 0, i32 0
  call void asm sideeffect "movd    %mm4, $0 \0A\09movd    %mm3, $2 \0A\09psrlq  $$32, %mm4 \0A\09movq    %mm5, $3 \0A\09movd    %mm4, $1 \0A\09", "=*imr,=*imr,=*imr,=*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %rr, i32* %rg, i32* %rb, i16* %arraydecay) #7, !srcloc !10
  %148 = load i32, i32* %numrad.addr, align 4
  %149 = load i32, i32* %j, align 4
  %add196 = add nsw i32 %148, %149
  %idxprom197 = sext i32 %add196 to i64
  %150 = load i16*, i16** %imat, align 8
  %arrayidx198 = getelementptr inbounds i16, i16* %150, i64 %idxprom197
  %151 = load i16, i16* %arrayidx198, align 2
  %conv199 = zext i16 %151 to i32
  store i32 %conv199, i32* %d, align 4
  %152 = load i32, i32* %d, align 4
  %153 = load i32, i32* %rr, align 4
  %mul200 = mul i32 %152, %153
  %154 = load i32, i32* %r, align 4
  %add201 = add i32 %154, %mul200
  store i32 %add201, i32* %r, align 4
  %155 = load i32, i32* %d, align 4
  %156 = load i32, i32* %rg, align 4
  %mul202 = mul i32 %155, %156
  %157 = load i32, i32* %g, align 4
  %add203 = add i32 %157, %mul202
  store i32 %add203, i32* %g, align 4
  %158 = load i32, i32* %d, align 4
  %159 = load i32, i32* %rb, align 4
  %mul204 = mul i32 %158, %159
  %160 = load i32, i32* %b, align 4
  %add205 = add i32 %160, %mul204
  store i32 %add205, i32* %b, align 4
  %161 = load i32, i32* %d, align 4
  %arrayidx206 = getelementptr inbounds [4 x i16], [4 x i16]* %rf, i32 0, i64 0
  %162 = load i16, i16* %arrayidx206, align 2
  %conv207 = zext i16 %162 to i32
  %mul208 = mul nsw i32 %161, %conv207
  %163 = load i32, i32* %fr, align 4
  %add209 = add i32 %163, %mul208
  store i32 %add209, i32* %fr, align 4
  %164 = load i32, i32* %d, align 4
  %arrayidx210 = getelementptr inbounds [4 x i16], [4 x i16]* %rf, i32 0, i64 1
  %165 = load i16, i16* %arrayidx210, align 2
  %conv211 = zext i16 %165 to i32
  %mul212 = mul nsw i32 %164, %conv211
  %166 = load i32, i32* %fg, align 4
  %add213 = add i32 %166, %mul212
  store i32 %add213, i32* %fg, align 4
  %167 = load i32, i32* %d, align 4
  %arrayidx214 = getelementptr inbounds [4 x i16], [4 x i16]* %rf, i32 0, i64 2
  %168 = load i16, i16* %arrayidx214, align 2
  %conv215 = zext i16 %168 to i32
  %mul216 = mul nsw i32 %167, %conv215
  %169 = load i32, i32* %fb, align 4
  %add217 = add i32 %169, %mul216
  store i32 %add217, i32* %fb, align 4
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.end.195, %if.then.163
  %170 = load i32, i32* %j, align 4
  %inc219 = add nsw i32 %170, 1
  store i32 %inc219, i32* %j, align 4
  br label %for.cond.150

for.end.220:                                      ; preds = %for.cond.150
  %171 = load i32, i32* %has_alpha.addr, align 4
  %tobool221 = icmp ne i32 %171, 0
  br i1 %tobool221, label %if.then.222, label %if.else.247

if.then.222:                                      ; preds = %for.end.220
  %172 = load i32, i32* %fr, align 4
  %tobool223 = icmp ne i32 %172, 0
  br i1 %tobool223, label %if.then.224, label %if.end.230

if.then.224:                                      ; preds = %if.then.222
  %173 = load i32, i32* %r, align 4
  %174 = load i32, i32* %fr, align 4
  %div225 = udiv i32 %173, %174
  %conv226 = trunc i32 %div225 to i8
  %175 = load i32, i32* %dix, align 4
  %add227 = add nsw i32 %175, 0
  %idxprom228 = sext i32 %add227 to i64
  %176 = load i8*, i8** %dest.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %176, i64 %idxprom228
  store i8 %conv226, i8* %arrayidx229, align 1
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.224, %if.then.222
  %177 = load i32, i32* %fg, align 4
  %tobool231 = icmp ne i32 %177, 0
  br i1 %tobool231, label %if.then.232, label %if.end.238

if.then.232:                                      ; preds = %if.end.230
  %178 = load i32, i32* %g, align 4
  %179 = load i32, i32* %fg, align 4
  %div233 = udiv i32 %178, %179
  %conv234 = trunc i32 %div233 to i8
  %180 = load i32, i32* %dix, align 4
  %add235 = add nsw i32 %180, 1
  %idxprom236 = sext i32 %add235 to i64
  %181 = load i8*, i8** %dest.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %181, i64 %idxprom236
  store i8 %conv234, i8* %arrayidx237, align 1
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.232, %if.end.230
  %182 = load i32, i32* %fb, align 4
  %tobool239 = icmp ne i32 %182, 0
  br i1 %tobool239, label %if.then.240, label %if.end.246

if.then.240:                                      ; preds = %if.end.238
  %183 = load i32, i32* %b, align 4
  %184 = load i32, i32* %fb, align 4
  %div241 = udiv i32 %183, %184
  %conv242 = trunc i32 %div241 to i8
  %185 = load i32, i32* %dix, align 4
  %add243 = add nsw i32 %185, 2
  %idxprom244 = sext i32 %add243 to i64
  %186 = load i8*, i8** %dest.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %186, i64 %idxprom244
  store i8 %conv242, i8* %arrayidx245, align 1
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.240, %if.end.238
  br label %if.end.263

if.else.247:                                      ; preds = %for.end.220
  %187 = load i32, i32* %r, align 4
  %188 = load i32, i32* %fr, align 4
  %div248 = udiv i32 %187, %188
  %conv249 = trunc i32 %div248 to i8
  %189 = load i32, i32* %dix, align 4
  %add250 = add nsw i32 %189, 0
  %idxprom251 = sext i32 %add250 to i64
  %190 = load i8*, i8** %dest.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %190, i64 %idxprom251
  store i8 %conv249, i8* %arrayidx252, align 1
  %191 = load i32, i32* %g, align 4
  %192 = load i32, i32* %fg, align 4
  %div253 = udiv i32 %191, %192
  %conv254 = trunc i32 %div253 to i8
  %193 = load i32, i32* %dix, align 4
  %add255 = add nsw i32 %193, 1
  %idxprom256 = sext i32 %add255 to i64
  %194 = load i8*, i8** %dest.addr, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %194, i64 %idxprom256
  store i8 %conv254, i8* %arrayidx257, align 1
  %195 = load i32, i32* %b, align 4
  %196 = load i32, i32* %fb, align 4
  %div258 = udiv i32 %195, %196
  %conv259 = trunc i32 %div258 to i8
  %197 = load i32, i32* %dix, align 4
  %add260 = add nsw i32 %197, 2
  %idxprom261 = sext i32 %add260 to i64
  %198 = load i8*, i8** %dest.addr, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %198, i64 %idxprom261
  store i8 %conv259, i8* %arrayidx262, align 1
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.247, %if.end.246
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.end.147
  br label %for.inc.265

for.inc.265:                                      ; preds = %if.end.264, %if.then.78
  %199 = load i32, i32* %x, align 4
  %inc266 = add nsw i32 %199, 1
  store i32 %inc266, i32* %x, align 4
  br label %for.cond.61

for.end.267:                                      ; preds = %for.cond.61
  %200 = load i32, i32* %y, align 4
  %rem = srem i32 %200, 16
  %tobool268 = icmp ne i32 %rem, 0
  br i1 %tobool268, label %if.end.274, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.267
  %201 = load i32, i32* %preview_mode.addr, align 4
  %tobool269 = icmp ne i32 %201, 0
  br i1 %tobool269, label %if.end.274, label %if.then.270

if.then.270:                                      ; preds = %land.lhs.true
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !11
  %202 = load i32, i32* %y, align 4
  %conv271 = sitofp i32 %202 to double
  %203 = load i32, i32* %height.addr, align 4
  %conv272 = sitofp i32 %203 to double
  %div273 = fdiv double %conv271, %conv272
  %call = call i32 @gimp_progress_update(double %div273)
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.270, %land.lhs.true, %for.end.267
  br label %for.inc.275

for.inc.275:                                      ; preds = %if.end.274
  %204 = load i32, i32* %y, align 4
  %inc276 = add nsw i32 %204, 1
  store i32 %inc276, i32* %y, align 4
  br label %for.cond.57

for.end.277:                                      ; preds = %for.cond.57
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !12
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 2030320, i32 2030342}
!2 = !{i32 2030774, i32 2030800, i32 2030842}
!3 = !{i32 2031043, i32 2031070}
!4 = !{i32 2031496, i32 2031518, i32 2031564}
!5 = !{i32 2031878, i32 2031904, i32 2031958, i32 2032012, i32 2032066, i32 2032120, i32 2032174, i32 2032228, i32 2032282, i32 2032336, i32 2032390, i32 2032444, i32 2032498, i32 2032552, i32 2032606, i32 2032660, i32 2032714}
!6 = !{i32 2032897, i32 2032927, i32 2032981, i32 2033035, i32 2033089, i32 2033143, i32 2033197, i32 2033251, i32 2033305}
!7 = !{i32 2034016, i32 2034038, i32 2034084, i32 2034130}
!8 = !{i32 2034486, i32 2034512, i32 2034568, i32 2034624, i32 2034680, i32 2034736, i32 2034792, i32 2034848, i32 2034904, i32 2034960, i32 2035016, i32 2035076, i32 2035132, i32 2035188, i32 2035244, i32 2035300, i32 2035356, i32 2035412, i32 2035468, i32 2035524, i32 2035580}
!9 = !{i32 2035783, i32 2035809, i32 2035865, i32 2035921, i32 2035977, i32 2036033, i32 2036089, i32 2036145, i32 2036201, i32 2036257, i32 2036313, i32 2036369, i32 2036425, i32 2036481, i32 2036537, i32 2036593, i32 2036649, i32 2036705}
!10 = !{i32 2036892, i32 2036913, i32 2036958, i32 2037003, i32 2037048, i32 2037093}
!11 = !{i32 2038008}
!12 = !{i32 2038115}
