; ModuleID = './plug-ins/common/color-exchange.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.myParams = type { %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB }
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
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
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
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [12 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"from-red\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Red value (from)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"from-green\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Green value (from)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"from-blue\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Blue value (from)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"to-red\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Red value (to)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"to-green\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Green value (to)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"to-blue\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Blue value (to)\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"red-threshold\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Red threshold\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"green-threshold\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Green threshold\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"blue-threshold\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Blue threshold\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"plug-in-exchange\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Swap one color with another\00", align 1
@.str.26 = private unnamed_addr constant [101 x i8] c"Exchange one color with another, optionally setting a threshold to convert from one shade to another\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"robert@experimental.net\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"June 17th, 1997\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"_Color Exchange...\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"<Image>/Colors/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.32 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@xargs = internal global %struct.myParams { %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 } }, align 8
@.str.34 = private unnamed_addr constant [15 x i8] c"Color Exchange\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"color-exchange\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"gimp-color-exchange\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"Middle-Click Inside Preview to Pick \22From Color\22\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"To Color\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"From Color\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Color Exchange: To Color\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Color Exchange: From Color\00", align 1
@from_colorbutton = internal global %struct._GtkWidget* null, align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"gimp-channel-red\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"_Red:\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"colorbutton\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"R_ed threshold:\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"gimp-channel-green\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"_Green:\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"G_reen threshold:\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"gimp-channel-blue\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"_Blue:\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"B_lue threshold:\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Lock _thresholds\00", align 1
@lock_threshold = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 12, i32 0, %struct._GimpParamDef* getelementptr inbounds ([12 x %struct._GimpParamDef], [12 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0))
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
  %runmode = alloca i32, align 4
  %status = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %runmode, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* %runmode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.10
    i32 1, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* bitcast (%struct.myParams* @xargs to i8*))
  %call8 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @exchange_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end
  %call11 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* bitcast (%struct.myParams* @xargs to i8*))
  %call12 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0))
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 12
  br i1 %cmp, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %sw.bb.13
  store i32 0, i32* %status, align 4
  br label %if.end.41

if.else:                                          ; preds = %sw.bb.13
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data16 to i8*
  %11 = load i8, i8* %d_int8, align 1
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int819 = bitcast %union._GimpParamData* %data18 to i8*
  %13 = load i8, i8* %d_int819, align 1
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int822 = bitcast %union._GimpParamData* %data21 to i8*
  %15 = load i8, i8* %d_int822, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0), i8 zeroext %11, i8 zeroext %13, i8 zeroext %15)
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 6
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_int825 = bitcast %union._GimpParamData* %data24 to i8*
  %17 = load i8, i8* %d_int825, align 1
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 7
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_int828 = bitcast %union._GimpParamData* %data27 to i8*
  %19 = load i8, i8* %d_int828, align 1
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 8
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_int831 = bitcast %union._GimpParamData* %data30 to i8*
  %21 = load i8, i8* %d_int831, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), i8 zeroext %17, i8 zeroext %19, i8 zeroext %21)
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 9
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_int834 = bitcast %union._GimpParamData* %data33 to i8*
  %23 = load i8, i8* %d_int834, align 1
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 10
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_int837 = bitcast %union._GimpParamData* %data36 to i8*
  %25 = load i8, i8* %d_int837, align 1
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 11
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_int840 = bitcast %union._GimpParamData* %data39 to i8*
  %27 = load i8, i8* %d_int840, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2), i8 zeroext %23, i8 zeroext %25, i8 zeroext %27)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.14
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.41, %sw.bb.10, %if.end
  %28 = load i32, i32* %status, align 4
  %cmp42 = icmp eq i32 %28, 3
  br i1 %cmp42, label %if.then.43, label %if.end.62

if.then.43:                                       ; preds = %sw.epilog
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 0
  %30 = load i32, i32* %drawable_id, align 4
  %call44 = call i32 @gimp_drawable_is_rgb(i32 %30)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.60

if.then.46:                                       ; preds = %if.then.43
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0)) #5
  %call48 = call i32 @gimp_progress_init(i8* %call47)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 1
  %32 = load i32, i32* %width, align 4
  %call49 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %32, %call49
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @exchange(%struct._GimpDrawable* %33, %struct._GimpPreview* null)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %34)
  %35 = load i32, i32* %runmode, align 4
  %cmp50 = icmp eq i32 %35, 0
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.46
  %call53 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* bitcast (%struct.myParams* @xargs to i8*), i32 96)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.46
  %36 = load i32, i32* %runmode, align 4
  %cmp55 = icmp ne i32 %36, 1
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %call58 = call i32 @gimp_displays_flush()
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  br label %if.end.61

if.else.60:                                       ; preds = %if.then.43
  store i32 0, i32* %status, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.end.59
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %sw.epilog
  %37 = load i32, i32* %status, align 4
  store i32 %37, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.62, %if.then
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

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal i32 @exchange_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %threshold = alloca %struct._GtkWidget*, align 8
  %colorbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %framenumber = alloca i32, align 4
  %run = alloca i32, align 4
  %vbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %row = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0)) #5
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %21, i32* null)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %preview, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %24, %struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @exchange to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 2)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_preview_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call22)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %33, i32 0, i32 2
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GtkWidget*)* @preview_event_handler to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %call25 = call %struct._GtkWidget* @gimp_color_button_new(i8* null, i32 1, i32 1, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2), i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %threshold, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @color_button_callback to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 2)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %hbox, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call30)
  %48 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call32 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call32, %struct._GtkSizeGroup** %group, align 8
  store i32 0, i32* %framenumber, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %51 = load i32, i32* %framenumber, align 4
  %cmp = icmp slt i32 %51, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %row, align 4
  %52 = load i32, i32* %framenumber, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call33, %cond.true ], [ %call34, %cond.false ]
  %call35 = call %struct._GtkWidget* @gimp_frame_new(i8* %cond)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %frame, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call36)
  %55 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %56, i32 0, i32 0, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %call38 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %vbox, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call39)
  %60 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %60, %struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load i32, i32* %framenumber, align 4
  %tobool41 = icmp ne i32 %63, 0
  %cond42 = select i1 %tobool41, i32 4, i32 8
  %call43 = call %struct._GtkWidget* @gtk_table_new(i32 %cond42, i32 4, i32 0)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %table, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call44)
  %66 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %66, i32 6)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call46)
  %69 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %69, i32 6)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call48)
  %72 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %72, i32 0, i32 12)
  %73 = load i32, i32* %framenumber, align 4
  %tobool50 = icmp ne i32 %73, 0
  br i1 %tobool50, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call51)
  %76 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %76, i32 1, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call53)
  %79 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %79, i32 3, i32 2)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call55)
  %82 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %82, i32 5, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call57)
  %85 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %88 = load i32, i32* %framenumber, align 4
  %tobool59 = icmp ne i32 %88, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %if.end
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0)) #5
  br label %cond.end.64

