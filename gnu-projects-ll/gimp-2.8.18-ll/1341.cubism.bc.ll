; ModuleID = './plug-ins/common/cubism.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.CubismVals = type { double, double, i32, i32 }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.Polygon = type { i32, [4 x %struct._GimpVector2] }
%struct._GimpVector2 = type { double, double }
%struct._GRand = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tile-size\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Average diameter of each tile (in pixels)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"tile-saturation\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Expand tiles by this amount\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"bg-color\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Background color { BLACK (0), BG (1) }\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"plug-in-cubism\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Convert the image into randomly rotated square blobs\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Help not yet written for this plug-in\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Spencer Kimball & Tracy Scott\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"_Cubism...\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@cvals = internal global %struct.CubismVals { double 1.000000e+01, double 2.500000e+00, i32 0, i32 1 }, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"cubism\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Cubism\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"gimp-cubism\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"_Tile size:\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"T_ile saturation:\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"_Use background color\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Cubistic transformation\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Unable to add additional point.\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
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
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_rows = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 4
  %8 = load i32, i32* %ntile_rows, align 4
  %mul = mul i32 2, %8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 5
  %10 = load i32, i32* %ntile_cols, align 4
  %mul7 = mul i32 %mul, %10
  %conv = zext i32 %mul7 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %11 = load i32, i32* %run_mode, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %do.end
  %call8 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.CubismVals* @cvals to i8*))
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @cubism_dialog(%struct._GimpDrawable* %12)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end
  %13 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %13, 6
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb.10
  store i32 1, i32* %status, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %sw.bb.10
  %14 = load i32, i32* %status, align 4
  %cmp14 = icmp eq i32 %14, 3
  br i1 %cmp14, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.end.13
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data18 to double*
  %16 = load double, double* %d_float, align 8
  store double %16, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 4
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_float21 = bitcast %union._GimpParamData* %data20 to double*
  %18 = load double, double* %d_float21, align 8
  store double %18, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 1), align 8
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %20 = load i32, i32* %d_int3224, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 2), align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.16, %if.end.13
  %21 = load i32, i32* %status, align 4
  %cmp26 = icmp eq i32 %21, 3
  br i1 %cmp26, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.25
  %22 = load i32, i32* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 2), align 4
  %cmp28 = icmp slt i32 %22, 0
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load i32, i32* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 2), align 4
  %cmp30 = icmp sgt i32 %23, 1
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false, %if.end.25
  br label %sw.epilog

sw.bb.34:                                         ; preds = %do.end
  %call35 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.CubismVals* @cvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.34, %if.end.33, %if.end
  %24 = load i32, i32* %status, align 4
  %cmp36 = icmp eq i32 %24, 3
  br i1 %cmp36, label %land.lhs.true.38, label %if.else

land.lhs.true.38:                                 ; preds = %sw.epilog
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id, align 4
  %call39 = call i32 @gimp_drawable_is_rgb(i32 %26)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.45, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true.38
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id42, align 4
  %call43 = call i32 @gimp_drawable_is_gray(i32 %28)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %lor.lhs.false.41, %land.lhs.true.38
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @cubism(%struct._GimpDrawable* %29, %struct._GimpPreview* null)
  %30 = load i32, i32* %run_mode, align 4
  %cmp46 = icmp ne i32 %30, 1
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.45
  %call49 = call i32 @gimp_displays_flush()
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.45
  %31 = load i32, i32* %run_mode, align 4
  %cmp51 = icmp eq i32 %31, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.50
  %call54 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.CubismVals* @cvals to i8*), i32 24)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.50
  br label %if.end.60

if.else:                                          ; preds = %lor.lhs.false.41, %sw.epilog
  %32 = load i32, i32* %status, align 4
  %cmp56 = icmp eq i32 %32, 3
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.else
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.55
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %34)
  br label %return

return:                                           ; preds = %if.end.60, %if.then
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
define internal i32 @cubism_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 3))
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @cubism to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
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
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %34, i32 0, i32 4)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call27)
  %42 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #4
  %43 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %call30 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %42, i32 0, i32 0, i8* %call29, i32 125, i32 5, double %43, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call30, %struct._GtkObject** %scale_data, align 8
  %44 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %45 = bitcast %struct._GtkObject* %44 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.CubismVals* @cvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %47 = bitcast %struct._GtkObject* %46 to i8*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 2)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0)) #4
  %53 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 1), align 8
  %call36 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %52, i32 0, i32 1, i8* %call35, i32 125, i32 5, double %53, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call36, %struct._GtkObject** %scale_data, align 8
  %54 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %55 = bitcast %struct._GtkObject* %54 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 2)
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0)) #4
  %call40 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call39)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %toggle, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call41)
  %62 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %62, %struct._GtkWidget* %63, i32 0, i32 0, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 2)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_toggle_button_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call45)
  %73 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkToggleButton*
  %74 = load i32, i32* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %74, 1
  %conv = zext i1 %cmp to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %73, i32 %conv)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_dialog_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call47)
  %78 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDialog*
  %call49 = call i32 @gimp_dialog_run(%struct._GimpDialog* %78)
  %cmp50 = icmp eq i32 %call49, -5
  %conv51 = zext i1 %cmp50 to i32
  store i32 %conv51, i32* %run, align 4
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %79)
  %80 = load i32, i32* %run, align 4
  ret i32 %80
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal void @cubism(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %bg_col = alloca [4 x i8], align 1
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %theta = alloca double, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %num_tiles = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %sel_width = alloca i32, align 4
  %sel_height = alloca i32, align 4
  %poly = alloca %struct.Polygon, align 8
  %col = alloca [4 x i8], align 1
  %dest = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %random_indices = alloca i32*, align 8
  %pr = alloca i8*, align 8
  %gr = alloca %struct._GRand*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %dest, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_has_alpha(i32 %1)
  store i32 %call1, i32* %has_alpha, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 3
  %3 = load i32, i32* %bpp, align 4
  store i32 %3, i32* %bytes, align 4
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %5, i32* %x1, i32* %y1)
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %6, i32* %sel_width, i32* %sel_height)
  %7 = load i32, i32* %sel_height, align 4
  %8 = load i32, i32* %sel_width, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %bytes, align 4
  %mul2 = mul nsw i32 %mul, %9
  %conv = sext i32 %mul2 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** %dest, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_mask_intersect(i32 %11, i32* %x1, i32* %y1, i32* %sel_width, i32* %sel_height)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.else
  br label %if.end.211

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %x1, align 4
  %13 = load i32, i32* %sel_width, align 4
  %add = add nsw i32 %12, %13
  store i32 %add, i32* %x2, align 4
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* %sel_height, align 4
  %add9 = add nsw i32 %14, %15
  store i32 %add9, i32* %y2, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.end.8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bg_col, i32 0, i64 3
  store i8 0, i8* %arrayidx, align 1
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_col, i32 0, i64 2
  store i8 0, i8* %arrayidx12, align 1
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_col, i32 0, i64 1
  store i8 0, i8* %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_col, i32 0, i64 0
  store i8 0, i8* %arrayidx14, align 1
  br label %if.end.18

if.else.15:                                       ; preds = %if.end.8
  %call16 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 0.000000e+00)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id17, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg_col, i32 0, i32 0
  call void @gimp_drawable_get_color_uchar(i32 %18, %struct._GimpRGB* %color, i8* %arraydecay)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.11
  %19 = load i32, i32* %x2, align 4
  %20 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %19, %20
  %conv19 = sitofp i32 %sub to double
  %21 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %add20 = fadd double %conv19, %21
  %sub21 = fsub double %add20, 1.000000e+00
  %22 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div = fdiv double %sub21, %22
  %conv22 = fptosi double %div to i32
  store i32 %conv22, i32* %cols, align 4
  %23 = load i32, i32* %y2, align 4
  %24 = load i32, i32* %y1, align 4
  %sub23 = sub nsw i32 %23, %24
  %conv24 = sitofp i32 %sub23 to double
  %25 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %add25 = fadd double %conv24, %25
  %sub26 = fsub double %add25, 1.000000e+00
  %26 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div27 = fdiv double %sub26, %26
  %conv28 = fptosi double %div27 to i32
  store i32 %conv28, i32* %rows, align 4
  %27 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool29 = icmp ne %struct._GimpPreview* %27, null
  br i1 %tobool29, label %if.then.30, label %if.else.46

