; ModuleID = './plug-ins/common/edge-neon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.NeonVals = type { double, double }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Radius of neon effect (in pixels)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Effect enhancement variable (0.0 - 1.0)\00", align 1
@.str.10 = private unnamed_addr constant [285 x i8] c"This filter works in a manner similar to the edge plug-in, but uses the first derivative of the gaussian operator to achieve resolution independence. The IIR method of calculating the effect is utilized to keep the processing time constant between large and small standard deviations.\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"plug-in-neon\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Simulate the glowing boundary of a neon light\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Spencer Kimball\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Bit Specialists, Inc.\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"2002\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"_Neon...\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"<Image>/Filters/Edge-Detect\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@evals = internal global %struct.NeonVals { double 5.000000e+00, double 0.000000e+00 }, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"Neon\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"edge-neon\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Neon Detection\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"gimp-edge-neon\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"_Amount:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %help_string = alloca i8*, align 8
  store i8* getelementptr inbounds ([285 x i8], [285 x i8]* @.str.10, i32 0, i32 0), i8** %help_string, align 8
  %0 = load i8*, i8** %help_string, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_rows = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 4
  %5 = load i32, i32* %ntile_rows, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 5
  %7 = load i32, i32* %ntile_cols, align 4
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_rows3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 4
  %9 = load i32, i32* %ntile_rows3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 5
  %11 = load i32, i32* %ntile_cols4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ]
  %mul = mul i32 2, %cond
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %12 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %12, align 4
  %13 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %13, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %14 = load i32, i32* %status, align 4
  store i32 %14, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %cond.end
  %call5 = call i8* @gimp_locale_directory() #5
  %call6 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call5) #4
  %call7 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #4
  %call8 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %do.end
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.NeonVals* @evals to i8*))
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @neon_dialog(%struct._GimpDrawable* %16)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  %17 = load i32, i32* %nparams.addr, align 4
  %cmp12 = icmp ne i32 %17, 5
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.11
  store i32 1, i32* %status, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %sw.bb.11
  %18 = load i32, i32* %status, align 4
  %cmp16 = icmp eq i32 %18, 3
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.15
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 3
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data20 to double*
  %20 = load double, double* %d_float, align 8
  store double %20, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 0), align 8
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 4
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_float23 = bitcast %union._GimpParamData* %data22 to double*
  %22 = load double, double* %d_float23, align 8
  store double %22, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 1), align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %if.end.15
  br label %sw.epilog

sw.bb.25:                                         ; preds = %do.end
  %call26 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.NeonVals* @evals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.25, %if.end.24, %if.end
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id, align 4
  %call27 = call i32 @gimp_drawable_is_rgb(i32 %24)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id29, align 4
  %call30 = call i32 @gimp_drawable_is_gray(i32 %26)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %lor.lhs.false, %sw.epilog
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #4
  %call34 = call i32 @gimp_progress_init(i8* %call33)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load double, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 0), align 8
  %29 = load double, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 1), align 8
  call void @neon(%struct._GimpDrawable* %27, double %28, double %29, %struct._GimpPreview* null)
  %30 = load i32, i32* %run_mode, align 4
  %cmp35 = icmp ne i32 %30, 1
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.32
  %call38 = call i32 @gimp_displays_flush()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.32
  %31 = load i32, i32* %run_mode, align 4
  %cmp40 = icmp eq i32 %31, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %call43 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.NeonVals* @evals to i8*), i32 16)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.39
  br label %if.end.46

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  %32 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %32, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0)) #4
  store i8* %call45, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.end.44
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %34)
  br label %return

return:                                           ; preds = %if.end.46, %if.then
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

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @neon_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 -5, i8* null)
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
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @neon_preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %26, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %29, i32 6)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #4
  %38 = load double, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 0), align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load i32, i32* %width, align 4
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 2
  %42 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %40, %42
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width28, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 2
  %46 = load i32, i32* %height29, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %46, %cond.false ]
  %mul = mul i32 8, %cond
  %conv = uitofp i32 %mul to double
  %call30 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %37, i32 0, i32 0, i8* %call27, i32 100, i32 8, double %38, double 0.000000e+00, double 6.400000e+01, double 1.000000e+00, double 1.000000e+01, i32 2, i32 0, double 0.000000e+00, double %conv, i8* null, i8* null)
  store %struct._GtkObject* %call30, %struct._GtkObject** %scale_data, align 8
  %47 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %48 = bitcast %struct._GtkObject* %47 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.NeonVals* @evals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %49 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %50 = bitcast %struct._GtkObject* %49 to i8*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %52, void (i8*, %struct._GClosure*)* null, i32 2)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call33)
  %55 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)) #4
  %56 = load double, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 1), align 8
  %call36 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %55, i32 0, i32 1, i8* %call35, i32 100, i32 8, double %56, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call36, %struct._GtkObject** %scale_data, align 8
  %57 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %58 = bitcast %struct._GtkObject* %57 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 2)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_dialog_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call39)
  %66 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpDialog*
  %call41 = call i32 @gimp_dialog_run(%struct._GimpDialog* %66)
  %cmp42 = icmp eq i32 %call41, -5
  %conv43 = zext i1 %cmp42 to i32
  store i32 %conv43, i32* %run, align 4
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %67)
  %68 = load i32, i32* %run, align 4
  ret i32 %68
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @neon(%struct._GimpDrawable* %drawable, double %radius, double %amount, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %radius.addr = alloca double, align 8
  %amount.addr = alloca double, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %bpp = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %sp_p = alloca i8*, align 8
  %sp_m = alloca i8*, align 8
  %n_p = alloca [5 x double], align 16
  %n_m = alloca [5 x double], align 16
  %d_p = alloca [5 x double], align 16
  %d_m = alloca [5 x double], align 16
  %bd_p = alloca [5 x double], align 16
  %bd_m = alloca [5 x double], align 16
  %val_p = alloca double*, align 8
  %val_m = alloca double*, align 8
  %vp = alloca double*, align 8
  %vm = alloca double*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %terms = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %initial_p = alloca [4 x i32], align 16
  %initial_m = alloca [4 x i32], align 16
  %std_dev = alloca double, align 8
  %preview_buffer1 = alloca i8*, align 8
  %preview_buffer2 = alloca i8*, align 8
  %vpptr = alloca double*, align 8
  %vmptr = alloca double*, align 8
  %vpptr327 = alloca double*, align 8
  %vmptr328 = alloca double*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %radius, double* %radius.addr, align 8
  store double %amount, double* %amount.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 0, i32* %progress, align 4
  store i32 1, i32* %max_progress, align 4
  store i8* null, i8** %preview_buffer1, align 8
  store i8* null, i8** %preview_buffer2, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %x1, i32* %y1)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %width, i32* %height)
  %3 = load i32, i32* %x1, align 4
  %4 = load i32, i32* %width, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %x2, align 4
  %5 = load i32, i32* %y1, align 4
  %6 = load i32, i32* %height, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %y2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %8, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %9 = load i32, i32* %x2, align 4
  %10 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %width, align 4
  %11 = load i32, i32* %y2, align 4
  %12 = load i32, i32* %y1, align 4
  %sub2 = sub nsw i32 %11, %12
  store i32 %sub2, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load double, double* %radius.addr, align 8
  %cmp = fcmp olt double %13, 1.000000e+00
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 3
  %15 = load i32, i32* %bpp5, align 4
  store i32 %15, i32* %bytes, align 4
  %16 = load i32, i32* %bytes, align 4
  store i32 %16, i32* %bpp, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_has_alpha(i32 %18)
  store i32 %call7, i32* %has_alpha, align 4
  %19 = load i32, i32* %has_alpha, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  %20 = load i32, i32* %bpp, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %bpp, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.4
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  %cmp11 = icmp sgt i32 %21, %22
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %23 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %24 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  %25 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %cond, %25
  %conv = sext i32 %mul to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %26 = bitcast i8* %call12 to double*
  store double* %26, double** %val_p, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %cmp13 = icmp sgt i32 %27, %28
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  %29 = load i32, i32* %width, align 4
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end
  %30 = load i32, i32* %height, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i32 [ %29, %cond.true.15 ], [ %30, %cond.false.16 ]
  %31 = load i32, i32* %bytes, align 4
  %mul19 = mul nsw i32 %cond18, %31
  %conv20 = sext i32 %mul19 to i64
  %call21 = call noalias i8* @g_malloc_n(i64 %conv20, i64 8)
  %32 = bitcast i8* %call21 to double*
  store double* %32, double** %val_m, align 8
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  %cmp22 = icmp sgt i32 %33, %34
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.17
  %35 = load i32, i32* %width, align 4
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end.17
  %36 = load i32, i32* %height, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ %35, %cond.true.24 ], [ %36, %cond.false.25 ]
  %37 = load i32, i32* %bytes, align 4
  %mul28 = mul nsw i32 %cond27, %37
  %conv29 = sext i32 %mul28 to i64
  %call30 = call noalias i8* @g_malloc_n(i64 %conv29, i64 1)
  store i8* %call30, i8** %src, align 8
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %cmp31 = icmp sgt i32 %38, %39
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end.26
  %40 = load i32, i32* %width, align 4
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end.26
  %41 = load i32, i32* %height, align 4
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i32 [ %40, %cond.true.33 ], [ %41, %cond.false.34 ]
  %42 = load i32, i32* %bytes, align 4
  %mul37 = mul nsw i32 %cond36, %42
  %conv38 = sext i32 %mul37 to i64
  %call39 = call noalias i8* @g_malloc_n(i64 %conv38, i64 1)
  store i8* %call39, i8** %src2, align 8
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %height, align 4
  %cmp40 = icmp sgt i32 %43, %44
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.35
  %45 = load i32, i32* %width, align 4
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.35
  %46 = load i32, i32* %height, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ %45, %cond.true.42 ], [ %46, %cond.false.43 ]
  %47 = load i32, i32* %bytes, align 4
  %mul46 = mul nsw i32 %cond45, %47
  %conv47 = sext i32 %mul46 to i64
  %call48 = call noalias i8* @g_malloc_n(i64 %conv47, i64 1)
  store i8* %call48, i8** %dest, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width49 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 1
  %50 = load i32, i32* %width49, align 4
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height50 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 2
  %52 = load i32, i32* %height50, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %48, i32 0, i32 0, i32 %50, i32 %52, i32 0, i32 0)
  %53 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool51 = icmp ne %struct._GimpPreview* %53, null
  br i1 %tobool51, label %if.then.52, label %if.else.61