cond.false.62:                                    ; preds = %if.end
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0)) #5
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.60
  %cond65 = phi i8* [ %call61, %cond.true.60 ], [ %call63, %cond.false.62 ]
  %89 = load i32, i32* %framenumber, align 4
  %tobool66 = icmp ne i32 %89, 0
  %cond67 = select i1 %tobool66, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0)
  %call68 = call %struct._GtkWidget* @gimp_color_button_new(i8* %cond65, i32 64, i32 16, %struct._GimpRGB* %cond67, i32 0)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %colorbutton, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call69)
  %92 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %93 = load i32, i32* %row, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %row, align 4
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %call71 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %92, i32 0, i32 %93, i8* null, float 0.000000e+00, float 0.000000e+00, %struct._GtkWidget* %94, i32 1, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %97 = load i32, i32* %framenumber, align 4
  %tobool72 = icmp ne i32 %97, 0
  %cond73 = select i1 %tobool72, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0)
  %98 = bitcast %struct._GimpRGB* %cond73 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* %98, void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %101 = load i32, i32* %framenumber, align 4
  %tobool75 = icmp ne i32 %101, 0
  %cond76 = select i1 %tobool75, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0)
  %102 = bitcast %struct._GimpRGB* %cond76 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @color_button_callback to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %106, void (i8*, %struct._GClosure*)* null, i32 2)
  %107 = load i32, i32* %framenumber, align 4
  %tobool79 = icmp ne i32 %107, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %cond.end.64
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  store %struct._GtkWidget* %108, %struct._GtkWidget** @from_colorbutton, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %cond.end.64
  %call82 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %image, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_misc_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call83)
  %111 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %111, float 5.000000e-01, float 5.000000e-01)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_table_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call85)
  %114 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkTable*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %116 = load i32, i32* %row, align 4
  %117 = load i32, i32* %row, align 4
  %add = add nsw i32 %117, 1
  %118 = load i32, i32* %framenumber, align 4
  %tobool87 = icmp ne i32 %118, 0
  %cond88 = select i1 %tobool87, i32 0, i32 1
  %add89 = add nsw i32 %add, %cond88
  call void @gtk_table_attach(%struct._GtkTable* %114, %struct._GtkWidget* %115, i32 0, i32 1, i32 %116, i32 %add89, i32 4, i32 4, i32 0, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call90)
  %122 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %123 = load i32, i32* %row, align 4
  %inc92 = add nsw i32 %123, 1
  store i32 %inc92, i32* %row, align 4
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  %124 = load i32, i32* %framenumber, align 4
  %tobool94 = icmp ne i32 %124, 0
  br i1 %tobool94, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %if.end.81
  %125 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1, i32 0), align 8
  br label %cond.end.97

cond.false.96:                                    ; preds = %if.end.81
  %126 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0, i32 0), align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi double [ %125, %cond.true.95 ], [ %126, %cond.false.96 ]
  %call99 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %122, i32 1, i32 %123, i8* %call93, i32 128, i32 0, double %cond98, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call99, %struct._GtkObject** %adj, align 8
  %127 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %128 = bitcast %struct._GtkObject* %127 to %struct._GTypeInstance*
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 80)
  %129 = bitcast %struct._GTypeInstance* %call100 to %struct._GObject*
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  call void @g_object_set_data(%struct._GObject* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* %131)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 80)
  %134 = bitcast %struct._GTypeInstance* %call101 to %struct._GObject*
  %135 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %136 = bitcast %struct._GtkObject* %135 to i8*
  call void @g_object_set_data(%struct._GObject* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* %136)
  %137 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %138 = bitcast %struct._GtkObject* %137 to i8*
  %139 = load i32, i32* %framenumber, align 4
  %tobool102 = icmp ne i32 %139, 0
  %cond103 = select i1 %tobool102, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1, i32 0), double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0, i32 0)
  %140 = bitcast double* %cond103 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %140, void (i8*, %struct._GClosure*)* null, i32 0)
  %141 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %142 = bitcast %struct._GtkObject* %141 to i8*
  %143 = load i32, i32* %framenumber, align 4
  %tobool105 = icmp ne i32 %143, 0
  %cond106 = select i1 %tobool105, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0)
  %144 = bitcast %struct._GimpRGB* %cond106 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @scale_callback to void ()*), i8* %144, void (i8*, %struct._GClosure*)* null, i32 0)
  %145 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %146 = bitcast %struct._GtkObject* %145 to i8*
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %148 = bitcast %struct._GtkWidget* %147 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %148, void (i8*, %struct._GClosure*)* null, i32 2)
  %149 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %150 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %151 = bitcast %struct._GtkObject* %150 to %struct._GTypeInstance*
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 80)
  %152 = bitcast %struct._GTypeInstance* %call109 to %struct._GObject*
  %call110 = call i8* @g_object_get_data(%struct._GObject* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  %153 = bitcast i8* %call110 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %149, %struct._GtkWidget* %153)
  %154 = load i32, i32* %framenumber, align 4
  %tobool111 = icmp ne i32 %154, 0
  br i1 %tobool111, label %if.end.125, label %if.then.112

if.then.112:                                      ; preds = %cond.end.97
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_table_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call113)
  %157 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkTable*
  %158 = load i32, i32* %row, align 4
  %inc115 = add nsw i32 %158, 1
  store i32 %inc115, i32* %row, align 4
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0)) #5
  %159 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2, i32 0), align 8
  %call117 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %157, i32 1, i32 %158, i8* %call116, i32 128, i32 0, double %159, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call117, %struct._GtkObject** %adj, align 8
  %160 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %161 = bitcast %struct._GtkObject* %160 to %struct._GTypeInstance*
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 80)
  %162 = bitcast %struct._GTypeInstance* %call118 to %struct._GObject*
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  call void @g_object_set_data(%struct._GObject* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* %164)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 80)
  %167 = bitcast %struct._GTypeInstance* %call119 to %struct._GObject*
  %168 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %169 = bitcast %struct._GtkObject* %168 to i8*
  call void @g_object_set_data(%struct._GObject* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* %169)
  %170 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %171 = bitcast %struct._GtkObject* %170 to i8*
  %call120 = call i64 @g_signal_connect_data(i8* %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2, i32 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %172 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %173 = bitcast %struct._GtkObject* %172 to i8*
  %call121 = call i64 @g_signal_connect_data(i8* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @scale_callback to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %174 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %175 = bitcast %struct._GtkObject* %174 to i8*
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %177 = bitcast %struct._GtkWidget* %176 to i8*
  %call122 = call i64 @g_signal_connect_data(i8* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %177, void (i8*, %struct._GClosure*)* null, i32 2)
  %178 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %179 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %180 = bitcast %struct._GtkObject* %179 to %struct._GTypeInstance*
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 80)
  %181 = bitcast %struct._GTypeInstance* %call123 to %struct._GObject*
  %call124 = call i8* @g_object_get_data(%struct._GObject* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  %182 = bitcast i8* %call124 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %178, %struct._GtkWidget* %182)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.112, %cond.end.97
  %call126 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call126, %struct._GtkWidget** %image, align 8
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_misc_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call127)
  %185 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %185, float 5.000000e-01, float 5.000000e-01)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_table_get_type() #6
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call129)
  %188 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkTable*
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %190 = load i32, i32* %row, align 4
  %191 = load i32, i32* %row, align 4
  %add131 = add nsw i32 %191, 1
  %192 = load i32, i32* %framenumber, align 4
  %tobool132 = icmp ne i32 %192, 0
  %cond133 = select i1 %tobool132, i32 0, i32 1
  %add134 = add nsw i32 %add131, %cond133
  call void @gtk_table_attach(%struct._GtkTable* %188, %struct._GtkWidget* %189, i32 0, i32 1, i32 %190, i32 %add134, i32 4, i32 4, i32 0, i32 0)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %193)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_table_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call135)
  %196 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkTable*
  %197 = load i32, i32* %row, align 4
  %inc137 = add nsw i32 %197, 1
  store i32 %inc137, i32* %row, align 4
  %call138 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0)) #5
  %198 = load i32, i32* %framenumber, align 4
  %tobool139 = icmp ne i32 %198, 0
  br i1 %tobool139, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %if.end.125
  %199 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1, i32 1), align 8
  br label %cond.end.142

