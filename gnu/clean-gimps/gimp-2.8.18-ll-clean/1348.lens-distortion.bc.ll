; ModuleID = './plug-ins/common/lens-distortion.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.LensValues = type { double, double, double, double, double, double }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.LensCalcValues = type { double, double, double, double, double, double, double }
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
%struct._GimpRgnIterator = type opaque
%struct._GimpPixelFetcher = type opaque
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal global [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Effect centre offset in X\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Effect centre offset in Y\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"main-adjust\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Amount of second-order distortion\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"edge-adjust\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Amount of fourth-order distortion\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"rescale\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Rescale overall image size\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"brighten\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Adjust brightness in corners\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"plug-in-lens-distortion\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Corrects lens distortion\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Corrects barrel or pincushion lens distortion.\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"David Hodson, Aurimas Ju\C5\A1ka\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"David Hodson\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Version 1.0.10\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Lens Distortion...\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@drawable_width = internal global i32 0, align 4
@drawable_height = internal global i32 0, align 4
@background_color = internal global [4 x i8] zeroinitializer, align 1
@vals = internal global %struct.LensValues zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"lens-distortion\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Lens Distortion\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"gimp-lens-distortion\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"_Main:\00", align 1
@adjustments = internal global %struct._GSList* null, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"_Edge:\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"_Zoom:\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"_Brighten:\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"_X shift:\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"_Y shift:\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@calc_vals = internal global %struct.LensCalcValues zeroinitializer, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"Lens distortion\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0))
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
  %background = alloca %struct._GimpRGB, align 8
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
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %4 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %4)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 1
  %6 = load i32, i32* %width, align 4
  store i32 %6, i32* @drawable_width, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 2
  %8 = load i32, i32* %height, align 4
  store i32 %8, i32* @drawable_height, align 4
  %call7 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id, align 4
  call void @gimp_drawable_get_color_uchar(i32 %10, %struct._GimpRGB* %background, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @background_color, i32 0, i32 0))
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_rows = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 4
  %12 = load i32, i32* %ntile_rows, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 5
  %14 = load i32, i32* %ntile_cols, align 4
  %cmp = icmp ugt i32 %12, %14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_rows8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 4
  %16 = load i32, i32* %ntile_rows8, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 5
  %18 = load i32, i32* %ntile_cols9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %18, %cond.false ]
  %mul = mul i32 2, %cond
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %19 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %19, align 4
  %20 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %20, align 8
  %21 = load i32, i32* %run_mode, align 4
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %cond.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.LensValues* @vals to i8*))
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @lens_dialog(%struct._GimpDrawable* %22)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %cond.end
  %23 = load i32, i32* %nparams.addr, align 4
  %cmp13 = icmp ne i32 %23, 9
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.12
  store i32 1, i32* %status, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb.12
  %24 = load i32, i32* %status, align 4
  %cmp17 = icmp eq i32 %24, 3
  br i1 %cmp17, label %if.then.19, label %if.end.37

if.then.19:                                       ; preds = %if.end.16
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 3
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data21 to double*
  %26 = load double, double* %d_float, align 8
  store double %26, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 0), align 8
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 4
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_float24 = bitcast %union._GimpParamData* %data23 to double*
  %28 = load double, double* %d_float24, align 8
  store double %28, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 1), align 8
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 5
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %30 = load double, double* %d_float27, align 8
  store double %30, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 2), align 8
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 6
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_float30 = bitcast %union._GimpParamData* %data29 to double*
  %32 = load double, double* %d_float30, align 8
  store double %32, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 3), align 8
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 7
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_float33 = bitcast %union._GimpParamData* %data32 to double*
  %34 = load double, double* %d_float33, align 8
  store double %34, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 4), align 8
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 8
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_float36 = bitcast %union._GimpParamData* %data35 to double*
  %36 = load double, double* %d_float36, align 8
  store double %36, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 5), align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.19, %if.end.16
  br label %sw.epilog

sw.bb.38:                                         ; preds = %cond.end
  %call39 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.LensValues* @vals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.38, %if.end.37, %if.end
  %37 = load i32, i32* %status, align 4
  %cmp40 = icmp eq i32 %37, 3
  br i1 %cmp40, label %if.then.42, label %if.end.53

