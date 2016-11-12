; ModuleID = './plug-ins/common/displace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.DisplaceVals = type { double, double, i32, i32, i32, i32, i32, i32 }
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
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [10 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"amount-x\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Displace multiplier for X or radial direction\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"amount-y\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Displace multiplier for Y or tangent (degrees) direction\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"do-x\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Displace in X or radial direction?\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"do-y\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Displace in Y or tangent direction?\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"displace-map-x\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Displacement map for X or radial direction\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"displace-map-y\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Displacement map for Y or tangent direction\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"displace-type\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Edge behavior { WRAP (1), SMEAR (2), BLACK (3) }\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"plug-in-displace\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Displace pixels as indicated by displacement maps\00", align 1
@.str.22 = private unnamed_addr constant [188 x i8] c"Displaces the contents of the specified drawable by the amounts specified by 'amount-x' and 'amount-y' multiplied by the luminance of corresponding pixels in the 'displace-map' drawables.\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"Stephen Robert Norris & (ported to 1.0 by) Spencer Kimball\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Stephen Robert Norris\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"_Displace...\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"plug-in-displace-polar\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Displace the contents of the specified drawable\00", align 1
@.str.31 = private unnamed_addr constant [119 x i8] c"Just like plug-in-displace but working in polar coordinates. The drawable is whirled and pinched according to the map.\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Displace Polar\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@dvals = internal global %struct.DisplaceVals { double 2.000000e+01, double 2.000000e+01, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 0 }, align 8
@.str.35 = private unnamed_addr constant [11 x i8] c"Displacing\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"displace\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Displace\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"gimp-displace\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.41 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"_X displacement:\00", align 1
@toggle_x = internal global %struct._GtkWidget* null, align 8
@.str.43 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"_Y displacement:\00", align 1
@toggle_y = internal global %struct._GtkWidget* null, align 8
@.str.49 = private unnamed_addr constant [18 x i8] c"Displacement Mode\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"_Cartesian\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"_Polar\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Edge Behavior\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"_Wrap\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"_Smear\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"_Black\00", align 1
@mtext = internal global [2 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0)]], align 16
@displace_get_label_size.label_maxwidth = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [16 x i8] c"_X displacement\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"_Pinch\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"_Y displacement\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"_Whirl\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 10, i32 0, %struct._GimpParamDef* getelementptr inbounds ([10 x %struct._GimpParamDef], [10 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 10, i32 0, %struct._GimpParamDef* getelementptr inbounds ([10 x %struct._GimpParamDef], [10 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_tile_cache_ntiles(i64 48)
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
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.DisplaceVals* @dvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @displace_dialog(%struct._GimpDrawable* %8)
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
  br label %if.end.33

if.else:                                          ; preds = %sw.bb.9
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data12 to double*
  %11 = load double, double* %d_float, align 8
  store double %11, double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 0), align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_float15 = bitcast %union._GimpParamData* %data14 to double*
  %13 = load double, double* %d_float15, align 8
  store double %13, double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 1), align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %15 = load i32, i32* %d_int3218, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 6
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %17 = load i32, i32* %d_int3221, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 7
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %19 = load i32, i32* %d_int3224, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 8
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_int3227 = bitcast %union._GimpParamData* %data26 to i32*
  %21 = load i32, i32* %d_int3227, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 9
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_int3230 = bitcast %union._GimpParamData* %data29 to i32*
  %23 = load i32, i32* %d_int3230, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 6), align 4
  %24 = load i8*, i8** %name.addr, align 8
  %call31 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0)) #7
  %cmp32 = icmp eq i32 %call31, 0
  %cond = select i1 %cmp32, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.10
  br label %sw.epilog

sw.bb.34:                                         ; preds = %do.end
  %call35 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.DisplaceVals* @dvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.34, %if.end.33, %if.end
  %25 = load i32, i32* %status, align 4
  %cmp36 = icmp eq i32 %25, 3
  br i1 %cmp36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %sw.epilog
  %26 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4), align 4
  %cmp38 = icmp ne i32 %26, -1
  br i1 %cmp38, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.then.37
  %27 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4), align 4
  %call39 = call i32 @gimp_drawable_width(i32 %27)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load i32, i32* %width, align 4
  %cmp40 = icmp ne i32 %call39, %29
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %30 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4), align 4
  %call41 = call i32 @gimp_drawable_height(i32 %30)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 2
  %32 = load i32, i32* %height, align 4
  %cmp42 = icmp ne i32 %call41, %32
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %lor.lhs.false, %if.then.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %sw.epilog
  %33 = load i32, i32* %status, align 4
  %cmp46 = icmp eq i32 %33, 3
  br i1 %cmp46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %if.end.45
  %34 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5), align 4
  %cmp48 = icmp ne i32 %34, -1
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.58

land.lhs.true.49:                                 ; preds = %if.then.47
  %35 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5), align 4
  %call50 = call i32 @gimp_drawable_width(i32 %35)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width51 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 1
  %37 = load i32, i32* %width51, align 4
  %cmp52 = icmp ne i32 %call50, %37
  br i1 %cmp52, label %if.then.57, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.49
  %38 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5), align 4
  %call54 = call i32 @gimp_drawable_height(i32 %38)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 2
  %40 = load i32, i32* %height55, align 4
  %cmp56 = icmp ne i32 %call54, %40
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.53, %land.lhs.true.49
  store i32 1, i32* %status, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %lor.lhs.false.53, %if.then.47
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.45
  %41 = load i32, i32* %status, align 4
  %cmp60 = icmp eq i32 %41, 3
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.76

