; ModuleID = './plug-ins/common/tile-paper.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.anon = type { %struct._PluginParams, i32, %struct._GimpDrawable*, i32, %struct.anon.0, i32, i32 }
%struct._PluginParams = type { i32, i32, i32, i32, double, i32, i32, i32, i32, %struct._GimpRGB }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.1 = type { %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GBinding = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._Tile = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._GRand = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @plugin_query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @plugin_run }, align 8
@plugin_query.args = internal constant [11 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tile-size\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Tile size (pixels)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"move-max\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Max move rate (%)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"fractional-type\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"0:Background 1:Ignore 2:Force\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"wrap-around\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Wrap around (bool)\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"centering\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Centering (bool)\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"background-type\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"0:Transparent 1:Inverted 2:Image? 3:FG 4:BG 5:Color\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"background-color\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Background color (for bg-type 5)\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"background-alpha\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Opacity (for bg-type 5)\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"plug-in-papertile\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Cut image into paper tiles, and slide them\00", align 1
@.str.24 = private unnamed_addr constant [72 x i8] c"This plug-in cuts an image into paper tiles and slides each paper tile.\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Hirotsuna Mizuno <s1041150@u-aizu.ac.jp>\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Copyright (c)1997-1999 Hirotsuna Mizuno\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"September 31, 1999\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"_Paper Tile...\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@p = internal global %struct.anon { %struct._PluginParams { i32 1, i32 1, i32 16, i32 16, double 2.500000e+01, i32 0, i32 1, i32 0, i32 1, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 } }, i32 0, %struct._GimpDrawable* null, i32 0, %struct.anon.0 zeroinitializer, i32 0, i32 0 }, align 8
@plugin_run.return_value = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [11 x i8] c"tile-paper\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Paper Tile\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"gimp-tile-paper\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Division\00", align 1
@w = internal global %struct.anon.1 zeroinitializer, align 8
@.str.39 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Fractional Pixels\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"_Background\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"_Ignore\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"_Force\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"C_entering\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"Movement\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"_Max (%):\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"_Wrap around\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"Background Type\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"_Transparent\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"I_nverted image\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Im_age\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"Fo_reground color\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"Bac_kground color\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"S_elect here:\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Background Color\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@filter.overlap = internal global void (i8*, i8*)* null, align 8

; Function Attrs: nounwind uwtable
define internal void @plugin_query() #0 {
entry:
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0)) #4
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 11, i32 0, %struct._GimpParamDef* getelementptr inbounds ([11 x %struct._GimpParamDef], [11 x %struct._GimpParamDef]* @plugin_query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plugin_run(i8* %name, i32 %numof_params, %struct._GimpParam* %params, i32* %numof_return_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %numof_params.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %numof_return_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %numof_params, i32* %numof_params.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %numof_return_vals, i32** %numof_return_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 6), align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 5), align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_image, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 1), align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %5)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_has_alpha(i32 %7)
  store i32 %call9, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 3), align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_is_rgb(i32 %9)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.else.38

if.then:                                          ; preds = %do.end
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 5), align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.then
  call void @params_load_from_gimp()
  call void @open_dialog()
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %11 = load i32, i32* %numof_params.addr, align 4
  %cmp = icmp eq i32 %11, 11
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %sw.bb.12
  %12 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %div = udiv i32 %17, %18
  store i32 %div, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %div20 = udiv i32 %20, %21
  store i32 %div20, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 4
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data22 to double*
  %23 = load double, double* %d_float, align 8
  store double %23, double* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 4), align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 5
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_int3225 = bitcast %union._GimpParamData* %data24 to i32*
  %25 = load i32, i32* %d_int3225, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 5), align 4
  %26 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 6
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_int3228 = bitcast %union._GimpParamData* %data27 to i32*
  %27 = load i32, i32* %d_int3228, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 7), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 7
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_int3231 = bitcast %union._GimpParamData* %data30 to i32*
  %29 = load i32, i32* %d_int3231, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 6), align 4
  %30 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 8
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_int3234 = bitcast %union._GimpParamData* %data33 to i32*
  %31 = load i32, i32* %d_int3234, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 8), align 4
  %32 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 9
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data36 to %struct._GimpRGB*
  %33 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 9) to i8*), i8* %33, i64 32, i32 8, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 6), align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.12
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.then
  call void @params_load_from_gimp()
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 6), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.37, %if.end, %sw.bb
  br label %if.end.39

if.else.38:                                       ; preds = %do.end
  store i32 0, i32* %status, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %sw.epilog
  %34 = load i32, i32* %status, align 4
  %cmp40 = icmp eq i32 %34, 3
  br i1 %cmp40, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.39
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 6), align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %land.lhs.true
  call void @params_save_to_gimp()
  call void @filter()
  %36 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 5), align 4
  %cmp43 = icmp ne i32 %36, 1
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.42
  %call45 = call i32 @gimp_displays_flush()
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true, %if.end.39
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %37)
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @plugin_run.return_value, i32 0, i64 0, i32 0), align 4
  %38 = load i32, i32* %status, align 4
  store i32 %38, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @plugin_run.return_value, i32 0, i64 0, i32 1) to i32*), align 4
  %39 = load i32*, i32** %numof_return_vals.addr, align 8
  store i32 1, i32* %39, align 4
  %40 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @plugin_run.return_value, i32 0, i32 0), %struct._GimpParam** %40, align 8
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

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

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

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

; Function Attrs: nounwind uwtable
define internal void @params_load_from_gimp() #0 {
entry:
  %call = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (%struct.anon* @p to i8*))
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %div = udiv i32 %2, %3
  store i32 %div, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %cmp1 = icmp slt i32 0, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %div3 = udiv i32 %6, %7
  store i32 %div3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %cmp5 = icmp sle i32 %8, 0
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %cmp6 = icmp sle i32 %9, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %cmp8 = icmp sle i32 %10, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %cmp10 = icmp sle i32 %11, 0
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %lor.lhs.false, %if.end.4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 1
  %13 = load i32, i32* %width12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height13, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width14, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %div15 = udiv i32 %17, %18
  store i32 %div15, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height16, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %div17 = udiv i32 %20, %21
  store i32 %div17, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %lor.lhs.false.9
  %22 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.23, label %if.then.19