if.then.52:                                       ; preds = %cond.end.44
  %54 = load i32, i32* %width, align 4
  %55 = load i32, i32* %height, align 4
  %mul53 = mul nsw i32 %54, %55
  %56 = load i32, i32* %bytes, align 4
  %mul54 = mul nsw i32 %mul53, %56
  %conv55 = sext i32 %mul54 to i64
  %call56 = call noalias i8* @g_malloc_n(i64 %conv55, i64 1)
  store i8* %call56, i8** %preview_buffer1, align 8
  %57 = load i32, i32* %width, align 4
  %58 = load i32, i32* %height, align 4
  %mul57 = mul nsw i32 %57, %58
  %59 = load i32, i32* %bytes, align 4
  %mul58 = mul nsw i32 %mul57, %59
  %conv59 = sext i32 %mul58 to i64
  %call60 = call noalias i8* @g_malloc_n(i64 %conv59, i64 1)
  store i8* %call60, i8** %preview_buffer2, align 8
  br label %if.end.75

if.else.61:                                       ; preds = %cond.end.44
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width62 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 1
  %62 = load i32, i32* %width62, align 4
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height63 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 2
  %64 = load i32, i32* %height63, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %60, i32 0, i32 0, i32 %62, i32 %64, i32 1, i32 1)
  store i32 0, i32* %progress, align 4
  %65 = load double, double* %radius.addr, align 8
  %cmp64 = fcmp olt double %65, 1.000000e+00
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %if.else.61
  br label %cond.end.72

cond.false.67:                                    ; preds = %if.else.61
  %66 = load i32, i32* %width, align 4
  %67 = load i32, i32* %height, align 4
  %mul68 = mul nsw i32 %66, %67
  %conv69 = sitofp i32 %mul68 to double
  %68 = load double, double* %radius.addr, align 8
  %mul70 = fmul double %conv69, %68
  %mul71 = fmul double %mul70, 2.000000e+00
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.67, %cond.true.66
  %cond73 = phi double [ 0.000000e+00, %cond.true.66 ], [ %mul71, %cond.false.67 ]
  %conv74 = fptosi double %cond73 to i32
  store i32 %conv74, i32* %max_progress, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end.72, %if.then.52
  %69 = load double, double* %radius.addr, align 8
  %call76 = call double @fabs(double %69) #5
  %add77 = fadd double %call76, 1.000000e+00
  store double %add77, double* %radius.addr, align 8
  %70 = load double, double* %radius.addr, align 8
  %71 = load double, double* %radius.addr, align 8
  %mul78 = fmul double %70, %71
  %sub79 = fsub double -0.000000e+00, %mul78
  %call80 = call double @log(double 0x3F70101010101010) #4
  %mul81 = fmul double 2.000000e+00, %call80
  %div = fdiv double %sub79, %mul81
  %call82 = call double @sqrt(double %div) #4
  store double %call82, double* %std_dev, align 8
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i32 0
  %arraydecay83 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i32 0
  %arraydecay84 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i32 0
  %arraydecay85 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i32 0
  %arraydecay86 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i32 0
  %arraydecay87 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i32 0
  %72 = load double, double* %std_dev, align 8
  call void @find_constants(double* %arraydecay, double* %arraydecay83, double* %arraydecay84, double* %arraydecay85, double* %arraydecay86, double* %arraydecay87, double %72)
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.269, %if.end.75
  %73 = load i32, i32* %col, align 4
  %74 = load i32, i32* %width, align 4
  %cmp88 = icmp slt i32 %73, %74
  br i1 %cmp88, label %for.body, label %for.end.271

for.body:                                         ; preds = %for.cond
  %75 = load double*, double** %val_p, align 8
  %76 = bitcast double* %75 to i8*
  %77 = load i32, i32* %height, align 4
  %78 = load i32, i32* %bytes, align 4
  %mul90 = mul nsw i32 %77, %78
  %conv91 = sext i32 %mul90 to i64
  %mul92 = mul i64 %conv91, 8
  call void @llvm.memset.p0i8.i64(i8* %76, i8 0, i64 %mul92, i32 8, i1 false)
  %79 = load double*, double** %val_m, align 8
  %80 = bitcast double* %79 to i8*
  %81 = load i32, i32* %height, align 4
  %82 = load i32, i32* %bytes, align 4
  %mul93 = mul nsw i32 %81, %82
  %conv94 = sext i32 %mul93 to i64
  %mul95 = mul i64 %conv94, 8
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 %mul95, i32 8, i1 false)
  %83 = load i8*, i8** %src, align 8
  %84 = load i32, i32* %col, align 4
  %85 = load i32, i32* %x1, align 4
  %add96 = add nsw i32 %84, %85
  %86 = load i32, i32* %y1, align 4
  %87 = load i32, i32* %y2, align 4
  %88 = load i32, i32* %y1, align 4
  %sub97 = sub nsw i32 %87, %88
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %src_rgn, i8* %83, i32 %add96, i32 %86, i32 %sub97)
  %89 = load i8*, i8** %src, align 8
  store i8* %89, i8** %sp_p, align 8
  %90 = load i8*, i8** %src, align 8
  %91 = load i32, i32* %height, align 4
  %sub98 = sub nsw i32 %91, 1
  %92 = load i32, i32* %bytes, align 4
  %mul99 = mul nsw i32 %sub98, %92
  %idx.ext = sext i32 %mul99 to i64
  %add.ptr = getelementptr inbounds i8, i8* %90, i64 %idx.ext
  store i8* %add.ptr, i8** %sp_m, align 8
  %93 = load double*, double** %val_p, align 8
  store double* %93, double** %vp, align 8
  %94 = load double*, double** %val_m, align 8
  %95 = load i32, i32* %height, align 4
  %sub100 = sub nsw i32 %95, 1
  %96 = load i32, i32* %bytes, align 4
  %mul101 = mul nsw i32 %sub100, %96
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds double, double* %94, i64 %idx.ext102
  store double* %add.ptr103, double** %vm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc, %for.body
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %bytes, align 4
  %cmp105 = icmp slt i32 %97, %98
  br i1 %cmp105, label %for.body.107, label %for.end

for.body.107:                                     ; preds = %for.cond.104
  %99 = load i32, i32* %i, align 4
  %idxprom = sext i32 %99 to i64
  %100 = load i8*, i8** %sp_p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %100, i64 %idxprom
  %101 = load i8, i8* %arrayidx, align 1
  %conv108 = zext i8 %101 to i32
  %102 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %102 to i64
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom109
  store i32 %conv108, i32* %arrayidx110, align 4
  %103 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %103 to i64
  %104 = load i8*, i8** %sp_m, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %104, i64 %idxprom111
  %105 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %105 to i32
  %106 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %106 to i64
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom114
  store i32 %conv113, i32* %arrayidx115, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.107
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.104

for.end:                                          ; preds = %for.cond.104
  store i32 0, i32* %row, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.231, %for.end
  %108 = load i32, i32* %row, align 4
  %109 = load i32, i32* %height, align 4
  %cmp117 = icmp slt i32 %108, %109
  br i1 %cmp117, label %for.body.119, label %for.end.233

for.body.119:                                     ; preds = %for.cond.116
  %110 = load i32, i32* %row, align 4
  %cmp120 = icmp slt i32 %110, 4
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %for.body.119
  %111 = load i32, i32* %row, align 4
  br label %cond.end.124

cond.false.123:                                   ; preds = %for.body.119
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ %111, %cond.true.122 ], [ 4, %cond.false.123 ]
  store i32 %cond125, i32* %terms, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.206, %cond.end.124
  %112 = load i32, i32* %b, align 4
  %113 = load i32, i32* %bpp, align 4
  %cmp127 = icmp slt i32 %112, %113
  br i1 %cmp127, label %for.body.129, label %for.end.208

for.body.129:                                     ; preds = %for.cond.126
  %114 = load double*, double** %vp, align 8
  %115 = load i32, i32* %b, align 4
  %idx.ext130 = sext i32 %115 to i64
  %add.ptr131 = getelementptr inbounds double, double* %114, i64 %idx.ext130
  store double* %add.ptr131, double** %vpptr, align 8
  %116 = load double*, double** %vm, align 8
  %117 = load i32, i32* %b, align 4
  %idx.ext132 = sext i32 %117 to i64
  %add.ptr133 = getelementptr inbounds double, double* %116, i64 %idx.ext132
  store double* %add.ptr133, double** %vmptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.176, %for.body.129
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %terms, align 4
  %cmp135 = icmp sle i32 %118, %119
  br i1 %cmp135, label %for.body.137, label %for.end.178

