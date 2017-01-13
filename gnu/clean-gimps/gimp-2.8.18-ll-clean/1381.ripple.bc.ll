; ModuleID = './plug-ins/common/ripple.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.RippleValues = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GBinding = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.RippleParam_t = type { %struct._GimpPixelFetcher*, i32, i32, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GimpRgnIterator = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [10 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Period: number of pixels for one wave to complete\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"amplitude\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Amplitude: maximum displacement of wave\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"Orientation { ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) }\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Edges { SMEAR (0), WRAP (1), BLANK (2) }\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"waveform\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Waveform { SAWTOOTH (0), SINE (1) }\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Antialias { TRUE, FALSE }\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Tileable { TRUE, FALSE }\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"plug-in-ripple\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Displace pixels in a ripple pattern\00", align 1
@.str.22 = private unnamed_addr constant [146 x i8] c"Ripples the pixels of the specified drawable. Each row or column will be displaced a certain number of pixels coinciding with the given wave form\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Brian Degenhardt <bdegenha@ucsd.edu>\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Brian Degenhardt\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"_Ripple...\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@rvals = internal global %struct.RippleValues { i32 20, i32 5, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0 }, align 4
@.str.31 = private unnamed_addr constant [36 x i8] c"Ripple: period must be at least 1.\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Rippling\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ripple\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Ripple\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"gimp-ripple\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"_Antialiasing\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"_Retain tilability\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"_Horizontal\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"_Vertical\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"Edges\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"_Wrap\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"_Smear\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"_Blank\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"Wave Type\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Saw_tooth\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"S_ine\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"_Period:\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"A_mplitude:\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"Phase _shift:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 10, i32 0, %struct._GimpParamDef* getelementptr inbounds ([10 x %struct._GimpParamDef], [10 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
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
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_tile_cache_ntiles(i64 16)
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
    i32 2, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.RippleValues* @rvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @ripple_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 10
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.45

if.else:                                          ; preds = %sw.bb.9
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  %11 = load i32, i32* %d_int3213, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 1), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  %tobool20 = icmp ne i32 %15, 0
  %cond = select i1 %tobool20, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 2), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 6
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int3223 = bitcast %union._GimpParamData* %data22 to i32*
  %17 = load i32, i32* %d_int3223, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 7
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_int3226 = bitcast %union._GimpParamData* %data25 to i32*
  %19 = load i32, i32* %d_int3226, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 4), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 8
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %21 = load i32, i32* %d_int3229, align 4
  %tobool30 = icmp ne i32 %21, 0
  %cond31 = select i1 %tobool30, i32 1, i32 0
  store i32 %cond31, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 5), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 9
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_int3234 = bitcast %union._GimpParamData* %data33 to i32*
  %23 = load i32, i32* %d_int3234, align 4
  %tobool35 = icmp ne i32 %23, 0
  %cond36 = select i1 %tobool35, i32 1, i32 0
  store i32 %cond36, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 6), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %cmp37 = icmp slt i32 %24, 1
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.else
  %call39 = call i32 @gimp_message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  store i32 1, i32* %status, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.else
  %25 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %cmp41 = icmp slt i32 %25, 0
  br i1 %cmp41, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %26 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %cmp42 = icmp sgt i32 %26, 2
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false, %if.end.40
  store i32 1, i32* %status, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %lor.lhs.false
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.10
  br label %sw.epilog

sw.bb.46:                                         ; preds = %do.end
  %call47 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.RippleValues* @rvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.46, %if.end.45, %if.end
  %27 = load i32, i32* %status, align 4
  %cmp48 = icmp eq i32 %27, 3
  br i1 %cmp48, label %if.then.49, label %if.end.70

if.then.49:                                       ; preds = %sw.epilog
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 0
  %29 = load i32, i32* %drawable_id, align 4
  %call50 = call i32 @gimp_drawable_is_rgb(i32 %29)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.56, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.then.49
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id53 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 0
  %31 = load i32, i32* %drawable_id53, align 4
  %call54 = call i32 @gimp_drawable_is_gray(i32 %31)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.68

if.then.56:                                       ; preds = %lor.lhs.false.52, %if.then.49
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)) #4
  %call58 = call i32 @gimp_progress_init(i8* %call57)
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @ripple(%struct._GimpDrawable* %32, %struct._GimpPreview* null)
  %call59 = call i32 @gimp_progress_update(double 1.000000e+00)
  %33 = load i32, i32* %run_mode, align 4
  %cmp60 = icmp ne i32 %33, 1
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.56
  %call62 = call i32 @gimp_displays_flush()
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.then.56
  %34 = load i32, i32* %run_mode, align 4
  %cmp64 = icmp eq i32 %34, 0
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %call66 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.RippleValues* @rvals to i8*), i32 32)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.63
  br label %if.end.69

if.else.68:                                       ; preds = %lor.lhs.false.52
  store i32 0, i32* %status, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.67
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %sw.epilog
  %35 = load i32, i32* %status, align 4
  store i32 %35, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %36)
  br label %return