if.then.19:                                       ; preds = %if.end.18
  %23 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 8), align 4
  %cmp20 = icmp eq i32 %23, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 8), align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.19
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 9), double 1.000000e+00)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @open_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %color_button = alloca %struct._GtkWidget*, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 -5, i8* null)
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
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)) #4
  %call18 = call %struct._GtkWidget* @gimp_frame_new(i8* %call17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %frame, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call21 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 2, i32 0)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call26)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %conv = sitofp i32 %37 to double
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 1
  %39 = load i32, i32* %width, align 4
  %conv28 = uitofp i32 %39 to double
  %call29 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 2), double %conv, double 1.000000e+00, double %conv28, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %button, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #4
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call33 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %42, i32 0, i32 0, i8* %call32, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %43, i32 1, i32 1)
  %44 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 2), align 8
  %45 = bitcast %struct._GtkObject* %44 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @division_x_adj_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %conv35 = sitofp i32 %46 to double
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 1
  %48 = load i32, i32* %width36, align 4
  %conv37 = uitofp i32 %48 to double
  %call38 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 3), double %conv35, double 1.000000e+00, double %conv37, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %button, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call39)
  %51 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0)) #4
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call42 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %51, i32 0, i32 1, i8* %call41, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %52, i32 1, i32 1)
  %53 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 3), align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @division_y_adj_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %conv44 = sitofp i32 %55 to double
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width45 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %56, i32 0, i32 1
  %57 = load i32, i32* %width45, align 4
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 2
  %59 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %57, %59
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width47 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %60, i32 0, i32 1
  %61 = load i32, i32* %width47, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %62, i32 0, i32 2
  %63 = load i32, i32* %height48, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ %63, %cond.false ]
  %conv49 = uitofp i32 %cond to double
  %call50 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 0), double %conv44, double 1.000000e+00, double %conv49, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %button, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call51)
  %66 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0)) #4
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call54 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %66, i32 0, i32 2, i8* %call53, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %67, i32 1, i32 1)
  %68 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 0), align 8
  %69 = bitcast %struct._GtkObject* %68 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @tile_width_adj_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %conv56 = sitofp i32 %70 to double
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %71, i32 0, i32 1
  %72 = load i32, i32* %width57, align 4
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height58 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %73, i32 0, i32 2
  %74 = load i32, i32* %height58, align 4
  %cmp59 = icmp ugt i32 %72, %74
  br i1 %cmp59, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.end
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width62 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %75, i32 0, i32 1
  %76 = load i32, i32* %width62, align 4
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.end
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %77, i32 0, i32 2
  %78 = load i32, i32* %height64, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi i32 [ %76, %cond.true.61 ], [ %78, %cond.false.63 ]
  %conv67 = uitofp i32 %cond66 to double
  %call68 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 1), double %conv56, double 1.000000e+00, double %conv67, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %button, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call69)
  %81 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #4
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call72 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %81, i32 0, i32 3, i8* %call71, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %82, i32 1, i32 1)
  %83 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 1), align 8
  %84 = bitcast %struct._GtkObject* %83 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*)* @tile_height_adj_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0)) #4
  %85 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 5), align 4
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)) #4
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #4
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0)) #4
  %call78 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call74, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 5) to i8*), i32 %85, i8* %call75, i32 0, i8* null, i8* %call76, i32 1, i8* null, i8* %call77, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %frame, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call79)
  %88 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0)) #4
  %call82 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call81)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %button, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_toggle_button_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call83)
  %93 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkToggleButton*
  %94 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 6), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %93, i32 %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call85)
  %97 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %97, %struct._GtkWidget* %98, i32 0, i32 0, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call88 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %vbox, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_box_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call89)
  %104 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkBox*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %104, %struct._GtkWidget* %105, i32 1, i32 1, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0)) #4
  %call92 = call %struct._GtkWidget* @gimp_frame_new(i8* %call91)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %frame, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_box_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call93)
  %109 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkBox*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %109, %struct._GtkWidget* %110, i32 0, i32 0, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %call95 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %table, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_table_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call96)
  %114 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %114, i32 6)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_table_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call98)
  %117 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %117, i32 6)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_container_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call100)
  %120 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkContainer*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %120, %struct._GtkWidget* %121)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %123 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 4), align 8
  %call102 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %123, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %button, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_table_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call103)
  %126 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkTable*
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0)) #4
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call106 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %126, i32 0, i32 0, i8* %call105, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %127, i32 1, i32 1)
  %128 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %129 = bitcast %struct._GtkObject* %128 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0)) #4
  %call109 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call108)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %button, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_toggle_button_get_type() #6
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call110)
  %132 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkToggleButton*
  %133 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 7), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %132, i32 %133)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_table_get_type() #6
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call112)
  %136 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTable*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %136, %struct._GtkWidget* %137, i32 0, i32 2, i32 1, i32 2)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %140 = bitcast %struct._GtkWidget* %139 to i8*
  %call114 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0)) #4
  %141 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 8), align 4
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0)) #4
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0)) #4
  %call118 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0)) #4
  %call119 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0)) #4
  %call120 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0)) #4
  %call121 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0)) #4
  %call122 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call115, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 8) to i8*), i32 %141, i8* %call116, i32 0, i8* null, i8* %call117, i32 1, i8* null, i8* %call118, i32 2, i8* null, i8* %call119, i32 3, i8* null, i8* %call120, i32 4, i8* null, i8* %call121, i32 5, %struct._GtkWidget** %button, i8* null)
  store %struct._GtkWidget* %call122, %struct._GtkWidget** %frame, align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_box_get_type() #6
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call123)
  %144 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkBox*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %144, %struct._GtkWidget* %145, i32 1, i32 1, i32 0)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %146)
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0)) #4
  %147 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %147, 0
  %cond126 = select i1 %tobool, i32 1, i32 0
  %call127 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call125, i32 100, i32 16, %struct._GimpRGB* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 9), i32 %cond126)
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %color_button, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_bin_get_type() #6
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call128)
  %150 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkBin*
  %call130 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %150)
  %151 = bitcast %struct._GtkWidget* %call130 to %struct._GTypeInstance*
  %call131 = call i64 @gtk_box_get_type() #6
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call131)
  %152 = bitcast %struct._GTypeInstance* %call132 to %struct._GtkBox*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %152, %struct._GtkWidget* %153, i32 1, i32 1, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %154)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  %156 = bitcast %struct._GtkWidget* %155 to i8*
  %call133 = call i64 @g_signal_connect_data(i8* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %158 = bitcast %struct._GtkWidget* %157 to i8*
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  %160 = bitcast %struct._GtkWidget* %159 to i8*
  %call134 = call %struct._GBinding* @g_object_bind_property(i8* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 2)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %161)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_dialog_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call135)
  %164 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpDialog*
  %call137 = call i32 @gimp_dialog_run(%struct._GimpDialog* %164)
  %cmp138 = icmp eq i32 %call137, -5
  %conv139 = zext i1 %cmp138 to i32
  store i32 %conv139, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 6), align 4
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %165)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @params_save_to_gimp() #0 {
entry:
  %call = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (%struct.anon* @p to i8*), i32 72)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @filter() #5 {
entry:
  %src = alloca %struct._GimpPixelRgn, align 8
  %dst = alloca %struct._GimpPixelRgn, align 8
  %color = alloca %struct._GimpRGB, align 8
  %pixel = alloca [4 x i8], align 1
  %division_x = alloca i32, align 4
  %division_y = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %tiles = alloca %struct._Tile*, align 8
  %numof_tiles = alloca i32, align 4
  %t = alloca %struct._Tile*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %move_max_pixels = alloca i32, align 4
  %clear_x0 = alloca i32, align 4
  %clear_y0 = alloca i32, align 4
  %clear_x1 = alloca i32, align 4
  %clear_y1 = alloca i32, align 4
  %clear_width = alloca i32, align 4
  %clear_height = alloca i32, align 4
  %pixels = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %dindex = alloca i32, align 4
  %sindex = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  %srcy = alloca i32, align 4
  %srcx = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src, %struct._GimpDrawable* %0, i32 0, i32 0, i32 %2, i32 %4, i32 0, i32 0)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width1, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height2, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %7, i32 %9, i32 1, i32 1)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 1
  %13 = load i32, i32* %width3, align 4
  %mul = mul i32 %11, %13
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height4, align 4
  %mul5 = mul i32 %mul, %15
  %conv = zext i32 %mul5 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call6, i8** %pixels, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 3
  %17 = load i32, i32* %bpp7, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %mul8 = mul i32 %17, %18
  %19 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %mul9 = mul i32 %mul8, %19
  %conv10 = zext i32 %mul9 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 1)
  store i8* %call11, i8** %buffer, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %20, 0
  %cond = select i1 %tobool, void (i8*, i8*)* @overlap_RGBA, void (i8*, i8*)* @overlap_RGB
  store void (i8*, i8*)* %cond, void (i8*, i8*)** @filter.overlap, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #4
  %call13 = call i32 @gimp_progress_init(i8* %call12)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id, align 4
  %call14 = call i32 @gimp_drawable_mask_bounds(i32 %22, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 0), i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 1), i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 2), i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 3))
  %23 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 2), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 0), align 4
  %sub = sub nsw i32 %23, %24
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 4), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 3), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 1), align 4
  %sub15 = sub nsw i32 %25, %26
  store i32 %sub15, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 5), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 4), align 4
  %call16 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %27, %call16
  %add = add i32 %div, 1
  %mul17 = mul i32 2, %add
  %conv18 = zext i32 %mul17 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv18)
  %28 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  store i32 %28, i32* %division_x, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  store i32 %29, i32* %division_y, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 5), align 4
  %cmp = icmp eq i32 %30, 2
  br i1 %cmp, label %if.then, label %if.else.58

if.then:                                          ; preds = %entry
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 1
  %32 = load i32, i32* %width20, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %rem = urem i32 %32, %33
  %cmp21 = icmp ult i32 0, %rem
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %34 = load i32, i32* %division_x, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %division_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 2
  %36 = load i32, i32* %height24, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %rem25 = urem i32 %36, %37
  %cmp26 = icmp ult i32 0, %rem25
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end
  %38 = load i32, i32* %division_y, align 4
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, i32* %division_y, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end
  %39 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 6), align 4
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.else.56

if.then.32:                                       ; preds = %if.end.30
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 1
  %41 = load i32, i32* %width33, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %rem34 = urem i32 %41, %42
  %cmp35 = icmp ult i32 1, %rem34
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.32
  %43 = load i32, i32* %division_x, align 4
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, i32* %division_x, align 4
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width39 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 1
  %45 = load i32, i32* %width39, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %rem40 = urem i32 %45, %46
  %div41 = udiv i32 %rem40, 2
  %47 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %sub42 = sub i32 %div41, %47
  store i32 %sub42, i32* %offset_x, align 4
  br label %if.end.43

if.else:                                          ; preds = %if.then.32
  store i32 0, i32* %offset_x, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.37
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 2
  %49 = load i32, i32* %height44, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %rem45 = urem i32 %49, %50
  %cmp46 = icmp ult i32 1, %rem45
  br i1 %cmp46, label %if.then.48, label %if.else.54