cond.false.141:                                   ; preds = %if.end.125
  %200 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0, i32 1), align 8
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.140
  %cond143 = phi double [ %199, %cond.true.140 ], [ %200, %cond.false.141 ]
  %call144 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %196, i32 1, i32 %197, i8* %call138, i32 128, i32 0, double %cond143, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call144, %struct._GtkObject** %adj, align 8
  %201 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %202 = bitcast %struct._GtkObject* %201 to %struct._GTypeInstance*
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %202, i64 80)
  %203 = bitcast %struct._GTypeInstance* %call145 to %struct._GObject*
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %205 = bitcast %struct._GtkWidget* %204 to i8*
  call void @g_object_set_data(%struct._GObject* %203, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* %205)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 80)
  %208 = bitcast %struct._GTypeInstance* %call146 to %struct._GObject*
  %209 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %210 = bitcast %struct._GtkObject* %209 to i8*
  call void @g_object_set_data(%struct._GObject* %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* %210)
  %211 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %212 = bitcast %struct._GtkObject* %211 to i8*
  %213 = load i32, i32* %framenumber, align 4
  %tobool147 = icmp ne i32 %213, 0
  %cond148 = select i1 %tobool147, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1, i32 1), double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0, i32 1)
  %214 = bitcast double* %cond148 to i8*
  %call149 = call i64 @g_signal_connect_data(i8* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %214, void (i8*, %struct._GClosure*)* null, i32 0)
  %215 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %216 = bitcast %struct._GtkObject* %215 to i8*
  %217 = load i32, i32* %framenumber, align 4
  %tobool150 = icmp ne i32 %217, 0
  %cond151 = select i1 %tobool150, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0)
  %218 = bitcast %struct._GimpRGB* %cond151 to i8*
  %call152 = call i64 @g_signal_connect_data(i8* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @scale_callback to void ()*), i8* %218, void (i8*, %struct._GClosure*)* null, i32 0)
  %219 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %220 = bitcast %struct._GtkObject* %219 to i8*
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %222 = bitcast %struct._GtkWidget* %221 to i8*
  %call153 = call i64 @g_signal_connect_data(i8* %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %222, void (i8*, %struct._GClosure*)* null, i32 2)
  %223 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %224 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %225 = bitcast %struct._GtkObject* %224 to %struct._GTypeInstance*
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 80)
  %226 = bitcast %struct._GTypeInstance* %call154 to %struct._GObject*
  %call155 = call i8* @g_object_get_data(%struct._GObject* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  %227 = bitcast i8* %call155 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %223, %struct._GtkWidget* %227)
  %228 = load i32, i32* %framenumber, align 4
  %tobool156 = icmp ne i32 %228, 0
  br i1 %tobool156, label %if.end.170, label %if.then.157

if.then.157:                                      ; preds = %cond.end.142
  %229 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %230 = bitcast %struct._GtkWidget* %229 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_table_get_type() #6
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %230, i64 %call158)
  %231 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkTable*
  %232 = load i32, i32* %row, align 4
  %inc160 = add nsw i32 %232, 1
  store i32 %inc160, i32* %row, align 4
  %call161 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0)) #5
  %233 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2, i32 1), align 8
  %call162 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %231, i32 1, i32 %232, i8* %call161, i32 128, i32 0, double %233, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call162, %struct._GtkObject** %adj, align 8
  %234 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %235 = bitcast %struct._GtkObject* %234 to %struct._GTypeInstance*
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %235, i64 80)
  %236 = bitcast %struct._GTypeInstance* %call163 to %struct._GObject*
  %237 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %238 = bitcast %struct._GtkWidget* %237 to i8*
  call void @g_object_set_data(%struct._GObject* %236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* %238)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %240 = bitcast %struct._GtkWidget* %239 to %struct._GTypeInstance*
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %240, i64 80)
  %241 = bitcast %struct._GTypeInstance* %call164 to %struct._GObject*
  %242 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %243 = bitcast %struct._GtkObject* %242 to i8*
  call void @g_object_set_data(%struct._GObject* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* %243)
  %244 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %245 = bitcast %struct._GtkObject* %244 to i8*
  %call165 = call i64 @g_signal_connect_data(i8* %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %246 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %247 = bitcast %struct._GtkObject* %246 to i8*
  %call166 = call i64 @g_signal_connect_data(i8* %247, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @scale_callback to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %248 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %249 = bitcast %struct._GtkObject* %248 to i8*
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %251 = bitcast %struct._GtkWidget* %250 to i8*
  %call167 = call i64 @g_signal_connect_data(i8* %249, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %251, void (i8*, %struct._GClosure*)* null, i32 2)
  %252 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %253 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %254 = bitcast %struct._GtkObject* %253 to %struct._GTypeInstance*
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 80)
  %255 = bitcast %struct._GTypeInstance* %call168 to %struct._GObject*
  %call169 = call i8* @g_object_get_data(%struct._GObject* %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  %256 = bitcast i8* %call169 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %252, %struct._GtkWidget* %256)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.157, %cond.end.142
  %call171 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call171, %struct._GtkWidget** %image, align 8
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %258 = bitcast %struct._GtkWidget* %257 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_misc_get_type() #6
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %258, i64 %call172)
  %259 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %259, float 5.000000e-01, float 5.000000e-01)
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %261 = bitcast %struct._GtkWidget* %260 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_table_get_type() #6
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call174)
  %262 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkTable*
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %264 = load i32, i32* %row, align 4
  %265 = load i32, i32* %row, align 4
  %add176 = add nsw i32 %265, 1
  %266 = load i32, i32* %framenumber, align 4
  %tobool177 = icmp ne i32 %266, 0
  %cond178 = select i1 %tobool177, i32 0, i32 1
  %add179 = add nsw i32 %add176, %cond178
  call void @gtk_table_attach(%struct._GtkTable* %262, %struct._GtkWidget* %263, i32 0, i32 1, i32 %264, i32 %add179, i32 4, i32 4, i32 0, i32 0)
  %267 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %267)
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %269 = bitcast %struct._GtkWidget* %268 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_table_get_type() #6
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call180)
  %270 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkTable*
  %271 = load i32, i32* %row, align 4
  %inc182 = add nsw i32 %271, 1
  store i32 %inc182, i32* %row, align 4
  %call183 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0)) #5
  %272 = load i32, i32* %framenumber, align 4
  %tobool184 = icmp ne i32 %272, 0
  br i1 %tobool184, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %if.end.170
  %273 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1, i32 2), align 8
  br label %cond.end.187