return:                                           ; preds = %if.end.70, %if.then
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
define internal i32 @ripple_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %toggle_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %horizontal = alloca %struct._GtkWidget*, align 8
  %vertical = alloca %struct._GtkWidget*, align 8
  %wrap = alloca %struct._GtkWidget*, align 8
  %smear = alloca %struct._GtkWidget*, align 8
  %blank = alloca %struct._GtkWidget*, align 8
  %sawtooth = alloca %struct._GtkWidget*, align 8
  %sine = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 -5, i8* null)
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
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @ripple to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 12)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %31, i32 12)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #4
  %call26 = call %struct._GtkWidget* @gimp_frame_new(i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %frame, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %38, %struct._GtkWidget* %39, i32 0, i32 1, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %toggle_vbox, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %43, %struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0)) #4
  %call33 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %toggle, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call34)
  %48 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call36)
  %52 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %53 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %52, i32 %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %60, void (i8*, %struct._GClosure*)* null, i32 2)
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0)) #4
  %call41 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call40)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %toggle, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_vbox, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call42)
  %63 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %63, %struct._GtkWidget* %64, i32 0, i32 0, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_toggle_button_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call44)
  %67 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkToggleButton*
  %68 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 6), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %67, i32 %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 2)
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0)) #4
  %76 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 2), align 4
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0)) #4
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0)) #4
  %call51 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call48, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 2) to i8*), i32 %76, i8* %call49, i32 0, %struct._GtkWidget** %horizontal, i8* %call50, i32 1, %struct._GtkWidget** %vertical, i8* null)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %frame, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call52)
  %79 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %79, %struct._GtkWidget* %80, i32 1, i32 2, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %horizontal, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 2)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %vertical, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %89, void (i8*, %struct._GClosure*)* null, i32 2)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)) #4
  %90 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0)) #4
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)) #4
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0)) #4
  %call60 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call56, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3) to i8*), i32 %90, i8* %call57, i32 1, %struct._GtkWidget** %wrap, i8* %call58, i32 0, %struct._GtkWidget** %smear, i8* %call59, i32 2, %struct._GtkWidget** %blank, i8* null)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %frame, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call61)
  %93 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %93, %struct._GtkWidget* %94, i32 0, i32 1, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %99 = bitcast %struct._GtkWidget* %98 to i8*
  %call63 = call %struct._GBinding* @g_object_bind_property(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 6)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %103, void (i8*, %struct._GClosure*)* null, i32 2)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %smear, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 2)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %blank, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 2)
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0)) #4
  %112 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 4), align 4
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0)) #4
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)) #4
  %call70 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call67, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 4) to i8*), i32 %112, i8* %call68, i32 0, %struct._GtkWidget** %sawtooth, i8* %call69, i32 1, %struct._GtkWidget** %sine, i8* null)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %frame, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call71)
  %115 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %115, %struct._GtkWidget* %116, i32 1, i32 2, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %sawtooth, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %121 = bitcast %struct._GtkWidget* %120 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %121, void (i8*, %struct._GClosure*)* null, i32 2)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %sine, align 8
  %123 = bitcast %struct._GtkWidget* %122 to i8*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %125 = bitcast %struct._GtkWidget* %124 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %125, void (i8*, %struct._GClosure*)* null, i32 2)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %call75 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %table, align 8
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call76)
  %129 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %129, i32 6)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_table_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call78)
  %132 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %132, i32 6)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call80)
  %135 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %136, i32 0, i32 0, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call82)
  %139 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0)) #4
  %140 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %140 to double
  %call85 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %139, i32 0, i32 0, i8* %call84, i32 200, i32 0, double %conv, double 1.000000e+00, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call85, %struct._GtkObject** %scale_data, align 8
  %141 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %142 = bitcast %struct._GtkObject* %141 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.RippleValues* @rvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %143 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %144 = bitcast %struct._GtkObject* %143 to i8*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %146 = bitcast %struct._GtkWidget* %145 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 2)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call88)
  %149 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0)) #4
  %150 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 1), align 4
  %conv91 = sitofp i32 %150 to double
  %call92 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %149, i32 0, i32 1, i8* %call90, i32 200, i32 0, double %conv91, double 0.000000e+00, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call92, %struct._GtkObject** %scale_data, align 8
  %151 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %152 = bitcast %struct._GtkObject* %151 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %153 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %154 = bitcast %struct._GtkObject* %153 to i8*
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %156 = bitcast %struct._GtkWidget* %155 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %156, void (i8*, %struct._GClosure*)* null, i32 2)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call95)
  %159 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0)) #4
  %160 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 7), align 4
  %conv98 = sitofp i32 %160 to double
  %call99 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %159, i32 0, i32 2, i8* %call97, i32 200, i32 0, double %conv98, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call99, %struct._GtkObject** %scale_data, align 8
  %161 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %162 = bitcast %struct._GtkObject* %161 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %163 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %164 = bitcast %struct._GtkObject* %163 to i8*
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %166 = bitcast %struct._GtkWidget* %165 to i8*
  %call101 = call i64 @g_signal_connect_data(i8* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %166, void (i8*, %struct._GClosure*)* null, i32 2)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %167)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %168)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %169)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_dialog_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call102)
  %172 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpDialog*
  %call104 = call i32 @gimp_dialog_run(%struct._GimpDialog* %172)
  %cmp = icmp eq i32 %call104, -5
  %conv105 = zext i1 %cmp to i32
  store i32 %conv105, i32* %run, align 4
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %173)
  %174 = load i32, i32* %run, align 4
  ret i32 %174
}