if.then.48:                                       ; preds = %if.end.43
  %51 = load i32, i32* %division_y, align 4
  %inc49 = add nsw i32 %51, 1
  store i32 %inc49, i32* %division_y, align 4
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height50 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 2
  %53 = load i32, i32* %height50, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %rem51 = urem i32 %53, %54
  %div52 = udiv i32 %rem51, 2
  %55 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %sub53 = sub i32 %div52, %55
  store i32 %sub53, i32* %offset_y, align 4
  br label %if.end.55

if.else.54:                                       ; preds = %if.end.43
  store i32 0, i32* %offset_y, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.48
  br label %if.end.57

if.else.56:                                       ; preds = %if.end.30
  store i32 0, i32* %offset_x, align 4
  store i32 0, i32* %offset_y, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.end.55
  br label %if.end.69

if.else.58:                                       ; preds = %entry
  %56 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 6), align 4
  %tobool59 = icmp ne i32 %56, 0
  br i1 %tobool59, label %if.then.60, label %if.else.67

if.then.60:                                       ; preds = %if.else.58
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %57, i32 0, i32 1
  %58 = load i32, i32* %width61, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %rem62 = urem i32 %58, %59
  %div63 = udiv i32 %rem62, 2
  store i32 %div63, i32* %offset_x, align 4
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %60, i32 0, i32 2
  %61 = load i32, i32* %height64, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %rem65 = urem i32 %61, %62
  %div66 = udiv i32 %rem65, 2
  store i32 %div66, i32* %offset_y, align 4
  br label %if.end.68

if.else.67:                                       ; preds = %if.else.58
  store i32 0, i32* %offset_x, align 4
  store i32 0, i32* %offset_y, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.60
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.57
  %63 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 4), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %conv70 = sitofp i32 %64 to double
  %mul71 = fmul double %63, %conv70
  %div72 = fdiv double %mul71, 1.000000e+02
  %conv73 = fptosi double %div72 to i32
  store i32 %conv73, i32* %move_max_pixels, align 4
  %65 = load i32, i32* %division_x, align 4
  %66 = load i32, i32* %division_y, align 4
  %mul74 = mul nsw i32 %65, %66
  store i32 %mul74, i32* %numof_tiles, align 4
  %67 = load i32, i32* %numof_tiles, align 4
  %conv75 = sext i32 %67 to i64
  %call76 = call noalias i8* @g_malloc_n(i64 %conv75, i64 28)
  %68 = bitcast i8* %call76 to %struct._Tile*
  store %struct._Tile* %68, %struct._Tile** %tiles, align 8
  store %struct._Tile* %68, %struct._Tile** %t, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %if.end.69
  %69 = load i32, i32* %y, align 4
  %70 = load i32, i32* %division_y, align 4
  %cmp77 = icmp slt i32 %69, %70
  br i1 %cmp77, label %for.body, label %for.end.133

for.body:                                         ; preds = %for.cond
  %71 = load i32, i32* %offset_y, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %73 = load i32, i32* %y, align 4
  %mul79 = mul nsw i32 %72, %73
  %add80 = add nsw i32 %71, %mul79
  store i32 %add80, i32* %srcy, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc, %for.body
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %division_x, align 4
  %cmp82 = icmp slt i32 %74, %75
  br i1 %cmp82, label %for.body.84, label %for.end

for.body.84:                                      ; preds = %for.cond.81
  %76 = load i32, i32* %offset_x, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %78 = load i32, i32* %x, align 4
  %mul85 = mul nsw i32 %77, %78
  %add86 = add nsw i32 %76, %mul85
  store i32 %add86, i32* %srcx, align 4
  %79 = load i32, i32* %srcx, align 4
  %cmp87 = icmp slt i32 %79, 0
  br i1 %cmp87, label %if.then.89, label %if.else.93

if.then.89:                                       ; preds = %for.body.84
  %80 = load %struct._Tile*, %struct._Tile** %t, align 8
  %x90 = getelementptr inbounds %struct._Tile, %struct._Tile* %80, i32 0, i32 0
  store i32 0, i32* %x90, align 4
  %81 = load i32, i32* %srcx, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %add91 = add nsw i32 %81, %82
  %83 = load %struct._Tile*, %struct._Tile** %t, align 8
  %width92 = getelementptr inbounds %struct._Tile, %struct._Tile* %83, i32 0, i32 3
  store i32 %add91, i32* %width92, align 4
  br label %if.end.107

if.else.93:                                       ; preds = %for.body.84
  %84 = load i32, i32* %srcx, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %add94 = add nsw i32 %84, %85
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width95 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %86, i32 0, i32 1
  %87 = load i32, i32* %width95, align 4
  %cmp96 = icmp ult i32 %add94, %87
  br i1 %cmp96, label %if.then.98, label %if.else.101

if.then.98:                                       ; preds = %if.else.93
  %88 = load i32, i32* %srcx, align 4
  %89 = load %struct._Tile*, %struct._Tile** %t, align 8
  %x99 = getelementptr inbounds %struct._Tile, %struct._Tile* %89, i32 0, i32 0
  store i32 %88, i32* %x99, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %91 = load %struct._Tile*, %struct._Tile** %t, align 8
  %width100 = getelementptr inbounds %struct._Tile, %struct._Tile* %91, i32 0, i32 3
  store i32 %90, i32* %width100, align 4
  br label %if.end.106

if.else.101:                                      ; preds = %if.else.93
  %92 = load i32, i32* %srcx, align 4
  %93 = load %struct._Tile*, %struct._Tile** %t, align 8
  %x102 = getelementptr inbounds %struct._Tile, %struct._Tile* %93, i32 0, i32 0
  store i32 %92, i32* %x102, align 4
  %94 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width103 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %94, i32 0, i32 1
  %95 = load i32, i32* %width103, align 4
  %96 = load i32, i32* %srcx, align 4
  %sub104 = sub i32 %95, %96
  %97 = load %struct._Tile*, %struct._Tile** %t, align 8
  %width105 = getelementptr inbounds %struct._Tile, %struct._Tile* %97, i32 0, i32 3
  store i32 %sub104, i32* %width105, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.101, %if.then.98
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.89
  %98 = load i32, i32* %srcy, align 4
  %cmp108 = icmp slt i32 %98, 0
  br i1 %cmp108, label %if.then.110, label %if.else.114

if.then.110:                                      ; preds = %if.end.107
  %99 = load %struct._Tile*, %struct._Tile** %t, align 8
  %y111 = getelementptr inbounds %struct._Tile, %struct._Tile* %99, i32 0, i32 1
  store i32 0, i32* %y111, align 4
  %100 = load i32, i32* %srcy, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %add112 = add nsw i32 %100, %101
  %102 = load %struct._Tile*, %struct._Tile** %t, align 8
  %height113 = getelementptr inbounds %struct._Tile, %struct._Tile* %102, i32 0, i32 4
  store i32 %add112, i32* %height113, align 4
  br label %if.end.128

if.else.114:                                      ; preds = %if.end.107
  %103 = load i32, i32* %srcy, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %add115 = add nsw i32 %103, %104
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height116 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %105, i32 0, i32 2
  %106 = load i32, i32* %height116, align 4
  %cmp117 = icmp ult i32 %add115, %106
  br i1 %cmp117, label %if.then.119, label %if.else.122

if.then.119:                                      ; preds = %if.else.114
  %107 = load i32, i32* %srcy, align 4
  %108 = load %struct._Tile*, %struct._Tile** %t, align 8
  %y120 = getelementptr inbounds %struct._Tile, %struct._Tile* %108, i32 0, i32 1
  store i32 %107, i32* %y120, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %110 = load %struct._Tile*, %struct._Tile** %t, align 8
  %height121 = getelementptr inbounds %struct._Tile, %struct._Tile* %110, i32 0, i32 4
  store i32 %109, i32* %height121, align 4
  br label %if.end.127

if.else.122:                                      ; preds = %if.else.114
  %111 = load i32, i32* %srcy, align 4
  %112 = load %struct._Tile*, %struct._Tile** %t, align 8
  %y123 = getelementptr inbounds %struct._Tile, %struct._Tile* %112, i32 0, i32 1
  store i32 %111, i32* %y123, align 4
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height124 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %113, i32 0, i32 2
  %114 = load i32, i32* %height124, align 4
  %115 = load i32, i32* %srcy, align 4
  %sub125 = sub i32 %114, %115
  %116 = load %struct._Tile*, %struct._Tile** %t, align 8
  %height126 = getelementptr inbounds %struct._Tile, %struct._Tile* %116, i32 0, i32 4
  store i32 %sub125, i32* %height126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.122, %if.then.119
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.110
  %117 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call129 = call i32 @g_rand_int(%struct._GRand* %117)
  %118 = load %struct._Tile*, %struct._Tile** %t, align 8
  %z = getelementptr inbounds %struct._Tile, %struct._Tile* %118, i32 0, i32 2
  store i32 %call129, i32* %z, align 4
  %119 = load %struct._Tile*, %struct._Tile** %t, align 8
  %move_x = getelementptr inbounds %struct._Tile, %struct._Tile* %119, i32 0, i32 5
  %120 = load %struct._Tile*, %struct._Tile** %t, align 8
  %move_y = getelementptr inbounds %struct._Tile, %struct._Tile* %120, i32 0, i32 6
  %121 = load i32, i32* %move_max_pixels, align 4
  call void @random_move(i32* %move_x, i32* %move_y, i32 %121)
  br label %for.inc