cond.false.186:                                   ; preds = %if.end.170
  %274 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0, i32 2), align 8
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.185
  %cond188 = phi double [ %273, %cond.true.185 ], [ %274, %cond.false.186 ]
  %call189 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %270, i32 1, i32 %271, i8* %call183, i32 128, i32 0, double %cond188, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call189, %struct._GtkObject** %adj, align 8
  %275 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %276 = bitcast %struct._GtkObject* %275 to %struct._GTypeInstance*
  %call190 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %276, i64 80)
  %277 = bitcast %struct._GTypeInstance* %call190 to %struct._GObject*
  %278 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %279 = bitcast %struct._GtkWidget* %278 to i8*
  call void @g_object_set_data(%struct._GObject* %277, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* %279)
  %280 = load %struct._GtkWidget*, %struct._GtkWidget** %colorbutton, align 8
  %281 = bitcast %struct._GtkWidget* %280 to %struct._GTypeInstance*
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %281, i64 80)
  %282 = bitcast %struct._GTypeInstance* %call191 to %struct._GObject*
  %283 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %284 = bitcast %struct._GtkObject* %283 to i8*
  call void @g_object_set_data(%struct._GObject* %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* %284)
  %285 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %286 = bitcast %struct._GtkObject* %285 to i8*
  %287 = load i32, i32* %framenumber, align 4
  %tobool192 = icmp ne i32 %287, 0
  %cond193 = select i1 %tobool192, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1, i32 2), double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0, i32 2)
  %288 = bitcast double* %cond193 to i8*
  %call194 = call i64 @g_signal_connect_data(i8* %286, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %288, void (i8*, %struct._GClosure*)* null, i32 0)
  %289 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %290 = bitcast %struct._GtkObject* %289 to i8*
  %291 = load i32, i32* %framenumber, align 4
  %tobool195 = icmp ne i32 %291, 0
  %cond196 = select i1 %tobool195, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0)
  %292 = bitcast %struct._GimpRGB* %cond196 to i8*
  %call197 = call i64 @g_signal_connect_data(i8* %290, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @scale_callback to void ()*), i8* %292, void (i8*, %struct._GClosure*)* null, i32 0)
  %293 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %294 = bitcast %struct._GtkObject* %293 to i8*
  %295 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %296 = bitcast %struct._GtkWidget* %295 to i8*
  %call198 = call i64 @g_signal_connect_data(i8* %294, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %296, void (i8*, %struct._GClosure*)* null, i32 2)
  %297 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %298 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %299 = bitcast %struct._GtkObject* %298 to %struct._GTypeInstance*
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %299, i64 80)
  %300 = bitcast %struct._GTypeInstance* %call199 to %struct._GObject*
  %call200 = call i8* @g_object_get_data(%struct._GObject* %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  %301 = bitcast i8* %call200 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %297, %struct._GtkWidget* %301)
  %302 = load i32, i32* %framenumber, align 4
  %tobool201 = icmp ne i32 %302, 0
  br i1 %tobool201, label %if.end.215, label %if.then.202