declare i32 @gimp_message(i8*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ripple(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %param = alloca %struct.RippleParam_t, align 8
  %edges = alloca i32, align 4
  %period = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %d = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %width18 = alloca i32, align 4
  %height19 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %iter = alloca %struct._GimpRgnIterator*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %0, i32 0)
  %pft = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 0
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_has_alpha(i32 %2)
  %has_alpha = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 3
  store i32 %call1, i32* %has_alpha, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %width2 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 1
  store i32 %4, i32* %width2, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  %height3 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 2
  store i32 %6, i32* %height3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  store i32 %7, i32* %edges, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  store i32 %8, i32* %period, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 6), align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %width4 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 1
  %10 = load i32, i32* %width4, align 4
  %width5 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 1
  %11 = load i32, i32* %width5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %div = sdiv i32 %11, %12
  %div6 = sdiv i32 %10, %div
  %13 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %13, 0
  %conv = zext i1 %cmp to i32
  %mul = mul nsw i32 %div6, %conv
  %height7 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 2
  %14 = load i32, i32* %height7, align 4
  %height8 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 2
  %15 = load i32, i32* %height8, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %div9 = sdiv i32 %15, %16
  %div10 = sdiv i32 %14, %div9
  %17 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 2), align 4
  %cmp11 = icmp eq i32 %17, 1
  %conv12 = zext i1 %cmp11 to i32
  %mul13 = mul nsw i32 %div10, %conv12
  %add = add nsw i32 %mul, %mul13
  store i32 %add, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool14 = icmp ne %struct._GimpPreview* %18, null
  br i1 %tobool14, label %if.then.15, label %if.else.42

if.then.15:                                       ; preds = %if.end
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id16, align 4
  %call17 = call i32 @gimp_drawable_bpp(i32 %20)
  store i32 %call17, i32* %bpp, align 4
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %21, i32* %x1, i32* %y1)
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %22, i32* %width18, i32* %height19)
  %23 = load i32, i32* %width18, align 4
  %24 = load i32, i32* %height19, align 4
  %mul20 = mul nsw i32 %23, %24
  %25 = load i32, i32* %bpp, align 4
  %mul21 = mul nsw i32 %mul20, %25
  %conv22 = sext i32 %mul21 to i64
  %call23 = call noalias i8* @g_malloc_n(i64 %conv22, i64 1)
  store i8* %call23, i8** %buffer, align 8
  store i8* %call23, i8** %d, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.then.15
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %height19, align 4
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %width18, align 4
  %cmp27 = icmp slt i32 %28, %29
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %30 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 2), align 4
  %cmp30 = icmp eq i32 %30, 1
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.body.29
  %31 = load i32, i32* %x1, align 4
  %32 = load i32, i32* %x, align 4
  %add33 = add nsw i32 %31, %32
  %33 = load i32, i32* %y1, align 4
  %34 = load i32, i32* %y, align 4
  %add34 = add nsw i32 %33, %34
  %35 = load i8*, i8** %d, align 8
  %36 = load i32, i32* %bpp, align 4
  %37 = bitcast %struct.RippleParam_t* %param to i8*
  call void @ripple_vertical(i32 %add33, i32 %add34, i8* %35, i32 %36, i8* %37)
  br label %if.end.37

if.else:                                          ; preds = %for.body.29
  %38 = load i32, i32* %x1, align 4
  %39 = load i32, i32* %x, align 4
  %add35 = add nsw i32 %38, %39
  %40 = load i32, i32* %y1, align 4
  %41 = load i32, i32* %y, align 4
  %add36 = add nsw i32 %40, %41
  %42 = load i8*, i8** %d, align 8
  %43 = load i32, i32* %bpp, align 4
  %44 = bitcast %struct.RippleParam_t* %param to i8*
  call void @ripple_horizontal(i32 %add35, i32 %add36, i8* %42, i32 %43, i8* %44)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.32
  %45 = load i32, i32* %bpp, align 4
  %46 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %47 = load i32, i32* %x, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %48 = load i32, i32* %y, align 4
  %inc39 = add nsw i32 %48, 1
  store i32 %inc39, i32* %y, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %49 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %50 = load i8*, i8** %buffer, align 8
  %51 = load i32, i32* %width18, align 4
  %52 = load i32, i32* %bpp, align 4
  %mul41 = mul nsw i32 %51, %52
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %49, i8* %50, i32 %mul41)
  %53 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %53)
  br label %if.end.46