for.inc:                                          ; preds = %if.end.128
  %122 = load i32, i32* %x, align 4
  %inc130 = add nsw i32 %122, 1
  store i32 %inc130, i32* %x, align 4
  %123 = load %struct._Tile*, %struct._Tile** %t, align 8
  %incdec.ptr = getelementptr inbounds %struct._Tile, %struct._Tile* %123, i32 1
  store %struct._Tile* %incdec.ptr, %struct._Tile** %t, align 8
  br label %for.cond.81

for.end:                                          ; preds = %for.cond.81
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end
  %124 = load i32, i32* %y, align 4
  %inc132 = add nsw i32 %124, 1
  store i32 %inc132, i32* %y, align 4
  br label %for.cond

for.end.133:                                      ; preds = %for.cond
  %125 = load %struct._Tile*, %struct._Tile** %tiles, align 8
  %126 = bitcast %struct._Tile* %125 to i8*
  %127 = load i32, i32* %numof_tiles, align 4
  %conv134 = sext i32 %127 to i64
  call void @qsort(i8* %126, i64 %conv134, i64 28, i32 (i8*, i8*)* @tile_compare)
  %128 = load i8*, i8** %pixels, align 8
  %129 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width135 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %129, i32 0, i32 1
  %130 = load i32, i32* %width135, align 4
  %131 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height136 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %131, i32 0, i32 2
  %132 = load i32, i32* %height136, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src, i8* %128, i32 0, i32 0, i32 %130, i32 %132)
  %133 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 5), align 4
  %cmp137 = icmp eq i32 %133, 1
  br i1 %cmp137, label %if.then.139, label %if.else.142

if.then.139:                                      ; preds = %for.end.133
  %134 = load i32, i32* %offset_x, align 4
  store i32 %134, i32* %clear_x0, align 4
  %135 = load i32, i32* %offset_y, align 4
  store i32 %135, i32* %clear_y0, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %137 = load i32, i32* %division_x, align 4
  %mul140 = mul nsw i32 %136, %137
  store i32 %mul140, i32* %clear_width, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %139 = load i32, i32* %division_y, align 4
  %mul141 = mul nsw i32 %138, %139
  store i32 %mul141, i32* %clear_height, align 4
  br label %if.end.145

if.else.142:                                      ; preds = %for.end.133
  store i32 0, i32* %clear_x0, align 4
  store i32 0, i32* %clear_y0, align 4
  %140 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width143 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %140, i32 0, i32 1
  %141 = load i32, i32* %width143, align 4
  store i32 %141, i32* %clear_width, align 4
  %142 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height144 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %142, i32 0, i32 2
  %143 = load i32, i32* %height144, align 4
  store i32 %143, i32* %clear_height, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.139
  %144 = load i32, i32* %clear_x0, align 4
  %145 = load i32, i32* %clear_width, align 4
  %add146 = add nsw i32 %144, %145
  store i32 %add146, i32* %clear_x1, align 4
  %146 = load i32, i32* %clear_y0, align 4
  %147 = load i32, i32* %clear_height, align 4
  %add147 = add nsw i32 %146, %147
  store i32 %add147, i32* %clear_y1, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 8), align 4
  switch i32 %148, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.176
    i32 2, label %sw.bb.223
    i32 3, label %sw.bb.224
    i32 4, label %sw.bb.262
    i32 5, label %sw.bb.300
  ]

sw.bb:                                            ; preds = %if.end.145
  %149 = load i32, i32* %clear_y0, align 4
  store i32 %149, i32* %y, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.173, %sw.bb
  %150 = load i32, i32* %y, align 4
  %151 = load i32, i32* %clear_y1, align 4
  %cmp149 = icmp slt i32 %150, %151
  br i1 %cmp149, label %for.body.151, label %for.end.175

for.body.151:                                     ; preds = %for.cond.148
  %152 = load i32, i32* %clear_x0, align 4
  store i32 %152, i32* %x, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.170, %for.body.151
  %153 = load i32, i32* %x, align 4
  %154 = load i32, i32* %clear_x1, align 4
  %cmp153 = icmp slt i32 %153, %154
  br i1 %cmp153, label %for.body.155, label %for.end.172

for.body.155:                                     ; preds = %for.cond.152
  %155 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp156 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %155, i32 0, i32 3
  %156 = load i32, i32* %bpp156, align 4
  %157 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width157 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %157, i32 0, i32 1
  %158 = load i32, i32* %width157, align 4
  %159 = load i32, i32* %y, align 4
  %mul158 = mul i32 %158, %159
  %160 = load i32, i32* %x, align 4
  %add159 = add i32 %mul158, %160
  %mul160 = mul i32 %156, %add159
  store i32 %mul160, i32* %dindex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.167, %for.body.155
  %161 = load i32, i32* %i, align 4
  %162 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp162 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %162, i32 0, i32 3
  %163 = load i32, i32* %bpp162, align 4
  %cmp163 = icmp ult i32 %161, %163
  br i1 %cmp163, label %for.body.165, label %for.end.169

for.body.165:                                     ; preds = %for.cond.161
  %164 = load i32, i32* %dindex, align 4
  %165 = load i32, i32* %i, align 4
  %add166 = add nsw i32 %164, %165
  %idxprom = sext i32 %add166 to i64
  %166 = load i8*, i8** %pixels, align 8
  %arrayidx = getelementptr inbounds i8, i8* %166, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.165
  %167 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %167, 1
  store i32 %inc168, i32* %i, align 4
  br label %for.cond.161

for.end.169:                                      ; preds = %for.cond.161
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.end.169
  %168 = load i32, i32* %x, align 4
  %inc171 = add nsw i32 %168, 1
  store i32 %inc171, i32* %x, align 4
  br label %for.cond.152

for.end.172:                                      ; preds = %for.cond.152
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.end.172
  %169 = load i32, i32* %y, align 4
  %inc174 = add nsw i32 %169, 1
  store i32 %inc174, i32* %y, align 4
  br label %for.cond.148

for.end.175:                                      ; preds = %for.cond.148
  br label %sw.epilog

sw.bb.176:                                        ; preds = %if.end.145
  %170 = load i32, i32* %clear_y0, align 4
  store i32 %170, i32* %y, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.220, %sw.bb.176
  %171 = load i32, i32* %y, align 4
  %172 = load i32, i32* %clear_y1, align 4
  %cmp178 = icmp slt i32 %171, %172
  br i1 %cmp178, label %for.body.180, label %for.end.222

for.body.180:                                     ; preds = %for.cond.177
  %173 = load i32, i32* %clear_x0, align 4
  store i32 %173, i32* %x, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.217, %for.body.180
  %174 = load i32, i32* %x, align 4
  %175 = load i32, i32* %clear_x1, align 4
  %cmp182 = icmp slt i32 %174, %175
  br i1 %cmp182, label %for.body.184, label %for.end.219

for.body.184:                                     ; preds = %for.cond.181
  %176 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp185 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %176, i32 0, i32 3
  %177 = load i32, i32* %bpp185, align 4
  %178 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width186 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %178, i32 0, i32 1
  %179 = load i32, i32* %width186, align 4
  %180 = load i32, i32* %y, align 4
  %mul187 = mul i32 %179, %180
  %181 = load i32, i32* %x, align 4
  %add188 = add i32 %mul187, %181
  %mul189 = mul i32 %177, %add188
  store i32 %mul189, i32* %dindex, align 4
  %182 = load i32, i32* %dindex, align 4
  %add190 = add nsw i32 %182, 0
  %idxprom191 = sext i32 %add190 to i64
  %183 = load i8*, i8** %pixels, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %183, i64 %idxprom191
  %184 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %184 to i32
  %sub194 = sub nsw i32 255, %conv193
  %conv195 = trunc i32 %sub194 to i8
  %185 = load i32, i32* %dindex, align 4
  %add196 = add nsw i32 %185, 0
  %idxprom197 = sext i32 %add196 to i64
  %186 = load i8*, i8** %pixels, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %186, i64 %idxprom197
  store i8 %conv195, i8* %arrayidx198, align 1
  %187 = load i32, i32* %dindex, align 4
  %add199 = add nsw i32 %187, 1
  %idxprom200 = sext i32 %add199 to i64
  %188 = load i8*, i8** %pixels, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %188, i64 %idxprom200
  %189 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %189 to i32
  %sub203 = sub nsw i32 255, %conv202
  %conv204 = trunc i32 %sub203 to i8
  %190 = load i32, i32* %dindex, align 4
  %add205 = add nsw i32 %190, 1
  %idxprom206 = sext i32 %add205 to i64
  %191 = load i8*, i8** %pixels, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %191, i64 %idxprom206
  store i8 %conv204, i8* %arrayidx207, align 1
  %192 = load i32, i32* %dindex, align 4
  %add208 = add nsw i32 %192, 2
  %idxprom209 = sext i32 %add208 to i64
  %193 = load i8*, i8** %pixels, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %193, i64 %idxprom209
  %194 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %194 to i32
  %sub212 = sub nsw i32 255, %conv211
  %conv213 = trunc i32 %sub212 to i8
  %195 = load i32, i32* %dindex, align 4
  %add214 = add nsw i32 %195, 2
  %idxprom215 = sext i32 %add214 to i64
  %196 = load i8*, i8** %pixels, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %196, i64 %idxprom215
  store i8 %conv213, i8* %arrayidx216, align 1
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.184
  %197 = load i32, i32* %x, align 4
  %inc218 = add nsw i32 %197, 1
  store i32 %inc218, i32* %x, align 4
  br label %for.cond.181