if.then.202:                                      ; preds = %cond.end.187
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %304 = bitcast %struct._GtkWidget* %303 to %struct._GTypeInstance*
  %call203 = call i64 @gtk_table_get_type() #6
  %call204 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %304, i64 %call203)
  %305 = bitcast %struct._GTypeInstance* %call204 to %struct._GtkTable*
  %306 = load i32, i32* %row, align 4
  %inc205 = add nsw i32 %306, 1
  store i32 %inc205, i32* %row, align 4
  %call206 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0)) #5
  %307 = load double, double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2, i32 2), align 8
  %call207 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %305, i32 1, i32 %306, i8* %call206, i32 128, i32 0, double %307, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call207, %struct._GtkObject** %adj, align 8
  %308 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %309 = bitcast %struct._GtkObject* %308 to %struct._GTypeInstance*
  %call208 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %309, i64 80)
  %310 = bitcast %struct._GTypeInstance* %call208 to %struct._GObject*
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %312 = bitcast %struct._GtkWidget* %311 to i8*
  call void @g_object_set_data(%struct._GObject* %310, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* %312)
  %313 = load %struct._GtkWidget*, %struct._GtkWidget** %threshold, align 8
  %314 = bitcast %struct._GtkWidget* %313 to %struct._GTypeInstance*
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %314, i64 80)
  %315 = bitcast %struct._GTypeInstance* %call209 to %struct._GObject*
  %316 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %317 = bitcast %struct._GtkObject* %316 to i8*
  call void @g_object_set_data(%struct._GObject* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* %317)
  %318 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %319 = bitcast %struct._GtkObject* %318 to i8*
  %call210 = call i64 @g_signal_connect_data(i8* %319, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %320 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %321 = bitcast %struct._GtkObject* %320 to i8*
  %call211 = call i64 @g_signal_connect_data(i8* %321, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @scale_callback to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %322 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %323 = bitcast %struct._GtkObject* %322 to i8*
  %324 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %325 = bitcast %struct._GtkWidget* %324 to i8*
  %call212 = call i64 @g_signal_connect_data(i8* %323, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %325, void (i8*, %struct._GClosure*)* null, i32 2)
  %326 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %327 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %328 = bitcast %struct._GtkObject* %327 to %struct._GTypeInstance*
  %call213 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %328, i64 80)
  %329 = bitcast %struct._GTypeInstance* %call213 to %struct._GObject*
  %call214 = call i8* @g_object_get_data(%struct._GObject* %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  %330 = bitcast i8* %call214 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %326, %struct._GtkWidget* %330)
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.202, %cond.end.187
  %331 = load i32, i32* %framenumber, align 4
  %tobool216 = icmp ne i32 %331, 0
  br i1 %tobool216, label %if.end.227, label %if.then.217

if.then.217:                                      ; preds = %if.end.215
  %call218 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0)) #5
  %call219 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call218)
  store %struct._GtkWidget* %call219, %struct._GtkWidget** %button, align 8
  %332 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %333 = bitcast %struct._GtkWidget* %332 to %struct._GTypeInstance*
  %call220 = call i64 @gtk_table_get_type() #6
  %call221 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %333, i64 %call220)
  %334 = bitcast %struct._GTypeInstance* %call221 to %struct._GtkTable*
  %335 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %336 = load i32, i32* %row, align 4
  %337 = load i32, i32* %row, align 4
  %add222 = add nsw i32 %337, 1
  call void @gtk_table_attach(%struct._GtkTable* %334, %struct._GtkWidget* %335, i32 2, i32 4, i32 %336, i32 %add222, i32 4, i32 0, i32 0, i32 0)
  %338 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %339 = bitcast %struct._GtkWidget* %338 to %struct._GTypeInstance*
  %call223 = call i64 @gtk_toggle_button_get_type() #6
  %call224 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %339, i64 %call223)
  %340 = bitcast %struct._GTypeInstance* %call224 to %struct._GtkToggleButton*
  %341 = load i32, i32* @lock_threshold, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %340, i32 %341)
  %342 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %342)
  %343 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %344 = bitcast %struct._GtkWidget* %343 to i8*
  %call225 = call i64 @g_signal_connect_data(i8* %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @lock_threshold to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %345 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %346 = bitcast %struct._GtkWidget* %345 to i8*
  %347 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %348 = bitcast %struct._GtkWidget* %347 to i8*
  %call226 = call i64 @g_signal_connect_data(i8* %346, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %348, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.217, %if.end.215
  br label %for.inc

for.inc:                                          ; preds = %if.end.227
  %349 = load i32, i32* %framenumber, align 4
  %inc228 = add nsw i32 %349, 1
  store i32 %inc228, i32* %framenumber, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %350 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %351 = bitcast %struct._GtkSizeGroup* %350 to i8*
  call void @g_object_unref(i8* %351)
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %352)
  %353 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %354 = bitcast %struct._GtkWidget* %353 to %struct._GTypeInstance*
  %call229 = call i64 @gimp_dialog_get_type() #6
  %call230 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %354, i64 %call229)
  %355 = bitcast %struct._GTypeInstance* %call230 to %struct._GimpDialog*
  %call231 = call i32 @gimp_dialog_run(%struct._GimpDialog* %355)
  %cmp232 = icmp eq i32 %call231, -5
  %conv = zext i1 %cmp232 to i32
  store i32 %conv, i32* %run, align 4
  %356 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %356)
  %357 = load i32, i32* %run, align 4
  ret i32 %357
}

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @exchange(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %min_red = alloca i8, align 1
  %min_green = alloca i8, align 1
  %min_blue = alloca i8, align 1
  %max_red = alloca i8, align 1
  %max_green = alloca i8, align 1
  %max_blue = alloca i8, align 1
  %from_red = alloca i8, align 1
  %from_green = alloca i8, align 1
  %from_blue = alloca i8, align 1
  %to_red = alloca i8, align 1
  %to_green = alloca i8, align 1
  %to_blue = alloca i8, align 1
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bpp = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %min = alloca %struct._GimpRGB, align 8
  %max = alloca %struct._GimpRGB, align 8
  %pixel_red = alloca i8, align 1
  %pixel_green = alloca i8, align 1
  %pixel_blue = alloca i8, align 1
  %new_red = alloca i8, align 1
  %new_green = alloca i8, align 1
  %new_blue = alloca i8, align 1
  %idx = alloca i32, align 4
  %red_delta = alloca i8, align 1
  %green_delta = alloca i8, align 1
  %blue_delta = alloca i8, align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp1, align 4
  store i32 %1, i32* %bpp, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %3, i32* %x1, i32* %y1)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %4, i32* %width, i32* %height)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %6, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  br label %if.end.208

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %y1, align 4
  %8 = load i32, i32* %height, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %y2, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_drawable_has_alpha(i32 %10)
  store i32 %call6, i32* %has_alpha, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 1
  %12 = load i32, i32* %width7, align 4
  %13 = load i32, i32* %bpp, align 4
  %mul = mul i32 %12, %13
  %conv = zext i32 %mul to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call8, i8** %src_row, align 8
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 0), i8* %from_red, i8* %from_green, i8* %from_blue)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 1), i8* %to_red, i8* %to_green, i8* %to_blue)
  %14 = bitcast %struct._GimpRGB* %min to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.myParams* @xargs to i8*), i64 32, i32 8, i1 false)
  call void @gimp_rgb_subtract(%struct._GimpRGB* %min, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2))
  call void @gimp_rgb_clamp(%struct._GimpRGB* %min)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %min, i8* %min_red, i8* %min_green, i8* %min_blue)
  %15 = bitcast %struct._GimpRGB* %max to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.myParams* @xargs to i8*), i64 32, i32 8, i1 false)
  call void @gimp_rgb_add(%struct._GimpRGB* %max, %struct._GimpRGB* getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2))
  call void @gimp_rgb_clamp(%struct._GimpRGB* %max)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %max, i8* %max_red, i8* %max_green, i8* %max_blue)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width9, align 4
  %18 = load i32, i32* %bpp, align 4
  %mul10 = mul i32 %17, %18
  %conv11 = zext i32 %mul10 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 1)
  store i8* %call12, i8** %dest_row, align 8
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
  %conv13 = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %conv13, i32 1)
  %30 = load i32, i32* %y1, align 4
  store i32 %30, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.195, %if.end.4
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %y2, align 4
  %cmp14 = icmp slt i32 %31, %32
  br i1 %cmp14, label %for.body, label %for.end.197

for.body:                                         ; preds = %for.cond
  %33 = load i8*, i8** %src_row, align 8
  %34 = load i32, i32* %x1, align 4
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %33, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %x, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %width, align 4
  %cmp17 = icmp slt i32 %37, %38
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.16
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* %bpp, align 4
  %mul20 = mul nsw i32 %39, %40
  %idxprom = sext i32 %mul20 to i64
  %41 = load i8*, i8** %src_row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 %idxprom
  %42 = load i8, i8* %arrayidx, align 1
  store i8 %42, i8* %pixel_red, align 1
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %bpp, align 4
  %mul21 = mul nsw i32 %43, %44
  %add22 = add nsw i32 %mul21, 1
  %idxprom23 = sext i32 %add22 to i64
  %45 = load i8*, i8** %src_row, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %45, i64 %idxprom23
  %46 = load i8, i8* %arrayidx24, align 1
  store i8 %46, i8* %pixel_green, align 1
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %bpp, align 4
  %mul25 = mul nsw i32 %47, %48
  %add26 = add nsw i32 %mul25, 2
  %idxprom27 = sext i32 %add26 to i64
  %49 = load i8*, i8** %src_row, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %49, i64 %idxprom27
  %50 = load i8, i8* %arrayidx28, align 1
  store i8 %50, i8* %pixel_blue, align 1
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %bpp, align 4
  %mul29 = mul nsw i32 %51, %52
  store i32 %mul29, i32* %idx, align 4
  %53 = load i8, i8* %pixel_red, align 1
  %conv30 = zext i8 %53 to i32
  %54 = load i8, i8* %min_red, align 1
  %conv31 = zext i8 %54 to i32
  %cmp32 = icmp sge i32 %conv30, %conv31
  br i1 %cmp32, label %land.lhs.true, label %if.else.165