if.then.42:                                       ; preds = %sw.epilog
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @lens_distort(%struct._GimpDrawable* %38)
  %39 = load i32, i32* %run_mode, align 4
  %cmp43 = icmp ne i32 %39, 1
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.42
  %call46 = call i32 @gimp_displays_flush()
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.42
  %40 = load i32, i32* %run_mode, align 4
  %cmp48 = icmp eq i32 %40, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %call51 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.LensValues* @vals to i8*), i32 48)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %sw.epilog
  %42 = load i32, i32* %status, align 4
  store i32 %42, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.53, %if.then
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

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_drawable_get_color_uchar(i32, %struct._GimpRGB*, i8*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lens_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %row = alloca i32, align 4
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %row, align 4
  store i32 0, i32* %run, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 1, i32 -5, i32 -6, i32 -1)
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
  %call14 = call %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable* %16)
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
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @lens_distort_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %40 = load i32, i32* %row, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %row, align 4
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)) #5
  %41 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 2), align 8
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 %40, i8* %call27, i32 120, i32 6, double %41, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %adj, align 8
  %42 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  %43 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %call29 = call %struct._GSList* @g_slist_append(%struct._GSList* %42, i8* %44)
  store %struct._GSList* %call29, %struct._GSList** @adjustments, align 8
  %45 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %46 = bitcast %struct._GtkObject* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %48 = bitcast %struct._GtkObject* %47 to i8*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 2)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call32)
  %53 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %54 = load i32, i32* %row, align 4
  %inc34 = add nsw i32 %54, 1
  store i32 %inc34, i32* %row, align 4
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #5
  %55 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 3), align 8
  %call36 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %53, i32 0, i32 %54, i8* %call35, i32 120, i32 6, double %55, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call36, %struct._GtkObject** %adj, align 8
  %56 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  %57 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %58 = bitcast %struct._GtkObject* %57 to i8*
  %call37 = call %struct._GSList* @g_slist_append(%struct._GSList* %56, i8* %58)
  store %struct._GSList* %call37, %struct._GSList** @adjustments, align 8
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 2)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call40)
  %67 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %68 = load i32, i32* %row, align 4
  %inc42 = add nsw i32 %68, 1
  store i32 %inc42, i32* %row, align 4
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)) #5
  %69 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 4), align 8
  %call44 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %67, i32 0, i32 %68, i8* %call43, i32 120, i32 6, double %69, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call44, %struct._GtkObject** %adj, align 8
  %70 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call45 = call %struct._GSList* @g_slist_append(%struct._GSList* %70, i8* %72)
  store %struct._GSList* %call45, %struct._GSList** @adjustments, align 8
  %73 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %74 = bitcast %struct._GtkObject* %73 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %75 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %76 = bitcast %struct._GtkObject* %75 to i8*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %78 = bitcast %struct._GtkWidget* %77 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %78, void (i8*, %struct._GClosure*)* null, i32 2)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call48)
  %81 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %82 = load i32, i32* %row, align 4
  %inc50 = add nsw i32 %82, 1
  store i32 %inc50, i32* %row, align 4
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #5
  %83 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 5), align 8
  %call52 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %81, i32 0, i32 %82, i8* %call51, i32 120, i32 6, double %83, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call52, %struct._GtkObject** %adj, align 8
  %84 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  %85 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %86 = bitcast %struct._GtkObject* %85 to i8*
  %call53 = call %struct._GSList* @g_slist_append(%struct._GSList* %84, i8* %86)
  store %struct._GSList* %call53, %struct._GSList** @adjustments, align 8
  %87 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %88 = bitcast %struct._GtkObject* %87 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %89 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %90 = bitcast %struct._GtkObject* %89 to i8*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %92 = bitcast %struct._GtkWidget* %91 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 2)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call56)
  %95 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %96 = load i32, i32* %row, align 4
  %inc58 = add nsw i32 %96, 1
  store i32 %inc58, i32* %row, align 4
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0)) #5
  %97 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 0), align 8
  %call60 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %95, i32 0, i32 %96, i8* %call59, i32 120, i32 6, double %97, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call60, %struct._GtkObject** %adj, align 8
  %98 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  %99 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %100 = bitcast %struct._GtkObject* %99 to i8*
  %call61 = call %struct._GSList* @g_slist_append(%struct._GSList* %98, i8* %100)
  store %struct._GSList* %call61, %struct._GSList** @adjustments, align 8
  %101 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %102 = bitcast %struct._GtkObject* %101 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.LensValues* @vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %104 = bitcast %struct._GtkObject* %103 to i8*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %106, void (i8*, %struct._GClosure*)* null, i32 2)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call64)
  %109 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %110 = load i32, i32* %row, align 4
  %inc66 = add nsw i32 %110, 1
  store i32 %inc66, i32* %row, align 4
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0)) #5
  %111 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 1), align 8
  %call68 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %109, i32 0, i32 %110, i8* %call67, i32 120, i32 6, double %111, double -1.000000e+02, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call68, %struct._GtkObject** %adj, align 8
  %112 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  %113 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %114 = bitcast %struct._GtkObject* %113 to i8*
  %call69 = call %struct._GSList* @g_slist_append(%struct._GSList* %112, i8* %114)
  store %struct._GSList* %call69, %struct._GSList** @adjustments, align 8
  %115 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %116 = bitcast %struct._GtkObject* %115 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %118 = bitcast %struct._GtkObject* %117 to i8*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 2)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  %123 = bitcast i32* %run to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i32*)* @lens_response to void ()*), i8* %123, void (i8*, %struct._GClosure*)* null, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %125 = bitcast %struct._GtkWidget* %124 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  call void @gtk_main()
  %127 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  call void @g_slist_free(%struct._GSList* %127)
  store %struct._GSList* null, %struct._GSList** @adjustments, align 8
  %128 = load i32, i32* %run, align 4
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal void @lens_distort(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %iter = alloca %struct._GimpRgnIterator*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %background = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  call void @lens_setup_calc(i32 %1, i32 %3)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %4, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call1 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  %5 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %5, %struct._GimpRGB* %background)
  %6 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %6, i32 4)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0)) #5
  %call3 = call i32 @gimp_progress_init(i8* %call2)
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call4 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %7, i32 0)
  store %struct._GimpRgnIterator* %call4, %struct._GimpRgnIterator** %iter, align 8
  %8 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %9 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %10 = bitcast %struct._GimpPixelFetcher* %9 to i8*
  call void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator* %8, void (i32, i32, i8*, i32, i8*)* bitcast (void (i32, i32, i8*, i32, %struct._GimpPixelFetcher*)* @lens_distort_func to void (i32, i32, i8*, i32, i8*)*), i8* %10)
  %11 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %11)
  %12 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %12)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @lens_distort_preview(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %dest = alloca i8*, align 8
  %pixel = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %background = alloca %struct._GimpRGB, align 8
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %0, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call1 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %1, %struct._GimpRGB* %background)
  %2 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %2, i32 4)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width2, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height3, align 4
  call void @lens_setup_calc(i32 %4, i32 %6)
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %8 = bitcast %struct._GimpPreview* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_zoom_preview_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpZoomPreview*
  %call6 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %9, i32* %width, i32* %height, i32* %bpp)
  store i8* %call6, i8** %dest, align 8
  %10 = load i8*, i8** %dest, align 8
  store i8* %10, i8** %pixel, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %width, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  call void @gimp_preview_untransform(%struct._GimpPreview* %15, i32 %16, i32 %17, i32* %sx, i32* %sy)
  %18 = load i32, i32* %sx, align 4
  %19 = load i32, i32* %sy, align 4
  %20 = load i8*, i8** %pixel, align 8
  %21 = load i32, i32* %bpp, align 4
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @lens_distort_func(i32 %18, i32 %19, i8* %20, i32 %21, %struct._GimpPixelFetcher* %22)
  %23 = load i32, i32* %bpp, align 4
  %24 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %26 = load i32, i32* %y, align 4
  %inc11 = add nsw i32 %26, 1
  store i32 %inc11, i32* %y, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %27 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %27)
  %28 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %29 = load i8*, i8** %dest, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %30, %31
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %28, i8* %29, i32 %mul)
  %32 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %32)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