if.then.30:                                       ; preds = %if.end.18
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %if.then.30
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %sel_width, align 4
  %30 = load i32, i32* %sel_height, align 4
  %mul31 = mul nsw i32 %29, %30
  %cmp32 = icmp slt i32 %28, %mul31
  br i1 %cmp32, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %count, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %for.body
  %31 = load i32, i32* %count, align 4
  %32 = load i32, i32* %bytes, align 4
  %cmp35 = icmp slt i32 %31, %32
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.34
  %33 = load i32, i32* %count, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_col, i32 0, i64 %idxprom
  %34 = load i8, i8* %arrayidx38, align 1
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %bytes, align 4
  %mul39 = mul nsw i32 %35, %36
  %37 = load i32, i32* %count, align 4
  %add40 = add nsw i32 %mul39, %37
  %idxprom41 = sext i32 %add40 to i64
  %38 = load i8*, i8** %dest, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %38, i64 %idxprom41
  store i8 %34, i8* %arrayidx42, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.37
  %39 = load i32, i32* %count, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end
  %40 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %40, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  br label %if.end.70

if.else.46:                                       ; preds = %if.end.18
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0)) #4
  %call48 = call i32 @gimp_progress_init(i8* %call47)
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %42 = load i32, i32* %x1, align 4
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %x2, align 4
  %45 = load i32, i32* %x1, align 4
  %sub49 = sub nsw i32 %44, %45
  %46 = load i32, i32* %y2, align 4
  %47 = load i32, i32* %y1, align 4
  %sub50 = sub nsw i32 %46, %47
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %41, i32 %42, i32 %43, i32 %sub49, i32 %sub50, i32 1, i32 1)
  %call51 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  store i8* %call51, i8** %pr, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.67, %if.else.46
  %48 = load i8*, i8** %pr, align 8
  %cmp53 = icmp ne i8* %48, null
  br i1 %cmp53, label %for.body.55, label %for.end.69

for.body.55:                                      ; preds = %for.cond.52
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %49 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %50 = load i32, i32* %h, align 4
  %mul56 = mul nsw i32 %49, %50
  store i32 %mul56, i32* %count, align 4
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %51 = load i8*, i8** %data, align 8
  store i8* %51, i8** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.66, %for.body.55
  %52 = load i32, i32* %count, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %count, align 4
  %tobool57 = icmp ne i32 %52, 0
  br i1 %tobool57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.64, %while.body
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %bytes, align 4
  %cmp59 = icmp slt i32 %53, %54
  br i1 %cmp59, label %for.body.61, label %for.end.66

for.body.61:                                      ; preds = %for.cond.58
  %55 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %55 to i64
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_col, i32 0, i64 %idxprom62
  %56 = load i8, i8* %arrayidx63, align 1
  %57 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %56, i8* %57, align 1
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.61
  %58 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %58, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.58

for.end.66:                                       ; preds = %for.cond.58
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.67

for.inc.67:                                       ; preds = %while.end
  %59 = load i8*, i8** %pr, align 8
  %call68 = call i8* @gimp_pixel_rgns_process(i8* %59)
  store i8* %call68, i8** %pr, align 8
  br label %for.cond.52

for.end.69:                                       ; preds = %for.cond.52
  store i8* null, i8** %dest, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %for.end.45
  %60 = load i32, i32* %rows, align 4
  %add71 = add nsw i32 %60, 1
  %61 = load i32, i32* %cols, align 4
  %add72 = add nsw i32 %61, 1
  %mul73 = mul nsw i32 %add71, %add72
  store i32 %mul73, i32* %num_tiles, align 4
  %62 = load i32, i32* %num_tiles, align 4
  %conv74 = sext i32 %62 to i64
  %call75 = call noalias i8* @g_malloc_n(i64 %conv74, i64 4)
  %63 = bitcast i8* %call75 to i32*
  store i32* %63, i32** %random_indices, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.82, %if.end.70
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %num_tiles, align 4
  %cmp77 = icmp slt i32 %64, %65
  br i1 %cmp77, label %for.body.79, label %for.end.84

for.body.79:                                      ; preds = %for.cond.76
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %67 to i64
  %68 = load i32*, i32** %random_indices, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %68, i64 %idxprom80
  store i32 %66, i32* %arrayidx81, align 4
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.79
  %69 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %69, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.76

for.end.84:                                       ; preds = %for.cond.76
  %70 = load i32, i32* %num_tiles, align 4
  %71 = load i32*, i32** %random_indices, align 8
  call void @randomize_indices(i32 %70, i32* %71)
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %73 = load i32, i32* %x1, align 4
  %74 = load i32, i32* %y1, align 4
  %75 = load i32, i32* %x2, align 4
  %76 = load i32, i32* %x1, align 4
  %sub85 = sub nsw i32 %75, %76
  %77 = load i32, i32* %y2, align 4
  %78 = load i32, i32* %y1, align 4
  %sub86 = sub nsw i32 %77, %78
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %72, i32 %73, i32 %74, i32 %sub85, i32 %sub86, i32 0, i32 0)
  store i32 0, i32* %count, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.197, %for.end.84
  %79 = load i32, i32* %count, align 4
  %80 = load i32, i32* %num_tiles, align 4
  %cmp88 = icmp slt i32 %79, %80
  br i1 %cmp88, label %for.body.90, label %for.end.199

for.body.90:                                      ; preds = %for.cond.87
  %81 = load i32, i32* %count, align 4
  %idxprom91 = sext i32 %81 to i64
  %82 = load i32*, i32** %random_indices, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %82, i64 %idxprom91
  %83 = load i32, i32* %arrayidx92, align 4
  %84 = load i32, i32* %cols, align 4
  %add93 = add nsw i32 %84, 1
  %div94 = sdiv i32 %83, %add93
  store i32 %div94, i32* %i, align 4
  %85 = load i32, i32* %count, align 4
  %idxprom95 = sext i32 %85 to i64
  %86 = load i32*, i32** %random_indices, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %86, i64 %idxprom95
  %87 = load i32, i32* %arrayidx96, align 4
  %88 = load i32, i32* %cols, align 4
  %add97 = add nsw i32 %88, 1
  %rem = srem i32 %87, %add97
  store i32 %rem, i32* %j, align 4
  %89 = load i32, i32* %j, align 4
  %conv98 = sitofp i32 %89 to double
  %90 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %mul99 = fmul double %conv98, %90
  %91 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div100 = fdiv double %91, 4.000000e+00
  %add101 = fadd double %mul99, %div100
  %92 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %93 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div102 = fdiv double %93, 2.000000e+00
  %call103 = call double @g_rand_double_range(%struct._GRand* %92, double 0.000000e+00, double %div102)
  %sub104 = fsub double %add101, %call103
  %94 = load i32, i32* %x1, align 4
  %conv105 = sitofp i32 %94 to double
  %add106 = fadd double %sub104, %conv105
  store double %add106, double* %x, align 8
  %95 = load i32, i32* %i, align 4
  %conv107 = sitofp i32 %95 to double
  %96 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %mul108 = fmul double %conv107, %96
  %97 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div109 = fdiv double %97, 4.000000e+00
  %add110 = fadd double %mul108, %div109
  %98 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %99 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div111 = fdiv double %99, 2.000000e+00
  %call112 = call double @g_rand_double_range(%struct._GRand* %98, double 0.000000e+00, double %div111)
  %sub113 = fsub double %add110, %call112
  %100 = load i32, i32* %y1, align 4
  %conv114 = sitofp i32 %100 to double
  %add115 = fadd double %sub113, %conv114
  store double %add115, double* %y, align 8
  %101 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %102 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %103 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div116 = fdiv double %103, 4.000000e+00
  %call117 = call double @g_rand_double_range(%struct._GRand* %102, double 0.000000e+00, double %div116)
  %add118 = fadd double %101, %call117
  %104 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div119 = fdiv double %104, 8.000000e+00
  %sub120 = fsub double %add118, %div119
  %105 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 1), align 8
  %mul121 = fmul double %sub120, %105
  store double %mul121, double* %width, align 8
  %106 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %107 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %108 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div122 = fdiv double %108, 4.000000e+00
  %call123 = call double @g_rand_double_range(%struct._GRand* %107, double 0.000000e+00, double %div122)
  %add124 = fadd double %106, %call123
  %109 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 0), align 8
  %div125 = fdiv double %109, 8.000000e+00
  %sub126 = fsub double %add124, %div125
  %110 = load double, double* getelementptr inbounds (%struct.CubismVals, %struct.CubismVals* @cvals, i32 0, i32 1), align 8
  %mul127 = fmul double %sub126, %110
  store double %mul127, double* %height, align 8
  %111 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call128 = call double @g_rand_double_range(%struct._GRand* %111, double 0.000000e+00, double 0x401921FB54442D18)
  store double %call128, double* %theta, align 8
  call void @polygon_reset(%struct.Polygon* %poly)
  %112 = load double, double* %width, align 8
  %sub129 = fsub double -0.000000e+00, %112
  %div130 = fdiv double %sub129, 2.000000e+00
  %113 = load double, double* %height, align 8
  %sub131 = fsub double -0.000000e+00, %113
  %div132 = fdiv double %sub131, 2.000000e+00
  call void @polygon_add_point(%struct.Polygon* %poly, double %div130, double %div132)
  %114 = load double, double* %width, align 8
  %div133 = fdiv double %114, 2.000000e+00
  %115 = load double, double* %height, align 8
  %sub134 = fsub double -0.000000e+00, %115
  %div135 = fdiv double %sub134, 2.000000e+00
  call void @polygon_add_point(%struct.Polygon* %poly, double %div133, double %div135)
  %116 = load double, double* %width, align 8
  %div136 = fdiv double %116, 2.000000e+00
  %117 = load double, double* %height, align 8
  %div137 = fdiv double %117, 2.000000e+00
  call void @polygon_add_point(%struct.Polygon* %poly, double %div136, double %div137)
  %118 = load double, double* %width, align 8
  %sub138 = fsub double -0.000000e+00, %118
  %div139 = fdiv double %sub138, 2.000000e+00
  %119 = load double, double* %height, align 8
  %div140 = fdiv double %119, 2.000000e+00
  call void @polygon_add_point(%struct.Polygon* %poly, double %div139, double %div140)
  %120 = load double, double* %theta, align 8
  call void @polygon_rotate(%struct.Polygon* %poly, double %120)
  %121 = load double, double* %x, align 8
  %122 = load double, double* %y, align 8
  call void @polygon_translate(%struct.Polygon* %poly, double %121, double %122)
  %123 = load double, double* %x, align 8
  %124 = load i32, i32* %x2, align 4
  %sub141 = sub nsw i32 %124, 1
  %conv142 = sitofp i32 %sub141 to double
  %cmp143 = fcmp ogt double %123, %conv142
  br i1 %cmp143, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.90
  %125 = load i32, i32* %x2, align 4
  %sub145 = sub nsw i32 %125, 1
  %conv146 = sitofp i32 %sub145 to double
  br label %cond.end.153

