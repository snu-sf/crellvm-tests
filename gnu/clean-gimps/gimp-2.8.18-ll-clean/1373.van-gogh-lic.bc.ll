; ModuleID = './plug-ins/common/van-gogh-lic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.LicValues = type { double, double, double, double, double, i32, i32, i32, i32 }
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
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GRand = type opaque
%struct._GimpHSL = type { double, double, double, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"plug-in-lic\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Special effects that nobody understands\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"No help yet\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Tom Bech & Federico Mena Quintero\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Version 0.14, September 24 1997\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"_Van Gogh (LIC)...\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@licvals = internal global %struct.LicValues zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"van-gogh-lic\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Van Gogh (LIC)\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"gimp-van-gogh-lic\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@dialog = internal global %struct._GtkWidget* null, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"Effect Channel\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"_Hue\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"_Saturation\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"_Brightness\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Effect Operator\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"_Derivative\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"_Gradient\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"Convolve\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"_With white noise\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"W_ith source image\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"_Effect image:\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"_Filter length:\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"_Noise magnitude:\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"In_tegration steps:\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"_Minimum value:\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"M_aximum value:\00", align 1
@border_x1 = internal global i32 0, align 4
@border_y1 = internal global i32 0, align 4
@border_x2 = internal global i32 0, align 4
@border_y2 = internal global i32 0, align 4
@l = internal global double 1.000000e+01, align 8
@dy = internal global double 2.000000e+00, align 8
@dx = internal global double 2.000000e+00, align 8
@minv = internal global double -2.500000e+00, align 8
@maxv = internal global double 2.500000e+00, align 8
@isteps = internal global double 2.000000e+01, align 8
@source_drw_has_alpha = internal global i32 0, align 4
@effect_width = internal global i32 0, align 4
@effect_height = internal global i32 0, align 4
@G = internal global [40 x [40 x [2 x double]]] zeroinitializer, align 16
@peek.data = internal global [4 x i8] zeroinitializer, align 1
@getpixel.pp = internal global [4 x %struct._GimpRGB] zeroinitializer, align 16
@poke.data = internal global [4 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  call void @set_default_settings()
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.LicValues* @licvals to i8*))
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %do.end
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call8 = call i32 @gimp_drawable_is_rgb(i32 %9)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %call10 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %11, %call10
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %12 = load i32, i32* %run_mode, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.then.9
  %call11 = call i32 @create_main_dialog()
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %sw.bb
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @compute_image(%struct._GimpDrawable* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %sw.bb
  %call14 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.LicValues* @licvals to i8*), i32 56)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then.9
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @compute_image(%struct._GimpDrawable* %14)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %if.end
  br label %if.end.16

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %sw.epilog
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %do.end
  %15 = load i32, i32* %status, align 4
  store i32 %15, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %16)
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

