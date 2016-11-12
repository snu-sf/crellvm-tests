; ModuleID = './plug-ins/common/tile-glass.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.GlassValues = type { i32, i32, i32 }
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
%struct.GlassChainedValues = type { %struct.GlassValues*, %struct._GtkObject*, %struct._GtkObject* }
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
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"tilex\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Tile width (10 - 50)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"tiley\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Tile height (10 - 50)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"plug-in-glasstile\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Simulate distortion caused by square glass tiles\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"Divide the image into square glassblocks in which the image is refracted.\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Karl-Johan Andersson\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"_Glass Tile...\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@gtvals = internal global %struct.GlassValues { i32 20, i32 20, i32 1 }, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"Glass Tile\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"tile-glass\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"gimp-tile-glass\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Tile _width:\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Tile _height:\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #5
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
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 5
  %8 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %8
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.GlassValues* @gtvals to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @glasstile_dialog(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %11)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %12, 5
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %sw.bb.9
  %13 = load i32, i32* %status, align 4
  %cmp13 = icmp eq i32 %13, 3
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.12
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %15 = load i32, i32* %d_int3218, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 0), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 4
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %17 = load i32, i32* %d_int3221, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 1), align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %if.end.12
  %18 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 0), align 4
  %cmp23 = icmp slt i32 %18, 10
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %19 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 0), align 4
  %cmp25 = icmp sgt i32 %19, 50
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.22
  store i32 1, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %lor.lhs.false
  %20 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 1), align 4
  %cmp29 = icmp slt i32 %20, 10
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.28
  %21 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 1), align 4
  %cmp32 = icmp sgt i32 %21, 50
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.31, %if.end.28
  store i32 1, i32* %status, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %lor.lhs.false.31
  br label %sw.epilog

sw.bb.36:                                         ; preds = %do.end
  %call37 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.GlassValues* @gtvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.36, %if.end.35, %if.end
  %22 = load i32, i32* %status, align 4
  %cmp38 = icmp eq i32 %22, 3
  br i1 %cmp38, label %if.then.40, label %if.end.61

if.then.40:                                       ; preds = %sw.epilog
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id, align 4
  %call41 = call i32 @gimp_drawable_is_rgb(i32 %24)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.47, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.then.40
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id44, align 4
  %call45 = call i32 @gimp_drawable_is_gray(i32 %26)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %lor.lhs.false.43, %if.then.40
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #5
  %call49 = call i32 @gimp_progress_init(i8* %call48)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @glasstile(%struct._GimpDrawable* %27, %struct._GimpPreview* null)
  %28 = load i32, i32* %run_mode, align 4
  %cmp50 = icmp ne i32 %28, 1
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.47
  %call53 = call i32 @gimp_displays_flush()
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.47
  %29 = load i32, i32* %run_mode, align 4
  %cmp55 = icmp eq i32 %29, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %call58 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.GlassValues* @gtvals to i8*), i32 12)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  br label %if.end.60

if.else:                                          ; preds = %lor.lhs.false.43
  store i32 0, i32* %status, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %sw.epilog
  %30 = load i32, i32* %status, align 4
  store i32 %30, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %31)
  br label %return