land.lhs.true.61:                                 ; preds = %if.end.59
  %42 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool62 = icmp ne i32 %42, 0
  br i1 %tobool62, label %if.then.65, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.61
  %43 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool64 = icmp ne i32 %43, 0
  br i1 %tobool64, label %if.then.65, label %if.end.76

if.then.65:                                       ; preds = %lor.lhs.false.63, %land.lhs.true.61
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #6
  %call67 = call i32 @gimp_progress_init(i8* %call66)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @displace(%struct._GimpDrawable* %44, %struct._GimpPreview* null)
  %45 = load i32, i32* %run_mode, align 4
  %cmp68 = icmp ne i32 %45, 1
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.65
  %call70 = call i32 @gimp_displays_flush()
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.65
  %46 = load i32, i32* %run_mode, align 4
  %cmp72 = icmp eq i32 %46, 0
  br i1 %cmp72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.71
  %call74 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (%struct.DisplaceVals* @dvals to i8*), i32 40)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %lor.lhs.false.63, %if.end.59
  %47 = load i32, i32* %status, align 4
  store i32 %47, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %48)
  br label %return

return:                                           ; preds = %if.end.76, %if.then
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
define internal i32 @displace_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %wrap = alloca %struct._GtkWidget*, align 8
  %smear = alloca %struct._GtkWidget*, align 8
  %black = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 -5, i8* null)
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
  store %struct._GtkWidget* %call14, %struct._GtkWidget** @preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @displace to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %28, i32 12)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0)) #6
  %call26 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** @toggle_x, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  call void @gtk_table_attach(%struct._GtkTable* %38, %struct._GtkWidget* %39, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_toggle_button_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkToggleButton*
  %43 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %42, i32 %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 2)
  %51 = load double, double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 0), align 8
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 1
  %53 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %53, -2
  %conv = sitofp i32 %mul to double
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %54, i32 0, i32 1
  %55 = load i32, i32* %width33, align 4
  %mul34 = mul i32 %55, 2
  %conv35 = uitofp i32 %mul34 to double
  %call36 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %51, double %conv, double %conv35, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %spinbutton, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %58, %struct._GtkWidget* %59, i32 1, i32 2, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.DisplaceVals* @dvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 2)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %call41 = call %struct._GBinding* @g_object_bind_property(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 2)
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %72 = bitcast %struct._GimpDrawable* %71 to i8*
  %call42 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @displace_map_constrain, i8* %72)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %combo, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_int_combo_box_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call43)
  %75 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpIntComboBox*
  %76 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4), align 4
  %call45 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %75, i32 %76, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4) to i8*))
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call46)
  %79 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %79, %struct._GtkWidget* %80, i32 2, i32 3, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 2)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call49 = call %struct._GBinding* @g_object_bind_property(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 2)
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0)) #6
  %call51 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call50)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** @toggle_y, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call52)
  %92 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  call void @gtk_table_attach(%struct._GtkTable* %92, %struct._GtkWidget* %93, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_toggle_button_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call54)
  %96 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkToggleButton*
  %97 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %96, i32 %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  %102 = bitcast %struct._GtkWidget* %101 to i8*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %104, void (i8*, %struct._GClosure*)* null, i32 2)
  %105 = load double, double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 1), align 8
  %106 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %106, i32 0, i32 2
  %107 = load i32, i32* %height, align 4
  %mul58 = mul nsw i32 %107, -2
  %conv59 = sitofp i32 %mul58 to double
  %108 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height60 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %108, i32 0, i32 2
  %109 = load i32, i32* %height60, align 4
  %mul61 = mul i32 %109, 2
  %conv62 = uitofp i32 %mul61 to double
  %call63 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %105, double %conv59, double %conv62, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %spinbutton, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call64)
  %112 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %112, %struct._GtkWidget* %113, i32 1, i32 2, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %115 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %116 = bitcast %struct._GtkObject* %115 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %118 = bitcast %struct._GtkObject* %117 to i8*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 2)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  %call68 = call %struct._GBinding* @g_object_bind_property(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 2)
  %125 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %126 = bitcast %struct._GimpDrawable* %125 to i8*
  %call69 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @displace_map_constrain, i8* %126)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %combo, align 8
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_int_combo_box_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call70)
  %129 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpIntComboBox*
  %130 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5), align 4
  %call72 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %129, i32 %130, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5) to i8*))
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %132 = bitcast %struct._GtkWidget* %131 to i8*
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %134 = bitcast %struct._GtkWidget* %133 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 2)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call74)
  %137 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %137, %struct._GtkWidget* %138, i32 2, i32 3, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %139)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  %141 = bitcast %struct._GtkWidget* %140 to i8*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  %call76 = call %struct._GBinding* @g_object_bind_property(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 2)
  %call77 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 24)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %hbox, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call78)
  %146 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %146, %struct._GtkWidget* %147, i32 0, i32 0, i32 0)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %148)
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0)) #6
  %149 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0)) #6
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #6
  %call83 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call80, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @displace_radio_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7) to i8*), i32 %149, i8* %call81, i32 0, i8* null, i8* %call82, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %frame, align 8
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call84)
  %152 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %152, %struct._GtkWidget* %153, i32 0, i32 0, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %154)
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0)) #6
  %155 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 6), align 4
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0)) #6
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)) #6
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)) #6
  %call90 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call86, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 6) to i8*), i32 %155, i8* %call87, i32 1, %struct._GtkWidget** %wrap, i8* %call88, i32 2, %struct._GtkWidget** %smear, i8* %call89, i32 3, %struct._GtkWidget** %black, i8* null)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %frame, align 8
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_box_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call91)
  %158 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkBox*
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %158, %struct._GtkWidget* %159, i32 0, i32 0, i32 0)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap, align 8
  %162 = bitcast %struct._GtkWidget* %161 to i8*
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %164, void (i8*, %struct._GClosure*)* null, i32 2)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %smear, align 8
  %166 = bitcast %struct._GtkWidget* %165 to i8*
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %168 = bitcast %struct._GtkWidget* %167 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %168, void (i8*, %struct._GClosure*)* null, i32 2)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %black, align 8
  %170 = bitcast %struct._GtkWidget* %169 to i8*
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %172 = bitcast %struct._GtkWidget* %171 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %172, void (i8*, %struct._GClosure*)* null, i32 2)
  call void @displace_set_labels()
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %173)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %174)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_dialog_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call96)
  %177 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpDialog*
  %call98 = call i32 @gimp_dialog_run(%struct._GimpDialog* %177)
  %cmp = icmp eq i32 %call98, -5
  %conv99 = zext i1 %cmp to i32
  store i32 %conv99, i32* %run, align 4
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %178)
  %179 = load i32, i32* %run, align 4
  ret i32 %179
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @displace(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %map_x = alloca %struct._GimpDrawable*, align 8
  %map_y = alloca %struct._GimpDrawable*, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %map_x_rgn = alloca %struct._GimpPixelRgn, align 8
  %map_y_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %destrow = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %mxrow = alloca i8*, align 8
  %mx = alloca i8*, align 8
  %myrow = alloca i8*, align 8
  %my = alloca i8*, align 8
  %pixel = alloca [4 x [4 x i8]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %amnt = alloca double, align 8
  %needx = alloca double, align 8
  %needy = alloca double, align 8
  %radius = alloca double, align 8
  %d_alpha = alloca double, align 8
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %values = alloca [4 x i8], align 1
  %val = alloca i8, align 1
  %k = alloca i32, align 4
  %xm_val = alloca double, align 8
  %ym_val = alloca double, align 8
  %xm_alpha = alloca i32, align 4
  %ym_alpha = alloca i32, align 4
  %xm_bytes = alloca i32, align 4
  %ym_bytes = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %pi = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %map_x, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %map_y, align 8
  store i32 0, i32* %xm_alpha, align 4
  store i32 0, i32* %ym_alpha, align 4
  store i32 1, i32* %xm_bytes, align 4
  store i32 1, i32* %ym_bytes, align 4
  store i8* null, i8** %buffer, align 8
  store double 0.000000e+00, double* %d_alpha, align 8
  store double 0.000000e+00, double* %radius, align 8
  store double 0.000000e+00, double* %needy, align 8
  store double 0.000000e+00, double* %needx, align 8
  store double 0.000000e+00, double* %cy, align 8
  store double 0.000000e+00, double* %cx, align 8
  %call = call double @atan(double 1.000000e+00) #6
  %mul = fmul double 4.000000e+00, %call
  store double %mul, double* %pi, align 8
  store i8* null, i8** %mxrow, align 8
  store i8* null, i8** %myrow, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call1 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %0, i32 0)
  store %struct._GimpPixelFetcher* %call1, %struct._GimpPixelFetcher** %pft, align 8
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 6), align 4
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %1, i32 %2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 3
  %4 = load i32, i32* %bpp, align 4
  store i32 %4, i32* %bytes, align 4
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %6, i32* %x1, i32* %y1)
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %7, i32* %width, i32* %height)
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %mul2 = mul nsw i32 %8, %9
  %10 = load i32, i32* %bytes, align 4
  %mul3 = mul nsw i32 %mul2, %10
  %conv = sext i32 %mul3 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %buffer, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call5 = call i32 @gimp_drawable_mask_intersect(i32 %12, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.else
  br label %if.end.292

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  %14 = load i32, i32* %x1, align 4
  %conv11 = sitofp i32 %14 to double
  %15 = load i32, i32* %width, align 4
  %conv12 = sitofp i32 %15 to double
  %div = fdiv double %conv12, 2.000000e+00
  %add = fadd double %conv11, %div
  store double %add, double* %cx, align 8
  %16 = load i32, i32* %y1, align 4
  %conv13 = sitofp i32 %16 to double
  %17 = load i32, i32* %height, align 4
  %conv14 = sitofp i32 %17 to double
  %div15 = fdiv double %conv14, 2.000000e+00
  %add16 = fadd double %conv13, %div15
  store double %add16, double* %cy, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %if.end.8
  store i32 0, i32* %progress, align 4
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %mul18 = mul nsw i32 %18, %19
  store i32 %mul18, i32* %max_progress, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4), align 4
  %cmp19 = icmp ne i32 %20, -1
  br i1 %cmp19, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.17
  %21 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool21 = icmp ne i32 %21, 0
  br i1 %tobool21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 4), align 4
  %call23 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %22)
  store %struct._GimpDrawable* %call23, %struct._GimpDrawable** %map_x, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x, align 8
  %24 = load i32, i32* %x1, align 4
  %25 = load i32, i32* %y1, align 4
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %map_x_rgn, %struct._GimpDrawable* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 0, i32 0)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x, align 8
  %drawable_id24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 0
  %29 = load i32, i32* %drawable_id24, align 4
  %call25 = call i32 @gimp_drawable_has_alpha(i32 %29)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.22
  store i32 1, i32* %xm_alpha, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.22
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x, align 8
  %drawable_id29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 0
  %31 = load i32, i32* %drawable_id29, align 4
  %call30 = call i32 @gimp_drawable_bpp(i32 %31)
  store i32 %call30, i32* %xm_bytes, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %land.lhs.true, %if.end.17
  %32 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5), align 4
  %cmp32 = icmp ne i32 %32, -1
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.45