; Function Attrs: nounwind uwtable
define internal void @set_default_settings() #0 {
entry:
  store double 5.000000e+00, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 0), align 8
  store double 2.000000e+00, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 1), align 8
  store double 2.500000e+01, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 2), align 8
  store double -2.500000e+01, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 3), align 8
  store double 2.500000e+01, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 4), align 8
  store i32 2, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 5), align 4
  store i32 1, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 6), align 4
  store i32 1, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 7), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 8), align 4
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal i32 @create_main_dialog() #0 {
entry:
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %row = alloca i32, align 4
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** @dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %hbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #4
  %21 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 5), align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call17, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 5) to i8*), i32 %21, i8* %call18, i32 0, i8* null, i8* %call19, i32 1, i8* null, i8* %call20, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #4
  %27 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 6), align 4
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0)) #4
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)) #4
  %call27 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call24, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 6) to i8*), i32 %27, i8* %call25, i32 0, i8* null, i8* %call26, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %frame, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call28)
  %30 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #4
  %33 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 7), align 4
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #4
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0)) #4
  %call33 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call30, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 7) to i8*), i32 %33, i8* %call31, i32 0, i8* null, i8* %call32, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %frame, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call34)
  %36 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call36 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 2, i32 0)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %table, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call37)
  %41 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %41, i32 6)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call39)
  %44 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %call41 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @effect_image_constrain, i8* null)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %combo, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_int_combo_box_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call42)
  %49 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpIntComboBox*
  %50 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 8), align 4
  %call44 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %49, i32 %50, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 8) to i8*))
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call45)
  %53 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #4
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call48 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %53, i32 0, i32 0, i8* %call47, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %54, i32 2, i32 1)
  %call49 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 3, i32 0)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %table, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call50)
  %57 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %57, i32 6)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call52)
  %60 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %60, i32 6)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call54)
  %63 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %63, %struct._GtkWidget* %64, i32 0, i32 0, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  store i32 0, i32* %row, align 4
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call56)
  %68 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %69 = load i32, i32* %row, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %row, align 4
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0)) #4
  %70 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 0), align 8
  %call59 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %68, i32 0, i32 %69, i8* %call58, i32 0, i32 6, double %70, double 1.000000e-01, double 6.400000e+01, double 1.000000e+00, double 8.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call59, %struct._GtkObject** %scale_data, align 8
  %71 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.LicValues* @licvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call61)
  %75 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %76 = load i32, i32* %row, align 4
  %inc63 = add nsw i32 %76, 1
  store i32 %inc63, i32* %row, align 4
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0)) #4
  %77 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 1), align 8
  %call65 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %75, i32 0, i32 %76, i8* %call64, i32 0, i32 6, double %77, double 1.000000e+00, double 5.000000e+00, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call65, %struct._GtkObject** %scale_data, align 8
  %78 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %79 = bitcast %struct._GtkObject* %78 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call67)
  %82 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %83 = load i32, i32* %row, align 4
  %inc69 = add nsw i32 %83, 1
  store i32 %inc69, i32* %row, align 4
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)) #4
  %84 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 2), align 8
  %call71 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %82, i32 0, i32 %83, i8* %call70, i32 0, i32 6, double %84, double 1.000000e+00, double 4.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call71, %struct._GtkObject** %scale_data, align 8
  %85 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %86 = bitcast %struct._GtkObject* %85 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_table_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call73)
  %89 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkTable*
  %90 = load i32, i32* %row, align 4
  %inc75 = add nsw i32 %90, 1
  store i32 %inc75, i32* %row, align 4
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0)) #4
  %91 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 3), align 8
  %call77 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %89, i32 0, i32 %90, i8* %call76, i32 0, i32 6, double %91, double -1.000000e+02, double 0.000000e+00, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call77, %struct._GtkObject** %scale_data, align 8
  %92 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %93 = bitcast %struct._GtkObject* %92 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call79)
  %96 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %97 = load i32, i32* %row, align 4
  %inc81 = add nsw i32 %97, 1
  store i32 %inc81, i32* %row, align 4
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0)) #4
  %98 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 4), align 8
  %call83 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %96, i32 0, i32 %97, i8* %call82, i32 0, i32 6, double %98, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call83, %struct._GtkObject** %scale_data, align 8
  %99 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %100 = bitcast %struct._GtkObject* %99 to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_dialog_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call85)
  %104 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpDialog*
  %call87 = call i32 @gimp_dialog_run(%struct._GimpDialog* %104)
  %cmp = icmp eq i32 %call87, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %105)
  %106 = load i32, i32* %run, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal void @compute_image(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %effect = alloca %struct._GimpDrawable*, align 8
  %scalarfield = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* null, i8** %scalarfield, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* @border_x1, i32* @border_y1, i32* @border_x2, i32* @border_y2)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)) #4
  %call2 = call i32 @gimp_progress_init(i8* %call1)
  %2 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 7), align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @generatevectors()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 0), align 8
  %cmp3 = fcmp olt double %3, 1.000000e-01
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store double 1.000000e-01, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 0), align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 0), align 8
  store double %4, double* @l, align 8
  %5 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 1), align 8
  store double %5, double* @dy, align 8
  store double %5, double* @dx, align 8
  %6 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 3), align 8
  %div = fdiv double %6, 1.000000e+01
  store double %div, double* @minv, align 8
  %7 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 4), align 8
  %div6 = fdiv double %7, 1.000000e+01
  store double %div6, double* @maxv, align 8
  %8 = load double, double* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 2), align 8
  store double %8, double* @isteps, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id7, align 4
  %call8 = call i32 @gimp_drawable_has_alpha(i32 %10)
  store i32 %call8, i32* @source_drw_has_alpha, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 8), align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %11)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %effect, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %effect, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 1
  %13 = load i32, i32* %width, align 4
  store i32 %13, i32* @effect_width, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %effect, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height, align 4
  store i32 %15, i32* @effect_height, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 5), align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end.5
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %effect, align 8
  %call10 = call i8* @rgb_to_hsl(%struct._GimpDrawable* %17, i32 0)
  store i8* %call10, i8** %scalarfield, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.5
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %effect, align 8
  %call12 = call i8* @rgb_to_hsl(%struct._GimpDrawable* %18, i32 1)
  store i8* %call12, i8** %scalarfield, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.5
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %effect, align 8
  %call14 = call i8* @rgb_to_hsl(%struct._GimpDrawable* %19, i32 2)
  store i8* %call14, i8** %scalarfield, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.5, %sw.bb.13, %sw.bb.11, %sw.bb
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = load i8*, i8** %scalarfield, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 6), align 4
  call void @compute_lic(%struct._GimpDrawable* %20, i8* %21, i32 %22)
  %23 = load i8*, i8** %scalarfield, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %24)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id15, align 4
  %call16 = call i32 @gimp_drawable_merge_shadow(i32 %26, i32 1)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id17, align 4
  %29 = load i32, i32* @border_x1, align 4
  %30 = load i32, i32* @border_y1, align 4
  %31 = load i32, i32* @border_x2, align 4
  %32 = load i32, i32* @border_x1, align 4
  %sub = sub nsw i32 %31, %32
  %33 = load i32, i32* @border_y2, align 4
  %34 = load i32, i32* @border_y1, align 4
  %sub18 = sub nsw i32 %33, %34
  %call19 = call i32 @gimp_drawable_update(i32 %28, i32 %29, i32 %30, i32 %sub, i32 %sub18)
  %call20 = call i32 @gimp_displays_flush()
  ret void
}

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

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @effect_image_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %0)
  ret i32 %call
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @generatevectors() #0 {
entry:
  %alpha = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 40
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call4 = call double @g_rand_double_range(%struct._GRand* %2, double 0.000000e+00, double 2.000000e+00)
  %mul = fmul double %call4, 0x400921FB54442D18
  store double %mul, double* %alpha, align 8
  %3 = load double, double* %alpha, align 8
  %call5 = call double @cos(double %3) #4
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [40 x [40 x [2 x double]]], [40 x [40 x [2 x double]]]* @G, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [40 x [2 x double]], [40 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx7, i32 0, i64 0
  store double %call5, double* %arrayidx8, align 8
  %6 = load double, double* %alpha, align 8
  %call9 = call double @sin(double %6) #4
  %7 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [40 x [40 x [2 x double]]], [40 x [40 x [2 x double]]]* @G, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [40 x [2 x double]], [40 x [2 x double]]* %arrayidx12, i32 0, i64 %idxprom10
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx13, i32 0, i64 1
  store double %call9, double* %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %11 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %11)
  ret void
}

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @rgb_to_hsl(%struct._GimpDrawable* %drawable, i32 %effect_channel) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %effect_channel.addr = alloca i32, align 4
  %themap = alloca i8*, align 8
  %data = alloca [4 x i8], align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %color_hsl = alloca %struct._GimpHSL, align 8
  %val = alloca double, align 8
  %maxc = alloca i64, align 8
  %index = alloca i64, align 8
  %region = alloca %struct._GimpPixelRgn, align 8
  %gr = alloca %struct._GRand*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %effect_channel, i32* %effect_channel.addr, align 4
  store double 0.000000e+00, double* %val, align 8
  store i64 0, i64* %index, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  %mul = mul i32 %1, %3
  %conv = zext i32 %mul to i64
  store i64 %conv, i64* %maxc, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = load i32, i32* @border_x1, align 4
  %6 = load i32, i32* @border_y1, align 4
  %7 = load i32, i32* @border_x2, align 4
  %8 = load i32, i32* @border_x1, align 4
  %sub = sub nsw i32 %7, %8
  %9 = load i32, i32* @border_y2, align 4
  %10 = load i32, i32* @border_y1, align 4
  %sub1 = sub nsw i32 %9, %10
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %region, %struct._GimpDrawable* %4, i32 %5, i32 %6, i32 %sub, i32 %sub1, i32 0, i32 0)
  %11 = load i64, i64* %maxc, align 8
  %call2 = call noalias i8* @g_malloc_n(i64 %11, i64 1)
  store i8* %call2, i8** %themap, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %12 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 7
  %13 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %15 = load i32, i32* %w, align 4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 3
  store i8 -1, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i32 0
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %region, i8* %arraydecay, i32 %16, i32 %17)
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 0
  %18 = load i8, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 1
  %19 = load i8, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 2
  %20 = load i8, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %data, i32 0, i64 3
  %21 = load i8, i8* %arrayidx11, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %18, i8 zeroext %19, i8 zeroext %20, i8 zeroext %21)
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %color, %struct._GimpHSL* %color_hsl)
  %22 = load i32, i32* %effect_channel.addr, align 4
  switch i32 %22, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %for.body.7
  %h12 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %color_hsl, i32 0, i32 0
  %23 = load double, double* %h12, align 8
  %mul13 = fmul double %23, 2.550000e+02
  store double %mul13, double* %val, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body.7
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %color_hsl, i32 0, i32 1
  %24 = load double, double* %s, align 8
  %mul15 = fmul double %24, 2.550000e+02
  store double %mul15, double* %val, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body.7
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %color_hsl, i32 0, i32 2
  %25 = load double, double* %l, align 8
  %mul17 = fmul double %25, 2.550000e+02
  store double %mul17, double* %val, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.7, %sw.bb.16, %sw.bb.14, %sw.bb
  %26 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call18 = call double @g_rand_double_range(%struct._GRand* %26, double -1.000000e+00, double 1.000000e+00)
  %27 = load double, double* %val, align 8
  %add = fadd double %27, %call18
  store double %add, double* %val, align 8
  %28 = load double, double* %val, align 8
  %call19 = call double @rint(double %28) #5
  %cmp20 = fcmp ogt double %call19, 2.550000e+02
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end.28