; Function Attrs: nounwind uwtable
define internal void @lens_response(%struct._GtkWidget* %widget, i32 %response_id, i32* %run) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %run.addr = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i32* %run, i32** %run.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  call void @lens_dialog_reset()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load i32*, i32** %run.addr, align 8
  store i32 1, i32* %1, align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

declare void @gtk_main() #1

declare void @g_slist_free(%struct._GSList*) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher*, %struct._GimpRGB*) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @lens_setup_calc(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %height.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, %mul1
  %conv = sitofp i32 %add to double
  %div = fdiv double 4.000000e+00, %conv
  store double %div, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 0), align 8
  %4 = load i32, i32* %width.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %5 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 0), align 8
  %add3 = fadd double 1.000000e+02, %5
  %mul4 = fmul double %conv2, %add3
  %div5 = fdiv double %mul4, 2.000000e+02
  store double %div5, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 1), align 8
  %6 = load i32, i32* %height.addr, align 4
  %conv6 = sitofp i32 %6 to double
  %7 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 1), align 8
  %add7 = fadd double 1.000000e+02, %7
  %mul8 = fmul double %conv6, %add7
  %div9 = fdiv double %mul8, 2.000000e+02
  store double %div9, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 2), align 8
  %8 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 2), align 8
  %div10 = fdiv double %8, 2.000000e+02
  store double %div10, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 3), align 8
  %9 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 3), align 8
  %div11 = fdiv double %9, 2.000000e+02
  store double %div11, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 4), align 8
  %10 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 4), align 8
  %sub = fsub double -0.000000e+00, %10
  %div12 = fdiv double %sub, 1.000000e+02
  %call = call double @pow(double 2.000000e+00, double %div12) #5
  store double %call, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 5), align 8
  %11 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @vals, i32 0, i32 5), align 8
  %sub13 = fsub double -0.000000e+00, %11
  %div14 = fdiv double %sub13, 1.000000e+01
  store double %div14, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 6), align 8
  ret void
}

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare void @gimp_preview_untransform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @lens_distort_func(i32 %ix, i32 %iy, i8* %dest, i32 %bpp, %struct._GimpPixelFetcher* %pft) #0 {
entry:
  %ix.addr = alloca i32, align 4
  %iy.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %pft.addr = alloca %struct._GimpPixelFetcher*, align 8
  %src_x = alloca double, align 8
  %src_y = alloca double, align 8
  %mag = alloca double, align 8
  %brighten = alloca double, align 8
  %pixel_buffer = alloca [64 x i8], align 16
  %pixel = alloca i8*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %x_int = alloca i32, align 4
  %y_int = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %ix, i32* %ix.addr, align 4
  store i32 %iy, i32* %iy.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store %struct._GimpPixelFetcher* %pft, %struct._GimpPixelFetcher** %pft.addr, align 8
  %0 = load i32, i32* %ix.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %iy.addr, align 4
  %conv1 = sitofp i32 %1 to double
  call void @lens_get_source_coords(double %conv, double %conv1, double* %src_x, double* %src_y, double* %mag)
  %2 = load double, double* %mag, align 8
  %3 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 6), align 8
  %mul = fmul double %2, %3
  %add = fadd double 1.000000e+00, %mul
  store double %add, double* %brighten, align 8
  %4 = load double, double* %src_x, align 8
  %call = call double @floor(double %4) #4
  %conv2 = fptosi double %call to i32
  store i32 %conv2, i32* %x_int, align 4
  %5 = load double, double* %src_x, align 8
  %6 = load i32, i32* %x_int, align 4
  %conv3 = sitofp i32 %6 to double
  %sub = fsub double %5, %conv3
  store double %sub, double* %dx, align 8
  %7 = load double, double* %src_y, align 8
  %call4 = call double @floor(double %7) #4
  %conv5 = fptosi double %call4 to i32
  store i32 %conv5, i32* %y_int, align 4
  %8 = load double, double* %src_y, align 8
  %9 = load i32, i32* %y_int, align 4
  %conv6 = sitofp i32 %9 to double
  %sub7 = fsub double %8, %conv6
  store double %sub7, double* %dy, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %pixel_buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %pixel, align 8
  %10 = load i32, i32* %y_int, align 4
  %sub8 = sub nsw i32 %10, 1
  store i32 %sub8, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %y_int, align 4
  %add9 = add nsw i32 %12, 2
  %cmp = icmp sle i32 %11, %add9
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %x_int, align 4
  %sub11 = sub nsw i32 %13, 1
  store i32 %sub11, i32* %x, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.33, %for.body
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %x_int, align 4
  %add13 = add nsw i32 %15, 2
  %cmp14 = icmp sle i32 %14, %add13
  br i1 %cmp14, label %for.body.16, label %for.end.35