cond.false:                                       ; preds = %for.body.90
  %126 = load double, double* %x, align 8
  %127 = load i32, i32* %x1, align 4
  %conv147 = sitofp i32 %127 to double
  %cmp148 = fcmp olt double %126, %conv147
  br i1 %cmp148, label %cond.true.150, label %cond.false.152

cond.true.150:                                    ; preds = %cond.false
  %128 = load i32, i32* %x1, align 4
  %conv151 = sitofp i32 %128 to double
  br label %cond.end

cond.false.152:                                   ; preds = %cond.false
  %129 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.152, %cond.true.150
  %cond = phi double [ %conv151, %cond.true.150 ], [ %129, %cond.false.152 ]
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.end, %cond.true
  %cond154 = phi double [ %conv146, %cond.true ], [ %cond, %cond.end ]
  %conv155 = fptosi double %cond154 to i32
  store i32 %conv155, i32* %ix, align 4
  %130 = load double, double* %y, align 8
  %131 = load i32, i32* %y2, align 4
  %sub156 = sub nsw i32 %131, 1
  %conv157 = sitofp i32 %sub156 to double
  %cmp158 = fcmp ogt double %130, %conv157
  br i1 %cmp158, label %cond.true.160, label %cond.false.163

cond.true.160:                                    ; preds = %cond.end.153
  %132 = load i32, i32* %y2, align 4
  %sub161 = sub nsw i32 %132, 1
  %conv162 = sitofp i32 %sub161 to double
  br label %cond.end.172

cond.false.163:                                   ; preds = %cond.end.153
  %133 = load double, double* %y, align 8
  %134 = load i32, i32* %y1, align 4
  %conv164 = sitofp i32 %134 to double
  %cmp165 = fcmp olt double %133, %conv164
  br i1 %cmp165, label %cond.true.167, label %cond.false.169

cond.true.167:                                    ; preds = %cond.false.163
  %135 = load i32, i32* %y1, align 4
  %conv168 = sitofp i32 %135 to double
  br label %cond.end.170

cond.false.169:                                   ; preds = %cond.false.163
  %136 = load double, double* %y, align 8
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.167
  %cond171 = phi double [ %conv168, %cond.true.167 ], [ %136, %cond.false.169 ]
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.end.170, %cond.true.160
  %cond173 = phi double [ %conv162, %cond.true.160 ], [ %cond171, %cond.end.170 ]
  %conv174 = fptosi double %cond173 to i32
  store i32 %conv174, i32* %iy, align 4
  %arraydecay175 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %137 = load i32, i32* %ix, align 4
  %138 = load i32, i32* %iy, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %src_rgn, i8* %arraydecay175, i32 %137, i32 %138)
  %139 = load i32, i32* %has_alpha, align 4
  %tobool176 = icmp ne i32 %139, 0
  br i1 %tobool176, label %lor.lhs.false, label %if.then.182

lor.lhs.false:                                    ; preds = %cond.end.172
  %140 = load i32, i32* %bytes, align 4
  %sub177 = sub nsw i32 %140, 1
  %idxprom178 = sext i32 %sub177 to i64
  %arrayidx179 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 %idxprom178
  %141 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %141 to i32
  %tobool181 = icmp ne i32 %conv180, 0
  br i1 %tobool181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %lor.lhs.false, %cond.end.172
  %142 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %143 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %arraydecay183 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %144 = load i8*, i8** %dest, align 8
  call void @fill_poly_color(%struct.Polygon* %poly, %struct._GimpDrawable* %142, %struct._GimpPreview* %143, i8* %arraydecay183, i8* %144)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %lor.lhs.false
  %145 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool185 = icmp ne %struct._GimpPreview* %145, null
  br i1 %tobool185, label %if.end.196, label %if.then.186

if.then.186:                                      ; preds = %if.end.184
  %146 = load i32, i32* %count, align 4
  %rem187 = srem i32 %146, 8
  %cmp188 = icmp eq i32 %rem187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.195

if.then.190:                                      ; preds = %if.then.186
  %147 = load i32, i32* %count, align 4
  %conv191 = sitofp i32 %147 to double
  %148 = load i32, i32* %num_tiles, align 4
  %conv192 = sitofp i32 %148 to double
  %div193 = fdiv double %conv191, %conv192
  %call194 = call i32 @gimp_progress_update(double %div193)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.190, %if.then.186
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.184
  br label %for.inc.197

for.inc.197:                                      ; preds = %if.end.196
  %149 = load i32, i32* %count, align 4
  %inc198 = add nsw i32 %149, 1
  store i32 %inc198, i32* %count, align 4
  br label %for.cond.87

for.end.199:                                      ; preds = %for.cond.87
  %150 = load i32*, i32** %random_indices, align 8
  %151 = bitcast i32* %150 to i8*
  call void @g_free(i8* %151)
  %152 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %152)
  %153 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool200 = icmp ne %struct._GimpPreview* %153, null
  br i1 %tobool200, label %if.then.201, label %if.else.203

if.then.201:                                      ; preds = %for.end.199
  %154 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %155 = load i8*, i8** %dest, align 8
  %156 = load i32, i32* %sel_width, align 4
  %157 = load i32, i32* %bytes, align 4
  %mul202 = mul nsw i32 %156, %157
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %154, i8* %155, i32 %mul202)
  %158 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %158)
  br label %if.end.211