for.body.137:                                     ; preds = %for.cond.134
  %120 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %120 to i64
  %arrayidx139 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom138
  %121 = load double, double* %arrayidx139, align 8
  %122 = load i32, i32* %i, align 4
  %sub140 = sub nsw i32 0, %122
  %123 = load i32, i32* %bytes, align 4
  %mul141 = mul nsw i32 %sub140, %123
  %124 = load i32, i32* %b, align 4
  %add142 = add nsw i32 %mul141, %124
  %idxprom143 = sext i32 %add142 to i64
  %125 = load i8*, i8** %sp_p, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %125, i64 %idxprom143
  %126 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %126 to i32
  %conv146 = sitofp i32 %conv145 to double
  %mul147 = fmul double %121, %conv146
  %127 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %127 to i64
  %arrayidx149 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i64 %idxprom148
  %128 = load double, double* %arrayidx149, align 8
  %129 = load i32, i32* %i, align 4
  %sub150 = sub nsw i32 0, %129
  %130 = load i32, i32* %bytes, align 4
  %mul151 = mul nsw i32 %sub150, %130
  %131 = load i32, i32* %b, align 4
  %add152 = add nsw i32 %mul151, %131
  %idxprom153 = sext i32 %add152 to i64
  %132 = load double*, double** %vp, align 8
  %arrayidx154 = getelementptr inbounds double, double* %132, i64 %idxprom153
  %133 = load double, double* %arrayidx154, align 8
  %mul155 = fmul double %128, %133
  %sub156 = fsub double %mul147, %mul155
  %134 = load double*, double** %vpptr, align 8
  %135 = load double, double* %134, align 8
  %add157 = fadd double %135, %sub156
  store double %add157, double* %134, align 8
  %136 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %136 to i64
  %arrayidx159 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom158
  %137 = load double, double* %arrayidx159, align 8
  %138 = load i32, i32* %i, align 4
  %139 = load i32, i32* %bytes, align 4
  %mul160 = mul nsw i32 %138, %139
  %140 = load i32, i32* %b, align 4
  %add161 = add nsw i32 %mul160, %140
  %idxprom162 = sext i32 %add161 to i64
  %141 = load i8*, i8** %sp_m, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %141, i64 %idxprom162
  %142 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %142 to i32
  %conv165 = sitofp i32 %conv164 to double
  %mul166 = fmul double %137, %conv165
  %143 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %143 to i64
  %arrayidx168 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i64 %idxprom167
  %144 = load double, double* %arrayidx168, align 8
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %bytes, align 4
  %mul169 = mul nsw i32 %145, %146
  %147 = load i32, i32* %b, align 4
  %add170 = add nsw i32 %mul169, %147
  %idxprom171 = sext i32 %add170 to i64
  %148 = load double*, double** %vm, align 8
  %arrayidx172 = getelementptr inbounds double, double* %148, i64 %idxprom171
  %149 = load double, double* %arrayidx172, align 8
  %mul173 = fmul double %144, %149
  %sub174 = fsub double %mul166, %mul173
  %150 = load double*, double** %vmptr, align 8
  %151 = load double, double* %150, align 8
  %add175 = fadd double %151, %sub174
  store double %add175, double* %150, align 8
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.137
  %152 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %152, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.134

for.end.178:                                      ; preds = %for.cond.134
  %153 = load i32, i32* %i, align 4
  store i32 %153, i32* %j, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.203, %for.end.178
  %154 = load i32, i32* %j, align 4
  %cmp180 = icmp sle i32 %154, 4
  br i1 %cmp180, label %for.body.182, label %for.end.205

for.body.182:                                     ; preds = %for.cond.179
  %155 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %155 to i64
  %arrayidx184 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom183
  %156 = load double, double* %arrayidx184, align 8
  %157 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %157 to i64
  %arrayidx186 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i64 %idxprom185
  %158 = load double, double* %arrayidx186, align 8
  %sub187 = fsub double %156, %158
  %159 = load i32, i32* %b, align 4
  %idxprom188 = sext i32 %159 to i64
  %arrayidx189 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom188
  %160 = load i32, i32* %arrayidx189, align 4
  %conv190 = sitofp i32 %160 to double
  %mul191 = fmul double %sub187, %conv190
  %161 = load double*, double** %vpptr, align 8
  %162 = load double, double* %161, align 8
  %add192 = fadd double %162, %mul191
  store double %add192, double* %161, align 8
  %163 = load i32, i32* %j, align 4
  %idxprom193 = sext i32 %163 to i64
  %arrayidx194 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom193
  %164 = load double, double* %arrayidx194, align 8
  %165 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %165 to i64
  %arrayidx196 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i64 %idxprom195
  %166 = load double, double* %arrayidx196, align 8
  %sub197 = fsub double %164, %166
  %167 = load i32, i32* %b, align 4
  %idxprom198 = sext i32 %167 to i64
  %arrayidx199 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom198
  %168 = load i32, i32* %arrayidx199, align 4
  %conv200 = sitofp i32 %168 to double
  %mul201 = fmul double %sub197, %conv200
  %169 = load double*, double** %vmptr, align 8
  %170 = load double, double* %169, align 8
  %add202 = fadd double %170, %mul201
  store double %add202, double* %169, align 8
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.182
  %171 = load i32, i32* %j, align 4
  %inc204 = add nsw i32 %171, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond.179

for.end.205:                                      ; preds = %for.cond.179
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.205
  %172 = load i32, i32* %b, align 4
  %inc207 = add nsw i32 %172, 1
  store i32 %inc207, i32* %b, align 4
  br label %for.cond.126

for.end.208:                                      ; preds = %for.cond.126
  %173 = load i32, i32* %has_alpha, align 4
  %tobool209 = icmp ne i32 %173, 0
  br i1 %tobool209, label %if.then.210, label %if.end.221

if.then.210:                                      ; preds = %for.end.208
  %174 = load i32, i32* %bpp, align 4
  %idxprom211 = sext i32 %174 to i64
  %175 = load i8*, i8** %sp_p, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %175, i64 %idxprom211
  %176 = load i8, i8* %arrayidx212, align 1
  %conv213 = uitofp i8 %176 to double
  %177 = load i32, i32* %bpp, align 4
  %idxprom214 = sext i32 %177 to i64
  %178 = load double*, double** %vp, align 8
  %arrayidx215 = getelementptr inbounds double, double* %178, i64 %idxprom214
  store double %conv213, double* %arrayidx215, align 8
  %179 = load i32, i32* %bpp, align 4
  %idxprom216 = sext i32 %179 to i64
  %180 = load i8*, i8** %sp_m, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %180, i64 %idxprom216
  %181 = load i8, i8* %arrayidx217, align 1
  %conv218 = uitofp i8 %181 to double
  %182 = load i32, i32* %bpp, align 4
  %idxprom219 = sext i32 %182 to i64
  %183 = load double*, double** %vm, align 8
  %arrayidx220 = getelementptr inbounds double, double* %183, i64 %idxprom219
  store double %conv218, double* %arrayidx220, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.210, %for.end.208
  %184 = load i32, i32* %bytes, align 4
  %185 = load i8*, i8** %sp_p, align 8
  %idx.ext222 = sext i32 %184 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %185, i64 %idx.ext222
  store i8* %add.ptr223, i8** %sp_p, align 8
  %186 = load i32, i32* %bytes, align 4
  %187 = load i8*, i8** %sp_m, align 8
  %idx.ext224 = sext i32 %186 to i64
  %idx.neg = sub i64 0, %idx.ext224
  %add.ptr225 = getelementptr inbounds i8, i8* %187, i64 %idx.neg
  store i8* %add.ptr225, i8** %sp_m, align 8
  %188 = load i32, i32* %bytes, align 4
  %189 = load double*, double** %vp, align 8
  %idx.ext226 = sext i32 %188 to i64
  %add.ptr227 = getelementptr inbounds double, double* %189, i64 %idx.ext226
  store double* %add.ptr227, double** %vp, align 8
  %190 = load i32, i32* %bytes, align 4
  %191 = load double*, double** %vm, align 8
  %idx.ext228 = sext i32 %190 to i64
  %idx.neg229 = sub i64 0, %idx.ext228
  %add.ptr230 = getelementptr inbounds double, double* %191, i64 %idx.neg229
  store double* %add.ptr230, double** %vm, align 8
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.221
  %192 = load i32, i32* %row, align 4
  %inc232 = add nsw i32 %192, 1
  store i32 %inc232, i32* %row, align 4
  br label %for.cond.116

for.end.233:                                      ; preds = %for.cond.116
  %193 = load double*, double** %val_p, align 8
  %194 = load double*, double** %val_m, align 8
  %195 = load i8*, i8** %dest, align 8
  %196 = load i32, i32* %bytes, align 4
  %197 = load i32, i32* %height, align 4
  call void @transfer_pixels(double* %193, double* %194, i8* %195, i32 %196, i32 %197)
  %198 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool234 = icmp ne %struct._GimpPreview* %198, null
  br i1 %tobool234, label %if.then.235, label %if.else.252

if.then.235:                                      ; preds = %for.end.233
  store i32 0, i32* %row, align 4
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.249, %if.then.235
  %199 = load i32, i32* %row, align 4
  %200 = load i32, i32* %height, align 4
  %cmp237 = icmp slt i32 %199, %200
  br i1 %cmp237, label %for.body.239, label %for.end.251

for.body.239:                                     ; preds = %for.cond.236
  %201 = load i8*, i8** %preview_buffer1, align 8
  %202 = load i32, i32* %row, align 4
  %203 = load i32, i32* %width, align 4
  %mul240 = mul nsw i32 %202, %203
  %204 = load i32, i32* %col, align 4
  %add241 = add nsw i32 %mul240, %204
  %205 = load i32, i32* %bytes, align 4
  %mul242 = mul nsw i32 %add241, %205
  %idx.ext243 = sext i32 %mul242 to i64
  %add.ptr244 = getelementptr inbounds i8, i8* %201, i64 %idx.ext243
  %206 = load i8*, i8** %dest, align 8
  %207 = load i32, i32* %bytes, align 4
  %208 = load i32, i32* %row, align 4
  %mul245 = mul nsw i32 %207, %208
  %idx.ext246 = sext i32 %mul245 to i64
  %add.ptr247 = getelementptr inbounds i8, i8* %206, i64 %idx.ext246
  %209 = load i32, i32* %bytes, align 4
  %conv248 = sext i32 %209 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr244, i8* %add.ptr247, i64 %conv248, i32 1, i1 false)
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.body.239
  %210 = load i32, i32* %row, align 4
  %inc250 = add nsw i32 %210, 1
  store i32 %inc250, i32* %row, align 4
  br label %for.cond.236

for.end.251:                                      ; preds = %for.cond.236
  br label %if.end.268