return:                                           ; preds = %if.end.61, %if.then
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
define internal i32 @glasstile_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %gv = alloca %struct.GlassChainedValues*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %chainbutton = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.GlassChainedValues*
  store %struct.GlassChainedValues* %0, %struct.GlassChainedValues** %gv, align 8
  %1 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %gval = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %1, i32 0, i32 0
  store %struct.GlassValues* @gtvals, %struct.GlassValues** %gval, align 8
  store i32 1, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 2), align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 1)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %4, i32 -5, i32 -6, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %7)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %main_vbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %10, i32 12)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  %call12 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %13)
  %14 = bitcast %struct._GtkWidget* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 1, i32 1, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %18, i32* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %preview, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 1, i32 1, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @glasstile to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 2)
  %call19 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 4, i32 0)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %table, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %30, i32 6)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call22)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %33, i32 6)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %36, i32 2, i32 2)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call28)
  %44 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0)) #5
  %45 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %45 to double
  %call31 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %44, i32 0, i32 0, i8* %call30, i32 150, i32 0, double %conv, double 1.000000e+01, double 5.000000e+01, double 2.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %46 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %xadj = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %46, i32 0, i32 1
  store %struct._GtkObject* %call31, %struct._GtkObject** %xadj, align 8
  %47 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %xadj32 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %47, i32 0, i32 1
  %48 = load %struct._GtkObject*, %struct._GtkObject** %xadj32, align 8
  %49 = bitcast %struct._GtkObject* %48 to i8*
  %50 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %51 = bitcast %struct.GlassChainedValues* %50 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkObject*, i8*)* @glasstile_size_changed to void ()*), i8* %51, void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %xadj34 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %52, i32 0, i32 1
  %53 = load %struct._GtkObject*, %struct._GtkObject** %xadj34, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call36)
  %59 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #5
  %60 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 1), align 4
  %conv39 = sitofp i32 %60 to double
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %59, i32 0, i32 1, i8* %call38, i32 150, i32 0, double %conv39, double 1.000000e+01, double 5.000000e+01, double 2.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %61 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %yadj = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %61, i32 0, i32 2
  store %struct._GtkObject* %call40, %struct._GtkObject** %yadj, align 8
  %62 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %yadj41 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %62, i32 0, i32 2
  %63 = load %struct._GtkObject*, %struct._GtkObject** %yadj41, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %66 = bitcast %struct.GlassChainedValues* %65 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkObject*, i8*)* @glasstile_size_changed to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 0)
  %67 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %yadj43 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %67, i32 0, i32 2
  %68 = load %struct._GtkObject*, %struct._GtkObject** %yadj43, align 8
  %69 = bitcast %struct._GtkObject* %68 to i8*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 2)
  %call45 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %chainbutton, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_chain_button_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call46)
  %74 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpChainButton*
  %75 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 2), align 4
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %74, i32 %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call48)
  %78 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %78, %struct._GtkWidget* %79, i32 3, i32 4, i32 0, i32 2)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32*)* @glasstile_chain_toggled to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_dialog_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call51)
  %86 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDialog*
  %call53 = call i32 @gimp_dialog_run(%struct._GimpDialog* %86)
  %cmp = icmp eq i32 %call53, -5
  %conv54 = zext i1 %cmp to i32
  store i32 %conv54, i32* %run, align 4
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %87)
  %88 = load i32, i32* %run, align 4
  ret i32 %88
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @glasstile(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %cur_row = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %rutbredd = alloca i32, align 4
  %xpixel1 = alloca i32, align 4
  %xpixel2 = alloca i32, align 4
  %ruthojd = alloca i32, align 4
  %ypixel2 = alloca i32, align 4
  %xhalv = alloca i32, align 4
  %xoffs = alloca i32, align 4
  %xmitt = alloca i32, align 4
  %xplus = alloca i32, align 4
  %yhalv = alloca i32, align 4
  %yoffs = alloca i32, align 4
  %ymitt = alloca i32, align 4
  %yplus = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
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
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 3
  %14 = load i32, i32* %bpp, align 4
  store i32 %14, i32* %bytes, align 4
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %15, %16
  %conv = sext i32 %mul to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** %cur_row, align 8
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %bytes, align 4
  %mul4 = mul nsw i32 %17, %18
  %conv5 = sext i32 %mul4 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv5, i64 1)
  store i8* %call6, i8** %dest, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y1, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 0, i32 0)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = load i32, i32* %x1, align 4
  %26 = load i32, i32* %y1, align 4
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %29 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %29, null
  %conv7 = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %conv7, i32 1)
  %30 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 0), align 4
  store i32 %30, i32* %rutbredd, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.GlassValues, %struct.GlassValues* @gtvals, i32 0, i32 1), align 4
  store i32 %31, i32* %ruthojd, align 4
  %32 = load i32, i32* %rutbredd, align 4
  %div = sdiv i32 %32, 2
  store i32 %div, i32* %xhalv, align 4
  %33 = load i32, i32* %ruthojd, align 4
  %div8 = sdiv i32 %33, 2
  store i32 %div8, i32* %yhalv, align 4
  %34 = load i32, i32* %rutbredd, align 4
  %rem = srem i32 %34, 2
  store i32 %rem, i32* %xplus, align 4
  %35 = load i32, i32* %ruthojd, align 4
  %rem9 = srem i32 %35, 2
  store i32 %rem9, i32* %yplus, align 4
  %36 = load i32, i32* %y1, align 4
  store i32 %36, i32* %ymitt, align 4
  store i32 0, i32* %yoffs, align 4
  %37 = load i32, i32* %y1, align 4
  store i32 %37, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %if.end
  %38 = load i32, i32* %row, align 4
  %39 = load i32, i32* %y2, align 4
  %cmp10 = icmp slt i32 %38, %39
  br i1 %cmp10, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %40 = load i8*, i8** %dest, align 8
  store i8* %40, i8** %d, align 8
  %41 = load i32, i32* %ymitt, align 4
  %42 = load i32, i32* %yoffs, align 4
  %mul12 = mul nsw i32 %42, 2
  %add13 = add nsw i32 %41, %mul12
  store i32 %add13, i32* %ypixel2, align 4
  %43 = load i32, i32* %ypixel2, align 4
  %44 = load i32, i32* %y2, align 4
  %sub14 = sub nsw i32 %44, 1
  %cmp15 = icmp sgt i32 %43, %sub14
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %45 = load i32, i32* %y2, align 4
  %sub17 = sub nsw i32 %45, 1
  br label %cond.end.22