land.lhs.true:                                    ; preds = %for.body.19
  %55 = load i8, i8* %pixel_red, align 1
  %conv34 = zext i8 %55 to i32
  %56 = load i8, i8* %max_red, align 1
  %conv35 = zext i8 %56 to i32
  %cmp36 = icmp sle i32 %conv34, %conv35
  br i1 %cmp36, label %land.lhs.true.38, label %if.else.165

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %57 = load i8, i8* %pixel_green, align 1
  %conv39 = zext i8 %57 to i32
  %58 = load i8, i8* %min_green, align 1
  %conv40 = zext i8 %58 to i32
  %cmp41 = icmp sge i32 %conv39, %conv40
  br i1 %cmp41, label %land.lhs.true.43, label %if.else.165

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %59 = load i8, i8* %pixel_green, align 1
  %conv44 = zext i8 %59 to i32
  %60 = load i8, i8* %max_green, align 1
  %conv45 = zext i8 %60 to i32
  %cmp46 = icmp sle i32 %conv44, %conv45
  br i1 %cmp46, label %land.lhs.true.48, label %if.else.165

land.lhs.true.48:                                 ; preds = %land.lhs.true.43
  %61 = load i8, i8* %pixel_blue, align 1
  %conv49 = zext i8 %61 to i32
  %62 = load i8, i8* %min_blue, align 1
  %conv50 = zext i8 %62 to i32
  %cmp51 = icmp sge i32 %conv49, %conv50
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.165

land.lhs.true.53:                                 ; preds = %land.lhs.true.48
  %63 = load i8, i8* %pixel_blue, align 1
  %conv54 = zext i8 %63 to i32
  %64 = load i8, i8* %max_blue, align 1
  %conv55 = zext i8 %64 to i32
  %cmp56 = icmp sle i32 %conv54, %conv55
  br i1 %cmp56, label %if.then.58, label %if.else.165

if.then.58:                                       ; preds = %land.lhs.true.53
  %65 = load i8, i8* %pixel_red, align 1
  %conv59 = zext i8 %65 to i32
  %66 = load i8, i8* %from_red, align 1
  %conv60 = zext i8 %66 to i32
  %cmp61 = icmp sgt i32 %conv59, %conv60
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.58
  %67 = load i8, i8* %pixel_red, align 1
  %conv63 = zext i8 %67 to i32
  %68 = load i8, i8* %from_red, align 1
  %conv64 = zext i8 %68 to i32
  %sub = sub nsw i32 %conv63, %conv64
  br label %cond.end

cond.false:                                       ; preds = %if.then.58
  %69 = load i8, i8* %from_red, align 1
  %conv65 = zext i8 %69 to i32
  %70 = load i8, i8* %pixel_red, align 1
  %conv66 = zext i8 %70 to i32
  %sub67 = sub nsw i32 %conv65, %conv66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub67, %cond.false ]
  %conv68 = trunc i32 %cond to i8
  store i8 %conv68, i8* %red_delta, align 1
  %71 = load i8, i8* %pixel_green, align 1
  %conv69 = zext i8 %71 to i32
  %72 = load i8, i8* %from_green, align 1
  %conv70 = zext i8 %72 to i32
  %cmp71 = icmp sgt i32 %conv69, %conv70
  br i1 %cmp71, label %cond.true.73, label %cond.false.77

cond.true.73:                                     ; preds = %cond.end
  %73 = load i8, i8* %pixel_green, align 1
  %conv74 = zext i8 %73 to i32
  %74 = load i8, i8* %from_green, align 1
  %conv75 = zext i8 %74 to i32
  %sub76 = sub nsw i32 %conv74, %conv75
  br label %cond.end.81

cond.false.77:                                    ; preds = %cond.end
  %75 = load i8, i8* %from_green, align 1
  %conv78 = zext i8 %75 to i32
  %76 = load i8, i8* %pixel_green, align 1
  %conv79 = zext i8 %76 to i32
  %sub80 = sub nsw i32 %conv78, %conv79
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.77, %cond.true.73
  %cond82 = phi i32 [ %sub76, %cond.true.73 ], [ %sub80, %cond.false.77 ]
  %conv83 = trunc i32 %cond82 to i8
  store i8 %conv83, i8* %green_delta, align 1
  %77 = load i8, i8* %pixel_blue, align 1
  %conv84 = zext i8 %77 to i32
  %78 = load i8, i8* %from_blue, align 1
  %conv85 = zext i8 %78 to i32
  %cmp86 = icmp sgt i32 %conv84, %conv85
  br i1 %cmp86, label %cond.true.88, label %cond.false.92

cond.true.88:                                     ; preds = %cond.end.81
  %79 = load i8, i8* %pixel_blue, align 1
  %conv89 = zext i8 %79 to i32
  %80 = load i8, i8* %from_blue, align 1
  %conv90 = zext i8 %80 to i32
  %sub91 = sub nsw i32 %conv89, %conv90
  br label %cond.end.96

cond.false.92:                                    ; preds = %cond.end.81
  %81 = load i8, i8* %from_blue, align 1
  %conv93 = zext i8 %81 to i32
  %82 = load i8, i8* %pixel_blue, align 1
  %conv94 = zext i8 %82 to i32
  %sub95 = sub nsw i32 %conv93, %conv94
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.92, %cond.true.88
  %cond97 = phi i32 [ %sub91, %cond.true.88 ], [ %sub95, %cond.false.92 ]
  %conv98 = trunc i32 %cond97 to i8
  store i8 %conv98, i8* %blue_delta, align 1
  %83 = load i8, i8* %to_red, align 1
  %conv99 = zext i8 %83 to i32
  %84 = load i8, i8* %red_delta, align 1
  %conv100 = zext i8 %84 to i32
  %add101 = add nsw i32 %conv99, %conv100
  %cmp102 = icmp sgt i32 %add101, 255
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end.96
  br label %cond.end.118

cond.false.105:                                   ; preds = %cond.end.96
  %85 = load i8, i8* %to_red, align 1
  %conv106 = zext i8 %85 to i32
  %86 = load i8, i8* %red_delta, align 1
  %conv107 = zext i8 %86 to i32
  %add108 = add nsw i32 %conv106, %conv107
  %cmp109 = icmp slt i32 %add108, 0
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.false.105
  br label %cond.end.116

cond.false.112:                                   ; preds = %cond.false.105
  %87 = load i8, i8* %to_red, align 1
  %conv113 = zext i8 %87 to i32
  %88 = load i8, i8* %red_delta, align 1
  %conv114 = zext i8 %88 to i32
  %add115 = add nsw i32 %conv113, %conv114
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.112, %cond.true.111
  %cond117 = phi i32 [ 0, %cond.true.111 ], [ %add115, %cond.false.112 ]
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.end.116, %cond.true.104
  %cond119 = phi i32 [ 255, %cond.true.104 ], [ %cond117, %cond.end.116 ]
  %conv120 = trunc i32 %cond119 to i8
  store i8 %conv120, i8* %new_red, align 1
  %89 = load i8, i8* %to_green, align 1
  %conv121 = zext i8 %89 to i32
  %90 = load i8, i8* %green_delta, align 1
  %conv122 = zext i8 %90 to i32
  %add123 = add nsw i32 %conv121, %conv122
  %cmp124 = icmp sgt i32 %add123, 255
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.end.118
  br label %cond.end.140