if.else.203:                                      ; preds = %for.end.199
  %call204 = call i32 @gimp_progress_update(double 1.000000e+00)
  %159 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %159)
  %160 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id205 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %160, i32 0, i32 0
  %161 = load i32, i32* %drawable_id205, align 4
  %call206 = call i32 @gimp_drawable_merge_shadow(i32 %161, i32 1)
  %162 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id207 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %162, i32 0, i32 0
  %163 = load i32, i32* %drawable_id207, align 4
  %164 = load i32, i32* %x1, align 4
  %165 = load i32, i32* %y1, align 4
  %166 = load i32, i32* %x2, align 4
  %167 = load i32, i32* %x1, align 4
  %sub208 = sub nsw i32 %166, %167
  %168 = load i32, i32* %y2, align 4
  %169 = load i32, i32* %y1, align 4
  %sub209 = sub nsw i32 %168, %169
  %call210 = call i32 @gimp_drawable_update(i32 %163, i32 %164, i32 %165, i32 %sub208, i32 %sub209)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.7, %if.else.203, %if.then.201
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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GRand* @g_rand_new() #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_drawable_get_color_uchar(i32, %struct._GimpRGB*, i8*) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @randomize_indices(i32 %count, i32* %indices) #0 {
entry:
  %count.addr = alloca i32, align 4
  %indices.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %index1 = alloca i32, align 4
  %index2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32* %indices, i32** %indices.addr, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %1, 5
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %3 = load i32, i32* %count.addr, align 4
  %call2 = call i32 @g_rand_int_range(%struct._GRand* %2, i32 0, i32 %3)
  store i32 %call2, i32* %index1, align 4
  %4 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %5 = load i32, i32* %count.addr, align 4
  %call3 = call i32 @g_rand_int_range(%struct._GRand* %4, i32 0, i32 %5)
  store i32 %call3, i32* %index2, align 4
  %6 = load i32, i32* %index1, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %indices.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %tmp, align 4
  %9 = load i32, i32* %index2, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32*, i32** %indices.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %12 = load i32, i32* %index1, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32*, i32** %indices.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  store i32 %11, i32* %arrayidx7, align 4
  %14 = load i32, i32* %tmp, align 4
  %15 = load i32, i32* %index2, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load i32*, i32** %indices.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  store i32 %14, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %18)
  ret void
}

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @polygon_reset(%struct.Polygon* %poly) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  store i32 0, i32* %npts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_add_point(%struct.Polygon* %poly, double %x, double %y) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  %1 = load i32, i32* %npts, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  %3 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts1 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %3, i32 0, i32 0
  %4 = load i32, i32* %npts1, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts, i32 0, i64 %idxprom
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double %2, double* %x2, align 8
  %6 = load double, double* %y.addr, align 8
  %7 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts3 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %7, i32 0, i32 0
  %8 = load i32, i32* %npts3, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts5 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts5, i32 0, i64 %idxprom4
  %y7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx6, i32 0, i32 1
  store double %6, double* %y7, align 8
  %10 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts8 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %10, i32 0, i32 0
  %11 = load i32, i32* %npts8, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %npts8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_rotate(%struct.Polygon* %poly, double %theta) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %theta.addr = alloca double, align 8
  %i = alloca i32, align 4
  %ct = alloca double, align 8
  %st = alloca double, align 8
  %ox = alloca double, align 8
  %oy = alloca double, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double %theta, double* %theta.addr, align 8
  %0 = load double, double* %theta.addr, align 8
  %call = call double @cos(double %0) #4
  store double %call, double* %ct, align 8
  %1 = load double, double* %theta.addr, align 8
  %call1 = call double @sin(double %1) #4
  store double %call1, double* %st, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %3, i32 0, i32 0
  %4 = load i32, i32* %npts, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %7 = load double, double* %x, align 8
  store double %7, double* %ox, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts3 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %9, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts3, i32 0, i64 %idxprom2
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx4, i32 0, i32 1
  %10 = load double, double* %y, align 8
  store double %10, double* %oy, align 8
  %11 = load double, double* %ct, align 8
  %12 = load double, double* %ox, align 8
  %mul = fmul double %11, %12
  %13 = load double, double* %st, align 8
  %14 = load double, double* %oy, align 8
  %mul5 = fmul double %13, %14
  %sub = fsub double %mul, %mul5
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts7 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts7, i32 0, i64 %idxprom6
  %x9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx8, i32 0, i32 0
  store double %sub, double* %x9, align 8
  %17 = load double, double* %st, align 8
  %18 = load double, double* %ox, align 8
  %mul10 = fmul double %17, %18
  %19 = load double, double* %ct, align 8
  %20 = load double, double* %oy, align 8
  %mul11 = fmul double %19, %20
  %add = fadd double %mul10, %mul11
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts13 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %22, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts13, i32 0, i64 %idxprom12
  %y15 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx14, i32 0, i32 1
  store double %add, double* %y15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_translate(%struct.Polygon* %poly, double %tx, double %ty) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %tx.addr = alloca double, align 8
  %ty.addr = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double %tx, double* %tx.addr, align 8
  store double %ty, double* %ty.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %1, i32 0, i32 0
  %2 = load i32, i32* %npts, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %tx.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %add = fadd double %6, %3
  store double %add, double* %x, align 8
  %7 = load double, double* %ty.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts2 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts2, i32 0, i64 %idxprom1
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx3, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %add4 = fadd double %10, %7
  store double %add4, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fill_poly_color(%struct.Polygon* %poly, %struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview, i8* %col, i8* %dest) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %col.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dmin_x = alloca double, align 8
  %dmin_y = alloca double, align 8
  %dmax_x = alloca double, align 8
  %dmax_y = alloca double, align 8
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %size_x = alloca i32, align 4
  %size_y = alloca i32, align 4
  %max_scanlines = alloca i32*, align 8
  %max_scanlines_iter = alloca i32*, align 8
  %min_scanlines = alloca i32*, align 8
  %min_scanlines_iter = alloca i32*, align 8
  %val = alloca i32, align 4
  %alpha = alloca i32, align 4
  %bytes = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %ex = alloca double, align 8
  %ey = alloca double, align 8
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %vec = alloca [2 x double], align 16
  %dist = alloca double, align 8
  %one_over_dist = alloca double, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %sel_width = alloca i32, align 4
  %sel_height = alloca i32, align 4
  %vals = alloca i32*, align 8
  %vals_iter = alloca i32*, align 8
  %vals_end = alloca i32*, align 8
  %b = alloca i32, align 4
  %curptr = alloca %struct._GimpVector2*, align 8
  %poly_npts = alloca i32, align 4
  %buf_iter = alloca i8*, align 8
  %col_iter = alloca i8*, align 8
  %buf_end = alloca i8*, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store double 0.000000e+00, double* %dmin_x, align 8
  store double 0.000000e+00, double* %dmin_y, align 8
  store double 0.000000e+00, double* %dmax_x, align 8
  store double 0.000000e+00, double* %dmax_y, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts, i32 0, i64 0
  %x3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %1 = load double, double* %x3, align 8
  store double %1, double* %sx, align 8
  %2 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts4 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %2, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts4, i32 0, i64 0
  %y6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx5, i32 0, i32 1
  %3 = load double, double* %y6, align 8
  store double %3, double* %sy, align 8
  %4 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts7 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %4, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts7, i32 0, i64 1
  %x9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx8, i32 0, i32 0
  %5 = load double, double* %x9, align 8
  store double %5, double* %ex, align 8
  %6 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts10 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts10, i32 0, i64 1
  %y12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx11, i32 0, i32 1
  %7 = load double, double* %y12, align 8
  store double %7, double* %ey, align 8
  %8 = load double, double* %ex, align 8
  %9 = load double, double* %sx, align 8
  %sub = fsub double %8, %9
  %10 = load double, double* %ex, align 8
  %11 = load double, double* %sx, align 8
  %sub13 = fsub double %10, %11
  %mul = fmul double %sub, %sub13
  %12 = load double, double* %ey, align 8
  %13 = load double, double* %sy, align 8
  %sub14 = fsub double %12, %13
  %14 = load double, double* %ey, align 8
  %15 = load double, double* %sy, align 8
  %sub15 = fsub double %14, %15
  %mul16 = fmul double %sub14, %sub15
  %add = fadd double %mul, %mul16
  %call = call double @sqrt(double %add) #4
  store double %call, double* %dist, align 8
  %16 = load double, double* %dist, align 8
  %cmp = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load double, double* %dist, align 8
  %div = fdiv double 1.000000e+00, %17
  store double %div, double* %one_over_dist, align 8
  %18 = load double, double* %ex, align 8
  %19 = load double, double* %sx, align 8
  %sub17 = fsub double %18, %19
  %20 = load double, double* %one_over_dist, align 8
  %mul18 = fmul double %sub17, %20
  %arrayidx19 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  store double %mul18, double* %arrayidx19, align 8
  %21 = load double, double* %ey, align 8
  %22 = load double, double* %sy, align 8
  %sub20 = fsub double %21, %22
  %23 = load double, double* %one_over_dist, align 8
  %mul21 = fmul double %sub20, %23
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  store double %mul21, double* %arrayidx22, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 0.000000e+00, double* %one_over_dist, align 8
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx24, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %24, null
  br i1 %tobool, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.end
  %25 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %25, i32* %x1, i32* %y1)
  %26 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %26, i32* %sel_width, i32* %sel_height)
  %27 = load i32, i32* %x1, align 4
  %28 = load i32, i32* %sel_width, align 4
  %add26 = add nsw i32 %27, %28
  store i32 %add26, i32* %x2, align 4
  %29 = load i32, i32* %y1, align 4
  %30 = load i32, i32* %sel_height, align 4
  %add27 = add nsw i32 %29, %30
  store i32 %add27, i32* %y2, align 4
  br label %if.end.32