cond.false:                                       ; preds = %for.body
  %46 = load i32, i32* %ypixel2, align 4
  %cmp18 = icmp slt i32 %46, 0
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %47 = load i32, i32* %ypixel2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi i32 [ 0, %cond.true.20 ], [ %47, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi i32 [ %sub17, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond23, i32* %ypixel2, align 4
  %48 = load i8*, i8** %cur_row, align 8
  %49 = load i32, i32* %x1, align 4
  %50 = load i32, i32* %ypixel2, align 4
  %51 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %48, i32 %49, i32 %50, i32 %51)
  %52 = load i32, i32* %yoffs, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %yoffs, align 4
  %53 = load i32, i32* %yoffs, align 4
  %54 = load i32, i32* %yhalv, align 4
  %cmp24 = icmp eq i32 %53, %54
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %cond.end.22
  %55 = load i32, i32* %ruthojd, align 4
  %56 = load i32, i32* %ymitt, align 4
  %add27 = add nsw i32 %56, %55
  store i32 %add27, i32* %ymitt, align 4
  %57 = load i32, i32* %yhalv, align 4
  %58 = load i32, i32* %yplus, align 4
  %add28 = add nsw i32 %57, %58
  %sub29 = sub nsw i32 0, %add28
  store i32 %sub29, i32* %yoffs, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %cond.end.22
  store i32 0, i32* %xmitt, align 4
  store i32 0, i32* %xoffs, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.82, %if.end.30
  %59 = load i32, i32* %col, align 4
  %60 = load i32, i32* %x2, align 4
  %61 = load i32, i32* %x1, align 4
  %sub32 = sub nsw i32 %60, %61
  %cmp33 = icmp slt i32 %59, %sub32
  br i1 %cmp33, label %for.body.35, label %for.end.84

for.body.35:                                      ; preds = %for.cond.31
  %62 = load i32, i32* %xmitt, align 4
  %63 = load i32, i32* %xoffs, align 4
  %add36 = add nsw i32 %62, %63
  %64 = load i32, i32* %bytes, align 4
  %mul37 = mul nsw i32 %add36, %64
  store i32 %mul37, i32* %xpixel1, align 4
  %65 = load i32, i32* %xmitt, align 4
  %66 = load i32, i32* %xoffs, align 4
  %mul38 = mul nsw i32 %66, 2
  %add39 = add nsw i32 %65, %mul38
  %67 = load i32, i32* %bytes, align 4
  %mul40 = mul nsw i32 %add39, %67
  store i32 %mul40, i32* %xpixel2, align 4
  %68 = load i32, i32* %xpixel2, align 4
  %69 = load i32, i32* %x2, align 4
  %70 = load i32, i32* %x1, align 4
  %sub41 = sub nsw i32 %69, %70
  %71 = load i32, i32* %bytes, align 4
  %mul42 = mul nsw i32 %sub41, %71
  %cmp43 = icmp slt i32 %68, %mul42
  br i1 %cmp43, label %if.then.45, label %if.else.59

if.then.45:                                       ; preds = %for.body.35
  %72 = load i32, i32* %xpixel2, align 4
  %cmp46 = icmp slt i32 %72, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  store i32 0, i32* %xpixel2, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.then.45
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc, %if.end.49
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %bytes, align 4
  %cmp51 = icmp slt i32 %73, %74
  br i1 %cmp51, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.50
  %75 = load i32, i32* %xpixel2, align 4
  %76 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %75, %76
  %idxprom = sext i32 %add54 to i64
  %77 = load i8*, i8** %cur_row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %77, i64 %idxprom
  %78 = load i8, i8* %arrayidx, align 1
  %79 = load i32, i32* %xpixel1, align 4
  %80 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %79, %80
  %idxprom56 = sext i32 %add55 to i64
  %81 = load i8*, i8** %d, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %81, i64 %idxprom56
  store i8 %78, i8* %arrayidx57, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.53
  %82 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %82, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.50

for.end:                                          ; preds = %for.cond.50
  br label %if.end.73

if.else.59:                                       ; preds = %for.body.35
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.70, %if.else.59
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %bytes, align 4
  %cmp61 = icmp slt i32 %83, %84
  br i1 %cmp61, label %for.body.63, label %for.end.72

for.body.63:                                      ; preds = %for.cond.60
  %85 = load i32, i32* %xpixel1, align 4
  %86 = load i32, i32* %i, align 4
  %add64 = add nsw i32 %85, %86
  %idxprom65 = sext i32 %add64 to i64
  %87 = load i8*, i8** %cur_row, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %87, i64 %idxprom65
  %88 = load i8, i8* %arrayidx66, align 1
  %89 = load i32, i32* %xpixel1, align 4
  %90 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %89, %90
  %idxprom68 = sext i32 %add67 to i64
  %91 = load i8*, i8** %d, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %91, i64 %idxprom68
  store i8 %88, i8* %arrayidx69, align 1
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.63
  %92 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %92, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.60

for.end.72:                                       ; preds = %for.cond.60
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %for.end
  %93 = load i32, i32* %xoffs, align 4
  %inc74 = add nsw i32 %93, 1
  store i32 %inc74, i32* %xoffs, align 4
  %94 = load i32, i32* %xoffs, align 4
  %95 = load i32, i32* %xhalv, align 4
  %cmp75 = icmp eq i32 %94, %95
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.end.73
  %96 = load i32, i32* %rutbredd, align 4
  %97 = load i32, i32* %xmitt, align 4
  %add78 = add nsw i32 %97, %96
  store i32 %add78, i32* %xmitt, align 4
  %98 = load i32, i32* %xhalv, align 4
  %99 = load i32, i32* %xplus, align 4
  %add79 = add nsw i32 %98, %99
  %sub80 = sub nsw i32 0, %add79
  store i32 %sub80, i32* %xoffs, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.end.73
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %100 = load i32, i32* %col, align 4
  %inc83 = add nsw i32 %100, 1
  store i32 %inc83, i32* %col, align 4
  br label %for.cond.31

for.end.84:                                       ; preds = %for.cond.31
  %101 = load i8*, i8** %dest, align 8
  %102 = load i32, i32* %x1, align 4
  %103 = load i32, i32* %row, align 4
  %104 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %101, i32 %102, i32 %103, i32 %104)
  %105 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool85 = icmp ne %struct._GimpPreview* %105, null
  br i1 %tobool85, label %if.end.94, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.84
  %106 = load i32, i32* %row, align 4
  %rem86 = srem i32 %106, 5
  %cmp87 = icmp eq i32 %rem86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.94