cond.false:                                       ; preds = %sw.epilog
  %29 = load double, double* %val, align 8
  %call22 = call double @rint(double %29) #5
  %cmp23 = fcmp olt double %call22, 0.000000e+00
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %30 = load double, double* %val, align 8
  %call27 = call double @rint(double %30) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.25
  %cond = phi double [ 0.000000e+00, %cond.true.25 ], [ %call27, %cond.false.26 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv30 = fptoui double %cond29 to i8
  %31 = load i64, i64* %index, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %index, align 8
  %32 = load i8*, i8** %themap, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8 %conv30, i8* %arrayidx31, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.28
  %33 = load i32, i32* %x, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %x, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %34 = load i32, i32* %y, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* %y, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %35 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %35)
  %36 = load i8*, i8** %themap, align 8
  ret i8* %36
}

; Function Attrs: nounwind uwtable
define internal void @compute_lic(%struct._GimpDrawable* %drawable, i8* %scalarfield, i32 %rotate) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %scalarfield.addr = alloca i8*, align 8
  %rotate.addr = alloca i32, align 4
  %xcount = alloca i32, align 4
  %ycount = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %vx = alloca double, align 8
  %vy = alloca double, align 8
  %tmp = alloca double, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %scalarfield, i8** %scalarfield.addr, align 8
  store i32 %rotate, i32* %rotate.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load i32, i32* @border_x1, align 4
  %2 = load i32, i32* @border_y1, align 4
  %3 = load i32, i32* @border_x2, align 4
  %4 = load i32, i32* @border_x1, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i32, i32* @border_y2, align 4
  %6 = load i32, i32* @border_y1, align 4
  %sub3 = sub nsw i32 %5, %6
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %0, i32 %1, i32 %2, i32 %sub, i32 %sub3, i32 0, i32 0)
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load i32, i32* @border_x1, align 4
  %9 = load i32, i32* @border_y1, align 4
  %10 = load i32, i32* @border_x2, align 4
  %11 = load i32, i32* @border_x1, align 4
  %sub4 = sub nsw i32 %10, %11
  %12 = load i32, i32* @border_y2, align 4
  %13 = load i32, i32* @border_y1, align 4
  %sub5 = sub nsw i32 %12, %13
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %7, i32 %8, i32 %9, i32 %sub4, i32 %sub5, i32 1, i32 1)
  store i32 0, i32* %ycount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %14 = load i32, i32* %ycount, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %15 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %xcount, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %xcount, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %17 = load i32, i32* %w, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i8*, i8** %scalarfield.addr, align 8
  %19 = load i32, i32* %xcount, align 4
  %20 = load i32, i32* %ycount, align 4
  %call = call i32 @gradx(i8* %18, i32 %19, i32 %20)
  %conv = sitofp i32 %call to double
  store double %conv, double* %vx, align 8
  %21 = load i8*, i8** %scalarfield.addr, align 8
  %22 = load i32, i32* %xcount, align 4
  %23 = load i32, i32* %ycount, align 4
  %call9 = call i32 @grady(i8* %21, i32 %22, i32 %23)
  %conv10 = sitofp i32 %call9 to double
  store double %conv10, double* %vy, align 8
  %24 = load i32, i32* %rotate.addr, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.8
  %25 = load double, double* %vy, align 8
  store double %25, double* %tmp, align 8
  %26 = load double, double* %vx, align 8
  %sub11 = fsub double -0.000000e+00, %26
  store double %sub11, double* %vy, align 8
  %27 = load double, double* %tmp, align 8
  store double %27, double* %vx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.8
  %28 = load double, double* %vx, align 8
  %29 = load double, double* %vx, align 8
  %mul = fmul double %28, %29
  %30 = load double, double* %vy, align 8
  %31 = load double, double* %vy, align 8
  %mul12 = fmul double %30, %31
  %add = fadd double %mul, %mul12
  %call13 = call double @sqrt(double %add) #4
  store double %call13, double* %tmp, align 8
  %32 = load double, double* %tmp, align 8
  %cmp14 = fcmp oge double %32, 1.000000e-06
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end
  %33 = load double, double* %tmp, align 8
  %div = fdiv double 1.000000e+00, %33
  store double %div, double* %tmp, align 8
  %34 = load double, double* %tmp, align 8
  %35 = load double, double* %vx, align 8
  %mul17 = fmul double %35, %34
  store double %mul17, double* %vx, align 8
  %36 = load double, double* %tmp, align 8
  %37 = load double, double* %vy, align 8
  %mul18 = fmul double %37, %36
  store double %mul18, double* %vy, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end
  %38 = load i32, i32* getelementptr inbounds (%struct.LicValues, %struct.LicValues* @licvals, i32 0, i32 7), align 4
  %cmp20 = icmp eq i32 %38, 0
  br i1 %cmp20, label %if.then.22, label %if.else.27

