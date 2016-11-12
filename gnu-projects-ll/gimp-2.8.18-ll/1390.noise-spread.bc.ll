; ModuleID = './plug-ins/common/noise-spread.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SpreadValues = type { double, double }
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
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpRgnIterator = type opaque
%struct.SpreadParam_t = type { %struct._GimpPixelFetcher*, %struct._GRand*, i32, i32, i32, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GRand = type opaque
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"spread-amount-x\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Horizontal spread amount (0 <= spread_amount_x <= 200)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"spread-amount-y\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Vertical spread amount (0 <= spread_amount_y <= 200)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"plug-in-spread\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Move pixels around randomly\00", align 1
@.str.12 = private unnamed_addr constant [180 x i8] c"Spreads the pixels of the specified drawable.  Pixels are randomly moved to another location whose distance varies from the original by the horizontal and vertical spread amounts \00", align 1
@.str.13 = private unnamed_addr constant [88 x i8] c"Spencer Kimball and Peter Mattis, ported by Brian Degenhardt and Federico Mena Quintero\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Federico Mena Quintero and Brian Degenhardt\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Sp_read...\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"<Image>/Filters/Noise\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@spvals = internal global %struct.SpreadValues { double 5.000000e+00, double 5.000000e+00 }, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"Spreading\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"noise-spread\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Spread\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"gimp-noise-spread\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Spread Amount\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"_Horizontal:\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"_Vertical:\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_image, align 4
  store i32 %3, i32* %image_ID, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %5)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_tile_cache_ntiles(i64 16)
  %6 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %7, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %do.end
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.SpreadValues* @spvals to i8*))
  %10 = load i32, i32* %image_ID, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @spread_dialog(i32 %10, %struct._GimpDrawable* %11)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %12, 5
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb.11
  store i32 1, i32* %status, align 4
  br label %if.end.18

if.else:                                          ; preds = %sw.bb.11
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data14 to double*
  %14 = load double, double* %d_float, align 8
  store double %14, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 0), align 8
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_float17 = bitcast %union._GimpParamData* %data16 to double*
  %16 = load double, double* %d_float17, align 8
  store double %16, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 1), align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.12
  %17 = load i32, i32* %status, align 4
  %cmp19 = icmp eq i32 %17, 3
  br i1 %cmp19, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.18
  %18 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 0), align 8
  %cmp20 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 0), align 8
  %cmp21 = fcmp ogt double %19, 2.000000e+02
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %20 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 1), align 8
  %cmp23 = fcmp olt double %20, 0.000000e+00
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true.22
  %21 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 1), align 8
  %cmp25 = fcmp ogt double %21, 2.000000e+02
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.24, %land.lhs.true.22
  store i32 1, i32* %status, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %lor.lhs.false.24, %lor.lhs.false, %if.end.18
  br label %sw.epilog

sw.bb.28:                                         ; preds = %do.end
  %call29 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.SpreadValues* @spvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %if.end.27, %if.end
  %22 = load i32, i32* %status, align 4
  %cmp30 = icmp eq i32 %22, 3
  br i1 %cmp30, label %if.then.31, label %if.end.51

if.then.31:                                       ; preds = %sw.epilog
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id, align 4
  %call32 = call i32 @gimp_drawable_is_rgb(i32 %24)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.38, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.then.31
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id35, align 4
  %call36 = call i32 @gimp_drawable_is_gray(i32 %26)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.49

if.then.38:                                       ; preds = %lor.lhs.false.34, %if.then.31
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #5
  %call40 = call i32 @gimp_progress_init(i8* %call39)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @spread(%struct._GimpDrawable* %27)
  %28 = load i32, i32* %run_mode, align 4
  %cmp41 = icmp ne i32 %28, 1
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.38
  %call43 = call i32 @gimp_displays_flush()
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.38
  %29 = load i32, i32* %run_mode, align 4
  %cmp45 = icmp eq i32 %29, 0
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.44
  %call47 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.SpreadValues* @spvals to i8*), i32 16)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.44
  br label %if.end.50

if.else.49:                                       ; preds = %lor.lhs.false.34
  store i32 0, i32* %status, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.end.48
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %sw.epilog
  %30 = load i32, i32* %status, align 4
  store i32 %30, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %31)
  br label %return