if.else.42:                                       ; preds = %if.end
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call43 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %54, i32 0)
  store %struct._GimpRgnIterator* %call43, %struct._GimpRgnIterator** %iter, align 8
  %55 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 2), align 4
  %cmp44 = icmp eq i32 %56, 1
  %cond = select i1 %cmp44, void (i32, i32, i8*, i32, i8*)* @ripple_vertical, void (i32, i32, i8*, i32, i8*)* @ripple_horizontal
  %57 = bitcast %struct.RippleParam_t* %param to i8*
  call void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator* %55, void (i32, i32, i8*, i32, i8*)* %cond, i8* %57)
  %58 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %58)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.42, %for.end.40
  %59 = load i32, i32* %edges, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %60 = load i32, i32* %period, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %pft47 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %param, i32 0, i32 0
  %61 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft47, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %61)
  ret void
}

declare i32 @gimp_progress_update(double) #1

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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @ripple_vertical(i32 %x, i32 %y, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.RippleParam_t*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %height = alloca i32, align 4
  %pixel = alloca [2 x [4 x i8]], align 1
  %needy = alloca double, align 8
  %yi = alloca i32, align 4
  %yi_a = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.RippleParam_t*
  store %struct.RippleParam_t* %1, %struct.RippleParam_t** %param, align 8
  %2 = load %struct.RippleParam_t*, %struct.RippleParam_t** %param, align 8
  %pft1 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %2, i32 0, i32 0
  %3 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft1, align 8
  store %struct._GimpPixelFetcher* %3, %struct._GimpPixelFetcher** %pft, align 8
  %4 = load %struct.RippleParam_t*, %struct.RippleParam_t** %param, align 8
  %height2 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %4, i32 0, i32 2
  %5 = load i32, i32* %height2, align 4
  store i32 %5, i32* %height, align 4
  %6 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %x.addr, align 4
  %call = call double @displace_amount(i32 %7)
  %add = fadd double %conv, %call
  store double %add, double* %needy, align 8
  %8 = load double, double* %needy, align 8
  %call3 = call double @floor(double %8) #5
  %conv4 = fptosi double %call3 to i32
  store i32 %conv4, i32* %yi, align 4
  %9 = load i32, i32* %yi, align 4
  %add5 = add nsw i32 %9, 1
  store i32 %add5, i32* %yi_a, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load double, double* %needy, align 8
  %12 = load i32, i32* %height, align 4
  %conv7 = sitofp i32 %12 to double
  %call8 = call double @fmod(double %11, double %conv7) #4
  store double %call8, double* %needy, align 8
  %13 = load double, double* %needy, align 8
  %cmp9 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %14 = load i32, i32* %height, align 4
  %conv12 = sitofp i32 %14 to double
  %15 = load double, double* %needy, align 8
  %add13 = fadd double %15, %conv12
  store double %add13, double* %needy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %16 = load i32, i32* %yi, align 4
  %17 = load i32, i32* %height, align 4
  %rem = srem i32 %16, %17
  store i32 %rem, i32* %yi, align 4
  %18 = load i32, i32* %yi, align 4
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %19 = load i32, i32* %height, align 4
  %20 = load i32, i32* %yi, align 4
  %add17 = add nsw i32 %20, %19
  store i32 %add17, i32* %yi, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end
  %21 = load i32, i32* %yi_a, align 4
  %22 = load i32, i32* %height, align 4
  %rem19 = srem i32 %21, %22
  store i32 %rem19, i32* %yi_a, align 4
  br label %if.end.63

if.else:                                          ; preds = %entry
  %23 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %cmp20 = icmp eq i32 %23, 0
  br i1 %cmp20, label %if.then.22, label %if.end.62

if.then.22:                                       ; preds = %if.else
  %24 = load double, double* %needy, align 8
  %25 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %25, 1
  %conv23 = sitofp i32 %sub to double
  %cmp24 = fcmp ogt double %24, %conv23
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  %26 = load i32, i32* %height, align 4
  %sub26 = sub nsw i32 %26, 1
  %conv27 = sitofp i32 %sub26 to double
  br label %cond.end.32

cond.false:                                       ; preds = %if.then.22
  %27 = load double, double* %needy, align 8
  %cmp28 = fcmp olt double %27, 0.000000e+00
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %28 = load double, double* %needy, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond = phi double [ 0.000000e+00, %cond.true.30 ], [ %28, %cond.false.31 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end, %cond.true
  %cond33 = phi double [ %conv27, %cond.true ], [ %cond, %cond.end ]
  store double %cond33, double* %needy, align 8
  %29 = load i32, i32* %yi, align 4
  %30 = load i32, i32* %height, align 4
  %sub34 = sub nsw i32 %30, 1
  %cmp35 = icmp sgt i32 %29, %sub34
  br i1 %cmp35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end.32
  %31 = load i32, i32* %height, align 4
  %sub38 = sub nsw i32 %31, 1
  br label %cond.end.46

cond.false.39:                                    ; preds = %cond.end.32
  %32 = load i32, i32* %yi, align 4
  %cmp40 = icmp slt i32 %32, 0
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.39
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.false.39
  %33 = load i32, i32* %yi, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ 0, %cond.true.42 ], [ %33, %cond.false.43 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.37
  %cond47 = phi i32 [ %sub38, %cond.true.37 ], [ %cond45, %cond.end.44 ]
  store i32 %cond47, i32* %yi, align 4
  %34 = load i32, i32* %yi_a, align 4
  %35 = load i32, i32* %height, align 4
  %sub48 = sub nsw i32 %35, 1
  %cmp49 = icmp sgt i32 %34, %sub48
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.end.46
  %36 = load i32, i32* %height, align 4
  %sub52 = sub nsw i32 %36, 1
  br label %cond.end.60

cond.false.53:                                    ; preds = %cond.end.46
  %37 = load i32, i32* %yi_a, align 4
  %cmp54 = icmp slt i32 %37, 0
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.false.53
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.false.53
  %38 = load i32, i32* %yi_a, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ 0, %cond.true.56 ], [ %38, %cond.false.57 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %cond.true.51
  %cond61 = phi i32 [ %sub52, %cond.true.51 ], [ %cond59, %cond.end.58 ]
  store i32 %cond61, i32* %yi_a, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %cond.end.60, %if.else
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.18
  %39 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then.64, label %if.else.87

if.then.64:                                       ; preds = %if.end.63
  %40 = load i32, i32* %yi, align 4
  %cmp65 = icmp sge i32 %40, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else.70

land.lhs.true:                                    ; preds = %if.then.64
  %41 = load i32, i32* %yi, align 4
  %42 = load i32, i32* %height, align 4
  %cmp67 = icmp slt i32 %41, %42
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %land.lhs.true
  %43 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %44 = load i32, i32* %x.addr, align 4
  %45 = load i32, i32* %yi, align 4
  %arrayidx = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %43, i32 %44, i32 %45, i8* %arraydecay)
  br label %if.end.72

if.else.70:                                       ; preds = %land.lhs.true, %if.then.64
  %arrayidx71 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 0
  %46 = bitcast [4 x i8]* %arrayidx71 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 4, i32 1, i1 false)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.69
  %47 = load i32, i32* %yi_a, align 4
  %cmp73 = icmp sge i32 %47, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.81