if.else.28:                                       ; preds = %if.end
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 0
  %32 = load i32, i32* %drawable_id, align 4
  %call29 = call i32 @gimp_drawable_mask_bounds(i32 %32, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load i32, i32* %x1, align 4
  %35 = load i32, i32* %y1, align 4
  %36 = load i32, i32* %x2, align 4
  %37 = load i32, i32* %x1, align 4
  %sub30 = sub nsw i32 %36, %37
  %38 = load i32, i32* %y2, align 4
  %39 = load i32, i32* %y1, align 4
  %sub31 = sub nsw i32 %38, %39
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %33, i32 %34, i32 %35, i32 %sub30, i32 %sub31, i32 1, i32 1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.25
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 3
  %41 = load i32, i32* %bpp, align 4
  store i32 %41, i32* %bytes, align 4
  %42 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call33 = call i32 @polygon_extents(%struct.Polygon* %42, double* %dmin_x, double* %dmin_y, double* %dmax_x, double* %dmax_y)
  %43 = load double, double* %dmin_x, align 8
  %conv = fptosi double %43 to i32
  store i32 %conv, i32* %min_x, align 4
  %44 = load double, double* %dmin_y, align 8
  %conv34 = fptosi double %44 to i32
  store i32 %conv34, i32* %min_y, align 4
  %45 = load double, double* %dmax_x, align 8
  %conv35 = fptosi double %45 to i32
  store i32 %conv35, i32* %max_x, align 4
  %46 = load double, double* %dmax_y, align 8
  %conv36 = fptosi double %46 to i32
  store i32 %conv36, i32* %max_y, align 4
  %47 = load i32, i32* %max_y, align 4
  %48 = load i32, i32* %min_y, align 4
  %sub37 = sub nsw i32 %47, %48
  %mul38 = mul nsw i32 %sub37, 4
  store i32 %mul38, i32* %size_y, align 4
  %49 = load i32, i32* %max_x, align 4
  %50 = load i32, i32* %min_x, align 4
  %sub39 = sub nsw i32 %49, %50
  %mul40 = mul nsw i32 %sub39, 4
  store i32 %mul40, i32* %size_x, align 4
  %51 = load i32, i32* %size_y, align 4
  %conv41 = sext i32 %51 to i64
  %call42 = call noalias i8* @g_malloc_n(i64 %conv41, i64 4)
  %52 = bitcast i8* %call42 to i32*
  store i32* %52, i32** %min_scanlines_iter, align 8
  store i32* %52, i32** %min_scanlines, align 8
  %53 = load i32, i32* %size_y, align 4
  %conv43 = sext i32 %53 to i64
  %call44 = call noalias i8* @g_malloc_n(i64 %conv43, i64 4)
  %54 = bitcast i8* %call44 to i32*
  store i32* %54, i32** %max_scanlines_iter, align 8
  store i32* %54, i32** %max_scanlines, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %size_y, align 4
  %cmp45 = icmp slt i32 %55, %56
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %max_x, align 4
  %mul47 = mul nsw i32 %57, 4
  %58 = load i32, i32* %i, align 4
  %idxprom = sext i32 %58 to i64
  %59 = load i32*, i32** %min_scanlines, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %59, i64 %idxprom
  store i32 %mul47, i32* %arrayidx48, align 4
  %60 = load i32, i32* %min_x, align 4
  %mul49 = mul nsw i32 %60, 4
  %61 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %61 to i64
  %62 = load i32*, i32** %max_scanlines, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %62, i64 %idxprom50
  store i32 %mul49, i32* %arrayidx51, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %64, i32 0, i32 0
  %65 = load i32, i32* %npts, align 4
  %tobool52 = icmp ne i32 %65, 0
  br i1 %tobool52, label %if.then.53, label %if.end.102

if.then.53:                                       ; preds = %for.end
  %66 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts54 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %66, i32 0, i32 0
  %67 = load i32, i32* %npts54, align 4
  store i32 %67, i32* %poly_npts, align 4
  %68 = load i32, i32* %poly_npts, align 4
  %sub55 = sub nsw i32 %68, 1
  %idxprom56 = sext i32 %sub55 to i64
  %69 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts57 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %69, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts57, i32 0, i64 %idxprom56
  %x59 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx58, i32 0, i32 0
  %70 = load double, double* %x59, align 8
  %conv60 = fptosi double %70 to i32
  store i32 %conv60, i32* %xs, align 4
  %71 = load i32, i32* %poly_npts, align 4
  %sub61 = sub nsw i32 %71, 1
  %idxprom62 = sext i32 %sub61 to i64
  %72 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts63 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %72, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts63, i32 0, i64 %idxprom62
  %y65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx64, i32 0, i32 1
  %73 = load double, double* %y65, align 8
  %conv66 = fptosi double %73 to i32
  store i32 %conv66, i32* %ys, align 4
  %74 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts67 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %74, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts67, i32 0, i64 0
  %x69 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx68, i32 0, i32 0
  %75 = load double, double* %x69, align 8
  %conv70 = fptosi double %75 to i32
  store i32 %conv70, i32* %xe, align 4
  %76 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts71 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %76, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts71, i32 0, i64 0
  %y73 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx72, i32 0, i32 1
  %77 = load double, double* %y73, align 8
  %conv74 = fptosi double %77 to i32
  store i32 %conv74, i32* %ye, align 4
  %78 = load i32, i32* %xs, align 4
  %mul75 = mul nsw i32 %78, 4
  store i32 %mul75, i32* %xs, align 4
  %79 = load i32, i32* %ys, align 4
  %mul76 = mul nsw i32 %79, 4
  store i32 %mul76, i32* %ys, align 4
  %80 = load i32, i32* %xe, align 4
  %mul77 = mul nsw i32 %80, 4
  store i32 %mul77, i32* %xe, align 4
  %81 = load i32, i32* %ye, align 4
  %mul78 = mul nsw i32 %81, 4
  store i32 %mul78, i32* %ye, align 4
  %82 = load i32, i32* %xs, align 4
  %83 = load i32, i32* %ys, align 4
  %84 = load i32, i32* %xe, align 4
  %85 = load i32, i32* %ye, align 4
  %86 = load i32, i32* %min_y, align 4
  %mul79 = mul nsw i32 %86, 4
  %87 = load i32*, i32** %min_scanlines, align 8
  %88 = load i32*, i32** %max_scanlines, align 8
  call void @convert_segment(i32 %82, i32 %83, i32 %84, i32 %85, i32 %mul79, i32* %87, i32* %88)
  store i32 1, i32* %i, align 4
  %89 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts80 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %89, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts80, i32 0, i64 0
  store %struct._GimpVector2* %arrayidx81, %struct._GimpVector2** %curptr, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.99, %if.then.53
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %poly_npts, align 4
  %cmp83 = icmp slt i32 %90, %91
  br i1 %cmp83, label %for.body.85, label %for.end.101

for.body.85:                                      ; preds = %for.cond.82
  %92 = load %struct._GimpVector2*, %struct._GimpVector2** %curptr, align 8
  %x86 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %92, i32 0, i32 0
  %93 = load double, double* %x86, align 8
  %conv87 = fptosi double %93 to i32
  store i32 %conv87, i32* %xs, align 4
  %94 = load %struct._GimpVector2*, %struct._GimpVector2** %curptr, align 8
  %y88 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %94, i32 0, i32 1
  %95 = load double, double* %y88, align 8
  %conv89 = fptosi double %95 to i32
  store i32 %conv89, i32* %ys, align 4
  %96 = load %struct._GimpVector2*, %struct._GimpVector2** %curptr, align 8
  %incdec.ptr = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %96, i32 1
  store %struct._GimpVector2* %incdec.ptr, %struct._GimpVector2** %curptr, align 8
  %97 = load %struct._GimpVector2*, %struct._GimpVector2** %curptr, align 8
  %x90 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %97, i32 0, i32 0
  %98 = load double, double* %x90, align 8
  %conv91 = fptosi double %98 to i32
  store i32 %conv91, i32* %xe, align 4
  %99 = load %struct._GimpVector2*, %struct._GimpVector2** %curptr, align 8
  %y92 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %99, i32 0, i32 1
  %100 = load double, double* %y92, align 8
  %conv93 = fptosi double %100 to i32
  store i32 %conv93, i32* %ye, align 4
  %101 = load i32, i32* %xs, align 4
  %mul94 = mul nsw i32 %101, 4
  store i32 %mul94, i32* %xs, align 4
  %102 = load i32, i32* %ys, align 4
  %mul95 = mul nsw i32 %102, 4
  store i32 %mul95, i32* %ys, align 4
  %103 = load i32, i32* %xe, align 4
  %mul96 = mul nsw i32 %103, 4
  store i32 %mul96, i32* %xe, align 4
  %104 = load i32, i32* %ye, align 4
  %mul97 = mul nsw i32 %104, 4
  store i32 %mul97, i32* %ye, align 4
  %105 = load i32, i32* %xs, align 4
  %106 = load i32, i32* %ys, align 4
  %107 = load i32, i32* %xe, align 4
  %108 = load i32, i32* %ye, align 4
  %109 = load i32, i32* %min_y, align 4
  %mul98 = mul nsw i32 %109, 4
  %110 = load i32*, i32** %min_scanlines, align 8
  %111 = load i32*, i32** %max_scanlines, align 8
  call void @convert_segment(i32 %105, i32 %106, i32 %107, i32 %108, i32 %mul98, i32* %110, i32* %111)
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.85
  %112 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %112, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.82

for.end.101:                                      ; preds = %for.cond.82
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %for.end
  %113 = load i32, i32* %size_x, align 4
  %conv103 = sext i32 %113 to i64
  %call104 = call noalias i8* @g_malloc_n(i64 %conv103, i64 4)
  %114 = bitcast i8* %call104 to i32*
  store i32* %114, i32** %vals, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.246, %if.end.102
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %size_y, align 4
  %cmp106 = icmp slt i32 %115, %116
  br i1 %cmp106, label %for.body.108, label %for.end.250

for.body.108:                                     ; preds = %for.cond.105
  %117 = load i32, i32* %i, align 4
  %rem = srem i32 %117, 4
  %tobool109 = icmp ne i32 %rem, 0
  br i1 %tobool109, label %if.end.113, label %if.then.110

if.then.110:                                      ; preds = %for.body.108
  %118 = load i32*, i32** %vals, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = load i32, i32* %size_x, align 4
  %conv111 = sext i32 %120 to i64
  %mul112 = mul i64 4, %conv111
  call void @llvm.memset.p0i8.i64(i8* %119, i8 0, i64 %mul112, i32 4, i1 false)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %for.body.108
  %121 = load i32, i32* %i, align 4
  %conv114 = sitofp i32 %121 to double
  %div115 = fdiv double %conv114, 4.000000e+00
  %122 = load i32, i32* %min_y, align 4
  %conv116 = sitofp i32 %122 to double
  %add117 = fadd double %div115, %conv116
  store double %add117, double* %yy, align 8
  %123 = load i32*, i32** %min_scanlines_iter, align 8
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %j, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.127, %if.end.113
  %125 = load i32, i32* %j, align 4
  %126 = load i32*, i32** %max_scanlines_iter, align 8
  %127 = load i32, i32* %126, align 4
  %cmp119 = icmp slt i32 %125, %127
  br i1 %cmp119, label %for.body.121, label %for.end.129

for.body.121:                                     ; preds = %for.cond.118
  %128 = load i32, i32* %j, align 4
  %129 = load i32, i32* %min_x, align 4
  %mul122 = mul nsw i32 %129, 4
  %sub123 = sub nsw i32 %128, %mul122
  store i32 %sub123, i32* %x, align 4
  %130 = load i32, i32* %x, align 4
  %idxprom124 = sext i32 %130 to i64
  %131 = load i32*, i32** %vals, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %131, i64 %idxprom124
  %132 = load i32, i32* %arrayidx125, align 4
  %add126 = add nsw i32 %132, 255
  store i32 %add126, i32* %arrayidx125, align 4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.121
  %133 = load i32, i32* %j, align 4
  %inc128 = add nsw i32 %133, 1
  store i32 %inc128, i32* %j, align 4
  br label %for.cond.118

for.end.129:                                      ; preds = %for.cond.118
  %134 = load i32, i32* %i, align 4
  %add130 = add nsw i32 %134, 1
  %rem131 = srem i32 %add130, 4
  %tobool132 = icmp ne i32 %rem131, 0
  br i1 %tobool132, label %if.end.245, label %if.then.133

if.then.133:                                      ; preds = %for.end.129
  %135 = load i32, i32* %i, align 4
  %div134 = sdiv i32 %135, 4
  %136 = load i32, i32* %min_y, align 4
  %add135 = add nsw i32 %div134, %136
  store i32 %add135, i32* %y, align 4
  %137 = load i32, i32* %y, align 4
  %138 = load i32, i32* %y1, align 4
  %cmp136 = icmp sge i32 %137, %138
  br i1 %cmp136, label %land.lhs.true, label %if.end.244

land.lhs.true:                                    ; preds = %if.then.133
  %139 = load i32, i32* %y, align 4
  %140 = load i32, i32* %y2, align 4
  %cmp138 = icmp slt i32 %139, %140
  br i1 %cmp138, label %if.then.140, label %if.end.244

if.then.140:                                      ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.241, %if.then.140
  %141 = load i32, i32* %j, align 4
  %142 = load i32, i32* %size_x, align 4
  %cmp142 = icmp slt i32 %141, %142
  br i1 %cmp142, label %for.body.144, label %for.end.243

for.body.144:                                     ; preds = %for.cond.141
  %143 = load i32, i32* %j, align 4
  %div145 = sdiv i32 %143, 4
  %144 = load i32, i32* %min_x, align 4
  %add146 = add nsw i32 %div145, %144
  store i32 %add146, i32* %x, align 4
  %145 = load i32, i32* %x, align 4
  %146 = load i32, i32* %x1, align 4
  %cmp147 = icmp sge i32 %145, %146
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.240

land.lhs.true.149:                                ; preds = %for.body.144
  %147 = load i32, i32* %x, align 4
  %148 = load i32, i32* %x2, align 4
  %cmp150 = icmp slt i32 %147, %148
  br i1 %cmp150, label %if.then.152, label %if.end.240

if.then.152:                                      ; preds = %land.lhs.true.149
  store i32 0, i32* %val, align 4
  %149 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %149 to i64
  %150 = load i32*, i32** %vals, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %150, i64 %idxprom153
  store i32* %arrayidx154, i32** %vals_iter, align 8
  %151 = load i32*, i32** %vals_iter, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %arrayidx155, i32** %vals_end, align 8
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.161, %if.then.152
  %152 = load i32*, i32** %vals_iter, align 8
  %153 = load i32*, i32** %vals_end, align 8
  %cmp157 = icmp ult i32* %152, %153
  br i1 %cmp157, label %for.body.159, label %for.end.163

for.body.159:                                     ; preds = %for.cond.156
  %154 = load i32*, i32** %vals_iter, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %val, align 4
  %add160 = add nsw i32 %156, %155
  store i32 %add160, i32* %val, align 4
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.159
  %157 = load i32*, i32** %vals_iter, align 8
  %incdec.ptr162 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %incdec.ptr162, i32** %vals_iter, align 8
  br label %for.cond.156

for.end.163:                                      ; preds = %for.cond.156
  %158 = load i32, i32* %val, align 4
  %div164 = sdiv i32 %158, 16
  store i32 %div164, i32* %val, align 4
  %159 = load i32, i32* %val, align 4
  %cmp165 = icmp sgt i32 %159, 0
  br i1 %cmp165, label %if.then.167, label %if.end.239

if.then.167:                                      ; preds = %for.end.163
  %160 = load i32, i32* %j, align 4
  %conv168 = sitofp i32 %160 to double
  %div169 = fdiv double %conv168, 4.000000e+00
  %161 = load i32, i32* %min_x, align 4
  %conv170 = sitofp i32 %161 to double
  %add171 = fadd double %div169, %conv170
  store double %add171, double* %xx, align 8
  %162 = load i32, i32* %val, align 4
  %conv172 = sitofp i32 %162 to double
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i32 0
  %163 = load double, double* %one_over_dist, align 8
  %164 = load double, double* %xx, align 8
  %165 = load double, double* %sx, align 8
  %sub173 = fsub double %164, %165
  %166 = load double, double* %yy, align 8
  %167 = load double, double* %sy, align 8
  %sub174 = fsub double %166, %167
  %call175 = call double @calc_alpha_blend(double* %arraydecay, double %163, double %sub173, double %sub174)
  %mul176 = fmul double %conv172, %call175
  %conv177 = fptosi double %mul176 to i32
  store i32 %conv177, i32* %alpha, align 4
  %168 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool178 = icmp ne %struct._GimpPreview* %168, null
  br i1 %tobool178, label %if.then.179, label %if.else.197

if.then.179:                                      ; preds = %if.then.167
  store i32 0, i32* %b, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.194, %if.then.179
  %169 = load i32, i32* %b, align 4
  %170 = load i32, i32* %bytes, align 4
  %cmp181 = icmp slt i32 %169, %170
  br i1 %cmp181, label %for.body.183, label %for.end.196

for.body.183:                                     ; preds = %for.cond.180
  %171 = load i32, i32* %y, align 4
  %172 = load i32, i32* %y1, align 4
  %sub184 = sub nsw i32 %171, %172
  %173 = load i32, i32* %sel_width, align 4
  %mul185 = mul nsw i32 %sub184, %173
  %174 = load i32, i32* %x, align 4
  %175 = load i32, i32* %x1, align 4
  %sub186 = sub nsw i32 %174, %175
  %add187 = add nsw i32 %mul185, %sub186
  %176 = load i32, i32* %bytes, align 4
  %mul188 = mul nsw i32 %add187, %176
  %177 = load i32, i32* %b, align 4
  %add189 = add nsw i32 %mul188, %177
  %idxprom190 = sext i32 %add189 to i64
  %178 = load i8*, i8** %dest.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %178, i64 %idxprom190
  %179 = load i8, i8* %arrayidx191, align 1
  %180 = load i32, i32* %b, align 4
  %idxprom192 = sext i32 %180 to i64
  %arrayidx193 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom192
  store i8 %179, i8* %arrayidx193, align 1
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.183
  %181 = load i32, i32* %b, align 4
  %inc195 = add nsw i32 %181, 1
  store i32 %inc195, i32* %b, align 4
  br label %for.cond.180

for.end.196:                                      ; preds = %for.cond.180
  br label %if.end.199

if.else.197:                                      ; preds = %if.then.167
  %arraydecay198 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %182 = load i32, i32* %x, align 4
  %183 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %src_rgn, i8* %arraydecay198, i32 %182, i32 %183)
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.197, %for.end.196
  %arraydecay200 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay200, i8** %buf_iter, align 8
  %184 = load i8*, i8** %col.addr, align 8
  store i8* %184, i8** %col_iter, align 8
  %arraydecay201 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %185 = load i32, i32* %bytes, align 4
  %idx.ext = sext i32 %185 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay201, i64 %idx.ext
  store i8* %add.ptr, i8** %buf_end, align 8
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.213, %if.end.199
  %186 = load i8*, i8** %buf_iter, align 8
  %187 = load i8*, i8** %buf_end, align 8
  %cmp203 = icmp ult i8* %186, %187
  br i1 %cmp203, label %for.body.205, label %for.end.216