if.else.252:                                      ; preds = %for.end.233
  %211 = load i8*, i8** %dest, align 8
  %212 = load i32, i32* %col, align 4
  %213 = load i32, i32* %x1, align 4
  %add253 = add nsw i32 %212, %213
  %214 = load i32, i32* %y1, align 4
  %215 = load i32, i32* %y2, align 4
  %216 = load i32, i32* %y1, align 4
  %sub254 = sub nsw i32 %215, %216
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %dest_rgn, i8* %211, i32 %add253, i32 %214, i32 %sub254)
  %217 = load i32, i32* %height, align 4
  %conv255 = sitofp i32 %217 to double
  %218 = load double, double* %radius.addr, align 8
  %mul256 = fmul double %conv255, %218
  %219 = load i32, i32* %progress, align 4
  %conv257 = sitofp i32 %219 to double
  %add258 = fadd double %conv257, %mul256
  %conv259 = fptosi double %add258 to i32
  store i32 %conv259, i32* %progress, align 4
  %220 = load i32, i32* %col, align 4
  %rem = srem i32 %220, 20
  %cmp260 = icmp eq i32 %rem, 0
  br i1 %cmp260, label %if.then.262, label %if.end.267

if.then.262:                                      ; preds = %if.else.252
  %221 = load i32, i32* %progress, align 4
  %conv263 = sitofp i32 %221 to double
  %222 = load i32, i32* %max_progress, align 4
  %conv264 = sitofp i32 %222 to double
  %div265 = fdiv double %conv263, %conv264
  %call266 = call i32 @gimp_progress_update(double %div265)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.262, %if.else.252
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %for.end.251
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268
  %223 = load i32, i32* %col, align 4
  %inc270 = add nsw i32 %223, 1
  store i32 %inc270, i32* %col, align 4
  br label %for.cond

for.end.271:                                      ; preds = %for.cond
  %224 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %225 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width272 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %225, i32 0, i32 1
  %226 = load i32, i32* %width272, align 4
  %227 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height273 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %227, i32 0, i32 2
  %228 = load i32, i32* %height273, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %224, i32 0, i32 0, i32 %226, i32 %228, i32 0, i32 0)
  store i32 0, i32* %row, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.470, %for.end.271
  %229 = load i32, i32* %row, align 4
  %230 = load i32, i32* %height, align 4
  %cmp275 = icmp slt i32 %229, %230
  br i1 %cmp275, label %for.body.277, label %for.end.472

for.body.277:                                     ; preds = %for.cond.274
  %231 = load double*, double** %val_p, align 8
  %232 = bitcast double* %231 to i8*
  %233 = load i32, i32* %width, align 4
  %234 = load i32, i32* %bytes, align 4
  %mul278 = mul nsw i32 %233, %234
  %conv279 = sext i32 %mul278 to i64
  %mul280 = mul i64 %conv279, 8
  call void @llvm.memset.p0i8.i64(i8* %232, i8 0, i64 %mul280, i32 8, i1 false)
  %235 = load double*, double** %val_m, align 8
  %236 = bitcast double* %235 to i8*
  %237 = load i32, i32* %width, align 4
  %238 = load i32, i32* %bytes, align 4
  %mul281 = mul nsw i32 %237, %238
  %conv282 = sext i32 %mul281 to i64
  %mul283 = mul i64 %conv282, 8
  call void @llvm.memset.p0i8.i64(i8* %236, i8 0, i64 %mul283, i32 8, i1 false)
  %239 = load i8*, i8** %src, align 8
  %240 = load i32, i32* %x1, align 4
  %241 = load i32, i32* %row, align 4
  %242 = load i32, i32* %y1, align 4
  %add284 = add nsw i32 %241, %242
  %243 = load i32, i32* %x2, align 4
  %244 = load i32, i32* %x1, align 4
  %sub285 = sub nsw i32 %243, %244
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %239, i32 %240, i32 %add284, i32 %sub285)
  %245 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool286 = icmp ne %struct._GimpPreview* %245, null
  br i1 %tobool286, label %if.then.287, label %if.else.294

if.then.287:                                      ; preds = %for.body.277
  %246 = load i8*, i8** %src2, align 8
  %247 = load i8*, i8** %preview_buffer1, align 8
  %248 = load i32, i32* %row, align 4
  %249 = load i32, i32* %width, align 4
  %mul288 = mul nsw i32 %248, %249
  %250 = load i32, i32* %bytes, align 4
  %mul289 = mul nsw i32 %mul288, %250
  %idx.ext290 = sext i32 %mul289 to i64
  %add.ptr291 = getelementptr inbounds i8, i8* %247, i64 %idx.ext290
  %251 = load i32, i32* %width, align 4
  %252 = load i32, i32* %bytes, align 4
  %mul292 = mul nsw i32 %251, %252
  %conv293 = sext i32 %mul292 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %246, i8* %add.ptr291, i64 %conv293, i32 1, i1 false)
  br label %if.end.297

if.else.294:                                      ; preds = %for.body.277
  %253 = load i8*, i8** %src2, align 8
  %254 = load i32, i32* %x1, align 4
  %255 = load i32, i32* %row, align 4
  %256 = load i32, i32* %y1, align 4
  %add295 = add nsw i32 %255, %256
  %257 = load i32, i32* %x2, align 4
  %258 = load i32, i32* %x1, align 4
  %sub296 = sub nsw i32 %257, %258
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %dest_rgn, i8* %253, i32 %254, i32 %add295, i32 %sub296)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.294, %if.then.287
  %259 = load i8*, i8** %src, align 8
  store i8* %259, i8** %sp_p, align 8
  %260 = load i8*, i8** %src, align 8
  %261 = load i32, i32* %width, align 4
  %sub298 = sub nsw i32 %261, 1
  %262 = load i32, i32* %bytes, align 4
  %mul299 = mul nsw i32 %sub298, %262
  %idx.ext300 = sext i32 %mul299 to i64
  %add.ptr301 = getelementptr inbounds i8, i8* %260, i64 %idx.ext300
  store i8* %add.ptr301, i8** %sp_m, align 8
  %263 = load double*, double** %val_p, align 8
  store double* %263, double** %vp, align 8
  %264 = load double*, double** %val_m, align 8
  %265 = load i32, i32* %width, align 4
  %sub302 = sub nsw i32 %265, 1
  %266 = load i32, i32* %bytes, align 4
  %mul303 = mul nsw i32 %sub302, %266
  %idx.ext304 = sext i32 %mul303 to i64
  %add.ptr305 = getelementptr inbounds double, double* %264, i64 %idx.ext304
  store double* %add.ptr305, double** %vm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.306

for.cond.306:                                     ; preds = %for.inc.320, %if.end.297
  %267 = load i32, i32* %i, align 4
  %268 = load i32, i32* %bytes, align 4
  %cmp307 = icmp slt i32 %267, %268
  br i1 %cmp307, label %for.body.309, label %for.end.322

for.body.309:                                     ; preds = %for.cond.306
  %269 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %269 to i64
  %270 = load i8*, i8** %sp_p, align 8
  %arrayidx311 = getelementptr inbounds i8, i8* %270, i64 %idxprom310
  %271 = load i8, i8* %arrayidx311, align 1
  %conv312 = zext i8 %271 to i32
  %272 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %272 to i64
  %arrayidx314 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom313
  store i32 %conv312, i32* %arrayidx314, align 4
  %273 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %273 to i64
  %274 = load i8*, i8** %sp_m, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %274, i64 %idxprom315
  %275 = load i8, i8* %arrayidx316, align 1
  %conv317 = zext i8 %275 to i32
  %276 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %276 to i64
  %arrayidx319 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom318
  store i32 %conv317, i32* %arrayidx319, align 4
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.body.309
  %277 = load i32, i32* %i, align 4
  %inc321 = add nsw i32 %277, 1
  store i32 %inc321, i32* %i, align 4
  br label %for.cond.306

for.end.322:                                      ; preds = %for.cond.306
  store i32 0, i32* %col, align 4
  br label %for.cond.323

for.cond.323:                                     ; preds = %for.inc.441, %for.end.322
  %278 = load i32, i32* %col, align 4
  %279 = load i32, i32* %width, align 4
  %cmp324 = icmp slt i32 %278, %279
  br i1 %cmp324, label %for.body.326, label %for.end.443

for.body.326:                                     ; preds = %for.cond.323
  %280 = load i32, i32* %col, align 4
  %cmp329 = icmp slt i32 %280, 4
  br i1 %cmp329, label %cond.true.331, label %cond.false.332

cond.true.331:                                    ; preds = %for.body.326
  %281 = load i32, i32* %col, align 4
  br label %cond.end.333

cond.false.332:                                   ; preds = %for.body.326
  br label %cond.end.333

cond.end.333:                                     ; preds = %cond.false.332, %cond.true.331
  %cond334 = phi i32 [ %281, %cond.true.331 ], [ 4, %cond.false.332 ]
  store i32 %cond334, i32* %terms, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.415, %cond.end.333
  %282 = load i32, i32* %b, align 4
  %283 = load i32, i32* %bpp, align 4
  %cmp336 = icmp slt i32 %282, %283
  br i1 %cmp336, label %for.body.338, label %for.end.417

for.body.338:                                     ; preds = %for.cond.335
  %284 = load double*, double** %vp, align 8
  %285 = load i32, i32* %b, align 4
  %idx.ext339 = sext i32 %285 to i64
  %add.ptr340 = getelementptr inbounds double, double* %284, i64 %idx.ext339
  store double* %add.ptr340, double** %vpptr327, align 8
  %286 = load double*, double** %vm, align 8
  %287 = load i32, i32* %b, align 4
  %idx.ext341 = sext i32 %287 to i64
  %add.ptr342 = getelementptr inbounds double, double* %286, i64 %idx.ext341
  store double* %add.ptr342, double** %vmptr328, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc.385, %for.body.338
  %288 = load i32, i32* %i, align 4
  %289 = load i32, i32* %terms, align 4
  %cmp344 = icmp sle i32 %288, %289
  br i1 %cmp344, label %for.body.346, label %for.end.387