if.then.22:                                       ; preds = %if.end.19
  %39 = load i32, i32* %xcount, align 4
  %40 = load i32, i32* %ycount, align 4
  call void @peek(%struct._GimpPixelRgn* %src_rgn, i32 %39, i32 %40, %struct._GimpRGB* %color)
  %41 = load i32, i32* %xcount, align 4
  %42 = load i32, i32* %ycount, align 4
  %43 = load double, double* %vx, align 8
  %44 = load double, double* %vy, align 8
  %call23 = call double @lic_noise(i32 %41, i32 %42, double %43, double %44)
  store double %call23, double* %tmp, align 8
  %45 = load i32, i32* @source_drw_has_alpha, align 4
  %tobool24 = icmp ne i32 %45, 0
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.22
  %46 = load double, double* %tmp, align 8
  call void @gimp_rgba_multiply(%struct._GimpRGB* %color, double %46)
  br label %if.end.26

if.else:                                          ; preds = %if.then.22
  %47 = load double, double* %tmp, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color, double %47)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.19
  %48 = load i32, i32* %xcount, align 4
  %49 = load i32, i32* %ycount, align 4
  %50 = load double, double* %vx, align 8
  %51 = load double, double* %vy, align 8
  call void @lic_image(%struct._GimpPixelRgn* %src_rgn, i32 %48, i32 %49, double %50, double %51, %struct._GimpRGB* %color)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.end.26
  %52 = load i32, i32* %xcount, align 4
  %53 = load i32, i32* %ycount, align 4
  call void @poke(%struct._GimpPixelRgn* %dest_rgn, i32 %52, i32 %53, %struct._GimpRGB* %color)
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %54 = load i32, i32* %xcount, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %xcount, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %55 = load i32, i32* %ycount, align 4
  %conv29 = sitofp i32 %55 to float
  %h30 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %56 = load i32, i32* %h30, align 4
  %conv31 = sitofp i32 %56 to float
  %div32 = fdiv float %conv29, %conv31
  %conv33 = fpext float %div32 to double
  %call34 = call i32 @gimp_progress_update(double %conv33)
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %57 = load i32, i32* %ycount, align 4
  %inc36 = add nsw i32 %57, 1
  store i32 %inc36, i32* %ycount, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %call38 = call i32 @gimp_progress_update(double 1.000000e+00)
  ret void
}

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_displays_flush() #1

declare %struct._GRand* @g_rand_new() #1

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