cond.false.127:                                   ; preds = %cond.end.118
  %91 = load i8, i8* %to_green, align 1
  %conv128 = zext i8 %91 to i32
  %92 = load i8, i8* %green_delta, align 1
  %conv129 = zext i8 %92 to i32
  %add130 = add nsw i32 %conv128, %conv129
  %cmp131 = icmp slt i32 %add130, 0
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %cond.false.127
  br label %cond.end.138

cond.false.134:                                   ; preds = %cond.false.127
  %93 = load i8, i8* %to_green, align 1
  %conv135 = zext i8 %93 to i32
  %94 = load i8, i8* %green_delta, align 1
  %conv136 = zext i8 %94 to i32
  %add137 = add nsw i32 %conv135, %conv136
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.134, %cond.true.133
  %cond139 = phi i32 [ 0, %cond.true.133 ], [ %add137, %cond.false.134 ]
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.138, %cond.true.126
  %cond141 = phi i32 [ 255, %cond.true.126 ], [ %cond139, %cond.end.138 ]
  %conv142 = trunc i32 %cond141 to i8
  store i8 %conv142, i8* %new_green, align 1
  %95 = load i8, i8* %to_blue, align 1
  %conv143 = zext i8 %95 to i32
  %96 = load i8, i8* %blue_delta, align 1
  %conv144 = zext i8 %96 to i32
  %add145 = add nsw i32 %conv143, %conv144
  %cmp146 = icmp sgt i32 %add145, 255
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.end.140
  br label %cond.end.162

cond.false.149:                                   ; preds = %cond.end.140
  %97 = load i8, i8* %to_blue, align 1
  %conv150 = zext i8 %97 to i32
  %98 = load i8, i8* %blue_delta, align 1
  %conv151 = zext i8 %98 to i32
  %add152 = add nsw i32 %conv150, %conv151
  %cmp153 = icmp slt i32 %add152, 0
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %cond.false.149
  br label %cond.end.160

cond.false.156:                                   ; preds = %cond.false.149
  %99 = load i8, i8* %to_blue, align 1
  %conv157 = zext i8 %99 to i32
  %100 = load i8, i8* %blue_delta, align 1
  %conv158 = zext i8 %100 to i32
  %add159 = add nsw i32 %conv157, %conv158
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.156, %cond.true.155
  %cond161 = phi i32 [ 0, %cond.true.155 ], [ %add159, %cond.false.156 ]
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.end.160, %cond.true.148
  %cond163 = phi i32 [ 255, %cond.true.148 ], [ %cond161, %cond.end.160 ]
  %conv164 = trunc i32 %cond163 to i8
  store i8 %conv164, i8* %new_blue, align 1
  br label %if.end.166

if.else.165:                                      ; preds = %land.lhs.true.53, %land.lhs.true.48, %land.lhs.true.43, %land.lhs.true.38, %land.lhs.true, %for.body.19
  %101 = load i8, i8* %pixel_red, align 1
  store i8 %101, i8* %new_red, align 1
  %102 = load i8, i8* %pixel_green, align 1
  store i8 %102, i8* %new_green, align 1
  %103 = load i8, i8* %pixel_blue, align 1
  store i8 %103, i8* %new_blue, align 1
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.165, %cond.end.162
  %104 = load i8, i8* %new_red, align 1
  %105 = load i32, i32* %idx, align 4
  %add167 = add i32 %105, 0
  %idxprom168 = zext i32 %add167 to i64
  %106 = load i8*, i8** %dest_row, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %106, i64 %idxprom168
  store i8 %104, i8* %arrayidx169, align 1
  %107 = load i8, i8* %new_green, align 1
  %108 = load i32, i32* %idx, align 4
  %add170 = add i32 %108, 1
  %idxprom171 = zext i32 %add170 to i64
  %109 = load i8*, i8** %dest_row, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %109, i64 %idxprom171
  store i8 %107, i8* %arrayidx172, align 1
  %110 = load i8, i8* %new_blue, align 1
  %111 = load i32, i32* %idx, align 4
  %add173 = add i32 %111, 2
  %idxprom174 = zext i32 %add173 to i64
  %112 = load i8*, i8** %dest_row, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %112, i64 %idxprom174
  store i8 %110, i8* %arrayidx175, align 1
  %113 = load i32, i32* %has_alpha, align 4
  %tobool176 = icmp ne i32 %113, 0
  br i1 %tobool176, label %if.then.177, label %if.end.185

if.then.177:                                      ; preds = %if.end.166
  %114 = load i32, i32* %x, align 4
  %115 = load i32, i32* %bpp, align 4
  %mul178 = mul nsw i32 %114, %115
  %add179 = add nsw i32 %mul178, 3
  %idxprom180 = sext i32 %add179 to i64
  %116 = load i8*, i8** %src_row, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %116, i64 %idxprom180
  %117 = load i8, i8* %arrayidx181, align 1
  %118 = load i32, i32* %idx, align 4
  %add182 = add i32 %118, 3
  %idxprom183 = zext i32 %add182 to i64
  %119 = load i8*, i8** %dest_row, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %119, i64 %idxprom183
  store i8 %117, i8* %arrayidx184, align 1
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.177, %if.end.166
  br label %for.inc

for.inc:                                          ; preds = %if.end.185
  %120 = load i32, i32* %x, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %121 = load i8*, i8** %dest_row, align 8
  %122 = load i32, i32* %x1, align 4
  %123 = load i32, i32* %y, align 4
  %124 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %121, i32 %122, i32 %123, i32 %124)
  %125 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool186 = icmp ne %struct._GimpPreview* %125, null
  br i1 %tobool186, label %if.end.194, label %land.lhs.true.187

land.lhs.true.187:                                ; preds = %for.end
  %126 = load i32, i32* %y, align 4
  %rem = srem i32 %126, 10
  %cmp188 = icmp eq i32 %rem, 0
  br i1 %cmp188, label %if.then.190, label %if.end.194

if.then.190:                                      ; preds = %land.lhs.true.187
  %127 = load i32, i32* %y, align 4
  %conv191 = sitofp i32 %127 to double
  %128 = load i32, i32* %height, align 4
  %conv192 = sitofp i32 %128 to double
  %div = fdiv double %conv191, %conv192
  %call193 = call i32 @gimp_progress_update(double %div)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.190, %land.lhs.true.187, %for.end
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.194
  %129 = load i32, i32* %y, align 4
  %inc196 = add nsw i32 %129, 1
  store i32 %inc196, i32* %y, align 4
  br label %for.cond

for.end.197:                                      ; preds = %for.cond
  %130 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %130)
  %131 = load i8*, i8** %dest_row, align 8
  call void @g_free(i8* %131)
  %132 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool198 = icmp ne %struct._GimpPreview* %132, null
  br i1 %tobool198, label %if.then.199, label %if.else.202

if.then.199:                                      ; preds = %for.end.197
  %133 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %134 = bitcast %struct._GimpPreview* %133 to %struct._GTypeInstance*
  %call200 = call i64 @gimp_drawable_preview_get_type() #6
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call200)
  %135 = bitcast %struct._GTypeInstance* %call201 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %135, %struct._GimpPixelRgn* %destPR)
  br label %if.end.208