land.lhs.true.34:                                 ; preds = %if.end.31
  %33 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %land.lhs.true.34
  %34 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 5), align 4
  %call37 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %34)
  store %struct._GimpDrawable* %call37, %struct._GimpDrawable** %map_y, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y, align 8
  %36 = load i32, i32* %x1, align 4
  %37 = load i32, i32* %y1, align 4
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %map_y_rgn, %struct._GimpDrawable* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 0, i32 0)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y, align 8
  %drawable_id38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 0
  %41 = load i32, i32* %drawable_id38, align 4
  %call39 = call i32 @gimp_drawable_has_alpha(i32 %41)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.36
  store i32 1, i32* %ym_alpha, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.36
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y, align 8
  %drawable_id43 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 0
  %43 = load i32, i32* %drawable_id43, align 4
  %call44 = call i32 @gimp_drawable_bpp(i32 %43)
  store i32 %call44, i32* %ym_bytes, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.42, %land.lhs.true.34, %if.end.31
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %45 = load i32, i32* %x1, align 4
  %46 = load i32, i32* %y1, align 4
  %47 = load i32, i32* %width, align 4
  %48 = load i32, i32* %height, align 4
  %49 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp46 = icmp eq %struct._GimpPreview* %49, null
  %conv47 = zext i1 %cmp46 to i32
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp48 = icmp eq %struct._GimpPreview* %50, null
  %conv49 = zext i1 %cmp48 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %conv47, i32 %conv49)
  %51 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool50 = icmp ne i32 %51, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.55