return:                                           ; preds = %if.end.51, %if.then
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
define internal i32 @spread_dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %size = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 -5, i8* null)
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
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)) #5
  %call18 = call %struct._GtkWidget* @gimp_frame_new(i8* %call17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load i32, i32* %image_ID.addr, align 4
  %call21 = call i32 @gimp_image_get_resolution(i32 %27, double* %xres, double* %yres)
  %28 = load i32, i32* %image_ID.addr, align 4
  %call22 = call i32 @gimp_image_get_unit(i32 %28)
  store i32 %call22, i32* %unit, align 4
  %29 = load i32, i32* %unit, align 4
  %30 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 0), align 8
  %31 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 1), align 8
  %cmp = fcmp oeq double %30, %31
  %conv = zext i1 %cmp to i32
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #5
  %32 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 0), align 8
  %33 = load double, double* %xres, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 1
  %35 = load i32, i32* %width, align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 2
  %37 = load i32, i32* %height, align 4
  %cmp24 = icmp ugt i32 %35, %37
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 1
  %39 = load i32, i32* %width26, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 2
  %41 = load i32, i32* %height27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %41, %cond.false ]
  %conv28 = uitofp i32 %cond to double
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)) #5
  %42 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 1), align 8
  %43 = load double, double* %yres, align 8
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 1
  %45 = load i32, i32* %width30, align 4
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %46, i32 0, i32 2
  %47 = load i32, i32* %height31, align 4
  %cmp32 = icmp ugt i32 %45, %47
  br i1 %cmp32, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 1
  %49 = load i32, i32* %width35, align 4
  br label %cond.end.38