land.lhs.true.75:                                 ; preds = %if.end.72
  %48 = load i32, i32* %yi_a, align 4
  %49 = load i32, i32* %height, align 4
  %cmp76 = icmp slt i32 %48, %49
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %land.lhs.true.75
  %50 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %51 = load i32, i32* %x.addr, align 4
  %52 = load i32, i32* %yi_a, align 4
  %arrayidx79 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 1
  %arraydecay80 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx79, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %50, i32 %51, i32 %52, i8* %arraydecay80)
  br label %if.end.83

if.else.81:                                       ; preds = %land.lhs.true.75, %if.end.72
  %arrayidx82 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 1
  %53 = bitcast [4 x i8]* %arrayidx82 to i8*
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 4, i32 1, i1 false)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.78
  %54 = load i8*, i8** %dest.addr, align 8
  %arraydecay84 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i32 0
  %55 = load double, double* %needy, align 8
  %56 = load i32, i32* %yi, align 4
  %conv85 = sitofp i32 %56 to double
  %sub86 = fsub double %55, %conv85
  %57 = load i32, i32* %bpp.addr, align 4
  %58 = load %struct.RippleParam_t*, %struct.RippleParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %58, i32 0, i32 3
  %59 = load i32, i32* %has_alpha, align 4
  call void @average_two_pixels(i8* %54, [4 x i8]* %arraydecay84, double %sub86, i32 %57, i32 %59)
  br label %if.end.97

if.else.87:                                       ; preds = %if.end.63
  %60 = load i32, i32* %yi, align 4
  %cmp88 = icmp sge i32 %60, 0
  br i1 %cmp88, label %land.lhs.true.90, label %if.else.94

land.lhs.true.90:                                 ; preds = %if.else.87
  %61 = load i32, i32* %yi, align 4
  %62 = load i32, i32* %height, align 4
  %cmp91 = icmp slt i32 %61, %62
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %land.lhs.true.90
  %63 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %64 = load i32, i32* %x.addr, align 4
  %65 = load i32, i32* %yi, align 4
  %66 = load i8*, i8** %dest.addr, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %63, i32 %64, i32 %65, i8* %66)
  br label %if.end.96