land.lhs.true.51:                                 ; preds = %if.end.45
  %52 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool52 = icmp ne i32 %52, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %land.lhs.true.51
  %call54 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 3, %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn* %map_x_rgn, %struct._GimpPixelRgn* %map_y_rgn)
  store i8* %call54, i8** %pr, align 8
  br label %if.end.66

if.else.55:                                       ; preds = %land.lhs.true.51, %if.end.45
  %53 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool56 = icmp ne i32 %53, 0
  br i1 %tobool56, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.else.55
  %call58 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn* %map_x_rgn)
  store i8* %call58, i8** %pr, align 8
  br label %if.end.65

if.else.59:                                       ; preds = %if.else.55
  %54 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool60 = icmp ne i32 %54, 0
  br i1 %tobool60, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.else.59
  %call62 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn* %map_y_rgn)
  store i8* %call62, i8** %pr, align 8
  br label %if.end.64

if.else.63:                                       ; preds = %if.else.59
  store i8* null, i8** %pr, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.57
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.53
  %55 = load i8*, i8** %pr, align 8
  store i8* %55, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.274, %if.end.66
  %56 = load i8*, i8** %pr, align 8
  %cmp67 = icmp ne i8* %56, null
  br i1 %cmp67, label %for.body, label %for.end.276

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %57 = load i8*, i8** %data, align 8
  store i8* %57, i8** %destrow, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool69 = icmp ne i32 %58, 0
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %for.body
  %data71 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_x_rgn, i32 0, i32 0
  %59 = load i8*, i8** %data71, align 8
  store i8* %59, i8** %mxrow, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %for.body
  %60 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool73 = icmp ne i32 %60, 0
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.72
  %data75 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_y_rgn, i32 0, i32 0
  %61 = load i8*, i8** %data75, align 8
  store i8* %61, i8** %myrow, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.72
  %y77 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %62 = load i32, i32* %y77, align 4
  store i32 %62, i32* %y, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.260, %if.end.76
  %63 = load i32, i32* %y, align 4
  %y79 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %64 = load i32, i32* %y79, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %65 = load i32, i32* %h, align 4
  %add80 = add nsw i32 %64, %65
  %cmp81 = icmp slt i32 %63, %add80
  br i1 %cmp81, label %for.body.83, label %for.end.262

for.body.83:                                      ; preds = %for.cond.78
  %66 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool84 = icmp ne %struct._GimpPreview* %66, null
  br i1 %tobool84, label %if.then.85, label %if.else.91

if.then.85:                                       ; preds = %for.body.83
  %67 = load i8*, i8** %buffer, align 8
  %68 = load i32, i32* %y, align 4
  %69 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %68, %69
  %70 = load i32, i32* %width, align 4
  %mul86 = mul nsw i32 %sub, %70
  %x87 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %71 = load i32, i32* %x87, align 4
  %72 = load i32, i32* %x1, align 4
  %sub88 = sub nsw i32 %71, %72
  %add89 = add nsw i32 %mul86, %sub88
  %73 = load i32, i32* %bytes, align 4
  %mul90 = mul nsw i32 %add89, %73
  %idx.ext = sext i32 %mul90 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %if.end.92

if.else.91:                                       ; preds = %for.body.83
  %74 = load i8*, i8** %destrow, align 8
  store i8* %74, i8** %dest, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91, %if.then.85
  %75 = load i8*, i8** %mxrow, align 8
  store i8* %75, i8** %mx, align 8
  %76 = load i8*, i8** %myrow, align 8
  store i8* %76, i8** %my, align 8
  %x93 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %77 = load i32, i32* %x93, align 4
  store i32 %77, i32* %x, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.243, %if.end.92
  %78 = load i32, i32* %x, align 4
  %x95 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %79 = load i32, i32* %x95, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %80 = load i32, i32* %w, align 4
  %add96 = add nsw i32 %79, %80
  %cmp97 = icmp slt i32 %78, %add96
  br i1 %cmp97, label %for.body.99, label %for.end.245