for.body.16:                                      ; preds = %for.cond.12
  %16 = load i32, i32* %x, align 4
  %cmp17 = icmp sge i32 %16, 0
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.16
  %17 = load i32, i32* %y, align 4
  %cmp19 = icmp sge i32 %17, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* @drawable_width, align 4
  %cmp22 = icmp slt i32 %18, %19
  br i1 %cmp22, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* @drawable_height, align 4
  %cmp25 = icmp slt i32 %20, %21
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.24
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %y, align 4
  %25 = load i8*, i8** %pixel, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %22, i32 %23, i32 %24, i8* %25)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true, %for.body.16
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.else
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %bpp.addr, align 4
  %cmp28 = icmp slt i32 %26, %27
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @background_color, i32 0, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1
  %30 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load i8*, i8** %pixel, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i64 %idxprom31
  store i8 %29, i8* %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %33 = load i32, i32* %bpp.addr, align 4
  %34 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end
  %35 = load i32, i32* %x, align 4
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %x, align 4
  br label %for.cond.12

for.end.35:                                       ; preds = %for.cond.12
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %36 = load i32, i32* %y, align 4
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, i32* %y, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %arraydecay39 = getelementptr inbounds [64 x i8], [64 x i8]* %pixel_buffer, i32 0, i32 0
  %37 = load i32, i32* %bpp.addr, align 4
  %mul40 = mul nsw i32 %37, 4
  %38 = load i32, i32* %bpp.addr, align 4
  %39 = load i8*, i8** %dest.addr, align 8
  %40 = load i32, i32* %bpp.addr, align 4
  %41 = load double, double* %dx, align 8
  %42 = load double, double* %dy, align 8
  %43 = load double, double* %brighten, align 8
  call void @lens_cubic_interpolate(i8* %arraydecay39, i32 %mul40, i32 %38, i8* %39, i32 %40, double %41, double %42, double %43)
  ret void
}

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define internal void @lens_get_source_coords(double %i, double %j, double* %x, double* %y, double* %mag) #0 {
entry:
  %i.addr = alloca double, align 8
  %j.addr = alloca double, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %mag.addr = alloca double*, align 8
  %radius_sq = alloca double, align 8
  %off_x = alloca double, align 8
  %off_y = alloca double, align 8
  %radius_mult = alloca double, align 8
  store double %i, double* %i.addr, align 8
  store double %j, double* %j.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %mag, double** %mag.addr, align 8
  %0 = load double, double* %i.addr, align 8
  %1 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 1), align 8
  %sub = fsub double %0, %1
  store double %sub, double* %off_x, align 8
  %2 = load double, double* %j.addr, align 8
  %3 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 2), align 8
  %sub1 = fsub double %2, %3
  store double %sub1, double* %off_y, align 8
  %4 = load double, double* %off_x, align 8
  %5 = load double, double* %off_x, align 8
  %mul = fmul double %4, %5
  %6 = load double, double* %off_y, align 8
  %7 = load double, double* %off_y, align 8
  %mul2 = fmul double %6, %7
  %add = fadd double %mul, %mul2
  store double %add, double* %radius_sq, align 8
  %8 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 0), align 8
  %9 = load double, double* %radius_sq, align 8
  %mul3 = fmul double %9, %8
  store double %mul3, double* %radius_sq, align 8
  %10 = load double, double* %radius_sq, align 8
  %11 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 3), align 8
  %mul4 = fmul double %10, %11
  %12 = load double, double* %radius_sq, align 8
  %13 = load double, double* %radius_sq, align 8
  %mul5 = fmul double %12, %13
  %14 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 4), align 8
  %mul6 = fmul double %mul5, %14
  %add7 = fadd double %mul4, %mul6
  store double %add7, double* %radius_mult, align 8
  %15 = load double, double* %radius_mult, align 8
  %16 = load double*, double** %mag.addr, align 8
  store double %15, double* %16, align 8
  %17 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 5), align 8
  %18 = load double, double* %radius_mult, align 8
  %add8 = fadd double 1.000000e+00, %18
  %mul9 = fmul double %17, %add8
  store double %mul9, double* %radius_mult, align 8
  %19 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 1), align 8
  %20 = load double, double* %radius_mult, align 8
  %21 = load double, double* %off_x, align 8
  %mul10 = fmul double %20, %21
  %add11 = fadd double %19, %mul10
  %22 = load double*, double** %x.addr, align 8
  store double %add11, double* %22, align 8
  %23 = load double, double* getelementptr inbounds (%struct.LensCalcValues, %struct.LensCalcValues* @calc_vals, i32 0, i32 2), align 8
  %24 = load double, double* %radius_mult, align 8
  %25 = load double, double* %off_y, align 8
  %mul12 = fmul double %24, %25
  %add13 = fadd double %23, %mul12
  %26 = load double*, double** %y.addr, align 8
  store double %add13, double* %26, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @lens_cubic_interpolate(i8* %src, i32 %row_stride, i32 %src_depth, i8* %dst, i32 %dst_depth, double %dx, double %dy, double %brighten) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %row_stride.addr = alloca i32, align 4
  %src_depth.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dst_depth.addr = alloca i32, align 4
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %brighten.addr = alloca double, align 8
  %um1 = alloca float, align 4
  %u = alloca float, align 4
  %up1 = alloca float, align 4
  %up2 = alloca float, align 4
  %vm1 = alloca float, align 4
  %v = alloca float, align 4
  %vp1 = alloca float, align 4
  %vp2 = alloca float, align 4
  %c = alloca i32, align 4
  %verts = alloca [16 x float], align 16
  %result = alloca float, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %row_stride, i32* %row_stride.addr, align 4
  store i32 %src_depth, i32* %src_depth.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dst_depth, i32* %dst_depth.addr, align 4
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store double %brighten, double* %brighten.addr, align 8
  %0 = load double, double* %dx.addr, align 8
  %mul = fmul double -5.000000e-01, %0
  %add = fadd double %mul, 1.000000e+00
  %1 = load double, double* %dx.addr, align 8
  %mul1 = fmul double %add, %1
  %sub = fsub double %mul1, 5.000000e-01
  %2 = load double, double* %dx.addr, align 8
  %mul2 = fmul double %sub, %2
  %conv = fptrunc double %mul2 to float
  store float %conv, float* %um1, align 4
  %3 = load double, double* %dx.addr, align 8
  %mul3 = fmul double 1.500000e+00, %3
  %sub4 = fsub double %mul3, 2.500000e+00
  %4 = load double, double* %dx.addr, align 8
  %mul5 = fmul double %sub4, %4
  %5 = load double, double* %dx.addr, align 8
  %mul6 = fmul double %mul5, %5
  %add7 = fadd double %mul6, 1.000000e+00
  %conv8 = fptrunc double %add7 to float
  store float %conv8, float* %u, align 4
  %6 = load double, double* %dx.addr, align 8
  %mul9 = fmul double -1.500000e+00, %6
  %add10 = fadd double %mul9, 2.000000e+00
  %7 = load double, double* %dx.addr, align 8
  %mul11 = fmul double %add10, %7
  %add12 = fadd double %mul11, 5.000000e-01
  %8 = load double, double* %dx.addr, align 8
  %mul13 = fmul double %add12, %8
  %conv14 = fptrunc double %mul13 to float
  store float %conv14, float* %up1, align 4
  %9 = load double, double* %dx.addr, align 8
  %mul15 = fmul double 5.000000e-01, %9
  %sub16 = fsub double %mul15, 5.000000e-01
  %10 = load double, double* %dx.addr, align 8
  %mul17 = fmul double %sub16, %10
  %11 = load double, double* %dx.addr, align 8
  %mul18 = fmul double %mul17, %11
  %conv19 = fptrunc double %mul18 to float
  store float %conv19, float* %up2, align 4
  %12 = load double, double* %dy.addr, align 8
  %mul20 = fmul double -5.000000e-01, %12
  %add21 = fadd double %mul20, 1.000000e+00
  %13 = load double, double* %dy.addr, align 8
  %mul22 = fmul double %add21, %13
  %sub23 = fsub double %mul22, 5.000000e-01
  %14 = load double, double* %dy.addr, align 8
  %mul24 = fmul double %sub23, %14
  %conv25 = fptrunc double %mul24 to float
  store float %conv25, float* %vm1, align 4
  %15 = load double, double* %dy.addr, align 8
  %mul26 = fmul double 1.500000e+00, %15
  %sub27 = fsub double %mul26, 2.500000e+00
  %16 = load double, double* %dy.addr, align 8
  %mul28 = fmul double %sub27, %16
  %17 = load double, double* %dy.addr, align 8
  %mul29 = fmul double %mul28, %17
  %add30 = fadd double %mul29, 1.000000e+00
  %conv31 = fptrunc double %add30 to float
  store float %conv31, float* %v, align 4
  %18 = load double, double* %dy.addr, align 8
  %mul32 = fmul double -1.500000e+00, %18
  %add33 = fadd double %mul32, 2.000000e+00
  %19 = load double, double* %dy.addr, align 8
  %mul34 = fmul double %add33, %19
  %add35 = fadd double %mul34, 5.000000e-01
  %20 = load double, double* %dy.addr, align 8
  %mul36 = fmul double %add35, %20
  %conv37 = fptrunc double %mul36 to float
  store float %conv37, float* %vp1, align 4
  %21 = load double, double* %dy.addr, align 8
  %mul38 = fmul double 5.000000e-01, %21
  %sub39 = fsub double %mul38, 5.000000e-01
  %22 = load double, double* %dy.addr, align 8
  %mul40 = fmul double %sub39, %22
  %23 = load double, double* %dy.addr, align 8
  %mul41 = fmul double %mul40, %23
  %conv42 = fptrunc double %mul41 to float
  store float %conv42, float* %vp2, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %src_depth.addr, align 4
  %mul43 = mul nsw i32 4, %25
  %cmp = icmp slt i32 %24, %mul43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load float, float* %vm1, align 4
  %27 = load i32, i32* %c, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1
  %conv45 = zext i8 %29 to i32
  %conv46 = sitofp i32 %conv45 to float
  %mul47 = fmul float %26, %conv46
  %30 = load float, float* %v, align 4
  %31 = load i32, i32* %c, align 4
  %32 = load i32, i32* %row_stride.addr, align 4
  %add48 = add nsw i32 %31, %32
  %idxprom49 = sext i32 %add48 to i64
  %33 = load i8*, i8** %src.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %33, i64 %idxprom49
  %34 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %34 to i32
  %conv52 = sitofp i32 %conv51 to float
  %mul53 = fmul float %30, %conv52
  %add54 = fadd float %mul47, %mul53
  %35 = load float, float* %vp1, align 4
  %36 = load i32, i32* %c, align 4
  %37 = load i32, i32* %row_stride.addr, align 4
  %mul55 = mul nsw i32 %37, 2
  %add56 = add nsw i32 %36, %mul55
  %idxprom57 = sext i32 %add56 to i64
  %38 = load i8*, i8** %src.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %38, i64 %idxprom57
  %39 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %39 to i32
  %conv60 = sitofp i32 %conv59 to float
  %mul61 = fmul float %35, %conv60
  %add62 = fadd float %add54, %mul61
  %40 = load float, float* %vp2, align 4
  %41 = load i32, i32* %c, align 4
  %42 = load i32, i32* %row_stride.addr, align 4
  %mul63 = mul nsw i32 %42, 3
  %add64 = add nsw i32 %41, %mul63
  %idxprom65 = sext i32 %add64 to i64
  %43 = load i8*, i8** %src.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %43, i64 %idxprom65
  %44 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %44 to i32
  %conv68 = sitofp i32 %conv67 to float
  %mul69 = fmul float %40, %conv68
  %add70 = fadd float %add62, %mul69
  %45 = load i32, i32* %c, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [16 x float], [16 x float]* %verts, i32 0, i64 %idxprom71
  store float %add70, float* %arrayidx72, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %c, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.111, %for.end
  %47 = load i32, i32* %c, align 4
  %48 = load i32, i32* %dst_depth.addr, align 4
  %cmp74 = icmp slt i32 %47, %48
  br i1 %cmp74, label %for.body.76, label %for.end.113