for.body.205:                                     ; preds = %for.cond.202
  %188 = load i8*, i8** %col_iter, align 8
  %189 = load i8, i8* %188, align 1
  %conv206 = zext i8 %189 to i32
  %190 = load i32, i32* %alpha, align 4
  %mul207 = mul nsw i32 %conv206, %190
  %191 = load i8*, i8** %buf_iter, align 8
  %192 = load i8, i8* %191, align 1
  %conv208 = zext i8 %192 to i32
  %193 = load i32, i32* %alpha, align 4
  %sub209 = sub nsw i32 256, %193
  %mul210 = mul i32 %conv208, %sub209
  %add211 = add i32 %mul207, %mul210
  %shr = lshr i32 %add211, 8
  %conv212 = trunc i32 %shr to i8
  %194 = load i8*, i8** %buf_iter, align 8
  store i8 %conv212, i8* %194, align 1
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.205
  %195 = load i8*, i8** %buf_iter, align 8
  %incdec.ptr214 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr214, i8** %buf_iter, align 8
  %196 = load i8*, i8** %col_iter, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr215, i8** %col_iter, align 8
  br label %for.cond.202

for.end.216:                                      ; preds = %for.cond.202
  %197 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool217 = icmp ne %struct._GimpPreview* %197, null
  br i1 %tobool217, label %if.then.218, label %if.else.236