for.body.99:                                      ; preds = %for.cond.94
  %81 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool100 = icmp ne i32 %81, 0
  br i1 %tobool100, label %if.then.101, label %if.else.127

if.then.101:                                      ; preds = %for.body.99
  %82 = load i8*, i8** %mx, align 8
  %83 = load i32, i32* %xm_alpha, align 4
  %84 = load i32, i32* %xm_bytes, align 4
  %call102 = call double @displace_map_give_value(i8* %82, i32 %83, i32 %84)
  store double %call102, double* %xm_val, align 8
  %85 = load double, double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 0), align 8
  %86 = load double, double* %xm_val, align 8
  %sub103 = fsub double %86, 1.275000e+02
  %mul104 = fmul double %85, %sub103
  %div105 = fdiv double %mul104, 1.275000e+02
  store double %div105, double* %amnt, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %tobool106 = icmp ne i32 %87, 0
  br i1 %tobool106, label %if.else.110, label %if.then.107

if.then.107:                                      ; preds = %if.then.101
  %88 = load i32, i32* %x, align 4
  %conv108 = sitofp i32 %88 to double
  %89 = load double, double* %amnt, align 8
  %add109 = fadd double %conv108, %89
  store double %add109, double* %needx, align 8
  br label %if.end.124

if.else.110:                                      ; preds = %if.then.101
  %90 = load i32, i32* %x, align 4
  %conv111 = sitofp i32 %90 to double
  %91 = load double, double* %cx, align 8
  %sub112 = fsub double %conv111, %91
  %92 = load i32, i32* %x, align 4
  %conv113 = sitofp i32 %92 to double
  %93 = load double, double* %cx, align 8
  %sub114 = fsub double %conv113, %93
  %mul115 = fmul double %sub112, %sub114
  %94 = load i32, i32* %y, align 4
  %conv116 = sitofp i32 %94 to double
  %95 = load double, double* %cy, align 8
  %sub117 = fsub double %conv116, %95
  %96 = load i32, i32* %y, align 4
  %conv118 = sitofp i32 %96 to double
  %97 = load double, double* %cy, align 8
  %sub119 = fsub double %conv118, %97
  %mul120 = fmul double %sub117, %sub119
  %add121 = fadd double %mul115, %mul120
  %call122 = call double @sqrt(double %add121) #6
  %98 = load double, double* %amnt, align 8
  %add123 = fadd double %call122, %98
  store double %add123, double* %radius, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.110, %if.then.107
  %99 = load i32, i32* %xm_bytes, align 4
  %100 = load i8*, i8** %mx, align 8
  %idx.ext125 = sext i32 %99 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %100, i64 %idx.ext125
  store i8* %add.ptr126, i8** %mx, align 8
  br label %if.end.145

if.else.127:                                      ; preds = %for.body.99
  %101 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %tobool128 = icmp ne i32 %101, 0
  br i1 %tobool128, label %if.else.131, label %if.then.129

if.then.129:                                      ; preds = %if.else.127
  %102 = load i32, i32* %x, align 4
  %conv130 = sitofp i32 %102 to double
  store double %conv130, double* %needx, align 8
  br label %if.end.144

if.else.131:                                      ; preds = %if.else.127
  %103 = load i32, i32* %x, align 4
  %conv132 = sitofp i32 %103 to double
  %104 = load double, double* %cx, align 8
  %sub133 = fsub double %conv132, %104
  %105 = load i32, i32* %x, align 4
  %conv134 = sitofp i32 %105 to double
  %106 = load double, double* %cx, align 8
  %sub135 = fsub double %conv134, %106
  %mul136 = fmul double %sub133, %sub135
  %107 = load i32, i32* %y, align 4
  %conv137 = sitofp i32 %107 to double
  %108 = load double, double* %cy, align 8
  %sub138 = fsub double %conv137, %108
  %109 = load i32, i32* %y, align 4
  %conv139 = sitofp i32 %109 to double
  %110 = load double, double* %cy, align 8
  %sub140 = fsub double %conv139, %110
  %mul141 = fmul double %sub138, %sub140
  %add142 = fadd double %mul136, %mul141
  %call143 = call double @sqrt(double %add142) #6
  store double %call143, double* %radius, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.131, %if.then.129
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.124
  %111 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool146 = icmp ne i32 %111, 0
  br i1 %tobool146, label %if.then.147, label %if.else.171

if.then.147:                                      ; preds = %if.end.145
  %112 = load i8*, i8** %my, align 8
  %113 = load i32, i32* %ym_alpha, align 4
  %114 = load i32, i32* %ym_bytes, align 4
  %call148 = call double @displace_map_give_value(i8* %112, i32 %113, i32 %114)
  store double %call148, double* %ym_val, align 8
  %115 = load double, double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 1), align 8
  %116 = load double, double* %ym_val, align 8
  %sub149 = fsub double %116, 1.275000e+02
  %mul150 = fmul double %115, %sub149
  %div151 = fdiv double %mul150, 1.275000e+02
  store double %div151, double* %amnt, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %tobool152 = icmp ne i32 %117, 0
  br i1 %tobool152, label %if.else.156, label %if.then.153

if.then.153:                                      ; preds = %if.then.147
  %118 = load i32, i32* %y, align 4
  %conv154 = sitofp i32 %118 to double
  %119 = load double, double* %amnt, align 8
  %add155 = fadd double %conv154, %119
  store double %add155, double* %needy, align 8
  br label %if.end.168