declare void @g_rand_free(%struct._GRand*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare void @gimp_rgb_to_hsl(%struct._GimpRGB*, %struct._GimpHSL*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @gradx(i8* %image, i32 %x, i32 %y) #0 {
entry:
  %image.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i8* %image, i8** %image.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 0, i32* %val, align 4
  %0 = load i32, i32* %val, align 4
  %1 = load i8*, i8** %image.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* %y.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %call = call i32 @peekmap(i8* %1, i32 %sub, i32 %sub1)
  %add = add nsw i32 %0, %call
  store i32 %add, i32* %val, align 4
  %4 = load i32, i32* %val, align 4
  %5 = load i8*, i8** %image.addr, align 8
  %6 = load i32, i32* %x.addr, align 4
  %add2 = add nsw i32 %6, 1
  %7 = load i32, i32* %y.addr, align 4
  %sub3 = sub nsw i32 %7, 1
  %call4 = call i32 @peekmap(i8* %5, i32 %add2, i32 %sub3)
  %sub5 = sub nsw i32 %4, %call4
  store i32 %sub5, i32* %val, align 4
  %8 = load i32, i32* %val, align 4
  %9 = load i8*, i8** %image.addr, align 8
  %10 = load i32, i32* %x.addr, align 4
  %sub6 = sub nsw i32 %10, 1
  %11 = load i32, i32* %y.addr, align 4
  %call7 = call i32 @peekmap(i8* %9, i32 %sub6, i32 %11)
  %mul = mul nsw i32 2, %call7
  %add8 = add nsw i32 %8, %mul
  store i32 %add8, i32* %val, align 4
  %12 = load i32, i32* %val, align 4
  %13 = load i8*, i8** %image.addr, align 8
  %14 = load i32, i32* %x.addr, align 4
  %add9 = add nsw i32 %14, 1
  %15 = load i32, i32* %y.addr, align 4
  %call10 = call i32 @peekmap(i8* %13, i32 %add9, i32 %15)
  %mul11 = mul nsw i32 2, %call10
  %sub12 = sub nsw i32 %12, %mul11
  store i32 %sub12, i32* %val, align 4
  %16 = load i32, i32* %val, align 4
  %17 = load i8*, i8** %image.addr, align 8
  %18 = load i32, i32* %x.addr, align 4
  %sub13 = sub nsw i32 %18, 1
  %19 = load i32, i32* %y.addr, align 4
  %add14 = add nsw i32 %19, 1
  %call15 = call i32 @peekmap(i8* %17, i32 %sub13, i32 %add14)
  %add16 = add nsw i32 %16, %call15
  store i32 %add16, i32* %val, align 4
  %20 = load i32, i32* %val, align 4
  %21 = load i8*, i8** %image.addr, align 8
  %22 = load i32, i32* %x.addr, align 4
  %add17 = add nsw i32 %22, 1
  %23 = load i32, i32* %y.addr, align 4
  %add18 = add nsw i32 %23, 1
  %call19 = call i32 @peekmap(i8* %21, i32 %add17, i32 %add18)
  %sub20 = sub nsw i32 %20, %call19
  store i32 %sub20, i32* %val, align 4
  %24 = load i32, i32* %val, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @grady(i8* %image, i32 %x, i32 %y) #0 {
entry:
  %image.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i8* %image, i8** %image.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 0, i32* %val, align 4
  %0 = load i32, i32* %val, align 4
  %1 = load i8*, i8** %image.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* %y.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %call = call i32 @peekmap(i8* %1, i32 %sub, i32 %sub1)
  %add = add nsw i32 %0, %call
  store i32 %add, i32* %val, align 4
  %4 = load i32, i32* %val, align 4
  %5 = load i8*, i8** %image.addr, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %sub2 = sub nsw i32 %7, 1
  %call3 = call i32 @peekmap(i8* %5, i32 %6, i32 %sub2)
  %mul = mul nsw i32 2, %call3
  %add4 = add nsw i32 %4, %mul
  store i32 %add4, i32* %val, align 4
  %8 = load i32, i32* %val, align 4
  %9 = load i8*, i8** %image.addr, align 8
  %10 = load i32, i32* %x.addr, align 4
  %add5 = add nsw i32 %10, 1
  %11 = load i32, i32* %y.addr, align 4
  %sub6 = sub nsw i32 %11, 1
  %call7 = call i32 @peekmap(i8* %9, i32 %add5, i32 %sub6)
  %add8 = add nsw i32 %8, %call7
  store i32 %add8, i32* %val, align 4
  %12 = load i32, i32* %val, align 4
  %13 = load i8*, i8** %image.addr, align 8
  %14 = load i32, i32* %x.addr, align 4
  %sub9 = sub nsw i32 %14, 1
  %15 = load i32, i32* %y.addr, align 4
  %add10 = add nsw i32 %15, 1
  %call11 = call i32 @peekmap(i8* %13, i32 %sub9, i32 %add10)
  %sub12 = sub nsw i32 %12, %call11
  store i32 %sub12, i32* %val, align 4
  %16 = load i32, i32* %val, align 4
  %17 = load i8*, i8** %image.addr, align 8
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  %add13 = add nsw i32 %19, 1
  %call14 = call i32 @peekmap(i8* %17, i32 %18, i32 %add13)
  %mul15 = mul nsw i32 2, %call14
  %sub16 = sub nsw i32 %16, %mul15
  store i32 %sub16, i32* %val, align 4
  %20 = load i32, i32* %val, align 4
  %21 = load i8*, i8** %image.addr, align 8
  %22 = load i32, i32* %x.addr, align 4
  %add17 = add nsw i32 %22, 1
  %23 = load i32, i32* %y.addr, align 4
  %add18 = add nsw i32 %23, 1
  %call19 = call i32 @peekmap(i8* %21, i32 %add17, i32 %add18)
  %sub20 = sub nsw i32 %20, %call19
  store i32 %sub20, i32* %val, align 4
  %24 = load i32, i32* %val, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal void @peek(%struct._GimpPixelRgn* %src_rgn, i32 %x, i32 %y, %struct._GimpRGB* %color) #0 {
entry:
  %src_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i32 0), i32 %1, i32 %2)
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %4 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 0), align 1
  %5 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 1), align 1
  %6 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 2), align 1
  %7 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @peek.data, i32 0, i64 3), align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @lic_noise(i32 %x, i32 %y, double %vx, double %vy) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %vx.addr = alloca double, align 8
  %vy.addr = alloca double, align 8
  %i = alloca double, align 8
  %f1 = alloca double, align 8
  %f2 = alloca double, align 8
  %u = alloca double, align 8
  %step = alloca double, align 8
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store double %vx, double* %vx.addr, align 8
  store double %vy, double* %vy.addr, align 8
  store double 0.000000e+00, double* %i, align 8
  store double 0.000000e+00, double* %f1, align 8
  store double 0.000000e+00, double* %f2, align 8
  %0 = load double, double* @l, align 8
  %mul = fmul double 2.000000e+00, %0
  %1 = load double, double* @isteps, align 8
  %div = fdiv double %mul, %1
  store double %div, double* %step, align 8
  %2 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %2 to double
  store double %conv, double* %xx, align 8
  %3 = load i32, i32* %y.addr, align 4
  %conv1 = sitofp i32 %3 to double
  store double %conv1, double* %yy, align 8
  %4 = load double, double* %vx.addr, align 8
  store double %4, double* %c, align 8
  %5 = load double, double* %vy.addr, align 8
  store double %5, double* %s, align 8
  %6 = load double, double* @l, align 8
  %sub = fsub double -0.000000e+00, %6
  %call = call double @filter(double %sub)
  %7 = load double, double* %xx, align 8
  %8 = load double, double* @l, align 8
  %9 = load double, double* %c, align 8
  %mul2 = fmul double %8, %9
  %add = fadd double %7, %mul2
  %10 = load double, double* %yy, align 8
  %11 = load double, double* @l, align 8
  %12 = load double, double* %s, align 8
  %mul3 = fmul double %11, %12
  %add4 = fadd double %10, %mul3
  %call5 = call double @noise(double %add, double %add4)
  %mul6 = fmul double %call, %call5
  store double %mul6, double* %f1, align 8
  %13 = load double, double* @l, align 8
  %sub7 = fsub double -0.000000e+00, %13
  %14 = load double, double* %step, align 8
  %add8 = fadd double %sub7, %14
  store double %add8, double* %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load double, double* %u, align 8
  %16 = load double, double* @l, align 8
  %cmp = fcmp ole double %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load double, double* %u, align 8
  %call10 = call double @filter(double %17)
  %18 = load double, double* %xx, align 8
  %19 = load double, double* %u, align 8
  %20 = load double, double* %c, align 8
  %mul11 = fmul double %19, %20
  %sub12 = fsub double %18, %mul11
  %21 = load double, double* %yy, align 8
  %22 = load double, double* %u, align 8
  %23 = load double, double* %s, align 8
  %mul13 = fmul double %22, %23
  %sub14 = fsub double %21, %mul13
  %call15 = call double @noise(double %sub12, double %sub14)
  %mul16 = fmul double %call10, %call15
  store double %mul16, double* %f2, align 8
  %24 = load double, double* %f1, align 8
  %25 = load double, double* %f2, align 8
  %add17 = fadd double %24, %25
  %mul18 = fmul double %add17, 5.000000e-01
  %26 = load double, double* %step, align 8
  %mul19 = fmul double %mul18, %26
  %27 = load double, double* %i, align 8
  %add20 = fadd double %27, %mul19
  store double %add20, double* %i, align 8
  %28 = load double, double* %f2, align 8
  store double %28, double* %f1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load double, double* %step, align 8
  %30 = load double, double* %u, align 8
  %add21 = fadd double %30, %29
  store double %add21, double* %u, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load double, double* %i, align 8
  %32 = load double, double* @minv, align 8
  %sub22 = fsub double %31, %32
  %33 = load double, double* @maxv, align 8
  %34 = load double, double* @minv, align 8
  %sub23 = fsub double %33, %34
  %div24 = fdiv double %sub22, %sub23
  store double %div24, double* %i, align 8
  %35 = load double, double* %i, align 8
  %cmp25 = fcmp ogt double %35, 1.000000e+00
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end.31