if.then.218:                                      ; preds = %for.end.216
  store i32 0, i32* %b, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.233, %if.then.218
  %198 = load i32, i32* %b, align 4
  %199 = load i32, i32* %bytes, align 4
  %cmp220 = icmp slt i32 %198, %199
  br i1 %cmp220, label %for.body.222, label %for.end.235

for.body.222:                                     ; preds = %for.cond.219
  %200 = load i32, i32* %b, align 4
  %idxprom223 = sext i32 %200 to i64
  %arrayidx224 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom223
  %201 = load i8, i8* %arrayidx224, align 1
  %202 = load i32, i32* %y, align 4
  %203 = load i32, i32* %y1, align 4
  %sub225 = sub nsw i32 %202, %203
  %204 = load i32, i32* %sel_width, align 4
  %mul226 = mul nsw i32 %sub225, %204
  %205 = load i32, i32* %x, align 4
  %206 = load i32, i32* %x1, align 4
  %sub227 = sub nsw i32 %205, %206
  %add228 = add nsw i32 %mul226, %sub227
  %207 = load i32, i32* %bytes, align 4
  %mul229 = mul nsw i32 %add228, %207
  %208 = load i32, i32* %b, align 4
  %add230 = add nsw i32 %mul229, %208
  %idxprom231 = sext i32 %add230 to i64
  %209 = load i8*, i8** %dest.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %209, i64 %idxprom231
  store i8 %201, i8* %arrayidx232, align 1
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.222
  %210 = load i32, i32* %b, align 4
  %inc234 = add nsw i32 %210, 1
  store i32 %inc234, i32* %b, align 4
  br label %for.cond.219

for.end.235:                                      ; preds = %for.cond.219
  br label %if.end.238

if.else.236:                                      ; preds = %for.end.216
  %arraydecay237 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %211 = load i32, i32* %x, align 4
  %212 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* %src_rgn, i8* %arraydecay237, i32 %211, i32 %212)
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.236, %for.end.235
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %for.end.163
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %land.lhs.true.149, %for.body.144
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.240
  %213 = load i32, i32* %j, align 4
  %add242 = add nsw i32 %213, 4
  store i32 %add242, i32* %j, align 4
  br label %for.cond.141

for.end.243:                                      ; preds = %for.cond.141
  br label %if.end.244

if.end.244:                                       ; preds = %for.end.243, %land.lhs.true, %if.then.133
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %for.end.129
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245
  %214 = load i32, i32* %i, align 4
  %inc247 = add nsw i32 %214, 1
  store i32 %inc247, i32* %i, align 4
  %215 = load i32*, i32** %min_scanlines_iter, align 8
  %incdec.ptr248 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %incdec.ptr248, i32** %min_scanlines_iter, align 8
  %216 = load i32*, i32** %max_scanlines_iter, align 8
  %incdec.ptr249 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %incdec.ptr249, i32** %max_scanlines_iter, align 8
  br label %for.cond.105

for.end.250:                                      ; preds = %for.cond.105
  %217 = load i32*, i32** %vals, align 8
  %218 = bitcast i32* %217 to i8*
  call void @g_free(i8* %218)
  %219 = load i32*, i32** %min_scanlines, align 8
  %220 = bitcast i32* %219 to i8*
  call void @g_free(i8* %220)
  %221 = load i32*, i32** %max_scanlines, align 8
  %222 = bitcast i32* %221 to i8*
  call void @g_free(i8* %222)
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @g_free(i8*) #1