if.else.156:                                      ; preds = %if.then.147
  %120 = load i32, i32* %x, align 4
  %conv157 = sitofp i32 %120 to double
  %121 = load double, double* %cx, align 8
  %sub158 = fsub double %conv157, %121
  %122 = load i32, i32* %y, align 4
  %conv159 = sitofp i32 %122 to double
  %123 = load double, double* %cy, align 8
  %sub160 = fsub double %conv159, %123
  %call161 = call double @atan2(double %sub158, double %sub160) #6
  %124 = load double, double* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 1), align 8
  %div162 = fdiv double %124, 1.800000e+02
  %125 = load double, double* %pi, align 8
  %mul163 = fmul double %div162, %125
  %126 = load double, double* %ym_val, align 8
  %sub164 = fsub double %126, 1.275000e+02
  %mul165 = fmul double %mul163, %sub164
  %div166 = fdiv double %mul165, 1.275000e+02
  %add167 = fadd double %call161, %div166
  store double %add167, double* %d_alpha, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.156, %if.then.153
  %127 = load i32, i32* %ym_bytes, align 4
  %128 = load i8*, i8** %my, align 8
  %idx.ext169 = sext i32 %127 to i64
  %add.ptr170 = getelementptr inbounds i8, i8* %128, i64 %idx.ext169
  store i8* %add.ptr170, i8** %my, align 8
  br label %if.end.182

if.else.171:                                      ; preds = %if.end.145
  %129 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %tobool172 = icmp ne i32 %129, 0
  br i1 %tobool172, label %if.else.175, label %if.then.173

if.then.173:                                      ; preds = %if.else.171
  %130 = load i32, i32* %y, align 4
  %conv174 = sitofp i32 %130 to double
  store double %conv174, double* %needy, align 8
  br label %if.end.181

if.else.175:                                      ; preds = %if.else.171
  %131 = load i32, i32* %x, align 4
  %conv176 = sitofp i32 %131 to double
  %132 = load double, double* %cx, align 8
  %sub177 = fsub double %conv176, %132
  %133 = load i32, i32* %y, align 4
  %conv178 = sitofp i32 %133 to double
  %134 = load double, double* %cy, align 8
  %sub179 = fsub double %conv178, %134
  %call180 = call double @atan2(double %sub177, double %sub179) #6
  store double %call180, double* %d_alpha, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.175, %if.then.173
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.168
  %135 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %tobool183 = icmp ne i32 %135, 0
  br i1 %tobool183, label %if.then.184, label %if.end.191

if.then.184:                                      ; preds = %if.end.182
  %136 = load double, double* %cx, align 8
  %137 = load double, double* %radius, align 8
  %138 = load double, double* %d_alpha, align 8
  %call185 = call double @sin(double %138) #6
  %mul186 = fmul double %137, %call185
  %add187 = fadd double %136, %mul186
  store double %add187, double* %needx, align 8
  %139 = load double, double* %cy, align 8
  %140 = load double, double* %radius, align 8
  %141 = load double, double* %d_alpha, align 8
  %call188 = call double @cos(double %141) #6
  %mul189 = fmul double %140, %call188
  %add190 = fadd double %139, %mul189
  store double %add190, double* %needy, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.184, %if.end.182
  %142 = load double, double* %needx, align 8
  %cmp192 = fcmp oge double %142, 0.000000e+00
  br i1 %cmp192, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.end.191
  %143 = load double, double* %needx, align 8
  %conv195 = fptosi double %143 to i32
  store i32 %conv195, i32* %xi, align 4
  br label %if.end.201

if.else.196:                                      ; preds = %if.end.191
  %144 = load double, double* %needx, align 8
  %sub197 = fsub double -0.000000e+00, %144
  %conv198 = fptosi double %sub197 to i32
  %add199 = add nsw i32 %conv198, 1
  %sub200 = sub nsw i32 0, %add199
  store i32 %sub200, i32* %xi, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.196, %if.then.194
  %145 = load double, double* %needy, align 8
  %cmp202 = fcmp oge double %145, 0.000000e+00
  br i1 %cmp202, label %if.then.204, label %if.else.206

if.then.204:                                      ; preds = %if.end.201
  %146 = load double, double* %needy, align 8
  %conv205 = fptosi double %146 to i32
  store i32 %conv205, i32* %yi, align 4
  br label %if.end.211

if.else.206:                                      ; preds = %if.end.201
  %147 = load double, double* %needy, align 8
  %sub207 = fsub double -0.000000e+00, %147
  %conv208 = fptosi double %sub207 to i32
  %add209 = add nsw i32 %conv208, 1
  %sub210 = sub nsw i32 0, %add209
  store i32 %sub210, i32* %yi, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.206, %if.then.204
  %148 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %149 = load i32, i32* %xi, align 4
  %150 = load i32, i32* %yi, align 4
  %arrayidx = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %148, i32 %149, i32 %150, i8* %arraydecay)
  %151 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %152 = load i32, i32* %xi, align 4
  %add212 = add nsw i32 %152, 1
  %153 = load i32, i32* %yi, align 4
  %arrayidx213 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arraydecay214 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx213, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %151, i32 %add212, i32 %153, i8* %arraydecay214)
  %154 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %155 = load i32, i32* %xi, align 4
  %156 = load i32, i32* %yi, align 4
  %add215 = add nsw i32 %156, 1
  %arrayidx216 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arraydecay217 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx216, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %154, i32 %155, i32 %add215, i8* %arraydecay217)
  %157 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %158 = load i32, i32* %xi, align 4
  %add218 = add nsw i32 %158, 1
  %159 = load i32, i32* %yi, align 4
  %add219 = add nsw i32 %159, 1
  %arrayidx220 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arraydecay221 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx220, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %157, i32 %add218, i32 %add219, i8* %arraydecay221)
  store i32 0, i32* %k, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc, %if.end.211
  %160 = load i32, i32* %k, align 4
  %161 = load i32, i32* %bytes, align 4
  %cmp223 = icmp slt i32 %160, %161
  br i1 %cmp223, label %for.body.225, label %for.end