for.body.76:                                      ; preds = %for.cond.73
  %49 = load float, float* %um1, align 4
  %50 = load i32, i32* %c, align 4
  %idxprom77 = sext i32 %50 to i64
  %arrayidx78 = getelementptr inbounds [16 x float], [16 x float]* %verts, i32 0, i64 %idxprom77
  %51 = load float, float* %arrayidx78, align 4
  %mul79 = fmul float %49, %51
  %52 = load float, float* %u, align 4
  %53 = load i32, i32* %c, align 4
  %54 = load i32, i32* %src_depth.addr, align 4
  %add80 = add nsw i32 %53, %54
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [16 x float], [16 x float]* %verts, i32 0, i64 %idxprom81
  %55 = load float, float* %arrayidx82, align 4
  %mul83 = fmul float %52, %55
  %add84 = fadd float %mul79, %mul83
  %56 = load float, float* %up1, align 4
  %57 = load i32, i32* %c, align 4
  %58 = load i32, i32* %src_depth.addr, align 4
  %mul85 = mul nsw i32 %58, 2
  %add86 = add nsw i32 %57, %mul85
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [16 x float], [16 x float]* %verts, i32 0, i64 %idxprom87
  %59 = load float, float* %arrayidx88, align 4
  %mul89 = fmul float %56, %59
  %add90 = fadd float %add84, %mul89
  %60 = load float, float* %up2, align 4
  %61 = load i32, i32* %c, align 4
  %62 = load i32, i32* %src_depth.addr, align 4
  %mul91 = mul nsw i32 %62, 3
  %add92 = add nsw i32 %61, %mul91
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [16 x float], [16 x float]* %verts, i32 0, i64 %idxprom93
  %63 = load float, float* %arrayidx94, align 4
  %mul95 = fmul float %60, %63
  %add96 = fadd float %add90, %mul95
  store float %add96, float* %result, align 4
  %64 = load double, double* %brighten.addr, align 8
  %65 = load float, float* %result, align 4
  %conv97 = fpext float %65 to double
  %mul98 = fmul double %conv97, %64
  %conv99 = fptrunc double %mul98 to float
  store float %conv99, float* %result, align 4
  %66 = load float, float* %result, align 4
  %cmp100 = fcmp ogt float %66, 2.550000e+02
  br i1 %cmp100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.76
  br label %cond.end.106