for.end.219:                                      ; preds = %for.cond.181
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.end.219
  %198 = load i32, i32* %y, align 4
  %inc221 = add nsw i32 %198, 1
  store i32 %inc221, i32* %y, align 4
  br label %for.cond.177

for.end.222:                                      ; preds = %for.cond.177
  br label %sw.epilog

sw.bb.223:                                        ; preds = %if.end.145
  br label %sw.epilog

sw.bb.224:                                        ; preds = %if.end.145
  %call225 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  %arrayidx226 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %arrayidx227 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %arrayidx228 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %arrayidx226, i8* %arrayidx227, i8* %arrayidx228)
  %arrayidx229 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  store i8 -1, i8* %arrayidx229, align 1
  %199 = load i32, i32* %clear_y0, align 4
  store i32 %199, i32* %y, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.259, %sw.bb.224
  %200 = load i32, i32* %y, align 4
  %201 = load i32, i32* %clear_y1, align 4
  %cmp231 = icmp slt i32 %200, %201
  br i1 %cmp231, label %for.body.233, label %for.end.261

for.body.233:                                     ; preds = %for.cond.230
  %202 = load i32, i32* %clear_x0, align 4
  store i32 %202, i32* %x, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.256, %for.body.233
  %203 = load i32, i32* %x, align 4
  %204 = load i32, i32* %clear_x1, align 4
  %cmp235 = icmp slt i32 %203, %204
  br i1 %cmp235, label %for.body.237, label %for.end.258

for.body.237:                                     ; preds = %for.cond.234
  %205 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp238 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %205, i32 0, i32 3
  %206 = load i32, i32* %bpp238, align 4
  %207 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width239 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %207, i32 0, i32 1
  %208 = load i32, i32* %width239, align 4
  %209 = load i32, i32* %y, align 4
  %mul240 = mul i32 %208, %209
  %210 = load i32, i32* %x, align 4
  %add241 = add i32 %mul240, %210
  %mul242 = mul i32 %206, %add241
  store i32 %mul242, i32* %dindex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.253, %for.body.237
  %211 = load i32, i32* %i, align 4
  %212 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp244 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %212, i32 0, i32 3
  %213 = load i32, i32* %bpp244, align 4
  %cmp245 = icmp ult i32 %211, %213
  br i1 %cmp245, label %for.body.247, label %for.end.255

for.body.247:                                     ; preds = %for.cond.243
  %214 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %214 to i64
  %arrayidx249 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom248
  %215 = load i8, i8* %arrayidx249, align 1
  %216 = load i32, i32* %dindex, align 4
  %217 = load i32, i32* %i, align 4
  %add250 = add nsw i32 %216, %217
  %idxprom251 = sext i32 %add250 to i64
  %218 = load i8*, i8** %pixels, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %218, i64 %idxprom251
  store i8 %215, i8* %arrayidx252, align 1
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.247
  %219 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %219, 1
  store i32 %inc254, i32* %i, align 4
  br label %for.cond.243

for.end.255:                                      ; preds = %for.cond.243
  br label %for.inc.256

for.inc.256:                                      ; preds = %for.end.255
  %220 = load i32, i32* %x, align 4
  %inc257 = add nsw i32 %220, 1
  store i32 %inc257, i32* %x, align 4
  br label %for.cond.234

for.end.258:                                      ; preds = %for.cond.234
  br label %for.inc.259

for.inc.259:                                      ; preds = %for.end.258
  %221 = load i32, i32* %y, align 4
  %inc260 = add nsw i32 %221, 1
  store i32 %inc260, i32* %y, align 4
  br label %for.cond.230

for.end.261:                                      ; preds = %for.cond.230
  br label %sw.epilog

sw.bb.262:                                        ; preds = %if.end.145
  %call263 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  %arrayidx264 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %arrayidx265 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 1
  %arrayidx266 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %arrayidx264, i8* %arrayidx265, i8* %arrayidx266)
  %arrayidx267 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 3
  store i8 -1, i8* %arrayidx267, align 1
  %222 = load i32, i32* %clear_y0, align 4
  store i32 %222, i32* %y, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.297, %sw.bb.262
  %223 = load i32, i32* %y, align 4
  %224 = load i32, i32* %clear_y1, align 4
  %cmp269 = icmp slt i32 %223, %224
  br i1 %cmp269, label %for.body.271, label %for.end.299

for.body.271:                                     ; preds = %for.cond.268
  %225 = load i32, i32* %clear_x0, align 4
  store i32 %225, i32* %x, align 4
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.294, %for.body.271
  %226 = load i32, i32* %x, align 4
  %227 = load i32, i32* %clear_x1, align 4
  %cmp273 = icmp slt i32 %226, %227
  br i1 %cmp273, label %for.body.275, label %for.end.296

for.body.275:                                     ; preds = %for.cond.272
  %228 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp276 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %228, i32 0, i32 3
  %229 = load i32, i32* %bpp276, align 4
  %230 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width277 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %230, i32 0, i32 1
  %231 = load i32, i32* %width277, align 4
  %232 = load i32, i32* %y, align 4
  %mul278 = mul i32 %231, %232
  %233 = load i32, i32* %x, align 4
  %add279 = add i32 %mul278, %233
  %mul280 = mul i32 %229, %add279
  store i32 %mul280, i32* %dindex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.281

for.cond.281:                                     ; preds = %for.inc.291, %for.body.275
  %234 = load i32, i32* %i, align 4
  %235 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp282 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %235, i32 0, i32 3
  %236 = load i32, i32* %bpp282, align 4
  %cmp283 = icmp ult i32 %234, %236
  br i1 %cmp283, label %for.body.285, label %for.end.293

for.body.285:                                     ; preds = %for.cond.281
  %237 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %237 to i64
  %arrayidx287 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom286
  %238 = load i8, i8* %arrayidx287, align 1
  %239 = load i32, i32* %dindex, align 4
  %240 = load i32, i32* %i, align 4
  %add288 = add nsw i32 %239, %240
  %idxprom289 = sext i32 %add288 to i64
  %241 = load i8*, i8** %pixels, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %241, i64 %idxprom289
  store i8 %238, i8* %arrayidx290, align 1
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.body.285
  %242 = load i32, i32* %i, align 4
  %inc292 = add nsw i32 %242, 1
  store i32 %inc292, i32* %i, align 4
  br label %for.cond.281

for.end.293:                                      ; preds = %for.cond.281
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.end.293
  %243 = load i32, i32* %x, align 4
  %inc295 = add nsw i32 %243, 1
  store i32 %inc295, i32* %x, align 4
  br label %for.cond.272

for.end.296:                                      ; preds = %for.cond.272
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.end.296
  %244 = load i32, i32* %y, align 4
  %inc298 = add nsw i32 %244, 1
  store i32 %inc298, i32* %y, align 4
  br label %for.cond.268

for.end.299:                                      ; preds = %for.cond.268
  br label %sw.epilog

sw.bb.300:                                        ; preds = %if.end.145
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %arraydecay301 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay301, i64 1
  %arraydecay302 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %add.ptr303 = getelementptr inbounds i8, i8* %arraydecay302, i64 2
  %arraydecay304 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %add.ptr305 = getelementptr inbounds i8, i8* %arraydecay304, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 9), i8* %arraydecay, i8* %add.ptr, i8* %add.ptr303, i8* %add.ptr305)
  %245 = load i32, i32* %clear_y0, align 4
  store i32 %245, i32* %y, align 4
  br label %for.cond.306

for.cond.306:                                     ; preds = %for.inc.335, %sw.bb.300
  %246 = load i32, i32* %y, align 4
  %247 = load i32, i32* %clear_y1, align 4
  %cmp307 = icmp slt i32 %246, %247
  br i1 %cmp307, label %for.body.309, label %for.end.337