for.body.225:                                     ; preds = %for.cond.222
  %162 = load i32, i32* %k, align 4
  %idxprom = sext i32 %162 to i64
  %arrayidx226 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 0
  %arrayidx227 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx226, i32 0, i64 %idxprom
  %163 = load i8, i8* %arrayidx227, align 1
  %arrayidx228 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 0
  store i8 %163, i8* %arrayidx228, align 1
  %164 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %164 to i64
  %arrayidx230 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 1
  %arrayidx231 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx230, i32 0, i64 %idxprom229
  %165 = load i8, i8* %arrayidx231, align 1
  %arrayidx232 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 1
  store i8 %165, i8* %arrayidx232, align 1
  %166 = load i32, i32* %k, align 4
  %idxprom233 = sext i32 %166 to i64
  %arrayidx234 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 2
  %arrayidx235 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx234, i32 0, i64 %idxprom233
  %167 = load i8, i8* %arrayidx235, align 1
  %arrayidx236 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 2
  store i8 %167, i8* %arrayidx236, align 1
  %168 = load i32, i32* %k, align 4
  %idxprom237 = sext i32 %168 to i64
  %arrayidx238 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %pixel, i32 0, i64 3
  %arrayidx239 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx238, i32 0, i64 %idxprom237
  %169 = load i8, i8* %arrayidx239, align 1
  %arrayidx240 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i64 3
  store i8 %169, i8* %arrayidx240, align 1
  %170 = load double, double* %needx, align 8
  %171 = load double, double* %needy, align 8
  %arraydecay241 = getelementptr inbounds [4 x i8], [4 x i8]* %values, i32 0, i32 0
  %call242 = call zeroext i8 @gimp_bilinear_8(double %170, double %171, i8* %arraydecay241)
  store i8 %call242, i8* %val, align 1
  %172 = load i8, i8* %val, align 1
  %173 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %172, i8* %173, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.225
  %174 = load i32, i32* %k, align 4
  %inc = add nsw i32 %174, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.222

for.end:                                          ; preds = %for.cond.222
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end
  %175 = load i32, i32* %x, align 4
  %inc244 = add nsw i32 %175, 1
  store i32 %inc244, i32* %x, align 4
  br label %for.cond.94

for.end.245:                                      ; preds = %for.cond.94
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %176 = load i32, i32* %rowstride, align 4
  %177 = load i8*, i8** %destrow, align 8
  %idx.ext246 = sext i32 %176 to i64
  %add.ptr247 = getelementptr inbounds i8, i8* %177, i64 %idx.ext246
  store i8* %add.ptr247, i8** %destrow, align 8
  %178 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool248 = icmp ne i32 %178, 0
  br i1 %tobool248, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %for.end.245
  %rowstride250 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_x_rgn, i32 0, i32 3
  %179 = load i32, i32* %rowstride250, align 4
  %180 = load i8*, i8** %mxrow, align 8
  %idx.ext251 = sext i32 %179 to i64
  %add.ptr252 = getelementptr inbounds i8, i8* %180, i64 %idx.ext251
  store i8* %add.ptr252, i8** %mxrow, align 8
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.249, %for.end.245
  %181 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool254 = icmp ne i32 %181, 0
  br i1 %tobool254, label %if.then.255, label %if.end.259

if.then.255:                                      ; preds = %if.end.253
  %rowstride256 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %map_y_rgn, i32 0, i32 3
  %182 = load i32, i32* %rowstride256, align 4
  %183 = load i8*, i8** %myrow, align 8
  %idx.ext257 = sext i32 %182 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %183, i64 %idx.ext257
  store i8* %add.ptr258, i8** %myrow, align 8
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.255, %if.end.253
  br label %for.inc.260

for.inc.260:                                      ; preds = %if.end.259
  %184 = load i32, i32* %y, align 4
  %inc261 = add nsw i32 %184, 1
  store i32 %inc261, i32* %y, align 4
  br label %for.cond.78

for.end.262:                                      ; preds = %for.cond.78
  %185 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool263 = icmp ne %struct._GimpPreview* %185, null
  br i1 %tobool263, label %if.end.273, label %if.then.264

if.then.264:                                      ; preds = %for.end.262
  %w265 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %186 = load i32, i32* %w265, align 4
  %h266 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %187 = load i32, i32* %h266, align 4
  %mul267 = mul nsw i32 %186, %187
  %188 = load i32, i32* %progress, align 4
  %add268 = add nsw i32 %188, %mul267
  store i32 %add268, i32* %progress, align 4
  %189 = load i32, i32* %progress, align 4
  %conv269 = sitofp i32 %189 to double
  %190 = load i32, i32* %max_progress, align 4
  %conv270 = sitofp i32 %190 to double
  %div271 = fdiv double %conv269, %conv270
  %call272 = call i32 @gimp_progress_update(double %div271)
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.264, %for.end.262
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273
  %191 = load i8*, i8** %pr, align 8
  %call275 = call i8* @gimp_pixel_rgns_process(i8* %191)
  store i8* %call275, i8** %pr, align 8
  br label %for.cond

for.end.276:                                      ; preds = %for.cond
  %192 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %192)
  %193 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 2), align 4
  %tobool277 = icmp ne i32 %193, 0
  br i1 %tobool277, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %for.end.276
  %194 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_x, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %194)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %for.end.276
  %195 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 3), align 4
  %tobool280 = icmp ne i32 %195, 0
  br i1 %tobool280, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.end.279
  %196 = load %struct._GimpDrawable*, %struct._GimpDrawable** %map_y, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %196)
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.281, %if.end.279
  %197 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool283 = icmp ne %struct._GimpPreview* %197, null
  br i1 %tobool283, label %if.then.284, label %if.else.286