for.body.346:                                     ; preds = %for.cond.343
  %290 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %290 to i64
  %arrayidx348 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom347
  %291 = load double, double* %arrayidx348, align 8
  %292 = load i32, i32* %i, align 4
  %sub349 = sub nsw i32 0, %292
  %293 = load i32, i32* %bytes, align 4
  %mul350 = mul nsw i32 %sub349, %293
  %294 = load i32, i32* %b, align 4
  %add351 = add nsw i32 %mul350, %294
  %idxprom352 = sext i32 %add351 to i64
  %295 = load i8*, i8** %sp_p, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %295, i64 %idxprom352
  %296 = load i8, i8* %arrayidx353, align 1
  %conv354 = zext i8 %296 to i32
  %conv355 = sitofp i32 %conv354 to double
  %mul356 = fmul double %291, %conv355
  %297 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %297 to i64
  %arrayidx358 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i64 %idxprom357
  %298 = load double, double* %arrayidx358, align 8
  %299 = load i32, i32* %i, align 4
  %sub359 = sub nsw i32 0, %299
  %300 = load i32, i32* %bytes, align 4
  %mul360 = mul nsw i32 %sub359, %300
  %301 = load i32, i32* %b, align 4
  %add361 = add nsw i32 %mul360, %301
  %idxprom362 = sext i32 %add361 to i64
  %302 = load double*, double** %vp, align 8
  %arrayidx363 = getelementptr inbounds double, double* %302, i64 %idxprom362
  %303 = load double, double* %arrayidx363, align 8
  %mul364 = fmul double %298, %303
  %sub365 = fsub double %mul356, %mul364
  %304 = load double*, double** %vpptr327, align 8
  %305 = load double, double* %304, align 8
  %add366 = fadd double %305, %sub365
  store double %add366, double* %304, align 8
  %306 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %306 to i64
  %arrayidx368 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom367
  %307 = load double, double* %arrayidx368, align 8
  %308 = load i32, i32* %i, align 4
  %309 = load i32, i32* %bytes, align 4
  %mul369 = mul nsw i32 %308, %309
  %310 = load i32, i32* %b, align 4
  %add370 = add nsw i32 %mul369, %310
  %idxprom371 = sext i32 %add370 to i64
  %311 = load i8*, i8** %sp_m, align 8
  %arrayidx372 = getelementptr inbounds i8, i8* %311, i64 %idxprom371
  %312 = load i8, i8* %arrayidx372, align 1
  %conv373 = zext i8 %312 to i32
  %conv374 = sitofp i32 %conv373 to double
  %mul375 = fmul double %307, %conv374
  %313 = load i32, i32* %i, align 4
  %idxprom376 = sext i32 %313 to i64
  %arrayidx377 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i64 %idxprom376
  %314 = load double, double* %arrayidx377, align 8
  %315 = load i32, i32* %i, align 4
  %316 = load i32, i32* %bytes, align 4
  %mul378 = mul nsw i32 %315, %316
  %317 = load i32, i32* %b, align 4
  %add379 = add nsw i32 %mul378, %317
  %idxprom380 = sext i32 %add379 to i64
  %318 = load double*, double** %vm, align 8
  %arrayidx381 = getelementptr inbounds double, double* %318, i64 %idxprom380
  %319 = load double, double* %arrayidx381, align 8
  %mul382 = fmul double %314, %319
  %sub383 = fsub double %mul375, %mul382
  %320 = load double*, double** %vmptr328, align 8
  %321 = load double, double* %320, align 8
  %add384 = fadd double %321, %sub383
  store double %add384, double* %320, align 8
  br label %for.inc.385

for.inc.385:                                      ; preds = %for.body.346
  %322 = load i32, i32* %i, align 4
  %inc386 = add nsw i32 %322, 1
  store i32 %inc386, i32* %i, align 4
  br label %for.cond.343

for.end.387:                                      ; preds = %for.cond.343
  %323 = load i32, i32* %i, align 4
  store i32 %323, i32* %j, align 4
  br label %for.cond.388

for.cond.388:                                     ; preds = %for.inc.412, %for.end.387
  %324 = load i32, i32* %j, align 4
  %cmp389 = icmp sle i32 %324, 4
  br i1 %cmp389, label %for.body.391, label %for.end.414

for.body.391:                                     ; preds = %for.cond.388
  %325 = load i32, i32* %j, align 4
  %idxprom392 = sext i32 %325 to i64
  %arrayidx393 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom392
  %326 = load double, double* %arrayidx393, align 8
  %327 = load i32, i32* %j, align 4
  %idxprom394 = sext i32 %327 to i64
  %arrayidx395 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i64 %idxprom394
  %328 = load double, double* %arrayidx395, align 8
  %sub396 = fsub double %326, %328
  %329 = load i32, i32* %b, align 4
  %idxprom397 = sext i32 %329 to i64
  %arrayidx398 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom397
  %330 = load i32, i32* %arrayidx398, align 4
  %conv399 = sitofp i32 %330 to double
  %mul400 = fmul double %sub396, %conv399
  %331 = load double*, double** %vpptr327, align 8
  %332 = load double, double* %331, align 8
  %add401 = fadd double %332, %mul400
  store double %add401, double* %331, align 8
  %333 = load i32, i32* %j, align 4
  %idxprom402 = sext i32 %333 to i64
  %arrayidx403 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom402
  %334 = load double, double* %arrayidx403, align 8
  %335 = load i32, i32* %j, align 4
  %idxprom404 = sext i32 %335 to i64
  %arrayidx405 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i64 %idxprom404
  %336 = load double, double* %arrayidx405, align 8
  %sub406 = fsub double %334, %336
  %337 = load i32, i32* %b, align 4
  %idxprom407 = sext i32 %337 to i64
  %arrayidx408 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom407
  %338 = load i32, i32* %arrayidx408, align 4
  %conv409 = sitofp i32 %338 to double
  %mul410 = fmul double %sub406, %conv409
  %339 = load double*, double** %vmptr328, align 8
  %340 = load double, double* %339, align 8
  %add411 = fadd double %340, %mul410
  store double %add411, double* %339, align 8
  br label %for.inc.412

for.inc.412:                                      ; preds = %for.body.391
  %341 = load i32, i32* %j, align 4
  %inc413 = add nsw i32 %341, 1
  store i32 %inc413, i32* %j, align 4
  br label %for.cond.388

for.end.414:                                      ; preds = %for.cond.388
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.end.414
  %342 = load i32, i32* %b, align 4
  %inc416 = add nsw i32 %342, 1
  store i32 %inc416, i32* %b, align 4
  br label %for.cond.335

for.end.417:                                      ; preds = %for.cond.335
  %343 = load i32, i32* %has_alpha, align 4
  %tobool418 = icmp ne i32 %343, 0
  br i1 %tobool418, label %if.then.419, label %if.end.430

if.then.419:                                      ; preds = %for.end.417
  %344 = load i32, i32* %bpp, align 4
  %idxprom420 = sext i32 %344 to i64
  %345 = load i8*, i8** %sp_p, align 8
  %arrayidx421 = getelementptr inbounds i8, i8* %345, i64 %idxprom420
  %346 = load i8, i8* %arrayidx421, align 1
  %conv422 = uitofp i8 %346 to double
  %347 = load i32, i32* %bpp, align 4
  %idxprom423 = sext i32 %347 to i64
  %348 = load double*, double** %vp, align 8
  %arrayidx424 = getelementptr inbounds double, double* %348, i64 %idxprom423
  store double %conv422, double* %arrayidx424, align 8
  %349 = load i32, i32* %bpp, align 4
  %idxprom425 = sext i32 %349 to i64
  %350 = load i8*, i8** %sp_m, align 8
  %arrayidx426 = getelementptr inbounds i8, i8* %350, i64 %idxprom425
  %351 = load i8, i8* %arrayidx426, align 1
  %conv427 = uitofp i8 %351 to double
  %352 = load i32, i32* %bpp, align 4
  %idxprom428 = sext i32 %352 to i64
  %353 = load double*, double** %vm, align 8
  %arrayidx429 = getelementptr inbounds double, double* %353, i64 %idxprom428
  store double %conv427, double* %arrayidx429, align 8
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.419, %for.end.417
  %354 = load i32, i32* %bytes, align 4
  %355 = load i8*, i8** %sp_p, align 8
  %idx.ext431 = sext i32 %354 to i64
  %add.ptr432 = getelementptr inbounds i8, i8* %355, i64 %idx.ext431
  store i8* %add.ptr432, i8** %sp_p, align 8
  %356 = load i32, i32* %bytes, align 4
  %357 = load i8*, i8** %sp_m, align 8
  %idx.ext433 = sext i32 %356 to i64
  %idx.neg434 = sub i64 0, %idx.ext433
  %add.ptr435 = getelementptr inbounds i8, i8* %357, i64 %idx.neg434
  store i8* %add.ptr435, i8** %sp_m, align 8
  %358 = load i32, i32* %bytes, align 4
  %359 = load double*, double** %vp, align 8
  %idx.ext436 = sext i32 %358 to i64
  %add.ptr437 = getelementptr inbounds double, double* %359, i64 %idx.ext436
  store double* %add.ptr437, double** %vp, align 8
  %360 = load i32, i32* %bytes, align 4
  %361 = load double*, double** %vm, align 8
  %idx.ext438 = sext i32 %360 to i64
  %idx.neg439 = sub i64 0, %idx.ext438
  %add.ptr440 = getelementptr inbounds double, double* %361, i64 %idx.neg439
  store double* %add.ptr440, double** %vm, align 8
  br label %for.inc.441

for.inc.441:                                      ; preds = %if.end.430
  %362 = load i32, i32* %col, align 4
  %inc442 = add nsw i32 %362, 1
  store i32 %inc442, i32* %col, align 4
  br label %for.cond.323

for.end.443:                                      ; preds = %for.cond.323
  %363 = load double*, double** %val_p, align 8
  %364 = load double*, double** %val_m, align 8
  %365 = load i8*, i8** %dest, align 8
  %366 = load i32, i32* %bytes, align 4
  %367 = load i32, i32* %width, align 4
  call void @transfer_pixels(double* %363, double* %364, i8* %365, i32 %366, i32 %367)
  %368 = load i8*, i8** %dest, align 8
  %369 = load i8*, i8** %src2, align 8
  %370 = load i32, i32* %bytes, align 4
  %371 = load i32, i32* %width, align 4
  %372 = load double, double* %amount.addr, align 8
  call void @combine_to_gradient(i8* %368, i8* %369, i32 %370, i32 %371, double %372)
  %373 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool444 = icmp ne %struct._GimpPreview* %373, null
  br i1 %tobool444, label %if.then.445, label %if.else.452