for.body.309:                                     ; preds = %for.cond.306
  %248 = load i32, i32* %clear_x0, align 4
  store i32 %248, i32* %x, align 4
  br label %for.cond.310

for.cond.310:                                     ; preds = %for.inc.332, %for.body.309
  %249 = load i32, i32* %x, align 4
  %250 = load i32, i32* %clear_x1, align 4
  %cmp311 = icmp slt i32 %249, %250
  br i1 %cmp311, label %for.body.313, label %for.end.334

for.body.313:                                     ; preds = %for.cond.310
  %251 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp314 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %251, i32 0, i32 3
  %252 = load i32, i32* %bpp314, align 4
  %253 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width315 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %253, i32 0, i32 1
  %254 = load i32, i32* %width315, align 4
  %255 = load i32, i32* %y, align 4
  %mul316 = mul i32 %254, %255
  %256 = load i32, i32* %x, align 4
  %add317 = add i32 %mul316, %256
  %mul318 = mul i32 %252, %add317
  store i32 %mul318, i32* %dindex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc.329, %for.body.313
  %257 = load i32, i32* %i, align 4
  %258 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp320 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %258, i32 0, i32 3
  %259 = load i32, i32* %bpp320, align 4
  %cmp321 = icmp ult i32 %257, %259
  br i1 %cmp321, label %for.body.323, label %for.end.331

for.body.323:                                     ; preds = %for.cond.319
  %260 = load i32, i32* %i, align 4
  %idxprom324 = sext i32 %260 to i64
  %arrayidx325 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom324
  %261 = load i8, i8* %arrayidx325, align 1
  %262 = load i32, i32* %dindex, align 4
  %263 = load i32, i32* %i, align 4
  %add326 = add nsw i32 %262, %263
  %idxprom327 = sext i32 %add326 to i64
  %264 = load i8*, i8** %pixels, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %264, i64 %idxprom327
  store i8 %261, i8* %arrayidx328, align 1
  br label %for.inc.329

for.inc.329:                                      ; preds = %for.body.323
  %265 = load i32, i32* %i, align 4
  %inc330 = add nsw i32 %265, 1
  store i32 %inc330, i32* %i, align 4
  br label %for.cond.319

for.end.331:                                      ; preds = %for.cond.319
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.end.331
  %266 = load i32, i32* %x, align 4
  %inc333 = add nsw i32 %266, 1
  store i32 %inc333, i32* %x, align 4
  br label %for.cond.310

for.end.334:                                      ; preds = %for.cond.310
  br label %for.inc.335

for.inc.335:                                      ; preds = %for.end.334
  %267 = load i32, i32* %y, align 4
  %inc336 = add nsw i32 %267, 1
  store i32 %inc336, i32* %y, align 4
  br label %for.cond.306

for.end.337:                                      ; preds = %for.cond.306
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.145, %for.end.337, %for.end.299, %for.end.261, %sw.bb.223, %for.end.222, %for.end.175
  %268 = load %struct._Tile*, %struct._Tile** %tiles, align 8
  store %struct._Tile* %268, %struct._Tile** %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.423, %sw.epilog
  %269 = load i32, i32* %i, align 4
  %270 = load i32, i32* %numof_tiles, align 4
  %cmp339 = icmp slt i32 %269, %270
  br i1 %cmp339, label %for.body.341, label %for.end.426

for.body.341:                                     ; preds = %for.cond.338
  %271 = load %struct._Tile*, %struct._Tile** %t, align 8
  %x342 = getelementptr inbounds %struct._Tile, %struct._Tile* %271, i32 0, i32 0
  %272 = load i32, i32* %x342, align 4
  %273 = load %struct._Tile*, %struct._Tile** %t, align 8
  %move_x343 = getelementptr inbounds %struct._Tile, %struct._Tile* %273, i32 0, i32 5
  %274 = load i32, i32* %move_x343, align 4
  %add344 = add i32 %272, %274
  store i32 %add344, i32* %x0, align 4
  %275 = load %struct._Tile*, %struct._Tile** %t, align 8
  %y345 = getelementptr inbounds %struct._Tile, %struct._Tile* %275, i32 0, i32 1
  %276 = load i32, i32* %y345, align 4
  %277 = load %struct._Tile*, %struct._Tile** %t, align 8
  %move_y346 = getelementptr inbounds %struct._Tile, %struct._Tile* %277, i32 0, i32 6
  %278 = load i32, i32* %move_y346, align 4
  %add347 = add i32 %276, %278
  store i32 %add347, i32* %y0, align 4
  %279 = load i8*, i8** %buffer, align 8
  %280 = load %struct._Tile*, %struct._Tile** %t, align 8
  %x348 = getelementptr inbounds %struct._Tile, %struct._Tile* %280, i32 0, i32 0
  %281 = load i32, i32* %x348, align 4
  %282 = load %struct._Tile*, %struct._Tile** %t, align 8
  %y349 = getelementptr inbounds %struct._Tile, %struct._Tile* %282, i32 0, i32 1
  %283 = load i32, i32* %y349, align 4
  %284 = load %struct._Tile*, %struct._Tile** %t, align 8
  %width350 = getelementptr inbounds %struct._Tile, %struct._Tile* %284, i32 0, i32 3
  %285 = load i32, i32* %width350, align 4
  %286 = load %struct._Tile*, %struct._Tile** %t, align 8
  %height351 = getelementptr inbounds %struct._Tile, %struct._Tile* %286, i32 0, i32 4
  %287 = load i32, i32* %height351, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src, i8* %279, i32 %281, i32 %283, i32 %285, i32 %287)
  store i32 0, i32* %y, align 4
  br label %for.cond.352

for.cond.352:                                     ; preds = %for.inc.416, %for.body.341
  %288 = load i32, i32* %y, align 4
  %289 = load %struct._Tile*, %struct._Tile** %t, align 8
  %height353 = getelementptr inbounds %struct._Tile, %struct._Tile* %289, i32 0, i32 4
  %290 = load i32, i32* %height353, align 4
  %cmp354 = icmp ult i32 %288, %290
  br i1 %cmp354, label %for.body.356, label %for.end.418

for.body.356:                                     ; preds = %for.cond.352
  %291 = load i32, i32* %y0, align 4
  %292 = load i32, i32* %y, align 4
  %add357 = add nsw i32 %291, %292
  store i32 %add357, i32* %py, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.358

for.cond.358:                                     ; preds = %for.inc.413, %for.body.356
  %293 = load i32, i32* %x, align 4
  %294 = load %struct._Tile*, %struct._Tile** %t, align 8
  %width359 = getelementptr inbounds %struct._Tile, %struct._Tile* %294, i32 0, i32 3
  %295 = load i32, i32* %width359, align 4
  %cmp360 = icmp ult i32 %293, %295
  br i1 %cmp360, label %for.body.362, label %for.end.415

for.body.362:                                     ; preds = %for.cond.358
  %296 = load i32, i32* %x0, align 4
  %297 = load i32, i32* %x, align 4
  %add363 = add nsw i32 %296, %297
  store i32 %add363, i32* %px, align 4
  %298 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp364 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %298, i32 0, i32 3
  %299 = load i32, i32* %bpp364, align 4
  %300 = load %struct._Tile*, %struct._Tile** %t, align 8
  %width365 = getelementptr inbounds %struct._Tile, %struct._Tile* %300, i32 0, i32 3
  %301 = load i32, i32* %width365, align 4
  %302 = load i32, i32* %y, align 4
  %mul366 = mul i32 %301, %302
  %303 = load i32, i32* %x, align 4
  %add367 = add i32 %mul366, %303
  %mul368 = mul i32 %299, %add367
  store i32 %mul368, i32* %sindex, align 4
  %304 = load i32, i32* %px, align 4
  %cmp369 = icmp sle i32 0, %304
  br i1 %cmp369, label %land.lhs.true, label %if.else.391

land.lhs.true:                                    ; preds = %for.body.362
  %305 = load i32, i32* %px, align 4
  %306 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width371 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %306, i32 0, i32 1
  %307 = load i32, i32* %width371, align 4
  %cmp372 = icmp ult i32 %305, %307
  br i1 %cmp372, label %land.lhs.true.374, label %if.else.391

land.lhs.true.374:                                ; preds = %land.lhs.true
  %308 = load i32, i32* %py, align 4
  %cmp375 = icmp sle i32 0, %308
  br i1 %cmp375, label %land.lhs.true.377, label %if.else.391

land.lhs.true.377:                                ; preds = %land.lhs.true.374
  %309 = load i32, i32* %py, align 4
  %310 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height378 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %310, i32 0, i32 2
  %311 = load i32, i32* %height378, align 4
  %cmp379 = icmp ult i32 %309, %311
  br i1 %cmp379, label %if.then.381, label %if.else.391