if.then.284:                                      ; preds = %if.end.282
  %198 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %199 = load i8*, i8** %buffer, align 8
  %200 = load i32, i32* %width, align 4
  %201 = load i32, i32* %bytes, align 4
  %mul285 = mul nsw i32 %200, %201
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %198, i8* %199, i32 %mul285)
  %202 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %202)
  br label %if.end.292

if.else.286:                                      ; preds = %if.end.282
  %call287 = call i32 @gimp_progress_update(double 1.000000e+00)
  %203 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %203)
  %204 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id288 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %204, i32 0, i32 0
  %205 = load i32, i32* %drawable_id288, align 4
  %call289 = call i32 @gimp_drawable_merge_shadow(i32 %205, i32 1)
  %206 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id290 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %206, i32 0, i32 0
  %207 = load i32, i32* %drawable_id290, align 4
  %208 = load i32, i32* %x1, align 4
  %209 = load i32, i32* %y1, align 4
  %210 = load i32, i32* %width, align 4
  %211 = load i32, i32* %height, align 4
  %call291 = call i32 @gimp_drawable_update(i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.7, %if.else.286, %if.then.284
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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @displace_map_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %1, %struct._GimpDrawable** %drawable, align 8
  %2 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %call, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load i32, i32* %drawable_id.addr, align 4
  %call1 = call i32 @gimp_drawable_height(i32 %5)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  %cmp2 = icmp eq i32 %call1, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @displace_radio_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @displace_set_labels()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %4)
  ret void
}

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @displace_set_labels() #0 {
entry:
  %label_maxwidth = alloca i32, align 4
  %call = call i32 @displace_get_label_size()
  store i32 %call, i32* %label_maxwidth, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkButton*
  %3 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([2 x [2 x i8*]], [2 x [2 x i8*]]* @mtext, i32 0, i64 0), i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call3 = call i8* @gettext(i8* %4) #6
  call void @gtk_button_set_label(%struct._GtkButton* %2, i8* %call3)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_button_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkButton*
  %8 = load i32, i32* getelementptr inbounds (%struct.DisplaceVals, %struct.DisplaceVals* @dvals, i32 0, i32 7), align 4
  %idxprom6 = zext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x i8*], [2 x i8*]* getelementptr inbounds ([2 x [2 x i8*]], [2 x [2 x i8*]]* @mtext, i32 0, i64 1), i32 0, i64 %idxprom6
  %9 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i8* @gettext(i8* %9) #6
  call void @gtk_button_set_label(%struct._GtkButton* %7, i8* %call8)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %11 = load i32, i32* %label_maxwidth, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %10, i32 %11, i32 -1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_y, align 8
  %13 = load i32, i32* %label_maxwidth, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %12, i32 %13, i32 -1)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

; Function Attrs: nounwind uwtable
define internal i32 @displace_get_label_size() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %requisition = alloca %struct._GtkRequisition, align 4
  %0 = load i32, i32* @displace_get_label_size.label_maxwidth, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_button_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkButton*
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x i8*]], [2 x [2 x i8*]]* @mtext, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i8* @gettext(i8* %8) #6
  call void @gtk_button_set_label(%struct._GtkButton* %5, i8* %call7)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @toggle_x, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %9, %struct._GtkRequisition* %requisition)
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* @displace_get_label_size.label_maxwidth, align 4
  %cmp8 = icmp sgt i32 %10, %11
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body.3
  %width10 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %12 = load i32, i32* %width10, align 4
  store i32 %12, i32* @displace_get_label_size.label_maxwidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end.13, %entry
  %15 = load i32, i32* @displace_get_label_size.label_maxwidth, align 4
  ret i32 %15
}

declare void @gtk_button_set_label(%struct._GtkButton*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

; Function Attrs: nounwind
declare double @atan(double) #2

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal double @displace_map_give_value(i8* %pt, i32 %alpha, i32 %bytes) #0 {
entry:
  %pt.addr = alloca i8*, align 8
  %alpha.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %ret = alloca double, align 8
  %val_alpha = alloca double, align 8
  store i8* %pt, i8** %pt.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp sge i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %pt.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double %conv1, 2.126000e-01
  %3 = load i8*, i8** %pt.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %conv4 = sitofp i32 %conv3 to double
  %mul5 = fmul double %conv4, 7.152000e-01
  %add = fadd double %mul, %mul5
  %5 = load i8*, i8** %pt.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %6 to i32
  %conv8 = sitofp i32 %conv7 to double
  %mul9 = fmul double %conv8, 7.220000e-02
  %add10 = fadd double %add, %mul9
  store double %add10, double* %ret, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %pt.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv11 = uitofp i8 %8 to double
  store double %conv11, double* %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %alpha.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end
  %10 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i8*, i8** %pt.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = uitofp i8 %12 to double
  store double %conv14, double* %val_alpha, align 8
  %13 = load double, double* %ret, align 8
  %sub15 = fsub double %13, 1.275000e+02
  %14 = load double, double* %val_alpha, align 8
  %mul16 = fmul double %sub15, %14
  %div = fdiv double %mul16, 2.550000e+02
  %add17 = fadd double %div, 1.275000e+02
  store double %add17, double* %ret, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.end
  %15 = load double, double* %ret, align 8
  ret double %15
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare zeroext i8 @gimp_bilinear_8(double, double, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