declare void @g_rand_free(%struct._GRand*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @polygon_extents(%struct.Polygon* %poly, double* %x1, double* %y1, double* %x2, double* %y2) #0 {
entry:
  %retval = alloca i32, align 4
  %poly.addr = alloca %struct.Polygon*, align 8
  %x1.addr = alloca double*, align 8
  %y1.addr = alloca double*, align 8
  %x2.addr = alloca double*, align 8
  %y2.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double* %x1, double** %x1.addr, align 8
  store double* %y1, double** %y1.addr, align 8
  store double* %x2, double** %x2.addr, align 8
  store double* %y2, double** %y2.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  %1 = load i32, i32* %npts, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts, i32 0, i64 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %4 = load double*, double** %x2.addr, align 8
  store double %3, double* %4, align 8
  %5 = load double*, double** %x1.addr, align 8
  store double %3, double* %5, align 8
  %6 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts1 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts1, i32 0, i64 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx2, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load double*, double** %y2.addr, align 8
  store double %7, double* %8, align 8
  %9 = load double*, double** %y1.addr, align 8
  store double %7, double* %9, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts3 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %11, i32 0, i32 0
  %12 = load i32, i32* %npts3, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts4 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %14, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts4, i32 0, i64 %idxprom
  %x6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx5, i32 0, i32 0
  %15 = load double, double* %x6, align 8
  %16 = load double*, double** %x1.addr, align 8
  %17 = load double, double* %16, align 8
  %cmp7 = fcmp olt double %15, %17
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts10 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %19, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts10, i32 0, i64 %idxprom9
  %x12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx11, i32 0, i32 0
  %20 = load double, double* %x12, align 8
  %21 = load double*, double** %x1.addr, align 8
  store double %20, double* %21, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts15 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %23, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts15, i32 0, i64 %idxprom14
  %x17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx16, i32 0, i32 0
  %24 = load double, double* %x17, align 8
  %25 = load double*, double** %x2.addr, align 8
  %26 = load double, double* %25, align 8
  %cmp18 = fcmp ogt double %24, %26
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.13
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts21 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %28, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts21, i32 0, i64 %idxprom20
  %x23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx22, i32 0, i32 0
  %29 = load double, double* %x23, align 8
  %30 = load double*, double** %x2.addr, align 8
  store double %29, double* %30, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %if.end.13
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts26 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %32, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts26, i32 0, i64 %idxprom25
  %y28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx27, i32 0, i32 1
  %33 = load double, double* %y28, align 8
  %34 = load double*, double** %y1.addr, align 8
  %35 = load double, double* %34, align 8
  %cmp29 = fcmp olt double %33, %35
  br i1 %cmp29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.24
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts32 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %37, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts32, i32 0, i64 %idxprom31
  %y34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx33, i32 0, i32 1
  %38 = load double, double* %y34, align 8
  %39 = load double*, double** %y1.addr, align 8
  store double %38, double* %39, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.24
  %40 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %40 to i64
  %41 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts37 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %41, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts37, i32 0, i64 %idxprom36
  %y39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx38, i32 0, i32 1
  %42 = load double, double* %y39, align 8
  %43 = load double*, double** %y2.addr, align 8
  %44 = load double, double* %43, align 8
  %cmp40 = fcmp ogt double %42, %44
  br i1 %cmp40, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %if.end.35
  %45 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %45 to i64
  %46 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts43 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %46, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [4 x %struct._GimpVector2], [4 x %struct._GimpVector2]* %pts43, i32 0, i64 %idxprom42
  %y45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx44, i32 0, i32 1
  %47 = load double, double* %y45, align 8
  %48 = load double*, double** %y2.addr, align 8
  store double %47, double* %48, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %if.end.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @convert_segment(i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %offset, i32* %min, i32* %max) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %min.addr = alloca i32*, align 8
  %max.addr = alloca i32*, align 8
  %ydiff = alloca i32, align 4
  %y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %xinc = alloca double, align 8
  %xstart = alloca double, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32* %min, i32** %min.addr, align 8
  store i32* %max, i32** %max.addr, align 8
  %0 = load i32, i32* %y1.addr, align 4
  %1 = load i32, i32* %y2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %y2.addr, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32, i32* %y1.addr, align 4
  store i32 %3, i32* %y2.addr, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %y1.addr, align 4
  %5 = load i32, i32* %x2.addr, align 4
  store i32 %5, i32* %tmp, align 4
  %6 = load i32, i32* %x1.addr, align 4
  store i32 %6, i32* %x2.addr, align 4
  %7 = load i32, i32* %tmp, align 4
  store i32 %7, i32* %x1.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %y2.addr, align 4
  %9 = load i32, i32* %y1.addr, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %ydiff, align 4
  %10 = load i32, i32* %ydiff, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.end.32

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %x2.addr, align 4
  %12 = load i32, i32* %x1.addr, align 4
  %sub4 = sub nsw i32 %11, %12
  %conv = sitofp i32 %sub4 to double
  %13 = load i32, i32* %ydiff, align 4
  %conv5 = sitofp i32 %13 to double
  %div = fdiv double %conv, %conv5
  store double %div, double* %xinc, align 8
  %14 = load i32, i32* %x1.addr, align 4
  %conv6 = sitofp i32 %14 to double
  %15 = load double, double* %xinc, align 8
  %mul = fmul double 5.000000e-01, %15
  %add = fadd double %conv6, %mul
  store double %add, double* %xstart, align 8
  %16 = load i32, i32* %y1.addr, align 4
  store i32 %16, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %y2.addr, align 4
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load double, double* %xstart, align 8
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %offset.addr, align 4
  %sub9 = sub nsw i32 %20, %21
  %idxprom = sext i32 %sub9 to i64
  %22 = load i32*, i32** %min.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4
  %conv10 = sitofp i32 %23 to double
  %cmp11 = fcmp olt double %19, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %for.body
  %24 = load double, double* %xstart, align 8
  %conv14 = fptosi double %24 to i32
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %offset.addr, align 4
  %sub15 = sub nsw i32 %25, %26
  %idxprom16 = sext i32 %sub15 to i64
  %27 = load i32*, i32** %min.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  store i32 %conv14, i32* %arrayidx17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %for.body
  %28 = load double, double* %xstart, align 8
  %29 = load i32, i32* %y, align 4
  %30 = load i32, i32* %offset.addr, align 4
  %sub19 = sub nsw i32 %29, %30
  %idxprom20 = sext i32 %sub19 to i64
  %31 = load i32*, i32** %max.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %31, i64 %idxprom20
  %32 = load i32, i32* %arrayidx21, align 4
  %conv22 = sitofp i32 %32 to double
  %cmp23 = fcmp ogt double %28, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.18
  %33 = load double, double* %xstart, align 8
  %conv26 = fptosi double %33 to i32
  %34 = load i32, i32* %y, align 4
  %35 = load i32, i32* %offset.addr, align 4
  %sub27 = sub nsw i32 %34, %35
  %idxprom28 = sext i32 %sub27 to i64
  %36 = load i32*, i32** %max.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %36, i64 %idxprom28
  store i32 %conv26, i32* %arrayidx29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.18
  %37 = load double, double* %xinc, align 8
  %38 = load double, double* %xstart, align 8
  %add31 = fadd double %38, %37
  store double %add31, double* %xstart, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %39 = load i32, i32* %y, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: inlinehint nounwind uwtable
define internal double @calc_alpha_blend(double* %vec, double %one_over_dist, double %x, double %y) #5 {
entry:
  %retval = alloca double, align 8
  %vec.addr = alloca double*, align 8
  %one_over_dist.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %r = alloca double, align 8
  store double* %vec, double** %vec.addr, align 8
  store double %one_over_dist, double* %one_over_dist.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %one_over_dist.addr, align 8
  %tobool = fcmp une double %0, 0.000000e+00
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  %2 = load double, double* %arrayidx, align 8
  %3 = load double, double* %x.addr, align 8
  %mul = fmul double %2, %3
  %4 = load double*, double** %vec.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx1, align 8
  %6 = load double, double* %y.addr, align 8
  %mul2 = fmul double %5, %6
  %add = fadd double %mul, %mul2
  %7 = load double, double* %one_over_dist.addr, align 8
  %mul3 = fmul double %add, %7
  store double %mul3, double* %r, align 8
  %8 = load double, double* %r, align 8
  %cmp = fcmp ogt double %8, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.7

cond.false:                                       ; preds = %if.end
  %9 = load double, double* %r, align 8
  %cmp4 = fcmp olt double %9, 2.000000e-01
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %10 = load double, double* %r, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 2.000000e-01, %cond.true.5 ], [ %10, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond8, double* %retval
  br label %return

return:                                           ; preds = %cond.end.7, %if.then
  %11 = load double, double* %retval
  ret double %11
}

declare void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