if.then.89:                                       ; preds = %land.lhs.true
  %107 = load i32, i32* %row, align 4
  %conv90 = sitofp i32 %107 to double
  %108 = load i32, i32* %height, align 4
  %conv91 = sitofp i32 %108 to double
  %div92 = fdiv double %conv90, %conv91
  %call93 = call i32 @gimp_progress_update(double %div92)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.89, %land.lhs.true, %for.end.84
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %109 = load i32, i32* %row, align 4
  %inc96 = add nsw i32 %109, 1
  store i32 %inc96, i32* %row, align 4
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  %110 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool98 = icmp ne %struct._GimpPreview* %110, null
  br i1 %tobool98, label %if.then.99, label %if.else.102

if.then.99:                                       ; preds = %for.end.97
  %111 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %112 = bitcast %struct._GimpPreview* %111 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_drawable_preview_get_type() #4
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call100)
  %113 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %113, %struct._GimpPixelRgn* %destPR)
  br label %if.end.108

if.else.102:                                      ; preds = %for.end.97
  %call103 = call i32 @gimp_progress_update(double 1.000000e+00)
  %114 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %114)
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id104 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %115, i32 0, i32 0
  %116 = load i32, i32* %drawable_id104, align 4
  %call105 = call i32 @gimp_drawable_merge_shadow(i32 %116, i32 1)
  %117 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id106 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %117, i32 0, i32 0
  %118 = load i32, i32* %drawable_id106, align 4
  %119 = load i32, i32* %x1, align 4
  %120 = load i32, i32* %y1, align 4
  %121 = load i32, i32* %width, align 4
  %122 = load i32, i32* %height, align 4
  %call107 = call i32 @gimp_drawable_update(i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.102, %if.then.99
  %123 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %123)
  %124 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %124)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

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

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @glasstile_size_changed(%struct._GtkObject* %adj, i8* %data) #0 {
entry:
  %adj.addr = alloca %struct._GtkObject*, align 8
  %data.addr = alloca i8*, align 8
  %gv = alloca %struct.GlassChainedValues*, align 8
  store %struct._GtkObject* %adj, %struct._GtkObject** %adj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GlassChainedValues*
  store %struct.GlassChainedValues* %1, %struct.GlassChainedValues** %gv, align 8
  %2 = load %struct._GtkObject*, %struct._GtkObject** %adj.addr, align 8
  %3 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %xadj = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %3, i32 0, i32 1
  %4 = load %struct._GtkObject*, %struct._GtkObject** %xadj, align 8
  %cmp = icmp eq %struct._GtkObject* %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %xadj1 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %5, i32 0, i32 1
  %6 = load %struct._GtkObject*, %struct._GtkObject** %xadj1, align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkAdjustment*
  %9 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %gval = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %9, i32 0, i32 0
  %10 = load %struct.GlassValues*, %struct.GlassValues** %gval, align 8
  %xblock = getelementptr inbounds %struct.GlassValues, %struct.GlassValues* %10, i32 0, i32 0
  %11 = bitcast i32* %xblock to i8*
  call void @gimp_int_adjustment_update(%struct._GtkAdjustment* %8, i8* %11)
  %12 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %gval3 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %12, i32 0, i32 0
  %13 = load %struct.GlassValues*, %struct.GlassValues** %gval3, align 8
  %constrain = getelementptr inbounds %struct.GlassValues, %struct.GlassValues* %13, i32 0, i32 2
  %14 = load i32, i32* %constrain, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %15 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %yadj = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %15, i32 0, i32 2
  %16 = load %struct._GtkObject*, %struct._GtkObject** %yadj, align 8
  %17 = bitcast %struct._GtkObject* %16 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_adjustment_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call5)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkAdjustment*
  %19 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %gval7 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %19, i32 0, i32 0
  %20 = load %struct.GlassValues*, %struct.GlassValues** %gval7, align 8
  %xblock8 = getelementptr inbounds %struct.GlassValues, %struct.GlassValues* %20, i32 0, i32 0
  %21 = load i32, i32* %xblock8, align 4
  %conv = sitofp i32 %21 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %18, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.29