cond.false:                                       ; preds = %for.body.76
  %67 = load float, float* %result, align 4
  %cmp102 = fcmp olt float %67, 0.000000e+00
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.false
  br label %cond.end

cond.false.105:                                   ; preds = %cond.false
  %68 = load float, float* %result, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.105, %cond.true.104
  %cond = phi float [ 0.000000e+00, %cond.true.104 ], [ %68, %cond.false.105 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end, %cond.true
  %cond107 = phi float [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv108 = fptoui float %cond107 to i8
  %69 = load i32, i32* %c, align 4
  %idxprom109 = sext i32 %69 to i64
  %70 = load i8*, i8** %dst.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %70, i64 %idxprom109
  store i8 %conv108, i8* %arrayidx110, align 1
  br label %for.inc.111

for.inc.111:                                      ; preds = %cond.end.106
  %71 = load i32, i32* %c, align 4
  %inc112 = add nsw i32 %71, 1
  store i32 %inc112, i32* %c, align 4
  br label %for.cond.73

for.end.113:                                      ; preds = %for.cond.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lens_dialog_reset() #0 {
entry:
  %list = alloca %struct._GSList*, align 8
  %0 = load %struct._GSList*, %struct._GSList** @adjustments, align 8
  store %struct._GSList* %0, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %5, double 0.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 1
  %7 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %7, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @gimp_progress_init(i8*) #1

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