if.else.202:                                      ; preds = %for.end.197
  %call203 = call i32 @gimp_progress_update(double 1.000000e+00)
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %136)
  %137 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id204 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %137, i32 0, i32 0
  %138 = load i32, i32* %drawable_id204, align 4
  %call205 = call i32 @gimp_drawable_merge_shadow(i32 %138, i32 1)
  %139 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id206 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %139, i32 0, i32 0
  %140 = load i32, i32* %drawable_id206, align 4
  %141 = load i32, i32* %x1, align 4
  %142 = load i32, i32* %y1, align 4
  %143 = load i32, i32* %width, align 4
  %144 = load i32, i32* %height, align 4
  %call207 = call i32 @gimp_drawable_update(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.3, %if.else.202, %if.then.199
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

; Function Attrs: nounwind uwtable
define internal i32 @preview_event_handler(%struct._GtkWidget* %area, %union._GdkEvent* %event, %struct._GtkWidget* %preview) #0 {
entry:
  %area.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %pos = alloca i32, align 4
  %buf = alloca i8*, align 8
  %drawable_id = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %button_event = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %1 = bitcast %union._GdkEvent* %0 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %1, %struct._GdkEventButton** %button_event, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  %buf2 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %4, i32 0, i32 10
  %5 = load i8*, i8** %buf2, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_drawable_preview_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawablePreview*
  %drawable = getelementptr inbounds %struct._GimpDrawablePreview, %struct._GimpDrawablePreview* %8, i32 0, i32 1
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id5, align 4
  store i32 %10, i32* %drawable_id, align 4
  %11 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %11 to i32*
  %12 = load i32, i32* %type, align 4
  switch i32 %12, label %sw.default [
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %button_event, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 8
  %14 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %15 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button6 = bitcast %union._GdkEvent* %15 to %struct._GdkEventButton*
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button6, i32 0, i32 4
  %16 = load double, double* %x, align 8
  %17 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_bpp(i32 %17)
  %conv = sitofp i32 %call7 to double
  %mul = fmul double %16, %conv
  %18 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button8 = bitcast %union._GdkEvent* %18 to %struct._GdkEventButton*
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button8, i32 0, i32 5
  %19 = load double, double* %y, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_preview_area_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpPreviewArea*
  %rowstride = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %22, i32 0, i32 5
  %23 = load i32, i32* %rowstride, align 4
  %conv11 = sitofp i32 %23 to double
  %mul12 = fmul double %19, %conv11
  %add = fadd double %mul, %mul12
  %conv13 = fptosi double %add to i32
  store i32 %conv13, i32* %pos, align 4
  %24 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  %27 = load i32, i32* %pos, align 4
  %add14 = add nsw i32 %27, 1
  %idxprom15 = sext i32 %add14 to i64
  %28 = load i8*, i8** %buf, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 %idxprom15
  %29 = load i8, i8* %arrayidx16, align 1
  %30 = load i32, i32* %pos, align 4
  %add17 = add nsw i32 %30, 2
  %idxprom18 = sext i32 %add17 to i64
  %31 = load i8*, i8** %buf, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %31, i64 %idxprom18
  %32 = load i8, i8* %arrayidx19, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %color, i8 zeroext %26, i8 zeroext %29, i8 zeroext %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @from_colorbutton, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_color_button_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %35, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  ret i32 0
}

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal void @color_button_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %red_adj = alloca %struct._GtkObject*, align 8
  %green_adj = alloca %struct._GtkObject*, align 8
  %blue_adj = alloca %struct._GtkObject*, align 8
  %color = alloca %struct._GimpRGB*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpRGB*
  store %struct._GimpRGB* %1, %struct._GimpRGB** %color, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0))
  %5 = bitcast i8* %call1 to %struct._GtkObject*
  store %struct._GtkObject* %5, %struct._GtkObject** %red_adj, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0))
  %9 = bitcast i8* %call3 to %struct._GtkObject*
  store %struct._GtkObject* %9, %struct._GtkObject** %green_adj, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0))
  %13 = bitcast i8* %call5 to %struct._GtkObject*
  store %struct._GtkObject* %13, %struct._GtkObject** %blue_adj, align 8
  %14 = load %struct._GtkObject*, %struct._GtkObject** %red_adj, align 8
  %tobool = icmp ne %struct._GtkObject* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GtkObject*, %struct._GtkObject** %red_adj, align 8
  %16 = bitcast %struct._GtkObject* %15 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_adjustment_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call6)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkAdjustment*
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i32 0, i32 0
  %19 = load double, double* %r, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %17, double %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._GtkObject*, %struct._GtkObject** %green_adj, align 8
  %tobool8 = icmp ne %struct._GtkObject* %20, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %21 = load %struct._GtkObject*, %struct._GtkObject** %green_adj, align 8
  %22 = bitcast %struct._GtkObject* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_adjustment_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkAdjustment*
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %24, i32 0, i32 1
  %25 = load double, double* %g, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %23, double %25)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %26 = load %struct._GtkObject*, %struct._GtkObject** %blue_adj, align 8
  %tobool13 = icmp ne %struct._GtkObject* %26, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %27 = load %struct._GtkObject*, %struct._GtkObject** %blue_adj, align 8
  %28 = bitcast %struct._GtkObject* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_adjustment_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkAdjustment*
  %30 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %30, i32 0, i32 2
  %31 = load double, double* %b, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %29, double %31)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  ret void
}

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @scale_callback(%struct._GtkAdjustment* %adj, i8* %data) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %object = alloca %struct._GtkObject*, align 8
  %color = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpRGB*
  store %struct._GimpRGB* %1, %struct._GimpRGB** %color, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %3 = bitcast %struct._GtkAdjustment* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  %5 = bitcast i8* %call1 to %struct._GtkObject*
  store %struct._GtkObject* %5, %struct._GtkObject** %object, align 8
  %6 = load %struct._GtkObject*, %struct._GtkObject** %object, align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_color_button_get_type() #6
  store i64 %call2, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.8
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %cmp11 = icmp eq %struct._GimpRGB* %19, getelementptr inbounds (%struct.myParams, %struct.myParams* @xargs, i32 0, i32 2)
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.17

land.lhs.true.12:                                 ; preds = %if.then.10
  %20 = load i32, i32* @lock_threshold, align 4
  %cmp13 = icmp eq i32 %20, 1
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true.12
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call16 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %21)
  store double %call16, double* %value, align 8
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %23 = load double, double* %value, align 8
  %24 = load double, double* %value, align 8
  %25 = load double, double* %value, align 8
  call void @gimp_rgb_set(%struct._GimpRGB* %22, double %23, double %24, double %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true.12, %if.then.10
  %26 = load %struct._GtkObject*, %struct._GtkObject** %object, align 8
  %27 = bitcast %struct._GtkObject* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_color_button_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpColorButton*
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %28, %struct._GimpRGB* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.17, %if.end.8
  ret void
}

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_rgb_subtract(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #1

declare void @gimp_rgb_add(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