if.then.445:                                      ; preds = %for.end.443
  %374 = load i8*, i8** %preview_buffer2, align 8
  %375 = load i32, i32* %row, align 4
  %376 = load i32, i32* %width, align 4
  %mul446 = mul nsw i32 %375, %376
  %377 = load i32, i32* %bytes, align 4
  %mul447 = mul nsw i32 %mul446, %377
  %idx.ext448 = sext i32 %mul447 to i64
  %add.ptr449 = getelementptr inbounds i8, i8* %374, i64 %idx.ext448
  %378 = load i8*, i8** %dest, align 8
  %379 = load i32, i32* %width, align 4
  %380 = load i32, i32* %bytes, align 4
  %mul450 = mul nsw i32 %379, %380
  %conv451 = sext i32 %mul450 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr449, i8* %378, i64 %conv451, i32 1, i1 false)
  br label %if.end.469

if.else.452:                                      ; preds = %for.end.443
  %381 = load i8*, i8** %dest, align 8
  %382 = load i32, i32* %x1, align 4
  %383 = load i32, i32* %row, align 4
  %384 = load i32, i32* %y1, align 4
  %add453 = add nsw i32 %383, %384
  %385 = load i32, i32* %x2, align 4
  %386 = load i32, i32* %x1, align 4
  %sub454 = sub nsw i32 %385, %386
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_rgn, i8* %381, i32 %382, i32 %add453, i32 %sub454)
  %387 = load i32, i32* %width, align 4
  %conv455 = sitofp i32 %387 to double
  %388 = load double, double* %radius.addr, align 8
  %mul456 = fmul double %conv455, %388
  %389 = load i32, i32* %progress, align 4
  %conv457 = sitofp i32 %389 to double
  %add458 = fadd double %conv457, %mul456
  %conv459 = fptosi double %add458 to i32
  store i32 %conv459, i32* %progress, align 4
  %390 = load i32, i32* %row, align 4
  %rem460 = srem i32 %390, 20
  %cmp461 = icmp eq i32 %rem460, 0
  br i1 %cmp461, label %if.then.463, label %if.end.468

if.then.463:                                      ; preds = %if.else.452
  %391 = load i32, i32* %progress, align 4
  %conv464 = sitofp i32 %391 to double
  %392 = load i32, i32* %max_progress, align 4
  %conv465 = sitofp i32 %392 to double
  %div466 = fdiv double %conv464, %conv465
  %call467 = call i32 @gimp_progress_update(double %div466)
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.463, %if.else.452
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.then.445
  br label %for.inc.470

for.inc.470:                                      ; preds = %if.end.469
  %393 = load i32, i32* %row, align 4
  %inc471 = add nsw i32 %393, 1
  store i32 %inc471, i32* %row, align 4
  br label %for.cond.274

for.end.472:                                      ; preds = %for.cond.274
  %394 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool473 = icmp ne %struct._GimpPreview* %394, null
  br i1 %tobool473, label %if.then.474, label %if.else.476

if.then.474:                                      ; preds = %for.end.472
  %395 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %396 = load i8*, i8** %preview_buffer2, align 8
  %397 = load i32, i32* %width, align 4
  %398 = load i32, i32* %bytes, align 4
  %mul475 = mul nsw i32 %397, %398
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %395, i8* %396, i32 %mul475)
  %399 = load i8*, i8** %preview_buffer1, align 8
  call void @g_free(i8* %399)
  %400 = load i8*, i8** %preview_buffer2, align 8
  call void @g_free(i8* %400)
  br label %if.end.486

if.else.476:                                      ; preds = %for.end.472
  %call477 = call i32 @gimp_progress_update(double 1.000000e+00)
  %401 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %402 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width478 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %402, i32 0, i32 1
  %403 = load i32, i32* %width478, align 4
  %404 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height479 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %404, i32 0, i32 2
  %405 = load i32, i32* %height479, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %401, i32 0, i32 0, i32 %403, i32 %405, i32 0, i32 1)
  %406 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %406)
  %407 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id480 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %407, i32 0, i32 0
  %408 = load i32, i32* %drawable_id480, align 4
  %call481 = call i32 @gimp_drawable_merge_shadow(i32 %408, i32 1)
  %409 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id482 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %409, i32 0, i32 0
  %410 = load i32, i32* %drawable_id482, align 4
  %411 = load i32, i32* %x1, align 4
  %412 = load i32, i32* %y1, align 4
  %413 = load i32, i32* %x2, align 4
  %414 = load i32, i32* %x1, align 4
  %sub483 = sub nsw i32 %413, %414
  %415 = load i32, i32* %y2, align 4
  %416 = load i32, i32* %y1, align 4
  %sub484 = sub nsw i32 %415, %416
  %call485 = call i32 @gimp_drawable_update(i32 %410, i32 %411, i32 %412, i32 %sub483, i32 %sub484)
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.476, %if.then.474
  %417 = load double*, double** %val_p, align 8
  %418 = bitcast double* %417 to i8*
  call void @g_free(i8* %418)
  %419 = load double*, double** %val_m, align 8
  %420 = bitcast double* %419 to i8*
  call void @g_free(i8* %420)
  %421 = load i8*, i8** %src, align 8
  call void @g_free(i8* %421)
  %422 = load i8*, i8** %src2, align 8
  call void @g_free(i8* %422)
  %423 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %423)
  br label %return