cond.false:                                       ; preds = %for.end
  %36 = load double, double* %i, align 8
  %cmp27 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false
  %37 = load double, double* %i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.29
  %cond = phi double [ 0.000000e+00, %cond.true.29 ], [ %37, %cond.false.30 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true
  %cond32 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond32, double* %i, align 8
  %38 = load double, double* %i, align 8
  %div33 = fdiv double %38, 2.000000e+00
  %add34 = fadd double %div33, 5.000000e-01
  store double %add34, double* %i, align 8
  %39 = load double, double* %i, align 8
  ret double %39
}

declare void @gimp_rgba_multiply(%struct._GimpRGB*, double) #1

declare void @gimp_rgb_multiply(%struct._GimpRGB*, double) #1

; Function Attrs: nounwind uwtable
define internal void @lic_image(%struct._GimpPixelRgn* %src_rgn, i32 %x, i32 %y, double %vx, double %vy, %struct._GimpRGB* %color) #0 {
entry:
  %src_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %vx.addr = alloca double, align 8
  %vy.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %u = alloca double, align 8
  %step = alloca double, align 8
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  %col = alloca %struct._GimpRGB, align 8
  %col1 = alloca %struct._GimpRGB, align 8
  %col2 = alloca %struct._GimpRGB, align 8
  %col3 = alloca %struct._GimpRGB, align 8
  store %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store double %vx, double* %vx.addr, align 8
  store double %vy, double* %vy.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load double, double* @l, align 8
  %mul = fmul double 2.000000e+00, %0
  %1 = load double, double* @isteps, align 8
  %div = fdiv double %mul, %1
  store double %div, double* %step, align 8
  %2 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %2 to double
  store double %conv, double* %xx, align 8
  %3 = load i32, i32* %y.addr, align 4
  %conv1 = sitofp i32 %3 to double
  store double %conv1, double* %yy, align 8
  %4 = bitcast %struct._GimpRGB* %col to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32, i32 8, i1 false)
  %5 = load double, double* %vx.addr, align 8
  store double %5, double* %c, align 8
  %6 = load double, double* %vy.addr, align 8
  store double %6, double* %s, align 8
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %8 = load double, double* %xx, align 8
  %9 = load double, double* @l, align 8
  %10 = load double, double* %c, align 8
  %mul2 = fmul double %9, %10
  %add = fadd double %8, %mul2
  %11 = load double, double* %yy, align 8
  %12 = load double, double* @l, align 8
  %13 = load double, double* %s, align 8
  %mul3 = fmul double %12, %13
  %add4 = fadd double %11, %mul3
  call void @getpixel(%struct._GimpPixelRgn* %7, %struct._GimpRGB* %col1, double %add, double %add4)
  %14 = load i32, i32* @source_drw_has_alpha, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load double, double* @l, align 8
  %sub = fsub double -0.000000e+00, %15
  %call = call double @filter(double %sub)
  call void @gimp_rgba_multiply(%struct._GimpRGB* %col1, double %call)
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load double, double* @l, align 8
  %sub5 = fsub double -0.000000e+00, %16
  %call6 = call double @filter(double %sub5)
  call void @gimp_rgb_multiply(%struct._GimpRGB* %col1, double %call6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load double, double* @l, align 8
  %sub7 = fsub double -0.000000e+00, %17
  %18 = load double, double* %step, align 8
  %add8 = fadd double %sub7, %18
  store double %add8, double* %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load double, double* %u, align 8
  %20 = load double, double* @l, align 8
  %cmp = fcmp ole double %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %22 = load double, double* %xx, align 8
  %23 = load double, double* %u, align 8
  %24 = load double, double* %c, align 8
  %mul10 = fmul double %23, %24
  %sub11 = fsub double %22, %mul10
  %25 = load double, double* %yy, align 8
  %26 = load double, double* %u, align 8
  %27 = load double, double* %s, align 8
  %mul12 = fmul double %26, %27
  %sub13 = fsub double %25, %mul12
  call void @getpixel(%struct._GimpPixelRgn* %21, %struct._GimpRGB* %col2, double %sub11, double %sub13)
  %28 = load i32, i32* @source_drw_has_alpha, align 4
  %tobool14 = icmp ne i32 %28, 0
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %for.body
  %29 = load double, double* %u, align 8
  %call16 = call double @filter(double %29)
  call void @gimp_rgba_multiply(%struct._GimpRGB* %col2, double %call16)
  %30 = bitcast %struct._GimpRGB* %col3 to i8*
  %31 = bitcast %struct._GimpRGB* %col1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  call void @gimp_rgba_add(%struct._GimpRGB* %col3, %struct._GimpRGB* %col2)
  %32 = load double, double* %step, align 8
  %mul17 = fmul double 5.000000e-01, %32
  call void @gimp_rgba_multiply(%struct._GimpRGB* %col3, double %mul17)
  call void @gimp_rgba_add(%struct._GimpRGB* %col, %struct._GimpRGB* %col3)
  br label %if.end.21

if.else.18:                                       ; preds = %for.body
  %33 = load double, double* %u, align 8
  %call19 = call double @filter(double %33)
  call void @gimp_rgb_multiply(%struct._GimpRGB* %col2, double %call19)
  %34 = bitcast %struct._GimpRGB* %col3 to i8*
  %35 = bitcast %struct._GimpRGB* %col1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @gimp_rgb_add(%struct._GimpRGB* %col3, %struct._GimpRGB* %col2)
  %36 = load double, double* %step, align 8
  %mul20 = fmul double 5.000000e-01, %36
  call void @gimp_rgb_multiply(%struct._GimpRGB* %col3, double %mul20)
  call void @gimp_rgb_add(%struct._GimpRGB* %col, %struct._GimpRGB* %col3)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.15
  %37 = bitcast %struct._GimpRGB* %col1 to i8*
  %38 = bitcast %struct._GimpRGB* %col2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %39 = load double, double* %step, align 8
  %40 = load double, double* %u, align 8
  %add22 = fadd double %40, %39
  store double %add22, double* %u, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* @source_drw_has_alpha, align 4
  %tobool23 = icmp ne i32 %41, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %for.end
  %42 = load double, double* @l, align 8
  %div25 = fdiv double 1.000000e+00, %42
  call void @gimp_rgba_multiply(%struct._GimpRGB* %col, double %div25)
  br label %if.end.28

if.else.26:                                       ; preds = %for.end
  %43 = load double, double* @l, align 8
  %div27 = fdiv double 1.000000e+00, %43
  call void @gimp_rgb_multiply(%struct._GimpRGB* %col, double %div27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.24
  call void @gimp_rgb_clamp(%struct._GimpRGB* %col)
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %45 = bitcast %struct._GimpRGB* %44 to i8*
  %46 = bitcast %struct._GimpRGB* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @poke(%struct._GimpPixelRgn* %dest_rgn, i32 %x, i32 %y, %struct._GimpRGB* %color) #0 {
entry:
  %dest_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 1), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 2), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i64 3))
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  call void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @poke.data, i32 0, i32 0), i32 %2, i32 %3)
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal i32 @peekmap(i8* %image, i32 %x, i32 %y) #0 {
entry:
  %image.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i8* %image, i8** %image.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @effect_width, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %x.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* @effect_width, align 4
  %4 = load i32, i32* %x.addr, align 4
  %rem = srem i32 %4, %3
  store i32 %rem, i32* %x.addr, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.3, %while.end
  %5 = load i32, i32* %y.addr, align 4
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %while.body.3, label %while.end.5