cond.false.36:                                    ; preds = %cond.end
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 2
  %51 = load i32, i32* %height37, align 4
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.34
  %cond39 = phi i32 [ %49, %cond.true.34 ], [ %51, %cond.false.36 ]
  %conv40 = uitofp i32 %cond39 to double
  %call41 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 1, i32 0, i32 -1, i32 1, i32 %conv, i32 0, i8* %call23, double %32, double %33, double 0.000000e+00, double %conv28, double 0.000000e+00, double 0.000000e+00, i8* %call29, double %42, double %43, double 0.000000e+00, double %conv40, double 0.000000e+00, double 0.000000e+00)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %size, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call42)
  %54 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  call void @gtk_container_add(%struct._GtkContainer* %54, %struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*, %struct._GtkWidget*)* @spread_preview_update to void ()*), i8* %60, void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 2)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_preview_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call46)
  %68 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpPreview*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  call void @spread_preview_update(%struct._GimpPreview* %68, %struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_dialog_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call48)
  %72 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpDialog*
  %call50 = call i32 @gimp_dialog_run(%struct._GimpDialog* %72)
  %cmp51 = icmp eq i32 %call50, -5
  %conv52 = zext i1 %cmp51 to i32
  store i32 %conv52, i32* %run, align 4
  %73 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.38
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_size_entry_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call53)
  %76 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpSizeEntry*
  %call55 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %76, i32 0)
  store double %call55, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 0), align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_size_entry_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call56)
  %79 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpSizeEntry*
  %call58 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %79, i32 1)
  store double %call58, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.38
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %80)
  %81 = load i32, i32* %run, align 4
  ret i32 %81
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @spread(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %iter = alloca %struct._GimpRgnIterator*, align 8
  %param = alloca %struct.SpreadParam_t, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %0, i32 0)
  %pft = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 0
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call1 = call %struct._GRand* @g_rand_new()
  %gr = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 1
  store %struct._GRand* %call1, %struct._GRand** %gr, align 8
  %1 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 0), align 8
  %add = fadd double %1, 1.000000e+00
  %div = fdiv double %add, 2.000000e+00
  %conv = fptosi double %div to i32
  %x_amount = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 2
  store i32 %conv, i32* %x_amount, align 4
  %2 = load double, double* getelementptr inbounds (%struct.SpreadValues, %struct.SpreadValues* @spvals, i32 0, i32 1), align 8
  %add2 = fadd double %2, 1.000000e+00
  %div3 = fdiv double %add2, 2.000000e+00
  %conv4 = fptosi double %div3 to i32
  %y_amount = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 3
  store i32 %conv4, i32* %y_amount, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %width5 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 4
  store i32 %4, i32* %width5, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  %height6 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 5
  store i32 %6, i32* %height6, align 4
  %pft7 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 0
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft7, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %7, i32 3)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call8 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %8, i32 0)
  store %struct._GimpRgnIterator* %call8, %struct._GimpRgnIterator** %iter, align 8
  %9 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %10 = bitcast %struct.SpreadParam_t* %param to i8*
  call void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator* %9, void (i32, i32, i8*, i32, i8*)* @spread_func, i8* %10)
  %11 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %11)
  %gr9 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 1
  %12 = load %struct._GRand*, %struct._GRand** %gr9, align 8
  call void @g_rand_free(%struct._GRand* %12)
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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_get_unit(i32) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @spread_preview_update(%struct._GimpPreview* %preview, %struct._GtkWidget* %size) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %size.addr = alloca %struct._GtkWidget*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %param = alloca %struct.SpreadParam_t, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bpp = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x_off = alloca i32, align 4
  %y_off = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GtkWidget* %size, %struct._GtkWidget** %size.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %2)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %3, i32 0)
  %pft = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 0
  store %struct._GimpPixelFetcher* %call3, %struct._GimpPixelFetcher** %pft, align 8
  %call4 = call %struct._GRand* @g_rand_new()
  %gr = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 1
  store %struct._GRand* %call4, %struct._GRand** %gr, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %size.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_size_entry_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSizeEntry*
  %call7 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %6, i32 0)
  %add = fadd double %call7, 1.000000e+00
  %div = fdiv double %add, 2.000000e+00
  %conv = fptosi double %div to i32
  %x_amount = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 2
  store i32 %conv, i32* %x_amount, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %size.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_size_entry_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpSizeEntry*
  %call10 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %9, i32 1)
  %add11 = fadd double %call10, 1.000000e+00
  %div12 = fdiv double %add11, 2.000000e+00
  %conv13 = fptosi double %div12 to i32
  %y_amount = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 3
  store i32 %conv13, i32* %y_amount, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width14, align 4
  %width15 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 4
  store i32 %11, i32* %width15, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 2
  %13 = load i32, i32* %height16, align 4
  %height17 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 5
  store i32 %13, i32* %height17, align 4
  %pft18 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 0
  %14 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft18, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %14, i32 3)
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %15, i32* %width, i32* %height)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 3
  %17 = load i32, i32* %bpp19, align 4
  store i32 %17, i32* %bpp, align 4
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %18, %19
  %20 = load i32, i32* %bpp, align 4
  %mul20 = mul nsw i32 %mul, %20
  %conv21 = sext i32 %mul20 to i64
  %call22 = call noalias i8* @g_malloc_n(i64 %conv21, i64 1)
  store i8* %call22, i8** %buffer, align 8
  store i8* %call22, i8** %dest, align 8
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %21, i32* %x_off, i32* %y_off)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %entry
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %width, align 4
  %cmp25 = icmp slt i32 %24, %25
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.24
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %x_off, align 4
  %add28 = add nsw i32 %26, %27
  %28 = load i32, i32* %y, align 4
  %29 = load i32, i32* %y_off, align 4
  %add29 = add nsw i32 %28, %29
  %30 = load i8*, i8** %dest, align 8
  %31 = load i32, i32* %bpp, align 4
  %32 = bitcast %struct.SpreadParam_t* %param to i8*
  call void @spread_func(i32 %add28, i32 %add29, i8* %30, i32 %31, i8* %32)
  %33 = load i32, i32* %bpp, align 4
  %34 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %35 = load i32, i32* %x, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %36 = load i32, i32* %y, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %y, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %37 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %38 = load i8*, i8** %buffer, align 8
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %bpp, align 4
  %mul33 = mul nsw i32 %39, %40
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %37, i8* %38, i32 %mul33)
  %41 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %41)
  %gr34 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %param, i32 0, i32 1
  %42 = load %struct._GRand*, %struct._GRand** %gr34, align 8
  call void @g_rand_free(%struct._GRand* %42)
  ret void
}

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare %struct._GRand* @g_rand_new() #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @spread_func(i32 %x, i32 %y, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.SpreadParam_t*, align 8
  %angle = alloca double, align 8
  %xdist = alloca i32, align 4
  %ydist = alloca i32, align 4
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SpreadParam_t*
  store %struct.SpreadParam_t* %1, %struct.SpreadParam_t** %param, align 8
  %2 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %x_amount = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %2, i32 0, i32 2
  %3 = load i32, i32* %x_amount, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %gr = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %4, i32 0, i32 1
  %5 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %6 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %x_amount1 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %6, i32 0, i32 2
  %7 = load i32, i32* %x_amount1, align 4
  %sub = sub nsw i32 0, %7
  %8 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %x_amount2 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %8, i32 0, i32 2
  %9 = load i32, i32* %x_amount2, align 4
  %call = call i32 @g_rand_int_range(%struct._GRand* %5, i32 %sub, i32 %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %xdist, align 4
  %10 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %y_amount = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %10, i32 0, i32 3
  %11 = load i32, i32* %y_amount, align 4
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.10

cond.true.4:                                      ; preds = %cond.end
  %12 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %gr5 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %12, i32 0, i32 1
  %13 = load %struct._GRand*, %struct._GRand** %gr5, align 8
  %14 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %y_amount6 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %14, i32 0, i32 3
  %15 = load i32, i32* %y_amount6, align 4
  %sub7 = sub nsw i32 0, %15
  %16 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %y_amount8 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %16, i32 0, i32 3
  %17 = load i32, i32* %y_amount8, align 4
  %call9 = call i32 @g_rand_int_range(%struct._GRand* %13, i32 %sub7, i32 %17)
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.4
  %cond12 = phi i32 [ %call9, %cond.true.4 ], [ 0, %cond.false.10 ]
  store i32 %cond12, i32* %ydist, align 4
  %18 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %gr13 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %18, i32 0, i32 1
  %19 = load %struct._GRand*, %struct._GRand** %gr13, align 8
  %call14 = call double @g_rand_double_range(%struct._GRand* %19, double 0xC00921FB54442D18, double 0x400921FB54442D18)
  store double %call14, double* %angle, align 8
  %20 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %20 to double
  %21 = load double, double* %angle, align 8
  %call15 = call double @sin(double %21) #5
  %22 = load i32, i32* %xdist, align 4
  %conv16 = sitofp i32 %22 to double
  %mul = fmul double %call15, %conv16
  %call17 = call double @floor(double %mul) #4
  %add = fadd double %conv, %call17
  %conv18 = fptosi double %add to i32
  store i32 %conv18, i32* %xi, align 4
  %23 = load i32, i32* %y.addr, align 4
  %conv19 = sitofp i32 %23 to double
  %24 = load double, double* %angle, align 8
  %call20 = call double @cos(double %24) #5
  %25 = load i32, i32* %ydist, align 4
  %conv21 = sitofp i32 %25 to double
  %mul22 = fmul double %call20, %conv21
  %call23 = call double @floor(double %mul22) #4
  %add24 = fadd double %conv19, %call23
  %conv25 = fptosi double %add24 to i32
  store i32 %conv25, i32* %yi, align 4
  %26 = load i32, i32* %xi, align 4
  %cmp26 = icmp sge i32 %26, 0
  br i1 %cmp26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.11
  %27 = load i32, i32* %xi, align 4
  %28 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %width = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %28, i32 0, i32 4
  %29 = load i32, i32* %width, align 4
  %cmp28 = icmp slt i32 %27, %29
  br i1 %cmp28, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %30 = load i32, i32* %yi, align 4
  %cmp31 = icmp sge i32 %30, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.else

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %31 = load i32, i32* %yi, align 4
  %32 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %height = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %32, i32 0, i32 5
  %33 = load i32, i32* %height, align 4
  %cmp34 = icmp slt i32 %31, %33
  br i1 %cmp34, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.33
  %34 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %pft = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %34, i32 0, i32 0
  %35 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %36 = load i32, i32* %xi, align 4
  %37 = load i32, i32* %yi, align 4
  %38 = load i8*, i8** %dest.addr, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %35, i32 %36, i32 %37, i8* %38)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.33, %land.lhs.true.30, %land.lhs.true, %cond.end.11
  %39 = load %struct.SpreadParam_t*, %struct.SpreadParam_t** %param, align 8
  %pft36 = getelementptr inbounds %struct.SpreadParam_t, %struct.SpreadParam_t* %39, i32 0, i32 0
  %40 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft36, align 8
  %41 = load i32, i32* %x.addr, align 4
  %42 = load i32, i32* %y.addr, align 4
  %43 = load i8*, i8** %dest.addr, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %40, i32 %41, i32 %42, i8* %43)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @g_rand_free(%struct._GRand*) #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator*, void (i32, i32, i8*, i32, i8*)*, i8*) #1

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}