if.else.94:                                       ; preds = %land.lhs.true.90, %if.else.87
  %67 = load i8*, i8** %dest.addr, align 8
  %68 = load i32, i32* %bpp.addr, align 4
  %conv95 = sext i32 %68 to i64
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 %conv95, i32 1, i1 false)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.83
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ripple_horizontal(i32 %x, i32 %y, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.RippleParam_t*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %width = alloca i32, align 4
  %pixel = alloca [2 x [4 x i8]], align 1
  %needx = alloca double, align 8
  %xi = alloca i32, align 4
  %xi_a = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.RippleParam_t*
  store %struct.RippleParam_t* %1, %struct.RippleParam_t** %param, align 8
  %2 = load %struct.RippleParam_t*, %struct.RippleParam_t** %param, align 8
  %pft1 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %2, i32 0, i32 0
  %3 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft1, align 8
  store %struct._GimpPixelFetcher* %3, %struct._GimpPixelFetcher** %pft, align 8
  %4 = load %struct.RippleParam_t*, %struct.RippleParam_t** %param, align 8
  %width2 = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %4, i32 0, i32 1
  %5 = load i32, i32* %width2, align 4
  store i32 %5, i32* %width, align 4
  %6 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %y.addr, align 4
  %call = call double @displace_amount(i32 %7)
  %add = fadd double %conv, %call
  store double %add, double* %needx, align 8
  %8 = load double, double* %needx, align 8
  %call3 = call double @floor(double %8) #5
  %conv4 = fptosi double %call3 to i32
  store i32 %conv4, i32* %xi, align 4
  %9 = load i32, i32* %xi, align 4
  %add5 = add nsw i32 %9, 1
  store i32 %add5, i32* %xi_a, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load double, double* %needx, align 8
  %12 = load i32, i32* %width, align 4
  %conv7 = sitofp i32 %12 to double
  %call8 = call double @fmod(double %11, double %conv7) #4
  store double %call8, double* %needx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %13 = load double, double* %needx, align 8
  %cmp9 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %width, align 4
  %conv11 = sitofp i32 %14 to double
  %15 = load double, double* %needx, align 8
  %add12 = fadd double %15, %conv11
  store double %add12, double* %needx, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %xi, align 4
  %17 = load i32, i32* %width, align 4
  %rem = srem i32 %16, %17
  store i32 %rem, i32* %xi, align 4
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.16, %while.end
  %18 = load i32, i32* %xi, align 4
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %while.body.16, label %while.end.18

while.body.16:                                    ; preds = %while.cond.13
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %xi, align 4
  %add17 = add nsw i32 %20, %19
  store i32 %add17, i32* %xi, align 4
  br label %while.cond.13

while.end.18:                                     ; preds = %while.cond.13
  %21 = load i32, i32* %xi, align 4
  %add19 = add nsw i32 %21, 1
  %22 = load i32, i32* %width, align 4
  %rem20 = srem i32 %add19, %22
  store i32 %rem20, i32* %xi_a, align 4
  br label %if.end.63

if.else:                                          ; preds = %entry
  %23 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 3), align 4
  %cmp21 = icmp eq i32 %23, 0
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else
  %24 = load double, double* %needx, align 8
  %25 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %25, 1
  %conv24 = sitofp i32 %sub to double
  %cmp25 = fcmp ogt double %24, %conv24
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %26 = load i32, i32* %width, align 4
  %sub27 = sub nsw i32 %26, 1
  %conv28 = sitofp i32 %sub27 to double
  br label %cond.end.33

cond.false:                                       ; preds = %if.then.23
  %27 = load double, double* %needx, align 8
  %cmp29 = fcmp olt double %27, 0.000000e+00
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.false
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false
  %28 = load double, double* %needx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.31
  %cond = phi double [ 0.000000e+00, %cond.true.31 ], [ %28, %cond.false.32 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi double [ %conv28, %cond.true ], [ %cond, %cond.end ]
  store double %cond34, double* %needx, align 8
  %29 = load i32, i32* %xi, align 4
  %30 = load i32, i32* %width, align 4
  %sub35 = sub nsw i32 %30, 1
  %cmp36 = icmp sgt i32 %29, %sub35
  br i1 %cmp36, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.end.33
  %31 = load i32, i32* %width, align 4
  %sub39 = sub nsw i32 %31, 1
  br label %cond.end.47

cond.false.40:                                    ; preds = %cond.end.33
  %32 = load i32, i32* %xi, align 4
  %cmp41 = icmp slt i32 %32, 0
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.40
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.false.40
  %33 = load i32, i32* %xi, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi i32 [ 0, %cond.true.43 ], [ %33, %cond.false.44 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.38
  %cond48 = phi i32 [ %sub39, %cond.true.38 ], [ %cond46, %cond.end.45 ]
  store i32 %cond48, i32* %xi, align 4
  %34 = load i32, i32* %xi_a, align 4
  %35 = load i32, i32* %width, align 4
  %sub49 = sub nsw i32 %35, 1
  %cmp50 = icmp sgt i32 %34, %sub49
  br i1 %cmp50, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %cond.end.47
  %36 = load i32, i32* %width, align 4
  %sub53 = sub nsw i32 %36, 1
  br label %cond.end.61

cond.false.54:                                    ; preds = %cond.end.47
  %37 = load i32, i32* %xi_a, align 4
  %cmp55 = icmp slt i32 %37, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.54
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.false.54
  %38 = load i32, i32* %xi_a, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi i32 [ 0, %cond.true.57 ], [ %38, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.52
  %cond62 = phi i32 [ %sub53, %cond.true.52 ], [ %cond60, %cond.end.59 ]
  store i32 %cond62, i32* %xi_a, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.61, %if.else
  br label %if.end.63

if.end.63:                                        ; preds = %if.end, %while.end.18
  %39 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then.64, label %if.else.87

if.then.64:                                       ; preds = %if.end.63
  %40 = load i32, i32* %xi, align 4
  %cmp65 = icmp sge i32 %40, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else.70

land.lhs.true:                                    ; preds = %if.then.64
  %41 = load i32, i32* %xi, align 4
  %42 = load i32, i32* %width, align 4
  %cmp67 = icmp slt i32 %41, %42
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %land.lhs.true
  %43 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %44 = load i32, i32* %xi, align 4
  %45 = load i32, i32* %y.addr, align 4
  %arrayidx = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %43, i32 %44, i32 %45, i8* %arraydecay)
  br label %if.end.72

if.else.70:                                       ; preds = %land.lhs.true, %if.then.64
  %arrayidx71 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 0
  %46 = bitcast [4 x i8]* %arrayidx71 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 4, i32 1, i1 false)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.69
  %47 = load i32, i32* %xi_a, align 4
  %cmp73 = icmp sge i32 %47, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.81

land.lhs.true.75:                                 ; preds = %if.end.72
  %48 = load i32, i32* %xi_a, align 4
  %49 = load i32, i32* %width, align 4
  %cmp76 = icmp slt i32 %48, %49
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %land.lhs.true.75
  %50 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %51 = load i32, i32* %xi_a, align 4
  %52 = load i32, i32* %y.addr, align 4
  %arrayidx79 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 1
  %arraydecay80 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx79, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %50, i32 %51, i32 %52, i8* %arraydecay80)
  br label %if.end.83