while.body.3:                                     ; preds = %while.cond.1
  %6 = load i32, i32* @effect_height, align 4
  %7 = load i32, i32* %y.addr, align 4
  %add4 = add nsw i32 %7, %6
  store i32 %add4, i32* %y.addr, align 4
  br label %while.cond.1

while.end.5:                                      ; preds = %while.cond.1
  %8 = load i32, i32* @effect_height, align 4
  %9 = load i32, i32* %y.addr, align 4
  %rem6 = srem i32 %9, %8
  store i32 %rem6, i32* %y.addr, align 4
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* @effect_width, align 4
  %12 = load i32, i32* %y.addr, align 4
  %mul = mul nsw i32 %11, %12
  %add7 = add nsw i32 %10, %mul
  %idxprom = sext i32 %add7 to i64
  %13 = load i8*, i8** %image.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal double @filter(double %u) #0 {
entry:
  %u.addr = alloca double, align 8
  %f = alloca double, align 8
  store double %u, double* %u.addr, align 8
  %0 = load double, double* %u.addr, align 8
  %call = call double @fabs(double %0) #5
  %1 = load double, double* @l, align 8
  %div = fdiv double %call, %1
  %sub = fsub double 1.000000e+00, %div
  store double %sub, double* %f, align 8
  %2 = load double, double* %f, align 8
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, double* %f, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %3, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define internal double @noise(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %i = alloca i32, align 4
  %sti = alloca i32, align 4
  %j = alloca i32, align 4
  %stj = alloca i32, align 4
  %sum = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* @dx, align 8
  %div = fdiv double %0, %1
  %call = call double @floor(double %div) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %sti, align 4
  %2 = load double, double* %y.addr, align 8
  %3 = load double, double* @dy, align 8
  %div1 = fdiv double %2, %3
  %call2 = call double @floor(double %div1) #5
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* %stj, align 4
  store double 0.000000e+00, double* %sum, align 8
  %4 = load i32, i32* %sti, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %sti, align 4
  %add = add nsw i32 %6, 1
  %cmp = icmp sle i32 %5, %add
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %stj, align 4
  store i32 %7, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %stj, align 4
  %add6 = add nsw i32 %9, 1
  %cmp7 = icmp sle i32 %8, %add6
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %10 = load double, double* %x.addr, align 8
  %11 = load i32, i32* %i, align 4
  %conv10 = sitofp i32 %11 to double
  %12 = load double, double* @dx, align 8
  %mul = fmul double %conv10, %12
  %sub = fsub double %10, %mul
  %13 = load double, double* @dx, align 8
  %div11 = fdiv double %sub, %13
  %14 = load double, double* %y.addr, align 8
  %15 = load i32, i32* %j, align 4
  %conv12 = sitofp i32 %15 to double
  %16 = load double, double* @dy, align 8
  %mul13 = fmul double %conv12, %16
  %sub14 = fsub double %14, %mul13
  %17 = load double, double* @dy, align 8
  %div15 = fdiv double %sub14, %17
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %j, align 4
  %call16 = call double @omega(double %div11, double %div15, i32 %18, i32 %19)
  %20 = load double, double* %sum, align 8
  %add17 = fadd double %20, %call16
  store double %add17, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %23 = load double, double* %sum, align 8
  ret double %23
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define internal double @omega(double %u, double %v, i32 %i, i32 %j) #0 {
entry:
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %1, 40
  store i32 %add, i32* %i.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.3, %while.end
  %2 = load i32, i32* %j.addr, align 4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %while.body.3, label %while.end.5

while.body.3:                                     ; preds = %while.cond.1
  %3 = load i32, i32* %j.addr, align 4
  %add4 = add nsw i32 %3, 40
  store i32 %add4, i32* %j.addr, align 4
  br label %while.cond.1

while.end.5:                                      ; preds = %while.cond.1
  %4 = load i32, i32* %i.addr, align 4
  %rem = srem i32 %4, 40
  store i32 %rem, i32* %i.addr, align 4
  %5 = load i32, i32* %j.addr, align 4
  %rem6 = srem i32 %5, 40
  store i32 %rem6, i32* %j.addr, align 4
  %6 = load double, double* %u.addr, align 8
  %call = call double @cubic(double %6)
  %7 = load double, double* %v.addr, align 8
  %call7 = call double @cubic(double %7)
  %mul = fmul double %call, %call7
  %8 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [40 x [40 x [2 x double]]], [40 x [40 x [2 x double]]]* @G, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [40 x [2 x double]], [40 x [2 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx9, i32 0, i64 0
  %10 = load double, double* %arrayidx10, align 8
  %11 = load double, double* %u.addr, align 8
  %mul11 = fmul double %10, %11
  %12 = load i32, i32* %j.addr, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32, i32* %i.addr, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [40 x [40 x [2 x double]]], [40 x [40 x [2 x double]]]* @G, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [40 x [2 x double]], [40 x [2 x double]]* %arrayidx14, i32 0, i64 %idxprom12
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx15, i32 0, i64 1
  %14 = load double, double* %arrayidx16, align 8
  %15 = load double, double* %v.addr, align 8
  %mul17 = fmul double %14, %15
  %add18 = fadd double %mul11, %mul17
  %mul19 = fmul double %mul, %add18
  ret double %mul19
}

; Function Attrs: nounwind uwtable
define internal double @cubic(double %t) #0 {
entry:
  %t.addr = alloca double, align 8
  %at = alloca double, align 8
  store double %t, double* %t.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %call = call double @fabs(double %0) #5
  store double %call, double* %at, align 8
  %1 = load double, double* %at, align 8
  %cmp = fcmp olt double %1, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %at, align 8
  %3 = load double, double* %at, align 8
  %mul = fmul double %2, %3
  %4 = load double, double* %at, align 8
  %mul1 = fmul double 2.000000e+00, %4
  %sub = fsub double %mul1, 3.000000e+00
  %mul2 = fmul double %mul, %sub
  %add = fadd double %mul2, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ 0.000000e+00, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @getpixel(%struct._GimpPixelRgn* %src_rgn, %struct._GimpRGB* %p, double %u, double %v) #0 {
entry:
  %src_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %p.addr = alloca %struct._GimpRGB*, align 8
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp19 = alloca %struct._GimpRGB, align 8
  store %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  store %struct._GimpRGB* %p, %struct._GimpRGB** %p.addr, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 6
  %1 = load i32, i32* %w, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %2, i32 0, i32 7
  %3 = load i32, i32* %h, align 4
  store i32 %3, i32* %height, align 4
  %4 = load double, double* %u.addr, align 8
  %conv = fptosi double %4 to i32
  store i32 %conv, i32* %x1, align 4
  %5 = load double, double* %v.addr, align 8
  %conv1 = fptosi double %5 to i32
  store i32 %conv1, i32* %y1, align 4
  %6 = load i32, i32* %x1, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 0, %8
  %9 = load i32, i32* %width, align 4
  %rem = srem i32 %sub, %9
  %sub3 = sub nsw i32 %7, %rem
  store i32 %sub3, i32* %x1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %x1, align 4
  %11 = load i32, i32* %width, align 4
  %rem4 = srem i32 %10, %11
  store i32 %rem4, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %y1, align 4
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %height, align 4
  %14 = load i32, i32* %y1, align 4
  %sub8 = sub nsw i32 0, %14
  %15 = load i32, i32* %height, align 4
  %rem9 = srem i32 %sub8, %15
  %sub10 = sub nsw i32 %13, %rem9
  store i32 %sub10, i32* %y1, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %if.end
  %16 = load i32, i32* %y1, align 4
  %17 = load i32, i32* %height, align 4
  %rem12 = srem i32 %16, %17
  store i32 %rem12, i32* %y1, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.7
  %18 = load i32, i32* %x1, align 4
  %add = add nsw i32 %18, 1
  %19 = load i32, i32* %width, align 4
  %rem14 = srem i32 %add, %19
  store i32 %rem14, i32* %x2, align 4
  %20 = load i32, i32* %y1, align 4
  %add15 = add nsw i32 %20, 1
  %21 = load i32, i32* %height, align 4
  %rem16 = srem i32 %add15, %21
  store i32 %rem16, i32* %y2, align 4
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %23 = load i32, i32* %x1, align 4
  %24 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpPixelRgn* %22, i32 %23, i32 %24, %struct._GimpRGB* getelementptr inbounds ([4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* @getpixel.pp, i32 0, i64 0))
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %y1, align 4
  call void @peek(%struct._GimpPixelRgn* %25, i32 %26, i32 %27, %struct._GimpRGB* getelementptr inbounds ([4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* @getpixel.pp, i32 0, i64 1))
  %28 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %29 = load i32, i32* %x1, align 4
  %30 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpPixelRgn* %28, i32 %29, i32 %30, %struct._GimpRGB* getelementptr inbounds ([4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* @getpixel.pp, i32 0, i64 2))
  %31 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %32 = load i32, i32* %x2, align 4
  %33 = load i32, i32* %y2, align 4
  call void @peek(%struct._GimpPixelRgn* %31, i32 %32, i32 %33, %struct._GimpRGB* getelementptr inbounds ([4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* @getpixel.pp, i32 0, i64 3))
  %34 = load i32, i32* @source_drw_has_alpha, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.13
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %p.addr, align 8
  %36 = load double, double* %u.addr, align 8
  %37 = load double, double* %v.addr, align 8
  call void @gimp_bilinear_rgba(%struct._GimpRGB* sret %tmp, double %36, double %37, %struct._GimpRGB* getelementptr inbounds ([4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* @getpixel.pp, i32 0, i32 0))
  %38 = bitcast %struct._GimpRGB* %35 to i8*
  %39 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  br label %if.end.20

if.else.18:                                       ; preds = %if.end.13
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %p.addr, align 8
  %41 = load double, double* %u.addr, align 8
  %42 = load double, double* %v.addr, align 8
  call void @gimp_bilinear_rgb(%struct._GimpRGB* sret %tmp19, double %41, double %42, %struct._GimpRGB* getelementptr inbounds ([4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* @getpixel.pp, i32 0, i32 0))
  %43 = bitcast %struct._GimpRGB* %40 to i8*
  %44 = bitcast %struct._GimpRGB* %tmp19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_rgba_add(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_rgb_add(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #1

declare void @gimp_bilinear_rgba(%struct._GimpRGB* sret, double, double, %struct._GimpRGB*) #1

declare void @gimp_bilinear_rgb(%struct._GimpRGB* sret, double, double, %struct._GimpRGB*) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