if.else:                                          ; preds = %entry
  %22 = load %struct._GtkObject*, %struct._GtkObject** %adj.addr, align 8
  %23 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %yadj9 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %23, i32 0, i32 2
  %24 = load %struct._GtkObject*, %struct._GtkObject** %yadj9, align 8
  %cmp10 = icmp eq %struct._GtkObject* %22, %24
  br i1 %cmp10, label %if.then.12, label %if.end.28

if.then.12:                                       ; preds = %if.else
  %25 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %yadj13 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %25, i32 0, i32 2
  %26 = load %struct._GtkObject*, %struct._GtkObject** %yadj13, align 8
  %27 = bitcast %struct._GtkObject* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_adjustment_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkAdjustment*
  %29 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %gval16 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %29, i32 0, i32 0
  %30 = load %struct.GlassValues*, %struct.GlassValues** %gval16, align 8
  %yblock = getelementptr inbounds %struct.GlassValues, %struct.GlassValues* %30, i32 0, i32 1
  %31 = bitcast i32* %yblock to i8*
  call void @gimp_int_adjustment_update(%struct._GtkAdjustment* %28, i8* %31)
  %32 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %gval17 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %32, i32 0, i32 0
  %33 = load %struct.GlassValues*, %struct.GlassValues** %gval17, align 8
  %constrain18 = getelementptr inbounds %struct.GlassValues, %struct.GlassValues* %33, i32 0, i32 2
  %34 = load i32, i32* %constrain18, align 4
  %tobool19 = icmp ne i32 %34, 0
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.then.12
  %35 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %xadj21 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %35, i32 0, i32 1
  %36 = load %struct._GtkObject*, %struct._GtkObject** %xadj21, align 8
  %37 = bitcast %struct._GtkObject* %36 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_adjustment_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call22)
  %38 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkAdjustment*
  %39 = load %struct.GlassChainedValues*, %struct.GlassChainedValues** %gv, align 8
  %gval24 = getelementptr inbounds %struct.GlassChainedValues, %struct.GlassChainedValues* %39, i32 0, i32 0
  %40 = load %struct.GlassValues*, %struct.GlassValues** %gval24, align 8
  %yblock25 = getelementptr inbounds %struct.GlassValues, %struct.GlassValues* %40, i32 0, i32 1
  %41 = load i32, i32* %yblock25, align 4
  %conv26 = sitofp i32 %41 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %38, double %conv26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  ret void
}

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #1

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @glasstile_chain_toggled(%struct._GtkWidget* %widget, i32* %value) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  %call2 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %2)
  %3 = load i32*, i32** %value.addr, align 8
  store i32 %call2, i32* %3, align 4
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