if.then.381:                                      ; preds = %land.lhs.true.377
  %312 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp382 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %312, i32 0, i32 3
  %313 = load i32, i32* %bpp382, align 4
  %314 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width383 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %314, i32 0, i32 1
  %315 = load i32, i32* %width383, align 4
  %316 = load i32, i32* %py, align 4
  %mul384 = mul i32 %315, %316
  %317 = load i32, i32* %px, align 4
  %add385 = add i32 %mul384, %317
  %mul386 = mul i32 %313, %add385
  store i32 %mul386, i32* %dindex, align 4
  %318 = load void (i8*, i8*)*, void (i8*, i8*)** @filter.overlap, align 8
  %319 = load i32, i32* %dindex, align 4
  %idxprom387 = sext i32 %319 to i64
  %320 = load i8*, i8** %pixels, align 8
  %arrayidx388 = getelementptr inbounds i8, i8* %320, i64 %idxprom387
  %321 = load i32, i32* %sindex, align 4
  %idxprom389 = sext i32 %321 to i64
  %322 = load i8*, i8** %buffer, align 8
  %arrayidx390 = getelementptr inbounds i8, i8* %322, i64 %idxprom389
  call void %318(i8* %arrayidx388, i8* %arrayidx390)
  br label %if.end.412

if.else.391:                                      ; preds = %land.lhs.true.377, %land.lhs.true.374, %land.lhs.true, %for.body.362
  %323 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 7), align 4
  %tobool392 = icmp ne i32 %323, 0
  br i1 %tobool392, label %if.then.393, label %if.end.411

if.then.393:                                      ; preds = %if.else.391
  %324 = load i32, i32* %px, align 4
  %325 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width394 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %325, i32 0, i32 1
  %326 = load i32, i32* %width394, align 4
  %add395 = add i32 %324, %326
  %327 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width396 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %327, i32 0, i32 1
  %328 = load i32, i32* %width396, align 4
  %rem397 = urem i32 %add395, %328
  store i32 %rem397, i32* %px, align 4
  %329 = load i32, i32* %py, align 4
  %330 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height398 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %330, i32 0, i32 2
  %331 = load i32, i32* %height398, align 4
  %add399 = add i32 %329, %331
  %332 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height400 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %332, i32 0, i32 2
  %333 = load i32, i32* %height400, align 4
  %rem401 = urem i32 %add399, %333
  store i32 %rem401, i32* %py, align 4
  %334 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %bpp402 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %334, i32 0, i32 3
  %335 = load i32, i32* %bpp402, align 4
  %336 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width403 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %336, i32 0, i32 1
  %337 = load i32, i32* %width403, align 4
  %338 = load i32, i32* %py, align 4
  %mul404 = mul i32 %337, %338
  %339 = load i32, i32* %px, align 4
  %add405 = add i32 %mul404, %339
  %mul406 = mul i32 %335, %add405
  store i32 %mul406, i32* %dindex, align 4
  %340 = load void (i8*, i8*)*, void (i8*, i8*)** @filter.overlap, align 8
  %341 = load i32, i32* %dindex, align 4
  %idxprom407 = sext i32 %341 to i64
  %342 = load i8*, i8** %pixels, align 8
  %arrayidx408 = getelementptr inbounds i8, i8* %342, i64 %idxprom407
  %343 = load i32, i32* %sindex, align 4
  %idxprom409 = sext i32 %343 to i64
  %344 = load i8*, i8** %buffer, align 8
  %arrayidx410 = getelementptr inbounds i8, i8* %344, i64 %idxprom409
  call void %340(i8* %arrayidx408, i8* %arrayidx410)
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.393, %if.else.391
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %if.then.381
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.412
  %345 = load i32, i32* %x, align 4
  %inc414 = add nsw i32 %345, 1
  store i32 %inc414, i32* %x, align 4
  br label %for.cond.358

for.end.415:                                      ; preds = %for.cond.358
  br label %for.inc.416

for.inc.416:                                      ; preds = %for.end.415
  %346 = load i32, i32* %y, align 4
  %inc417 = add nsw i32 %346, 1
  store i32 %inc417, i32* %y, align 4
  br label %for.cond.352

for.end.418:                                      ; preds = %for.cond.352
  %347 = load i32, i32* %i, align 4
  %conv419 = sitofp i32 %347 to double
  %348 = load i32, i32* %numof_tiles, align 4
  %conv420 = sitofp i32 %348 to double
  %div421 = fdiv double %conv419, %conv420
  %call422 = call i32 @gimp_progress_update(double %div421)
  br label %for.inc.423

for.inc.423:                                      ; preds = %for.end.418
  %349 = load i32, i32* %i, align 4
  %inc424 = add nsw i32 %349, 1
  store i32 %inc424, i32* %i, align 4
  %350 = load %struct._Tile*, %struct._Tile** %t, align 8
  %incdec.ptr425 = getelementptr inbounds %struct._Tile, %struct._Tile* %350, i32 1
  store %struct._Tile* %incdec.ptr425, %struct._Tile** %t, align 8
  br label %for.cond.338

for.end.426:                                      ; preds = %for.cond.338
  %351 = load i8*, i8** %pixels, align 8
  %352 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width427 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %352, i32 0, i32 1
  %353 = load i32, i32* %width427, align 4
  %354 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height428 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %354, i32 0, i32 2
  %355 = load i32, i32* %height428, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst, i8* %351, i32 0, i32 0, i32 %353, i32 %355)
  %call429 = call i32 @gimp_progress_update(double 1.000000e+00)
  %356 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %356)
  %357 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %drawable_id430 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %357, i32 0, i32 0
  %358 = load i32, i32* %drawable_id430, align 4
  %call431 = call i32 @gimp_drawable_merge_shadow(i32 %358, i32 1)
  %359 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %drawable_id432 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %359, i32 0, i32 0
  %360 = load i32, i32* %drawable_id432, align 4
  %361 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 0), align 4
  %362 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 1), align 4
  %363 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 4), align 4
  %364 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 4, i32 5), align 4
  %call433 = call i32 @gimp_drawable_update(i32 %360, i32 %361, i32 %362, i32 %363, i32 %364)
  %365 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %365)
  %366 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %366)
  %367 = load i8*, i8** %pixels, align 8
  call void @g_free(i8* %367)
  %368 = load %struct._Tile*, %struct._Tile** %tiles, align 8
  %369 = bitcast %struct._Tile* %368 to i8*
  call void @g_free(i8* %369)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @division_x_adj_changed(%struct._GtkAdjustment* %adj) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %conv = fptosi double %call to i32
  %cmp = icmp ne i32 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %div = udiv i32 %4, %5
  store i32 %div, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %6 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 0), align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %conv6 = sitofp i32 %9 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @division_y_adj_changed(%struct._GtkAdjustment* %adj) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %conv = fptosi double %call to i32
  %cmp = icmp ne i32 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %div = udiv i32 %4, %5
  store i32 %div, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %6 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 1), align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %conv6 = sitofp i32 %9 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_width_adj_changed(%struct._GtkAdjustment* %adj) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %conv = fptosi double %call to i32
  %cmp = icmp ne i32 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 0), align 4
  %div = udiv i32 %4, %5
  store i32 %div, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %6 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 2), align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 2), align 4
  %conv6 = sitofp i32 %9 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_height_adj_changed(%struct._GtkAdjustment* %adj) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %conv = fptosi double %call to i32
  %cmp = icmp ne i32 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 2), align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 1), align 4
  %div = udiv i32 %4, %5
  store i32 %div, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %6 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @w, i32 0, i32 3), align 8
  %7 = bitcast %struct._GtkObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @p, i32 0, i32 0, i32 3), align 4
  %conv6 = sitofp i32 %9 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare %struct._GRand* @g_rand_new() #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @overlap_RGBA(i8* %base, i8* %top) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %top.addr = alloca i8*, align 8
  %R1 = alloca double, align 8
  %G1 = alloca double, align 8
  %B1 = alloca double, align 8
  %A1 = alloca double, align 8
  %R2 = alloca double, align 8
  %G2 = alloca double, align 8
  %B2 = alloca double, align 8
  %A2 = alloca double, align 8
  %A3 = alloca double, align 8
  %R3 = alloca double, align 8
  %G3 = alloca double, align 8
  %B3 = alloca double, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %top, i8** %top.addr, align 8
  %0 = load i8*, i8** %base.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %1 to double
  %div = fdiv double %conv, 2.550000e+02
  store double %div, double* %R1, align 8
  %2 = load i8*, i8** %base.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = uitofp i8 %3 to double
  %div3 = fdiv double %conv2, 2.550000e+02
  store double %div3, double* %G1, align 8
  %4 = load i8*, i8** %base.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = uitofp i8 %5 to double
  %div6 = fdiv double %conv5, 2.550000e+02
  store double %div6, double* %B1, align 8
  %6 = load i8*, i8** %base.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = uitofp i8 %7 to double
  %div9 = fdiv double %conv8, 2.550000e+02
  store double %div9, double* %A1, align 8
  %8 = load i8*, i8** %top.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = uitofp i8 %9 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  store double %div12, double* %R2, align 8
  %10 = load i8*, i8** %top.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = uitofp i8 %11 to double
  %div15 = fdiv double %conv14, 2.550000e+02
  store double %div15, double* %G2, align 8
  %12 = load i8*, i8** %top.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx16, align 1
  %conv17 = uitofp i8 %13 to double
  %div18 = fdiv double %conv17, 2.550000e+02
  store double %div18, double* %B2, align 8
  %14 = load i8*, i8** %top.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = uitofp i8 %15 to double
  %div21 = fdiv double %conv20, 2.550000e+02
  store double %div21, double* %A2, align 8
  %16 = load double, double* %A2, align 8
  %17 = load double, double* %A1, align 8
  %18 = load double, double* %A2, align 8
  %sub = fsub double 1.000000e+00, %18
  %mul = fmul double %17, %sub
  %add = fadd double %16, %mul
  store double %add, double* %A3, align 8
  %19 = load double, double* %A3, align 8
  %cmp = fcmp olt double 0.000000e+00, %19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = load double, double* %R1, align 8
  %21 = load double, double* %A1, align 8
  %mul23 = fmul double %20, %21
  %22 = load double, double* %A2, align 8
  %sub24 = fsub double 1.000000e+00, %22
  %mul25 = fmul double %mul23, %sub24
  %23 = load double, double* %R2, align 8
  %24 = load double, double* %A2, align 8
  %mul26 = fmul double %23, %24
  %add27 = fadd double %mul25, %mul26
  %25 = load double, double* %A3, align 8
  %div28 = fdiv double %add27, %25
  store double %div28, double* %R3, align 8
  %26 = load double, double* %G1, align 8
  %27 = load double, double* %A1, align 8
  %mul29 = fmul double %26, %27
  %28 = load double, double* %A2, align 8
  %sub30 = fsub double 1.000000e+00, %28
  %mul31 = fmul double %mul29, %sub30
  %29 = load double, double* %G2, align 8
  %30 = load double, double* %A2, align 8
  %mul32 = fmul double %29, %30
  %add33 = fadd double %mul31, %mul32
  %31 = load double, double* %A3, align 8
  %div34 = fdiv double %add33, %31
  store double %div34, double* %G3, align 8
  %32 = load double, double* %B1, align 8
  %33 = load double, double* %A1, align 8
  %mul35 = fmul double %32, %33
  %34 = load double, double* %A2, align 8
  %sub36 = fsub double 1.000000e+00, %34
  %mul37 = fmul double %mul35, %sub36
  %35 = load double, double* %B2, align 8
  %36 = load double, double* %A2, align 8
  %mul38 = fmul double %35, %36
  %add39 = fadd double %mul37, %mul38
  %37 = load double, double* %A3, align 8
  %div40 = fdiv double %add39, %37
  store double %div40, double* %B3, align 8
  %38 = load double, double* %R3, align 8
  %cmp41 = fcmp ogt double %38, 1.000000e+00
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.47