if.else.81:                                       ; preds = %land.lhs.true.75, %if.end.72
  %arrayidx82 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i64 1
  %53 = bitcast [4 x i8]* %arrayidx82 to i8*
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 4, i32 1, i1 false)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.78
  %54 = load i8*, i8** %dest.addr, align 8
  %arraydecay84 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %pixel, i32 0, i32 0
  %55 = load double, double* %needx, align 8
  %56 = load i32, i32* %xi, align 4
  %conv85 = sitofp i32 %56 to double
  %sub86 = fsub double %55, %conv85
  %57 = load i32, i32* %bpp.addr, align 4
  %58 = load %struct.RippleParam_t*, %struct.RippleParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.RippleParam_t, %struct.RippleParam_t* %58, i32 0, i32 3
  %59 = load i32, i32* %has_alpha, align 4
  call void @average_two_pixels(i8* %54, [4 x i8]* %arraydecay84, double %sub86, i32 %57, i32 %59)
  br label %if.end.97

if.else.87:                                       ; preds = %if.end.63
  %60 = load i32, i32* %xi, align 4
  %cmp88 = icmp sge i32 %60, 0
  br i1 %cmp88, label %land.lhs.true.90, label %if.else.94

land.lhs.true.90:                                 ; preds = %if.else.87
  %61 = load i32, i32* %xi, align 4
  %62 = load i32, i32* %width, align 4
  %cmp91 = icmp slt i32 %61, %62
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %land.lhs.true.90
  %63 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %64 = load i32, i32* %xi, align 4
  %65 = load i32, i32* %y.addr, align 4
  %66 = load i8*, i8** %dest.addr, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %63, i32 %64, i32 %65, i8* %66)
  br label %if.end.96

if.else.94:                                       ; preds = %land.lhs.true.90, %if.else.87
  %67 = load i8*, i8** %dest.addr, align 8
  %68 = load i32, i32* %bpp.addr, align 4
  %conv95 = sext i32 %68 to i64
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 %conv95, i32 1, i1 false)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.83
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator*, void (i32, i32, i8*, i32, i8*)*, i8*) #1

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