return:                                           ; preds = %if.end.486, %if.then.3
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
define internal void @neon_preview_update(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %drawable = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %2, i32 0, i32 1
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %4 = load double, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 0), align 8
  %5 = load double, double* getelementptr inbounds (%struct.NeonVals, %struct.NeonVals* @evals, i32 0, i32 1), align 8
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @neon(%struct._GimpDrawable* %3, double %4, double %5, %struct._GimpPreview* %6)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define internal void @find_constants(double* %n_p, double* %n_m, double* %d_p, double* %d_m, double* %bd_p, double* %bd_m, double %std_dev) #0 {
entry:
  %n_p.addr = alloca double*, align 8
  %n_m.addr = alloca double*, align 8
  %d_p.addr = alloca double*, align 8
  %d_m.addr = alloca double*, align 8
  %bd_p.addr = alloca double*, align 8
  %bd_m.addr = alloca double*, align 8
  %std_dev.addr = alloca double, align 8
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %b0 = alloca double, align 8
  %b1 = alloca double, align 8
  %c0 = alloca double, align 8
  %c1 = alloca double, align 8
  %w0 = alloca double, align 8
  %w1 = alloca double, align 8
  %w0n = alloca double, align 8
  %w1n = alloca double, align 8
  %cos0 = alloca double, align 8
  %cos1 = alloca double, align 8
  %sin0 = alloca double, align 8
  %sin1 = alloca double, align 8
  %b0n = alloca double, align 8
  %b1n = alloca double, align 8
  %i = alloca i32, align 4
  %sum_n_p = alloca double, align 8
  %sum_n_m = alloca double, align 8
  %sum_d = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store double* %n_p, double** %n_p.addr, align 8
  store double* %n_m, double** %n_m.addr, align 8
  store double* %d_p, double** %d_p.addr, align 8
  store double* %d_m, double** %d_m.addr, align 8
  store double* %bd_p, double** %bd_p.addr, align 8
  store double* %bd_m, double** %bd_m.addr, align 8
  store double %std_dev, double* %std_dev.addr, align 8
  store double 6.472000e-01, double* %a0, align 8
  store double 4.531000e+00, double* %a1, align 8
  store double 1.527000e+00, double* %b0, align 8
  store double 1.516000e+00, double* %b1, align 8
  store double -6.494000e-01, double* %c0, align 8
  store double -9.557000e-01, double* %c1, align 8
  store double 6.719000e-01, double* %w0, align 8
  store double 2.072000e+00, double* %w1, align 8
  %0 = load double, double* %w0, align 8
  %1 = load double, double* %std_dev.addr, align 8
  %div = fdiv double %0, %1
  store double %div, double* %w0n, align 8
  %2 = load double, double* %w1, align 8
  %3 = load double, double* %std_dev.addr, align 8
  %div1 = fdiv double %2, %3
  store double %div1, double* %w1n, align 8
  %4 = load double, double* %w0n, align 8
  %call = call double @cos(double %4) #4
  store double %call, double* %cos0, align 8
  %5 = load double, double* %w1n, align 8
  %call2 = call double @cos(double %5) #4
  store double %call2, double* %cos1, align 8
  %6 = load double, double* %w0n, align 8
  %call3 = call double @sin(double %6) #4
  store double %call3, double* %sin0, align 8
  %7 = load double, double* %w1n, align 8
  %call4 = call double @sin(double %7) #4
  store double %call4, double* %sin1, align 8
  %8 = load double, double* %b0, align 8
  %9 = load double, double* %std_dev.addr, align 8
  %div5 = fdiv double %8, %9
  store double %div5, double* %b0n, align 8
  %10 = load double, double* %b1, align 8
  %11 = load double, double* %std_dev.addr, align 8
  %div6 = fdiv double %10, %11
  store double %div6, double* %b1n, align 8
  %12 = load double*, double** %n_p.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %12, i64 4
  store double 0.000000e+00, double* %arrayidx, align 8
  %13 = load double, double* %b1n, align 8
  %sub = fsub double -0.000000e+00, %13
  %14 = load double, double* %b0n, align 8
  %mul = fmul double 2.000000e+00, %14
  %sub7 = fsub double %sub, %mul
  %call8 = call double @exp(double %sub7) #4
  %15 = load double, double* %c1, align 8
  %16 = load double, double* %sin1, align 8
  %mul9 = fmul double %15, %16
  %17 = load double, double* %cos1, align 8
  %18 = load double, double* %c0, align 8
  %mul10 = fmul double %17, %18
  %sub11 = fsub double %mul9, %mul10
  %mul12 = fmul double %call8, %sub11
  %19 = load double, double* %b0n, align 8
  %sub13 = fsub double -0.000000e+00, %19
  %20 = load double, double* %b1n, align 8
  %mul14 = fmul double 2.000000e+00, %20
  %sub15 = fsub double %sub13, %mul14
  %call16 = call double @exp(double %sub15) #4
  %21 = load double, double* %a1, align 8
  %22 = load double, double* %sin0, align 8
  %mul17 = fmul double %21, %22
  %23 = load double, double* %cos0, align 8
  %24 = load double, double* %a0, align 8
  %mul18 = fmul double %23, %24
  %sub19 = fsub double %mul17, %mul18
  %mul20 = fmul double %call16, %sub19
  %add = fadd double %mul12, %mul20
  %25 = load double*, double** %n_p.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %25, i64 3
  store double %add, double* %arrayidx21, align 8
  %26 = load double, double* %b0n, align 8
  %sub22 = fsub double -0.000000e+00, %26
  %27 = load double, double* %b1n, align 8
  %sub23 = fsub double %sub22, %27
  %call24 = call double @exp(double %sub23) #4
  %mul25 = fmul double 2.000000e+00, %call24
  %28 = load double, double* %a0, align 8
  %29 = load double, double* %c0, align 8
  %add26 = fadd double %28, %29
  %30 = load double, double* %cos1, align 8
  %mul27 = fmul double %add26, %30
  %31 = load double, double* %cos0, align 8
  %mul28 = fmul double %mul27, %31
  %32 = load double, double* %cos1, align 8
  %33 = load double, double* %a1, align 8
  %mul29 = fmul double %32, %33
  %34 = load double, double* %sin0, align 8
  %mul30 = fmul double %mul29, %34
  %sub31 = fsub double %mul28, %mul30
  %35 = load double, double* %cos0, align 8
  %36 = load double, double* %c1, align 8
  %mul32 = fmul double %35, %36
  %37 = load double, double* %sin1, align 8
  %mul33 = fmul double %mul32, %37
  %sub34 = fsub double %sub31, %mul33
  %mul35 = fmul double %mul25, %sub34
  %38 = load double, double* %c0, align 8
  %39 = load double, double* %b0n, align 8
  %mul36 = fmul double -2.000000e+00, %39
  %call37 = call double @exp(double %mul36) #4
  %mul38 = fmul double %38, %call37
  %add39 = fadd double %mul35, %mul38
  %40 = load double, double* %a0, align 8
  %41 = load double, double* %b1n, align 8
  %mul40 = fmul double -2.000000e+00, %41
  %call41 = call double @exp(double %mul40) #4
  %mul42 = fmul double %40, %call41
  %add43 = fadd double %add39, %mul42
  %42 = load double*, double** %n_p.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %42, i64 2
  store double %add43, double* %arrayidx44, align 8
  %43 = load double, double* %b1n, align 8
  %sub45 = fsub double -0.000000e+00, %43
  %call46 = call double @exp(double %sub45) #4
  %44 = load double, double* %c1, align 8
  %45 = load double, double* %sin1, align 8
  %mul47 = fmul double %44, %45
  %46 = load double, double* %c0, align 8
  %47 = load double, double* %a0, align 8
  %mul48 = fmul double 2.000000e+00, %47
  %add49 = fadd double %46, %mul48
  %48 = load double, double* %cos1, align 8
  %mul50 = fmul double %add49, %48
  %sub51 = fsub double %mul47, %mul50
  %mul52 = fmul double %call46, %sub51
  %49 = load double, double* %b0n, align 8
  %sub53 = fsub double -0.000000e+00, %49
  %call54 = call double @exp(double %sub53) #4
  %50 = load double, double* %a1, align 8
  %51 = load double, double* %sin0, align 8
  %mul55 = fmul double %50, %51
  %52 = load double, double* %c0, align 8
  %mul56 = fmul double 2.000000e+00, %52
  %53 = load double, double* %a0, align 8
  %add57 = fadd double %mul56, %53
  %54 = load double, double* %cos0, align 8
  %mul58 = fmul double %add57, %54
  %sub59 = fsub double %mul55, %mul58
  %mul60 = fmul double %call54, %sub59
  %add61 = fadd double %mul52, %mul60
  %55 = load double*, double** %n_p.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %55, i64 1
  store double %add61, double* %arrayidx62, align 8
  %56 = load double, double* %a0, align 8
  %57 = load double, double* %c0, align 8
  %add63 = fadd double %56, %57
  %58 = load double*, double** %n_p.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %58, i64 0
  store double %add63, double* %arrayidx64, align 8
  %59 = load double, double* %b0n, align 8
  %mul65 = fmul double -2.000000e+00, %59
  %60 = load double, double* %b1n, align 8
  %mul66 = fmul double 2.000000e+00, %60
  %sub67 = fsub double %mul65, %mul66
  %call68 = call double @exp(double %sub67) #4
  %61 = load double*, double** %d_p.addr, align 8
  %arrayidx69 = getelementptr inbounds double, double* %61, i64 4
  store double %call68, double* %arrayidx69, align 8
  %62 = load double, double* %cos0, align 8
  %mul70 = fmul double -2.000000e+00, %62
  %63 = load double, double* %b0n, align 8
  %sub71 = fsub double -0.000000e+00, %63
  %64 = load double, double* %b1n, align 8
  %mul72 = fmul double 2.000000e+00, %64
  %sub73 = fsub double %sub71, %mul72
  %call74 = call double @exp(double %sub73) #4
  %mul75 = fmul double %mul70, %call74
  %65 = load double, double* %cos1, align 8
  %mul76 = fmul double 2.000000e+00, %65
  %66 = load double, double* %b1n, align 8
  %sub77 = fsub double -0.000000e+00, %66
  %67 = load double, double* %b0n, align 8
  %mul78 = fmul double 2.000000e+00, %67
  %sub79 = fsub double %sub77, %mul78
  %call80 = call double @exp(double %sub79) #4
  %mul81 = fmul double %mul76, %call80
  %sub82 = fsub double %mul75, %mul81
  %68 = load double*, double** %d_p.addr, align 8
  %arrayidx83 = getelementptr inbounds double, double* %68, i64 3
  store double %sub82, double* %arrayidx83, align 8
  %69 = load double, double* %cos1, align 8
  %mul84 = fmul double 4.000000e+00, %69
  %70 = load double, double* %cos0, align 8
  %mul85 = fmul double %mul84, %70
  %71 = load double, double* %b0n, align 8
  %sub86 = fsub double -0.000000e+00, %71
  %72 = load double, double* %b1n, align 8
  %sub87 = fsub double %sub86, %72
  %call88 = call double @exp(double %sub87) #4
  %mul89 = fmul double %mul85, %call88
  %73 = load double, double* %b1n, align 8
  %mul90 = fmul double -2.000000e+00, %73
  %call91 = call double @exp(double %mul90) #4
  %add92 = fadd double %mul89, %call91
  %74 = load double, double* %b0n, align 8
  %mul93 = fmul double -2.000000e+00, %74
  %call94 = call double @exp(double %mul93) #4
  %add95 = fadd double %add92, %call94
  %75 = load double*, double** %d_p.addr, align 8
  %arrayidx96 = getelementptr inbounds double, double* %75, i64 2
  store double %add95, double* %arrayidx96, align 8
  %76 = load double, double* %b1n, align 8
  %sub97 = fsub double -0.000000e+00, %76
  %call98 = call double @exp(double %sub97) #4
  %mul99 = fmul double -2.000000e+00, %call98
  %77 = load double, double* %cos1, align 8
  %mul100 = fmul double %mul99, %77
  %78 = load double, double* %b0n, align 8
  %sub101 = fsub double -0.000000e+00, %78
  %call102 = call double @exp(double %sub101) #4
  %mul103 = fmul double 2.000000e+00, %call102
  %79 = load double, double* %cos0, align 8
  %mul104 = fmul double %mul103, %79
  %sub105 = fsub double %mul100, %mul104
  %80 = load double*, double** %d_p.addr, align 8
  %arrayidx106 = getelementptr inbounds double, double* %80, i64 1
  store double %sub105, double* %arrayidx106, align 8
  %81 = load double*, double** %d_p.addr, align 8
  %arrayidx107 = getelementptr inbounds double, double* %81, i64 0
  store double 0.000000e+00, double* %arrayidx107, align 8
  %82 = load double*, double** %d_p.addr, align 8
  %arrayidx108 = getelementptr inbounds double, double* %82, i64 4
  %83 = load double, double* %arrayidx108, align 8
  %84 = load double*, double** %n_p.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %84, i64 0
  %85 = load double, double* %arrayidx109, align 8
  %mul110 = fmul double %83, %85
  %86 = load double*, double** %n_p.addr, align 8
  %arrayidx111 = getelementptr inbounds double, double* %86, i64 4
  %87 = load double, double* %arrayidx111, align 8
  %sub112 = fsub double %mul110, %87
  %88 = load double*, double** %n_m.addr, align 8
  %arrayidx113 = getelementptr inbounds double, double* %88, i64 4
  store double %sub112, double* %arrayidx113, align 8
  %89 = load double*, double** %d_p.addr, align 8
  %arrayidx114 = getelementptr inbounds double, double* %89, i64 3
  %90 = load double, double* %arrayidx114, align 8
  %91 = load double*, double** %n_p.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %91, i64 0
  %92 = load double, double* %arrayidx115, align 8
  %mul116 = fmul double %90, %92
  %93 = load double*, double** %n_p.addr, align 8
  %arrayidx117 = getelementptr inbounds double, double* %93, i64 3
  %94 = load double, double* %arrayidx117, align 8
  %sub118 = fsub double %mul116, %94
  %95 = load double*, double** %n_m.addr, align 8
  %arrayidx119 = getelementptr inbounds double, double* %95, i64 3
  store double %sub118, double* %arrayidx119, align 8
  %96 = load double*, double** %d_p.addr, align 8
  %arrayidx120 = getelementptr inbounds double, double* %96, i64 2
  %97 = load double, double* %arrayidx120, align 8
  %98 = load double*, double** %n_p.addr, align 8
  %arrayidx121 = getelementptr inbounds double, double* %98, i64 0
  %99 = load double, double* %arrayidx121, align 8
  %mul122 = fmul double %97, %99
  %100 = load double*, double** %n_p.addr, align 8
  %arrayidx123 = getelementptr inbounds double, double* %100, i64 2
  %101 = load double, double* %arrayidx123, align 8
  %sub124 = fsub double %mul122, %101
  %102 = load double*, double** %n_m.addr, align 8
  %arrayidx125 = getelementptr inbounds double, double* %102, i64 2
  store double %sub124, double* %arrayidx125, align 8
  %103 = load double*, double** %d_p.addr, align 8
  %arrayidx126 = getelementptr inbounds double, double* %103, i64 1
  %104 = load double, double* %arrayidx126, align 8
  %105 = load double*, double** %n_p.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %105, i64 0
  %106 = load double, double* %arrayidx127, align 8
  %mul128 = fmul double %104, %106
  %107 = load double*, double** %n_p.addr, align 8
  %arrayidx129 = getelementptr inbounds double, double* %107, i64 1
  %108 = load double, double* %arrayidx129, align 8
  %sub130 = fsub double %mul128, %108
  %109 = load double*, double** %n_m.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %109, i64 1
  store double %sub130, double* %arrayidx131, align 8
  %110 = load double*, double** %n_m.addr, align 8
  %arrayidx132 = getelementptr inbounds double, double* %110, i64 0
  store double 0.000000e+00, double* %arrayidx132, align 8
  %111 = load double*, double** %d_p.addr, align 8
  %arrayidx133 = getelementptr inbounds double, double* %111, i64 4
  %112 = load double, double* %arrayidx133, align 8
  %113 = load double*, double** %d_m.addr, align 8
  %arrayidx134 = getelementptr inbounds double, double* %113, i64 4
  store double %112, double* %arrayidx134, align 8
  %114 = load double*, double** %d_p.addr, align 8
  %arrayidx135 = getelementptr inbounds double, double* %114, i64 3
  %115 = load double, double* %arrayidx135, align 8
  %116 = load double*, double** %d_m.addr, align 8
  %arrayidx136 = getelementptr inbounds double, double* %116, i64 3
  store double %115, double* %arrayidx136, align 8
  %117 = load double*, double** %d_p.addr, align 8
  %arrayidx137 = getelementptr inbounds double, double* %117, i64 2
  %118 = load double, double* %arrayidx137, align 8
  %119 = load double*, double** %d_m.addr, align 8
  %arrayidx138 = getelementptr inbounds double, double* %119, i64 2
  store double %118, double* %arrayidx138, align 8
  %120 = load double*, double** %d_p.addr, align 8
  %arrayidx139 = getelementptr inbounds double, double* %120, i64 1
  %121 = load double, double* %arrayidx139, align 8
  %122 = load double*, double** %d_m.addr, align 8
  %arrayidx140 = getelementptr inbounds double, double* %122, i64 1
  store double %121, double* %arrayidx140, align 8
  %123 = load double*, double** %d_p.addr, align 8
  %arrayidx141 = getelementptr inbounds double, double* %123, i64 0
  %124 = load double, double* %arrayidx141, align 8
  %125 = load double*, double** %d_m.addr, align 8
  %arrayidx142 = getelementptr inbounds double, double* %125, i64 0
  store double %124, double* %arrayidx142, align 8
  store double 0.000000e+00, double* %sum_n_p, align 8
  store double 0.000000e+00, double* %sum_n_m, align 8
  store double 0.000000e+00, double* %sum_d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %126 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %126, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %127 = load i32, i32* %i, align 4
  %idxprom = sext i32 %127 to i64
  %128 = load double*, double** %n_p.addr, align 8
  %arrayidx143 = getelementptr inbounds double, double* %128, i64 %idxprom
  %129 = load double, double* %arrayidx143, align 8
  %130 = load double, double* %sum_n_p, align 8
  %add144 = fadd double %130, %129
  store double %add144, double* %sum_n_p, align 8
  %131 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %131 to i64
  %132 = load double*, double** %n_m.addr, align 8
  %arrayidx146 = getelementptr inbounds double, double* %132, i64 %idxprom145
  %133 = load double, double* %arrayidx146, align 8
  %134 = load double, double* %sum_n_m, align 8
  %add147 = fadd double %134, %133
  store double %add147, double* %sum_n_m, align 8
  %135 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %135 to i64
  %136 = load double*, double** %d_p.addr, align 8
  %arrayidx149 = getelementptr inbounds double, double* %136, i64 %idxprom148
  %137 = load double, double* %arrayidx149, align 8
  %138 = load double, double* %sum_d, align 8
  %add150 = fadd double %138, %137
  store double %add150, double* %sum_d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %139 = load i32, i32* %i, align 4
  %inc = add nsw i32 %139, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %140 = load double, double* %sum_n_p, align 8
  %141 = load double, double* %sum_d, align 8
  %add151 = fadd double 1.000000e+00, %141
  %div152 = fdiv double %140, %add151
  store double %div152, double* %a, align 8
  %142 = load double, double* %sum_n_m, align 8
  %143 = load double, double* %sum_d, align 8
  %add153 = fadd double 1.000000e+00, %143
  %div154 = fdiv double %142, %add153
  store double %div154, double* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.168, %for.end
  %144 = load i32, i32* %i, align 4
  %cmp156 = icmp sle i32 %144, 4
  br i1 %cmp156, label %for.body.157, label %for.end.170