cond.false:                                       ; preds = %if.then
  %39 = load double, double* %R3, align 8
  %cmp43 = fcmp olt double %39, 0.000000e+00
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false
  br label %cond.end

cond.false.46:                                    ; preds = %cond.false
  %40 = load double, double* %R3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.46, %cond.true.45
  %cond = phi double [ 0.000000e+00, %cond.true.45 ], [ %40, %cond.false.46 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end, %cond.true
  %cond48 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond48, double* %R3, align 8
  %41 = load double, double* %G3, align 8
  %cmp49 = fcmp ogt double %41, 1.000000e+00
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.47
  br label %cond.end.59

cond.false.52:                                    ; preds = %cond.end.47
  %42 = load double, double* %G3, align 8
  %cmp53 = fcmp olt double %42, 0.000000e+00
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false.52
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.false.52
  %43 = load double, double* %G3, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi double [ 0.000000e+00, %cond.true.55 ], [ %43, %cond.false.56 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.57, %cond.true.51
  %cond60 = phi double [ 1.000000e+00, %cond.true.51 ], [ %cond58, %cond.end.57 ]
  store double %cond60, double* %G3, align 8
  %44 = load double, double* %B3, align 8
  %cmp61 = fcmp ogt double %44, 1.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.59
  br label %cond.end.71

cond.false.64:                                    ; preds = %cond.end.59
  %45 = load double, double* %B3, align 8
  %cmp65 = fcmp olt double %45, 0.000000e+00
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.64
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.false.64
  %46 = load double, double* %B3, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi double [ 0.000000e+00, %cond.true.67 ], [ %46, %cond.false.68 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.63
  %cond72 = phi double [ 1.000000e+00, %cond.true.63 ], [ %cond70, %cond.end.69 ]
  store double %cond72, double* %B3, align 8
  %47 = load double, double* %R3, align 8
  %mul73 = fmul double %47, 2.550000e+02
  %conv74 = fptoui double %mul73 to i8
  %48 = load i8*, i8** %base.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %conv74, i8* %arrayidx75, align 1
  %49 = load double, double* %G3, align 8
  %mul76 = fmul double %49, 2.550000e+02
  %conv77 = fptoui double %mul76 to i8
  %50 = load i8*, i8** %base.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %conv77, i8* %arrayidx78, align 1
  %51 = load double, double* %B3, align 8
  %mul79 = fmul double %51, 2.550000e+02
  %conv80 = fptoui double %mul79 to i8
  %52 = load i8*, i8** %base.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %conv80, i8* %arrayidx81, align 1
  %53 = load double, double* %A3, align 8
  %mul82 = fmul double %53, 2.550000e+02
  %conv83 = fptoui double %mul82 to i8
  %54 = load i8*, i8** %base.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %54, i64 3
  store i8 %conv83, i8* %arrayidx84, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %55 = load i8*, i8** %base.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %arrayidx85, align 1
  %56 = load i8*, i8** %base.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 0, i8* %arrayidx86, align 1
  %57 = load i8*, i8** %base.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 0, i8* %arrayidx87, align 1
  %58 = load i8*, i8** %base.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %58, i64 3
  store i8 0, i8* %arrayidx88, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.71
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @overlap_RGB(i8* %base, i8* %top) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %top.addr = alloca i8*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %top, i8** %top.addr, align 8
  %0 = load i8*, i8** %top.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = load i8*, i8** %base.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %1, i8* %arrayidx1, align 1
  %3 = load i8*, i8** %top.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %5 = load i8*, i8** %base.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 %4, i8* %arrayidx3, align 1
  %6 = load i8*, i8** %top.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx4, align 1
  %8 = load i8*, i8** %base.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 %7, i8* %arrayidx5, align 1
  ret void
}

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @g_rand_int(%struct._GRand*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @random_move(i32* %x, i32* %y, i32 %max) #5 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %max.addr = alloca i32, align 4
  %angle = alloca double, align 8
  %radius = alloca double, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32 %max, i32* %max.addr, align 4
  %call = call double @drand()
  %mul = fmul double %call, 0x400921FB54442D18
  store double %mul, double* %angle, align 8
  %call1 = call double @drand()
  %0 = load i32, i32* %max.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul2 = fmul double %call1, %conv
  store double %mul2, double* %radius, align 8
  %1 = load double, double* %radius, align 8
  %2 = load double, double* %angle, align 8
  %call3 = call double @cos(double %2) #4
  %mul4 = fmul double %1, %call3
  %conv5 = fptosi double %mul4 to i32
  %3 = load i32*, i32** %x.addr, align 8
  store i32 %conv5, i32* %3, align 4
  %4 = load double, double* %radius, align 8
  %5 = load double, double* %angle, align 8
  %call6 = call double @sin(double %5) #4
  %mul7 = fmul double %4, %call6
  %conv8 = fptosi double %mul7 to i32
  %6 = load i32*, i32** %y.addr, align 8
  store i32 %conv8, i32* %6, align 4
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tile_compare(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct._Tile*
  %z = getelementptr inbounds %struct._Tile, %struct._Tile* %1, i32 0, i32 2
  %2 = load i32, i32* %z, align 4
  %3 = load i8*, i8** %y.addr, align 8
  %4 = bitcast i8* %3 to %struct._Tile*
  %z1 = getelementptr inbounds %struct._Tile, %struct._Tile* %4, i32 0, i32 2
  %5 = load i32, i32* %z1, align 4
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare void @g_free(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal double @drand() #5 {
entry:
  %call = call double @g_random_double_range(double -1.000000e+00, double 1.000000e+00)
  ret double %call
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

declare double @g_random_double_range(double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