; Function Attrs: nounwind uwtable
define internal double @displace_amount(i32 %location) #0 {
entry:
  %retval = alloca double, align 8
  %location.addr = alloca i32, align 4
  %phi = alloca double, align 8
  %lambda = alloca double, align 8
  store i32 %location, i32* %location.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 7), align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 3.600000e+02
  store double %div, double* %phi, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 4), align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 1), align 4
  %conv1 = sitofp i32 %2 to double
  %3 = load i32, i32* %location.addr, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %conv3 = sitofp i32 %4 to double
  %div4 = fdiv double %conv2, %conv3
  %5 = load double, double* %phi, align 8
  %sub = fsub double %div4, %5
  %mul = fmul double 0x401921FB54442D18, %sub
  %call = call double @sin(double %mul) #4
  %mul5 = fmul double %conv1, %call
  store double %mul5, double* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %6 = load i32, i32* %location.addr, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %rem = srem i32 %6, %7
  %conv7 = sitofp i32 %rem to double
  %8 = load double, double* %phi, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %conv8 = sitofp i32 %9 to double
  %mul9 = fmul double %8, %conv8
  %sub10 = fsub double %conv7, %mul9
  store double %sub10, double* %lambda, align 8
  %10 = load double, double* %lambda, align 8
  %cmp = fcmp olt double %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.6
  %11 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %conv12 = sitofp i32 %11 to double
  %12 = load double, double* %lambda, align 8
  %add = fadd double %12, %conv12
  store double %add, double* %lambda, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.6
  %13 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 1), align 4
  %conv13 = sitofp i32 %13 to double
  %14 = load double, double* %lambda, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.RippleValues, %struct.RippleValues* @rvals, i32 0, i32 0), align 4
  %conv14 = sitofp i32 %15 to double
  %div15 = fdiv double %14, %conv14
  %mul16 = fmul double %div15, 4.000000e+00
  %sub17 = fsub double %mul16, 2.000000e+00
  %call18 = call double @fabs(double %sub17) #5
  %sub19 = fsub double %call18, 1.000000e+00
  %mul20 = fmul double %conv13, %sub19
  store double %mul20, double* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end, %sw.bb
  %16 = load double, double* %retval
  ret double %16
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @fmod(double, double) #2

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @average_two_pixels(i8* %dest, [4 x i8]* %pixels, double %x, i32 %bpp, i32 %has_alpha) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca [4 x i8]*, align 8
  %x.addr = alloca double, align 8
  %bpp.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %xa0 = alloca double, align 8
  %xa1 = alloca double, align 8
  %alpha = alloca double, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store [4 x i8]* %pixels, [4 x i8]** %pixels.addr, align 8
  store double %x, double* %x.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %2 = load [4 x i8]*, [4 x i8]** %pixels.addr, align 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double, double* %x.addr, align 8
  %sub3 = fsub double 1.000000e+00, %4
  %mul = fmul double %conv2, %sub3
  store double %mul, double* %xa0, align 8
  %5 = load i32, i32* %bpp.addr, align 4
  %sub4 = sub nsw i32 %5, 1
  %idxprom5 = sext i32 %sub4 to i64
  %6 = load [4 x i8]*, [4 x i8]** %pixels.addr, align 8
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 1
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %conv9 = sitofp i32 %conv8 to double
  %8 = load double, double* %x.addr, align 8
  %mul10 = fmul double %conv9, %8
  store double %mul10, double* %xa1, align 8
  %9 = load double, double* %xa0, align 8
  %10 = load double, double* %xa1, align 8
  %add = fadd double %9, %10
  store double %add, double* %alpha, align 8
  %11 = load double, double* %alpha, align 8
  %tobool11 = fcmp une double %11, 0.000000e+00
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %12 = load i32, i32* %b, align 4
  %13 = load i32, i32* %bpp.addr, align 4
  %sub13 = sub nsw i32 %13, 1
  %cmp = icmp slt i32 %12, %sub13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load double, double* %xa0, align 8
  %15 = load i32, i32* %b, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load [4 x i8]*, [4 x i8]** %pixels.addr, align 8
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx16, i32 0, i64 %idxprom15
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  %conv19 = sitofp i32 %conv18 to double
  %mul20 = fmul double %14, %conv19
  %18 = load double, double* %xa1, align 8
  %19 = load i32, i32* %b, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load [4 x i8]*, [4 x i8]** %pixels.addr, align 8
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 1
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx22, i32 0, i64 %idxprom21
  %21 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %21 to i32
  %conv25 = sitofp i32 %conv24 to double
  %mul26 = fmul double %18, %conv25
  %add27 = fadd double %mul20, %mul26
  %22 = load double, double* %alpha, align 8
  %div = fdiv double %add27, %22
  %conv28 = fptoui double %div to i8
  %23 = load i32, i32* %b, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %b, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %26 = load double, double* %alpha, align 8
  %conv31 = fptoui double %26 to i8
  %27 = load i32, i32* %bpp.addr, align 4
  %sub32 = sub nsw i32 %27, 1
  %idxprom33 = sext i32 %sub32 to i64
  %28 = load i8*, i8** %dest.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  store i8 %conv31, i8* %arrayidx34, align 1
  br label %if.end.59

if.else:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.56, %if.else
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %bpp.addr, align 4
  %cmp36 = icmp slt i32 %29, %30
  br i1 %cmp36, label %for.body.38, label %for.end.58

for.body.38:                                      ; preds = %for.cond.35
  %31 = load double, double* %x.addr, align 8
  %sub39 = fsub double 1.000000e+00, %31
  %32 = load i32, i32* %b, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load [4 x i8]*, [4 x i8]** %pixels.addr, align 8
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx41, i32 0, i64 %idxprom40
  %34 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %34 to i32
  %conv44 = sitofp i32 %conv43 to double
  %mul45 = fmul double %sub39, %conv44
  %35 = load double, double* %x.addr, align 8
  %36 = load i32, i32* %b, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load [4 x i8]*, [4 x i8]** %pixels.addr, align 8
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i64 1
  %arrayidx48 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx47, i32 0, i64 %idxprom46
  %38 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %38 to i32
  %conv50 = sitofp i32 %conv49 to double
  %mul51 = fmul double %35, %conv50
  %add52 = fadd double %mul45, %mul51
  %conv53 = fptoui double %add52 to i8
  %39 = load i32, i32* %b, align 4
  %idxprom54 = sext i32 %39 to i64
  %40 = load i8*, i8** %dest.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %40, i64 %idxprom54
  store i8 %conv53, i8* %arrayidx55, align 1
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.38
  %41 = load i32, i32* %b, align 4
  %inc57 = add nsw i32 %41, 1
  store i32 %inc57, i32* %b, align 4
  br label %for.cond.35

for.end.58:                                       ; preds = %for.cond.35
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %if.end
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