for.body.157:                                     ; preds = %for.cond.155
  %145 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %145 to i64
  %146 = load double*, double** %d_p.addr, align 8
  %arrayidx159 = getelementptr inbounds double, double* %146, i64 %idxprom158
  %147 = load double, double* %arrayidx159, align 8
  %148 = load double, double* %a, align 8
  %mul160 = fmul double %147, %148
  %149 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %149 to i64
  %150 = load double*, double** %bd_p.addr, align 8
  %arrayidx162 = getelementptr inbounds double, double* %150, i64 %idxprom161
  store double %mul160, double* %arrayidx162, align 8
  %151 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %151 to i64
  %152 = load double*, double** %d_m.addr, align 8
  %arrayidx164 = getelementptr inbounds double, double* %152, i64 %idxprom163
  %153 = load double, double* %arrayidx164, align 8
  %154 = load double, double* %b, align 8
  %mul165 = fmul double %153, %154
  %155 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %155 to i64
  %156 = load double*, double** %bd_m.addr, align 8
  %arrayidx167 = getelementptr inbounds double, double* %156, i64 %idxprom166
  store double %mul165, double* %arrayidx167, align 8
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.157
  %157 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %157, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.155

for.end.170:                                      ; preds = %for.cond.155
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @transfer_pixels(double* %src1, double* %src2, i8* %dest, i32 %bytes, i32 %width) #0 {
entry:
  %src1.addr = alloca double*, align 8
  %src2.addr = alloca double*, align 8
  %dest.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %bend = alloca i32, align 4
  %sum = alloca double, align 8
  store double* %src1, double** %src1.addr, align 8
  store double* %src2, double** %src2.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %bend, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* %bend, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %src1.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %src1.addr, align 8
  %5 = load double, double* %4, align 8
  %6 = load double*, double** %src2.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr1, double** %src2.addr, align 8
  %7 = load double, double* %6, align 8
  %add = fadd double %5, %7
  store double %add, double* %sum, align 8
  %8 = load double, double* %sum, align 8
  %cmp2 = fcmp ogt double %8, 2.550000e+02
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store double 2.550000e+02, double* %sum, align 8
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %9 = load double, double* %sum, align 8
  %cmp3 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store double 0.000000e+00, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %10 = load double, double* %sum, align 8
  %conv = fptoui double %10 to i8
  %11 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %dest.addr, align 8
  store i8 %conv, i8* %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load i32, i32* %b, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @combine_to_gradient(i8* %dest, i8* %src2, i32 %bytes, i32 %width, double %amount) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %amount.addr = alloca double, align 8
  %b = alloca i32, align 4
  %bend = alloca i32, align 4
  %h = alloca double, align 8
  %v = alloca double, align 8
  %sum = alloca double, align 8
  %scale = alloca double, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store double %amount, double* %amount.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %bend, align 4
  %2 = load double, double* %amount.addr, align 8
  %mul1 = fmul double 9.000000e+00, %2
  %add = fadd double 1.000000e+00, %mul1
  store double %add, double* %scale, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %b, align 4
  %4 = load i32, i32* %bend, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %src2.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %src2.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = uitofp i8 %6 to double
  store double %conv, double* %h, align 8
  %7 = load i8*, i8** %dest.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = uitofp i8 %8 to double
  store double %conv2, double* %v, align 8
  %9 = load double, double* %h, align 8
  %10 = load double, double* %h, align 8
  %mul3 = fmul double %9, %10
  %11 = load double, double* %v, align 8
  %12 = load double, double* %v, align 8
  %mul4 = fmul double %11, %12
  %add5 = fadd double %mul3, %mul4
  %call = call double @sqrt(double %add5) #4
  %13 = load double, double* %scale, align 8
  %mul6 = fmul double %call, %13
  store double %mul6, double* %sum, align 8
  %14 = load double, double* %sum, align 8
  %cmp7 = fcmp ogt double %14, 2.550000e+02
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store double 2.550000e+02, double* %sum, align 8
  br label %if.end.12

if.else:                                          ; preds = %for.body
  %15 = load double, double* %sum, align 8
  %cmp9 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  store double 0.000000e+00, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %16 = load double, double* %sum, align 8
  %conv13 = fptoui double %16 to i8
  %17 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr14, i8** %dest.addr, align 8
  store i8 %conv13, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %18 = load i32, i32* %b, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
