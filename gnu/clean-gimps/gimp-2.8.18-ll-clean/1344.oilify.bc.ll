; ModuleID = './plug-ins/common/oilify.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.OilifyVals = type { double, i32, i32, double, i32, i32, i32 }
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
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GBinding = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mask-size\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Oil paint mask size\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Algorithm { RGB (0), INTENSITY (1) }\00", align 1
@query.args_enhanced = internal constant [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"mask-size-map\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Mask size control map\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"exponent\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Oil paint exponent\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"exponent-map\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Exponent control map\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"plug-in-oilify\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Smear colors to simulate an oil painting\00", align 1
@.str.18 = private unnamed_addr constant [82 x i8] c"This function performs the well-known oil-paint effect on the specified drawable.\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Torsten Martinsen\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Oili_fy...\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"plug-in-oilify-enhanced\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Torsten Martinsen, Daniel Richard G.\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"2007\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ovals = internal global %struct.OilifyVals { double 8.000000e+00, i32 0, i32 -1, double 8.000000e+00, i32 0, i32 -1, i32 1 }, align 8
@.str.29 = private unnamed_addr constant [13 x i8] c"Oil painting\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"oilify\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Oilify\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"gimp-oilify\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"_Mask size:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Use m_ask-size map:\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"_Exponent:\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Use e_xponent map:\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"_Use intensity algorithm\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.args_enhanced, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 5
  %5 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %5
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
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
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.87
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.OilifyVals* @ovals to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @oilify_dialog(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %11 = load i8*, i8** %name.addr, align 8
  %call10 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else.23, label %if.then.12

if.then.12:                                       ; preds = %sw.bb.9
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %12, 5
  br i1 %cmp, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  store i32 1, i32* %status, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.then.12
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int3217 = bitcast %union._GimpParamData* %data16 to i32*
  %14 = load i32, i32* %d_int3217, align 4
  %conv18 = sitofp i32 %14 to double
  store double %conv18, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 0), align 8
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %16 = load i32, i32* %d_int3221, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.14
  br label %if.end.86

if.else.23:                                       ; preds = %sw.bb.9
  %17 = load i8*, i8** %name.addr, align 8
  %call24 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0)) #8
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.85, label %if.then.26

if.then.26:                                       ; preds = %if.else.23
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp27 = icmp slt i32 %18, 5
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %19 = load i32, i32* %nparams.addr, align 4
  %cmp29 = icmp sgt i32 %19, 8
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %lor.lhs.false, %if.then.26
  store i32 1, i32* %status, align 4
  br label %if.end.84

if.else.32:                                       ; preds = %lor.lhs.false
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 3
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_int3235 = bitcast %union._GimpParamData* %data34 to i32*
  %21 = load i32, i32* %d_int3235, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 4
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_int3238 = bitcast %union._GimpParamData* %data37 to i32*
  %23 = load i32, i32* %d_int3238, align 4
  %conv39 = sitofp i32 %23 to double
  store double %conv39, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 0), align 8
  %24 = load i32, i32* %nparams.addr, align 4
  %cmp40 = icmp sge i32 %24, 6
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.else.32
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 5
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_int3245 = bitcast %union._GimpParamData* %data44 to i32*
  %26 = load i32, i32* %d_int3245, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 2), align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.else.32
  %27 = load i32, i32* %nparams.addr, align 4
  %cmp47 = icmp sge i32 %27, 7
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.end.46
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 6
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_int3252 = bitcast %union._GimpParamData* %data51 to i32*
  %29 = load i32, i32* %d_int3252, align 4
  %conv53 = sitofp i32 %29 to double
  store double %conv53, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 3), align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.end.46
  %30 = load i32, i32* %nparams.addr, align 4
  %cmp55 = icmp eq i32 %30, 8
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.54
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 7
  %data59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx58, i32 0, i32 1
  %d_int3260 = bitcast %union._GimpParamData* %data59 to i32*
  %32 = load i32, i32* %d_int3260, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 5), align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.54
  %33 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 2), align 4
  %cmp62 = icmp sge i32 %33, 0
  %conv63 = zext i1 %cmp62 to i32
  store i32 %conv63, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 1), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 5), align 4
  %cmp64 = icmp sge i32 %34, 0
  %conv65 = zext i1 %cmp64 to i32
  store i32 %conv65, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 4), align 4
  %35 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 0), align 8
  %cmp66 = fcmp olt double %35, 1.000000e+00
  br i1 %cmp66, label %if.then.82, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.61
  %36 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 3), align 8
  %cmp69 = fcmp olt double %36, 1.000000e+00
  br i1 %cmp69, label %if.then.82, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.68
  %37 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  %cmp72 = icmp ne i32 %37, 1
  br i1 %cmp72, label %land.lhs.true, label %lor.lhs.false.76

land.lhs.true:                                    ; preds = %lor.lhs.false.71
  %38 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  %cmp74 = icmp ne i32 %38, 0
  br i1 %cmp74, label %if.then.82, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true, %lor.lhs.false.71
  %39 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  %cmp77 = icmp eq i32 %39, 1
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.83

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 0
  %41 = load i32, i32* %drawable_id, align 4
  %call80 = call i32 @gimp_drawable_is_rgb(i32 %41)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.79, %land.lhs.true, %lor.lhs.false.68, %if.end.61
  store i32 1, i32* %status, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %land.lhs.true.79, %lor.lhs.false.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.31
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.else.23
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.22
  br label %sw.epilog

sw.bb.87:                                         ; preds = %do.end
  %call88 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.OilifyVals* @ovals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.87, %if.end.86, %if.end
  %42 = load i32, i32* %status, align 4
  %cmp89 = icmp eq i32 %42, 3
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.112

land.lhs.true.91:                                 ; preds = %sw.epilog
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id92 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 0
  %44 = load i32, i32* %drawable_id92, align 4
  %call93 = call i32 @gimp_drawable_is_rgb(i32 %44)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.99, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %land.lhs.true.91
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id96 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 0
  %46 = load i32, i32* %drawable_id96, align 4
  %call97 = call i32 @gimp_drawable_is_gray(i32 %46)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.else.112

if.then.99:                                       ; preds = %lor.lhs.false.95, %land.lhs.true.91
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #6
  %call101 = call i32 @gimp_progress_init(i8* %call100)
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @oilify(%struct._GimpDrawable* %47, %struct._GimpPreview* null)
  %48 = load i32, i32* %run_mode, align 4
  %cmp102 = icmp ne i32 %48, 1
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.99
  %call105 = call i32 @gimp_displays_flush()
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.then.99
  %49 = load i32, i32* %run_mode, align 4
  %cmp107 = icmp eq i32 %49, 0
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.end.106
  %call110 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.OilifyVals* @ovals to i8*), i32 40)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %if.end.106
  br label %if.end.113

if.else.112:                                      ; preds = %lor.lhs.false.95, %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.end.111
  %50 = load i32, i32* %status, align 4
  store i32 %50, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %51)
  br label %return

return:                                           ; preds = %if.end.113, %if.then
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
define internal i32 @oilify_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %can_use_mode_inten = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %1)
  store i32 %call, i32* %can_use_mode_inten, align 4
  %2 = load i32, i32* %can_use_mode_inten, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)) #6
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %9)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %main_vbox, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %12, i32 12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  %call12 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 1, i32 1, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %20, i32* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %preview, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @oilify to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 2)
  %call19 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 3, i32 0)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %table, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %35, i32 6)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call24)
  %38 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call26)
  %43 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0)) #6
  %44 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 0), align 8
  %call29 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %43, i32 0, i32 0, i8* %call28, i32 125, i32 0, double %44, double 3.000000e+00, double 5.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call29, %struct._GtkObject** %adj, align 8
  %45 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %46 = bitcast %struct._GtkObject* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.OilifyVals* @ovals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %48 = bitcast %struct._GtkObject* %47 to i8*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 2)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0)) #6
  %call33 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %toggle, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call34)
  %53 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %53, %struct._GtkWidget* %54, i32 0, i32 3, i32 1, i32 2, i32 4, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call36)
  %57 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %58 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %57, i32 %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 2)
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %67 = bitcast %struct._GimpDrawable* %66 to i8*
  %call40 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @oilify_map_constrain, i8* %67)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %combo, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_int_combo_box_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call41)
  %70 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpIntComboBox*
  %71 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 2), align 4
  %call43 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %70, i32 %71, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 2) to i8*))
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 2)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call45)
  %78 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %78, %struct._GtkWidget* %79, i32 0, i32 3, i32 2, i32 3, i32 5, i32 5, i32 0, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %call47 = call %struct._GBinding* @g_object_bind_property(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 2)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call48)
  %87 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)) #6
  %88 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 3), align 8
  %call51 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %87, i32 0, i32 3, i8* %call50, i32 125, i32 0, double %88, double 1.000000e+00, double 2.000000e+01, double 1.000000e+00, double 4.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call51, %struct._GtkObject** %adj, align 8
  %89 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %90 = bitcast %struct._GtkObject* %89 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %91 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %92 = bitcast %struct._GtkObject* %91 to i8*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %94 = bitcast %struct._GtkWidget* %93 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %94, void (i8*, %struct._GClosure*)* null, i32 2)
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0)) #6
  %call55 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call54)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %toggle, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call56)
  %97 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %97, %struct._GtkWidget* %98, i32 0, i32 3, i32 4, i32 5, i32 4, i32 0, i32 0, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_toggle_button_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call58)
  %101 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkToggleButton*
  %102 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %101, i32 %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %109, void (i8*, %struct._GClosure*)* null, i32 2)
  %110 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %111 = bitcast %struct._GimpDrawable* %110 to i8*
  %call62 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @oilify_map_constrain, i8* %111)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %combo, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_int_combo_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call63)
  %114 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpIntComboBox*
  %115 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 5), align 4
  %call65 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %114, i32 %115, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 5) to i8*))
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %117 = bitcast %struct._GtkWidget* %116 to i8*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %119, void (i8*, %struct._GClosure*)* null, i32 2)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #7
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call67)
  %122 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %122, %struct._GtkWidget* %123, i32 0, i32 3, i32 5, i32 6, i32 5, i32 5, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %128 = bitcast %struct._GtkWidget* %127 to i8*
  %call69 = call %struct._GBinding* @g_object_bind_property(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 2)
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0)) #6
  %call71 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call70)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %toggle, align 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call72)
  %131 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %131, %struct._GtkWidget* %132, i32 0, i32 3, i32 6, i32 7, i32 4, i32 0, i32 0, i32 0)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_toggle_button_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call74)
  %135 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkToggleButton*
  %136 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %135, i32 %136)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %138 = load i32, i32* %can_use_mode_inten, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %137, i32 %138)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %139)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %141 = bitcast %struct._GtkWidget* %140 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %145 = bitcast %struct._GtkWidget* %144 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %145, void (i8*, %struct._GClosure*)* null, i32 2)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_dialog_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call78)
  %149 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpDialog*
  %call80 = call i32 @gimp_dialog_run(%struct._GimpDialog* %149)
  %cmp81 = icmp eq i32 %call80, -5
  %conv = zext i1 %cmp81 to i32
  store i32 %conv, i32* %ret, align 4
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %150)
  %151 = load i32, i32* %ret, align 4
  ret i32 %151
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @oilify(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %use_inten = alloca i32, align 4
  %use_msmap = alloca i32, align 4
  %use_emap = alloca i32, align 4
  %mask_size_map_drawable = alloca %struct._GimpDrawable*, align 8
  %exponent_map_drawable = alloca %struct._GimpDrawable*, align 8
  %mask_size_map_rgn = alloca %struct._GimpPixelRgn, align 8
  %exponent_map_rgn = alloca %struct._GimpPixelRgn, align 8
  %msmap_bpp = alloca i32, align 4
  %emap_bpp = alloca i32, align 4
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %regions = alloca [3 x %struct._GimpPixelRgn*], align 16
  %n_regions = alloca i32, align 4
  %bpp = alloca i32, align 4
  %sqr_lut = alloca i32*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %Hist = alloca [256 x i32], align 16
  %Hist_rgb = alloca [4 x [256 x i32]], align 16
  %pr = alloca i8*, align 8
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %src_buf = alloca i8*, align 8
  %src_inten_buf = alloca i8*, align 8
  %i = alloca i32, align 4
  %lut_size = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y = alloca i32, align 4
  %dest_row = alloca i8*, align 8
  %src_msmap_row = alloca i8*, align 8
  %src_emap_row = alloca i8*, align 8
  %x = alloca i32, align 4
  %dest90 = alloca i8*, align 8
  %src_msmap = alloca i8*, align 8
  %src_emap = alloca i8*, align 8
  %radius = alloca i32, align 4
  %radius_squared = alloca i32, align 4
  %exponent = alloca float, align 4
  %mask_x1 = alloca i32, align 4
  %mask_y1 = alloca i32, align 4
  %mask_x2 = alloca i32, align 4
  %mask_y2 = alloca i32, align 4
  %mask_y = alloca i32, align 4
  %src_offset = alloca i32, align 4
  %src_row = alloca i8*, align 8
  %src_inten_row = alloca i8*, align 8
  %factor = alloca float, align 4
  %src195 = alloca i8*, align 8
  %src_inten = alloca i8*, align 8
  %dy_squared = alloca i32, align 4
  %mask_x = alloca i32, align 4
  %dx_squared = alloca i32, align 4
  %b = alloca i32, align 4
  %inten = alloca i32, align 4
  %b285 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 0, i32* %use_msmap, align 4
  store i32 0, i32* %use_emap, align 4
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %mask_size_map_drawable, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %exponent_map_drawable, align 8
  store i32 0, i32* %msmap_bpp, align 4
  store i32 0, i32* %emap_bpp, align 4
  store i8* null, i8** %src_inten_buf, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 6), align 4
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %use_inten, align 4
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %2, i32* %x1, i32* %y1)
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %3, i32* %width, i32* %height)
  %4 = load i32, i32* %x1, align 4
  %5 = load i32, i32* %width, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %x2, align 4
  %6 = load i32, i32* %y1, align 4
  %7 = load i32, i32* %height, align 4
  %add1 = add nsw i32 %6, %7
  store i32 %add1, i32* %y2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %9, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %10 = load i32, i32* %x2, align 4
  %11 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %10, %11
  store i32 %sub, i32* %width, align 4
  %12 = load i32, i32* %y2, align 4
  %13 = load i32, i32* %y1, align 4
  %sub2 = sub nsw i32 %12, %13
  store i32 %sub2, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %progress, align 4
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %14, %15
  store i32 %mul, i32* %max_progress, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 3
  %17 = load i32, i32* %bpp3, align 4
  store i32 %17, i32* %bpp, align 4
  %18 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 0), align 8
  %conv4 = fptosi double %18 to i32
  %div = sdiv i32 %conv4, 2
  %add5 = add nsw i32 %div, 1
  store i32 %add5, i32* %lut_size, align 4
  %19 = load i32, i32* %lut_size, align 4
  %conv6 = sext i32 %19 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv6, i64 4)
  %20 = bitcast i8* %call7 to i32*
  store i32* %20, i32** %sqr_lut, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %lut_size, align 4
  %cmp8 = icmp slt i32 %21, %22
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %23, %24
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32*, i32** %sqr_lut, align 8
  %arrayidx = getelementptr inbounds i32, i32* %26, i64 %idxprom
  store i32 %mul10, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 1), align 4
  %tobool11 = icmp ne i32 %28, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.end
  %29 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 2), align 4
  %cmp12 = icmp sge i32 %29, 0
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %use_msmap, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 2), align 4
  %call15 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %30)
  store %struct._GimpDrawable* %call15, %struct._GimpDrawable** %mask_size_map_drawable, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask_size_map_drawable, align 8
  %32 = load i32, i32* %x1, align 4
  %33 = load i32, i32* %y1, align 4
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %mask_size_map_rgn, %struct._GimpDrawable* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 0, i32 0)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask_size_map_drawable, align 8
  %bpp16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 3
  %37 = load i32, i32* %bpp16, align 4
  store i32 %37, i32* %msmap_bpp, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true, %for.end
  %38 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 4), align 4
  %tobool18 = icmp ne i32 %38, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.25

land.lhs.true.19:                                 ; preds = %if.end.17
  %39 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 5), align 4
  %cmp20 = icmp sge i32 %39, 0
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %land.lhs.true.19
  store i32 1, i32* %use_emap, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 5), align 4
  %call23 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %40)
  store %struct._GimpDrawable* %call23, %struct._GimpDrawable** %exponent_map_drawable, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %exponent_map_drawable, align 8
  %42 = load i32, i32* %x1, align 4
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %exponent_map_rgn, %struct._GimpDrawable* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 0, i32 0)
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %exponent_map_drawable, align 8
  %bpp24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %46, i32 0, i32 3
  %47 = load i32, i32* %bpp24, align 4
  store i32 %47, i32* %emap_bpp, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %land.lhs.true.19, %if.end.17
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = load i32, i32* %x1, align 4
  %50 = load i32, i32* %y1, align 4
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %height, align 4
  %53 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp26 = icmp eq %struct._GimpPreview* %53, null
  %conv27 = zext i1 %cmp26 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %conv27, i32 1)
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %55 = load i32, i32* %x1, align 4
  %56 = load i32, i32* %y1, align 4
  %57 = load i32, i32* %width, align 4
  %58 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 0, i32 0)
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %height, align 4
  %mul28 = mul nsw i32 %59, %60
  %61 = load i32, i32* %bpp, align 4
  %mul29 = mul nsw i32 %mul28, %61
  %conv30 = sext i32 %mul29 to i64
  %call31 = call noalias i8* @g_malloc_n(i64 %conv30, i64 1)
  store i8* %call31, i8** %src_buf, align 8
  %62 = load i8*, i8** %src_buf, align 8
  %63 = load i32, i32* %x1, align 4
  %64 = load i32, i32* %y1, align 4
  %65 = load i32, i32* %width, align 4
  %66 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %67 = load i32, i32* %use_inten, align 4
  %tobool32 = icmp ne i32 %67, 0
  br i1 %tobool32, label %if.then.33, label %if.end.60

if.then.33:                                       ; preds = %if.end.25
  %68 = load i32, i32* %width, align 4
  %69 = load i32, i32* %height, align 4
  %mul34 = mul nsw i32 %68, %69
  %conv35 = sext i32 %mul34 to i64
  %call36 = call noalias i8* @g_malloc_n(i64 %conv35, i64 1)
  store i8* %call36, i8** %src_inten_buf, align 8
  store i32 0, i32* %i, align 4
  %70 = load i8*, i8** %src_buf, align 8
  store i8* %70, i8** %src, align 8
  %71 = load i8*, i8** %src_inten_buf, align 8
  store i8* %71, i8** %dest, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.57, %if.then.33
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %width, align 4
  %74 = load i32, i32* %height, align 4
  %mul38 = mul nsw i32 %73, %74
  %cmp39 = icmp slt i32 %72, %mul38
  br i1 %cmp39, label %for.body.41, label %for.end.59

for.body.41:                                      ; preds = %for.cond.37
  %75 = load i8*, i8** %src, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %76 to i32
  %conv44 = sitofp i32 %conv43 to double
  %mul45 = fmul double %conv44, 2.126000e-01
  %77 = load i8*, i8** %src, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %78 to i32
  %conv48 = sitofp i32 %conv47 to double
  %mul49 = fmul double %conv48, 7.152000e-01
  %add50 = fadd double %mul45, %mul49
  %79 = load i8*, i8** %src, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %80 to i32
  %conv53 = sitofp i32 %conv52 to double
  %mul54 = fmul double %conv53, 7.220000e-02
  %add55 = fadd double %add50, %mul54
  %conv56 = fptoui double %add55 to i8
  %81 = load i8*, i8** %dest, align 8
  store i8 %conv56, i8* %81, align 1
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.41
  %82 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %82, 1
  store i32 %inc58, i32* %i, align 4
  %83 = load i32, i32* %bpp, align 4
  %84 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %83 to i64
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %85 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  br label %for.cond.37

for.end.59:                                       ; preds = %for.cond.37
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.59, %if.end.25
  store i32 0, i32* %n_regions, align 4
  %86 = load i32, i32* %n_regions, align 4
  %inc61 = add nsw i32 %86, 1
  store i32 %inc61, i32* %n_regions, align 4
  %idxprom62 = sext i32 %86 to i64
  %arrayidx63 = getelementptr inbounds [3 x %struct._GimpPixelRgn*], [3 x %struct._GimpPixelRgn*]* %regions, i32 0, i64 %idxprom62
  store %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn** %arrayidx63, align 8
  %87 = load i32, i32* %use_msmap, align 4
  %tobool64 = icmp ne i32 %87, 0
  br i1 %tobool64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.end.60
  %88 = load i32, i32* %n_regions, align 4
  %inc66 = add nsw i32 %88, 1
  store i32 %inc66, i32* %n_regions, align 4
  %idxprom67 = sext i32 %88 to i64
  %arrayidx68 = getelementptr inbounds [3 x %struct._GimpPixelRgn*], [3 x %struct._GimpPixelRgn*]* %regions, i32 0, i64 %idxprom67
  store %struct._GimpPixelRgn* %mask_size_map_rgn, %struct._GimpPixelRgn** %arrayidx68, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.end.60
  %89 = load i32, i32* %use_emap, align 4
  %tobool70 = icmp ne i32 %89, 0
  br i1 %tobool70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %if.end.69
  %90 = load i32, i32* %n_regions, align 4
  %inc72 = add nsw i32 %90, 1
  store i32 %inc72, i32* %n_regions, align 4
  %idxprom73 = sext i32 %90 to i64
  %arrayidx74 = getelementptr inbounds [3 x %struct._GimpPixelRgn*], [3 x %struct._GimpPixelRgn*]* %regions, i32 0, i64 %idxprom73
  store %struct._GimpPixelRgn* %exponent_map_rgn, %struct._GimpPixelRgn** %arrayidx74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %if.end.69
  %91 = load i32, i32* %n_regions, align 4
  %arraydecay = getelementptr inbounds [3 x %struct._GimpPixelRgn*], [3 x %struct._GimpPixelRgn*]* %regions, i32 0, i32 0
  %call76 = call i8* @gimp_pixel_rgns_register2(i32 %91, %struct._GimpPixelRgn** %arraydecay)
  store i8* %call76, i8** %pr, align 8
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.334, %if.end.75
  %92 = load i8*, i8** %pr, align 8
  %cmp78 = icmp ne i8* %92, null
  br i1 %cmp78, label %for.body.80, label %for.end.336

for.body.80:                                      ; preds = %for.cond.77
  store i8* null, i8** %src_msmap_row, align 8
  store i8* null, i8** %src_emap_row, align 8
  %y81 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %93 = load i32, i32* %y81, align 4
  store i32 %93, i32* %y, align 4
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %94 = load i8*, i8** %data, align 8
  store i8* %94, i8** %dest_row, align 8
  %data82 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %mask_size_map_rgn, i32 0, i32 0
  %95 = load i8*, i8** %data82, align 8
  store i8* %95, i8** %src_msmap_row, align 8
  %data83 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %exponent_map_rgn, i32 0, i32 0
  %96 = load i8*, i8** %data83, align 8
  store i8* %96, i8** %src_emap_row, align 8
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.309, %for.body.80
  %97 = load i32, i32* %y, align 4
  %y85 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %98 = load i32, i32* %y85, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %99 = load i32, i32* %h, align 4
  %add86 = add nsw i32 %98, %99
  %cmp87 = icmp slt i32 %97, %add86
  br i1 %cmp87, label %for.body.89, label %for.end.319

for.body.89:                                      ; preds = %for.cond.84
  store i8* null, i8** %src_msmap, align 8
  store i8* null, i8** %src_emap, align 8
  %x91 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %100 = load i32, i32* %x91, align 4
  store i32 %100, i32* %x, align 4
  %101 = load i8*, i8** %dest_row, align 8
  store i8* %101, i8** %dest90, align 8
  %102 = load i8*, i8** %src_msmap_row, align 8
  store i8* %102, i8** %src_msmap, align 8
  %103 = load i8*, i8** %src_emap_row, align 8
  store i8* %103, i8** %src_emap, align 8
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.300, %for.body.89
  %104 = load i32, i32* %x, align 4
  %x93 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %105 = load i32, i32* %x93, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %106 = load i32, i32* %w, align 4
  %add94 = add nsw i32 %105, %106
  %cmp95 = icmp slt i32 %104, %add94
  br i1 %cmp95, label %for.body.97, label %for.end.308

for.body.97:                                      ; preds = %for.cond.92
  store i8* null, i8** %src_inten_row, align 8
  %107 = load i32, i32* %use_msmap, align 4
  %tobool98 = icmp ne i32 %107, 0
  br i1 %tobool98, label %if.then.99, label %if.else.106

if.then.99:                                       ; preds = %for.body.97
  %108 = load i8*, i8** %src_msmap, align 8
  %109 = load i32, i32* %msmap_bpp, align 4
  %call100 = call float @get_map_value(i8* %108, i32 %109)
  store float %call100, float* %factor, align 4
  %110 = load float, float* %factor, align 4
  %conv101 = fpext float %110 to double
  %111 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 0), align 8
  %mul102 = fmul double 5.000000e-01, %111
  %mul103 = fmul double %conv101, %mul102
  %add104 = fadd double %mul103, 5.000000e-01
  %conv105 = fptosi double %add104 to i32
  store i32 %conv105, i32* %radius, align 4
  br label %if.end.109

if.else.106:                                      ; preds = %for.body.97
  %112 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 0), align 8
  %conv107 = fptosi double %112 to i32
  %div108 = sdiv i32 %conv107, 2
  store i32 %div108, i32* %radius, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.99
  %113 = load i32, i32* %radius, align 4
  %114 = load i32, i32* %radius, align 4
  %mul110 = mul nsw i32 %113, %114
  store i32 %mul110, i32* %radius_squared, align 4
  %115 = load double, double* getelementptr inbounds (%struct.OilifyVals, %struct.OilifyVals* @ovals, i32 0, i32 3), align 8
  %conv111 = fptrunc double %115 to float
  store float %conv111, float* %exponent, align 4
  %116 = load i32, i32* %use_emap, align 4
  %tobool112 = icmp ne i32 %116, 0
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.end.109
  %117 = load i8*, i8** %src_emap, align 8
  %118 = load i32, i32* %emap_bpp, align 4
  %call114 = call float @get_map_value(i8* %117, i32 %118)
  %119 = load float, float* %exponent, align 4
  %mul115 = fmul float %119, %call114
  store float %mul115, float* %exponent, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.end.109
  %120 = load i32, i32* %use_inten, align 4
  %tobool117 = icmp ne i32 %120, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.116
  %121 = bitcast [256 x i32]* %Hist to i8*
  call void @llvm.memset.p0i8.i64(i8* %121, i8 0, i64 1024, i32 16, i1 false)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.end.116
  %122 = bitcast [4 x [256 x i32]]* %Hist_rgb to i8*
  call void @llvm.memset.p0i8.i64(i8* %122, i8 0, i64 4096, i32 16, i1 false)
  %123 = load i32, i32* %x, align 4
  %124 = load i32, i32* %radius, align 4
  %sub120 = sub nsw i32 %123, %124
  %125 = load i32, i32* %x2, align 4
  %cmp121 = icmp sgt i32 %sub120, %125
  br i1 %cmp121, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.119
  %126 = load i32, i32* %x2, align 4
  br label %cond.end.129

cond.false:                                       ; preds = %if.end.119
  %127 = load i32, i32* %x, align 4
  %128 = load i32, i32* %radius, align 4
  %sub123 = sub nsw i32 %127, %128
  %129 = load i32, i32* %x1, align 4
  %cmp124 = icmp slt i32 %sub123, %129
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.false
  %130 = load i32, i32* %x1, align 4
  br label %cond.end

cond.false.127:                                   ; preds = %cond.false
  %131 = load i32, i32* %x, align 4
  %132 = load i32, i32* %radius, align 4
  %sub128 = sub nsw i32 %131, %132
  br label %cond.end

cond.end:                                         ; preds = %cond.false.127, %cond.true.126
  %cond = phi i32 [ %130, %cond.true.126 ], [ %sub128, %cond.false.127 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end, %cond.true
  %cond130 = phi i32 [ %126, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond130, i32* %mask_x1, align 4
  %133 = load i32, i32* %y, align 4
  %134 = load i32, i32* %radius, align 4
  %sub131 = sub nsw i32 %133, %134
  %135 = load i32, i32* %y2, align 4
  %cmp132 = icmp sgt i32 %sub131, %135
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.129
  %136 = load i32, i32* %y2, align 4
  br label %cond.end.144

cond.false.135:                                   ; preds = %cond.end.129
  %137 = load i32, i32* %y, align 4
  %138 = load i32, i32* %radius, align 4
  %sub136 = sub nsw i32 %137, %138
  %139 = load i32, i32* %y1, align 4
  %cmp137 = icmp slt i32 %sub136, %139
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.135
  %140 = load i32, i32* %y1, align 4
  br label %cond.end.142

cond.false.140:                                   ; preds = %cond.false.135
  %141 = load i32, i32* %y, align 4
  %142 = load i32, i32* %radius, align 4
  %sub141 = sub nsw i32 %141, %142
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.139
  %cond143 = phi i32 [ %140, %cond.true.139 ], [ %sub141, %cond.false.140 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.134
  %cond145 = phi i32 [ %136, %cond.true.134 ], [ %cond143, %cond.end.142 ]
  store i32 %cond145, i32* %mask_y1, align 4
  %143 = load i32, i32* %x, align 4
  %144 = load i32, i32* %radius, align 4
  %add146 = add nsw i32 %143, %144
  %add147 = add nsw i32 %add146, 1
  %145 = load i32, i32* %x2, align 4
  %cmp148 = icmp sgt i32 %add147, %145
  br i1 %cmp148, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %cond.end.144
  %146 = load i32, i32* %x2, align 4
  br label %cond.end.162

cond.false.151:                                   ; preds = %cond.end.144
  %147 = load i32, i32* %x, align 4
  %148 = load i32, i32* %radius, align 4
  %add152 = add nsw i32 %147, %148
  %add153 = add nsw i32 %add152, 1
  %149 = load i32, i32* %x1, align 4
  %cmp154 = icmp slt i32 %add153, %149
  br i1 %cmp154, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %cond.false.151
  %150 = load i32, i32* %x1, align 4
  br label %cond.end.160

cond.false.157:                                   ; preds = %cond.false.151
  %151 = load i32, i32* %x, align 4
  %152 = load i32, i32* %radius, align 4
  %add158 = add nsw i32 %151, %152
  %add159 = add nsw i32 %add158, 1
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.157, %cond.true.156
  %cond161 = phi i32 [ %150, %cond.true.156 ], [ %add159, %cond.false.157 ]
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.end.160, %cond.true.150
  %cond163 = phi i32 [ %146, %cond.true.150 ], [ %cond161, %cond.end.160 ]
  store i32 %cond163, i32* %mask_x2, align 4
  %153 = load i32, i32* %y, align 4
  %154 = load i32, i32* %radius, align 4
  %add164 = add nsw i32 %153, %154
  %add165 = add nsw i32 %add164, 1
  %155 = load i32, i32* %y2, align 4
  %cmp166 = icmp sgt i32 %add165, %155
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %cond.end.162
  %156 = load i32, i32* %y2, align 4
  br label %cond.end.180

cond.false.169:                                   ; preds = %cond.end.162
  %157 = load i32, i32* %y, align 4
  %158 = load i32, i32* %radius, align 4
  %add170 = add nsw i32 %157, %158
  %add171 = add nsw i32 %add170, 1
  %159 = load i32, i32* %y1, align 4
  %cmp172 = icmp slt i32 %add171, %159
  br i1 %cmp172, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %cond.false.169
  %160 = load i32, i32* %y1, align 4
  br label %cond.end.178

cond.false.175:                                   ; preds = %cond.false.169
  %161 = load i32, i32* %y, align 4
  %162 = load i32, i32* %radius, align 4
  %add176 = add nsw i32 %161, %162
  %add177 = add nsw i32 %add176, 1
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.175, %cond.true.174
  %cond179 = phi i32 [ %160, %cond.true.174 ], [ %add177, %cond.false.175 ]
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.end.178, %cond.true.168
  %cond181 = phi i32 [ %156, %cond.true.168 ], [ %cond179, %cond.end.178 ]
  store i32 %cond181, i32* %mask_y2, align 4
  %163 = load i32, i32* %mask_y1, align 4
  %164 = load i32, i32* %y1, align 4
  %sub182 = sub nsw i32 %163, %164
  %165 = load i32, i32* %width, align 4
  %mul183 = mul nsw i32 %sub182, %165
  %166 = load i32, i32* %mask_x1, align 4
  %167 = load i32, i32* %x1, align 4
  %sub184 = sub nsw i32 %166, %167
  %add185 = add nsw i32 %mul183, %sub184
  store i32 %add185, i32* %src_offset, align 4
  %168 = load i32, i32* %mask_y1, align 4
  store i32 %168, i32* %mask_y, align 4
  %169 = load i8*, i8** %src_buf, align 8
  %170 = load i32, i32* %src_offset, align 4
  %171 = load i32, i32* %bpp, align 4
  %mul186 = mul nsw i32 %170, %171
  %idx.ext187 = sext i32 %mul186 to i64
  %add.ptr188 = getelementptr inbounds i8, i8* %169, i64 %idx.ext187
  store i8* %add.ptr188, i8** %src_row, align 8
  %172 = load i8*, i8** %src_inten_buf, align 8
  %173 = load i32, i32* %src_offset, align 4
  %idx.ext189 = sext i32 %173 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %172, i64 %idx.ext189
  store i8* %add.ptr190, i8** %src_inten_row, align 8
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.272, %cond.end.180
  %174 = load i32, i32* %mask_y, align 4
  %175 = load i32, i32* %mask_y2, align 4
  %cmp192 = icmp slt i32 %174, %175
  br i1 %cmp192, label %for.body.194, label %for.end.279

for.body.194:                                     ; preds = %for.cond.191
  store i8* null, i8** %src_inten, align 8
  %176 = load i32, i32* %mask_y, align 4
  %177 = load i32, i32* %y, align 4
  %sub196 = sub nsw i32 %176, %177
  %cmp197 = icmp slt i32 %sub196, 0
  br i1 %cmp197, label %cond.true.199, label %cond.false.202

cond.true.199:                                    ; preds = %for.body.194
  %178 = load i32, i32* %mask_y, align 4
  %179 = load i32, i32* %y, align 4
  %sub200 = sub nsw i32 %178, %179
  %sub201 = sub nsw i32 0, %sub200
  br label %cond.end.204

cond.false.202:                                   ; preds = %for.body.194
  %180 = load i32, i32* %mask_y, align 4
  %181 = load i32, i32* %y, align 4
  %sub203 = sub nsw i32 %180, %181
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.202, %cond.true.199
  %cond205 = phi i32 [ %sub201, %cond.true.199 ], [ %sub203, %cond.false.202 ]
  %idxprom206 = sext i32 %cond205 to i64
  %182 = load i32*, i32** %sqr_lut, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %182, i64 %idxprom206
  %183 = load i32, i32* %arrayidx207, align 4
  store i32 %183, i32* %dy_squared, align 4
  %184 = load i32, i32* %mask_x1, align 4
  store i32 %184, i32* %mask_x, align 4
  %185 = load i8*, i8** %src_row, align 8
  store i8* %185, i8** %src195, align 8
  %186 = load i8*, i8** %src_inten_row, align 8
  store i8* %186, i8** %src_inten, align 8
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.266, %cond.end.204
  %187 = load i32, i32* %mask_x, align 4
  %188 = load i32, i32* %mask_x2, align 4
  %cmp209 = icmp slt i32 %187, %188
  br i1 %cmp209, label %for.body.211, label %for.end.271

for.body.211:                                     ; preds = %for.cond.208
  %189 = load i32, i32* %mask_x, align 4
  %190 = load i32, i32* %x, align 4
  %sub212 = sub nsw i32 %189, %190
  %cmp213 = icmp slt i32 %sub212, 0
  br i1 %cmp213, label %cond.true.215, label %cond.false.218

cond.true.215:                                    ; preds = %for.body.211
  %191 = load i32, i32* %mask_x, align 4
  %192 = load i32, i32* %x, align 4
  %sub216 = sub nsw i32 %191, %192
  %sub217 = sub nsw i32 0, %sub216
  br label %cond.end.220

cond.false.218:                                   ; preds = %for.body.211
  %193 = load i32, i32* %mask_x, align 4
  %194 = load i32, i32* %x, align 4
  %sub219 = sub nsw i32 %193, %194
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.218, %cond.true.215
  %cond221 = phi i32 [ %sub217, %cond.true.215 ], [ %sub219, %cond.false.218 ]
  %idxprom222 = sext i32 %cond221 to i64
  %195 = load i32*, i32** %sqr_lut, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %195, i64 %idxprom222
  %196 = load i32, i32* %arrayidx223, align 4
  store i32 %196, i32* %dx_squared, align 4
  %197 = load i32, i32* %dx_squared, align 4
  %198 = load i32, i32* %dy_squared, align 4
  %add224 = add nsw i32 %197, %198
  %199 = load i32, i32* %radius_squared, align 4
  %cmp225 = icmp sgt i32 %add224, %199
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %cond.end.220
  br label %for.inc.266

if.end.228:                                       ; preds = %cond.end.220
  %200 = load i32, i32* %use_inten, align 4
  %tobool229 = icmp ne i32 %200, 0
  br i1 %tobool229, label %if.then.230, label %if.else.250

if.then.230:                                      ; preds = %if.end.228
  %201 = load i8*, i8** %src_inten, align 8
  %202 = load i8, i8* %201, align 1
  %conv231 = zext i8 %202 to i32
  store i32 %conv231, i32* %inten, align 4
  %203 = load i32, i32* %inten, align 4
  %idxprom232 = sext i32 %203 to i64
  %arrayidx233 = getelementptr inbounds [256 x i32], [256 x i32]* %Hist, i32 0, i64 %idxprom232
  %204 = load i32, i32* %arrayidx233, align 4
  %inc234 = add nsw i32 %204, 1
  store i32 %inc234, i32* %arrayidx233, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.247, %if.then.230
  %205 = load i32, i32* %b, align 4
  %206 = load i32, i32* %bpp, align 4
  %cmp236 = icmp slt i32 %205, %206
  br i1 %cmp236, label %for.body.238, label %for.end.249

for.body.238:                                     ; preds = %for.cond.235
  %207 = load i32, i32* %b, align 4
  %idxprom239 = sext i32 %207 to i64
  %208 = load i8*, i8** %src195, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %208, i64 %idxprom239
  %209 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %209 to i32
  %210 = load i32, i32* %inten, align 4
  %idxprom242 = sext i32 %210 to i64
  %211 = load i32, i32* %b, align 4
  %idxprom243 = sext i32 %211 to i64
  %arrayidx244 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %Hist_rgb, i32 0, i64 %idxprom243
  %arrayidx245 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx244, i32 0, i64 %idxprom242
  %212 = load i32, i32* %arrayidx245, align 4
  %add246 = add nsw i32 %212, %conv241
  store i32 %add246, i32* %arrayidx245, align 4
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.body.238
  %213 = load i32, i32* %b, align 4
  %inc248 = add nsw i32 %213, 1
  store i32 %inc248, i32* %b, align 4
  br label %for.cond.235

for.end.249:                                      ; preds = %for.cond.235
  br label %if.end.265

if.else.250:                                      ; preds = %if.end.228
  store i32 0, i32* %b, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.262, %if.else.250
  %214 = load i32, i32* %b, align 4
  %215 = load i32, i32* %bpp, align 4
  %cmp252 = icmp slt i32 %214, %215
  br i1 %cmp252, label %for.body.254, label %for.end.264

for.body.254:                                     ; preds = %for.cond.251
  %216 = load i32, i32* %b, align 4
  %idxprom255 = sext i32 %216 to i64
  %217 = load i8*, i8** %src195, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %217, i64 %idxprom255
  %218 = load i8, i8* %arrayidx256, align 1
  %idxprom257 = zext i8 %218 to i64
  %219 = load i32, i32* %b, align 4
  %idxprom258 = sext i32 %219 to i64
  %arrayidx259 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %Hist_rgb, i32 0, i64 %idxprom258
  %arrayidx260 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx259, i32 0, i64 %idxprom257
  %220 = load i32, i32* %arrayidx260, align 4
  %inc261 = add nsw i32 %220, 1
  store i32 %inc261, i32* %arrayidx260, align 4
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.body.254
  %221 = load i32, i32* %b, align 4
  %inc263 = add nsw i32 %221, 1
  store i32 %inc263, i32* %b, align 4
  br label %for.cond.251

for.end.264:                                      ; preds = %for.cond.251
  br label %if.end.265

if.end.265:                                       ; preds = %for.end.264, %for.end.249
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265, %if.then.227
  %222 = load i32, i32* %mask_x, align 4
  %inc267 = add nsw i32 %222, 1
  store i32 %inc267, i32* %mask_x, align 4
  %223 = load i32, i32* %bpp, align 4
  %224 = load i8*, i8** %src195, align 8
  %idx.ext268 = sext i32 %223 to i64
  %add.ptr269 = getelementptr inbounds i8, i8* %224, i64 %idx.ext268
  store i8* %add.ptr269, i8** %src195, align 8
  %225 = load i8*, i8** %src_inten, align 8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr270, i8** %src_inten, align 8
  br label %for.cond.208

for.end.271:                                      ; preds = %for.cond.208
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.end.271
  %226 = load i32, i32* %mask_y, align 4
  %inc273 = add nsw i32 %226, 1
  store i32 %inc273, i32* %mask_y, align 4
  %227 = load i32, i32* %width, align 4
  %228 = load i32, i32* %bpp, align 4
  %mul274 = mul nsw i32 %227, %228
  %229 = load i8*, i8** %src_row, align 8
  %idx.ext275 = sext i32 %mul274 to i64
  %add.ptr276 = getelementptr inbounds i8, i8* %229, i64 %idx.ext275
  store i8* %add.ptr276, i8** %src_row, align 8
  %230 = load i32, i32* %width, align 4
  %231 = load i8*, i8** %src_inten_row, align 8
  %idx.ext277 = sext i32 %230 to i64
  %add.ptr278 = getelementptr inbounds i8, i8* %231, i64 %idx.ext277
  store i8* %add.ptr278, i8** %src_inten_row, align 8
  br label %for.cond.191

for.end.279:                                      ; preds = %for.cond.191
  %232 = load i32, i32* %use_inten, align 4
  %tobool280 = icmp ne i32 %232, 0
  br i1 %tobool280, label %if.then.281, label %if.else.284

if.then.281:                                      ; preds = %for.end.279
  %arraydecay282 = getelementptr inbounds [256 x i32], [256 x i32]* %Hist, i32 0, i32 0
  %arraydecay283 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %Hist_rgb, i32 0, i32 0
  %233 = load float, float* %exponent, align 4
  %234 = load i8*, i8** %dest90, align 8
  %235 = load i32, i32* %bpp, align 4
  call void @weighted_average_color(i32* %arraydecay282, [256 x i32]* %arraydecay283, float %233, i8* %234, i32 %235)
  br label %if.end.299

if.else.284:                                      ; preds = %for.end.279
  store i32 0, i32* %b285, align 4
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.296, %if.else.284
  %236 = load i32, i32* %b285, align 4
  %237 = load i32, i32* %bpp, align 4
  %cmp287 = icmp slt i32 %236, %237
  br i1 %cmp287, label %for.body.289, label %for.end.298

for.body.289:                                     ; preds = %for.cond.286
  %238 = load i32, i32* %b285, align 4
  %idxprom290 = sext i32 %238 to i64
  %arrayidx291 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %Hist_rgb, i32 0, i64 %idxprom290
  %arraydecay292 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx291, i32 0, i32 0
  %239 = load float, float* %exponent, align 4
  %call293 = call zeroext i8 @weighted_average_value(i32* %arraydecay292, float %239)
  %240 = load i32, i32* %b285, align 4
  %idxprom294 = sext i32 %240 to i64
  %241 = load i8*, i8** %dest90, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %241, i64 %idxprom294
  store i8 %call293, i8* %arrayidx295, align 1
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.body.289
  %242 = load i32, i32* %b285, align 4
  %inc297 = add nsw i32 %242, 1
  store i32 %inc297, i32* %b285, align 4
  br label %for.cond.286

for.end.298:                                      ; preds = %for.cond.286
  br label %if.end.299

if.end.299:                                       ; preds = %for.end.298, %if.then.281
  br label %for.inc.300

for.inc.300:                                      ; preds = %if.end.299
  %243 = load i32, i32* %x, align 4
  %inc301 = add nsw i32 %243, 1
  store i32 %inc301, i32* %x, align 4
  %244 = load i32, i32* %bpp, align 4
  %245 = load i8*, i8** %dest90, align 8
  %idx.ext302 = sext i32 %244 to i64
  %add.ptr303 = getelementptr inbounds i8, i8* %245, i64 %idx.ext302
  store i8* %add.ptr303, i8** %dest90, align 8
  %246 = load i32, i32* %msmap_bpp, align 4
  %247 = load i8*, i8** %src_msmap, align 8
  %idx.ext304 = sext i32 %246 to i64
  %add.ptr305 = getelementptr inbounds i8, i8* %247, i64 %idx.ext304
  store i8* %add.ptr305, i8** %src_msmap, align 8
  %248 = load i32, i32* %emap_bpp, align 4
  %249 = load i8*, i8** %src_emap, align 8
  %idx.ext306 = sext i32 %248 to i64
  %add.ptr307 = getelementptr inbounds i8, i8* %249, i64 %idx.ext306
  store i8* %add.ptr307, i8** %src_emap, align 8
  br label %for.cond.92

for.end.308:                                      ; preds = %for.cond.92
  br label %for.inc.309

for.inc.309:                                      ; preds = %for.end.308
  %250 = load i32, i32* %y, align 4
  %inc310 = add nsw i32 %250, 1
  store i32 %inc310, i32* %y, align 4
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %251 = load i32, i32* %rowstride, align 4
  %252 = load i8*, i8** %dest_row, align 8
  %idx.ext311 = sext i32 %251 to i64
  %add.ptr312 = getelementptr inbounds i8, i8* %252, i64 %idx.ext311
  store i8* %add.ptr312, i8** %dest_row, align 8
  %rowstride313 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %mask_size_map_rgn, i32 0, i32 3
  %253 = load i32, i32* %rowstride313, align 4
  %254 = load i8*, i8** %src_msmap_row, align 8
  %idx.ext314 = sext i32 %253 to i64
  %add.ptr315 = getelementptr inbounds i8, i8* %254, i64 %idx.ext314
  store i8* %add.ptr315, i8** %src_msmap_row, align 8
  %rowstride316 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %exponent_map_rgn, i32 0, i32 3
  %255 = load i32, i32* %rowstride316, align 4
  %256 = load i8*, i8** %src_emap_row, align 8
  %idx.ext317 = sext i32 %255 to i64
  %add.ptr318 = getelementptr inbounds i8, i8* %256, i64 %idx.ext317
  store i8* %add.ptr318, i8** %src_emap_row, align 8
  br label %for.cond.84

for.end.319:                                      ; preds = %for.cond.84
  %257 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool320 = icmp ne %struct._GimpPreview* %257, null
  br i1 %tobool320, label %if.then.321, label %if.else.324

if.then.321:                                      ; preds = %for.end.319
  %258 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %259 = bitcast %struct._GimpPreview* %258 to %struct._GTypeInstance*
  %call322 = call i64 @gimp_drawable_preview_get_type() #7
  %call323 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call322)
  %260 = bitcast %struct._GTypeInstance* %call323 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %260, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.333

if.else.324:                                      ; preds = %for.end.319
  %w325 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %261 = load i32, i32* %w325, align 4
  %h326 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %262 = load i32, i32* %h326, align 4
  %mul327 = mul nsw i32 %261, %262
  %263 = load i32, i32* %progress, align 4
  %add328 = add nsw i32 %263, %mul327
  store i32 %add328, i32* %progress, align 4
  %264 = load i32, i32* %progress, align 4
  %conv329 = sitofp i32 %264 to double
  %265 = load i32, i32* %max_progress, align 4
  %conv330 = sitofp i32 %265 to double
  %div331 = fdiv double %conv329, %conv330
  %call332 = call i32 @gimp_progress_update(double %div331)
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.324, %if.then.321
  br label %for.inc.334

for.inc.334:                                      ; preds = %if.end.333
  %266 = load i8*, i8** %pr, align 8
  %call335 = call i8* @gimp_pixel_rgns_process(i8* %266)
  store i8* %call335, i8** %pr, align 8
  br label %for.cond.77

for.end.336:                                      ; preds = %for.cond.77
  %267 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask_size_map_drawable, align 8
  %tobool337 = icmp ne %struct._GimpDrawable* %267, null
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %for.end.336
  %268 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask_size_map_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %268)
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %for.end.336
  %269 = load %struct._GimpDrawable*, %struct._GimpDrawable** %exponent_map_drawable, align 8
  %tobool340 = icmp ne %struct._GimpDrawable* %269, null
  br i1 %tobool340, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %if.end.339
  %270 = load %struct._GimpDrawable*, %struct._GimpDrawable** %exponent_map_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %270)
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.341, %if.end.339
  %271 = load i8*, i8** %src_inten_buf, align 8
  %tobool343 = icmp ne i8* %271, null
  br i1 %tobool343, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %if.end.342
  %272 = load i8*, i8** %src_inten_buf, align 8
  call void @g_free(i8* %272)
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.344, %if.end.342
  %273 = load i8*, i8** %src_buf, align 8
  call void @g_free(i8* %273)
  %274 = load i32*, i32** %sqr_lut, align 8
  %275 = bitcast i32* %274 to i8*
  call void @g_free(i8* %275)
  %276 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool346 = icmp ne %struct._GimpPreview* %276, null
  br i1 %tobool346, label %if.end.353, label %if.then.347

if.then.347:                                      ; preds = %if.end.345
  %call348 = call i32 @gimp_progress_update(double 1.000000e+00)
  %277 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %277)
  %278 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id349 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %278, i32 0, i32 0
  %279 = load i32, i32* %drawable_id349, align 4
  %call350 = call i32 @gimp_drawable_merge_shadow(i32 %279, i32 1)
  %280 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id351 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %280, i32 0, i32 0
  %281 = load i32, i32* %drawable_id351, align 4
  %282 = load i32, i32* %x1, align 4
  %283 = load i32, i32* %y1, align 4
  %284 = load i32, i32* %width, align 4
  %285 = load i32, i32* %height, align 4
  %call352 = call i32 @gimp_drawable_update(i32 %281, i32 %282, i32 %283, i32 %284, i32 %285)
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.347, %if.end.345
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

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @oilify_map_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
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

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register2(i32, %struct._GimpPixelRgn**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @get_map_value(i8* %src, i32 %bpp) #5 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %value = alloca float, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp sge i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double %conv1, 2.126000e-01
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %conv4 = sitofp i32 %conv3 to double
  %mul5 = fmul double %conv4, 7.152000e-01
  %add = fadd double %mul, %mul5
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %6 to i32
  %conv8 = sitofp i32 %conv7 to double
  %mul9 = fmul double %conv8, 7.220000e-02
  %add10 = fadd double %add, %mul9
  %conv11 = fptrunc double %add10 to float
  store float %conv11, float* %value, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv12 = uitofp i8 %8 to float
  store float %conv12, float* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load float, float* %value, align 4
  %conv13 = fpext float %9 to double
  %cmp14 = fcmp olt double %conv13, 1.000000e+00
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store float 1.000000e+00, float* %value, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  %10 = load float, float* %value, align 4
  %conv18 = fpext float %10 to double
  %div = fdiv double %conv18, 2.550000e+02
  %conv19 = fptrunc double %div to float
  store float %conv19, float* %value, align 4
  %11 = load float, float* %value, align 4
  ret float %11
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @weighted_average_color(i32* %hist, [256 x i32]* %hist_rgb, float %exponent, i8* %dest, i32 %bpp) #5 {
entry:
  %hist.addr = alloca i32*, align 8
  %hist_rgb.addr = alloca [256 x i32]*, align 8
  %exponent.addr = alloca float, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %hist_max = alloca i32, align 4
  %exponent_int = alloca i32, align 4
  %div = alloca float, align 4
  %color = alloca [4 x float], align 16
  %ratio = alloca float, align 4
  %weight = alloca float, align 4
  %c = alloca i32, align 4
  store i32* %hist, i32** %hist.addr, align 8
  store [256 x i32]* %hist_rgb, [256 x i32]** %hist_rgb.addr, align 8
  store float %exponent, float* %exponent.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 1, i32* %hist_max, align 4
  store i32 0, i32* %exponent_int, align 4
  store float 0x3EB0C6F7A0000000, float* %div, align 4
  %0 = bitcast [4 x float]* %color to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %hist_max, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %hist.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, %5
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i32, i32* %hist_max, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i32*, i32** %hist.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %hist_max, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load float, float* %exponent.addr, align 4
  %conv = fpext float %11 to double
  %12 = load float, float* %exponent.addr, align 4
  %conv4 = fpext float %12 to double
  %call = call double @floor(double %conv4) #7
  %sub = fsub double %conv, %call
  %cmp5 = fcmp olt double %sub, 1.000000e-03
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %13 = load float, float* %exponent.addr, align 4
  %conv7 = fpext float %13 to double
  %cmp8 = fcmp ole double %conv7, 2.550000e+02
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load float, float* %exponent.addr, align 4
  %conv10 = fptosi float %14 to i32
  store i32 %conv10, i32* %exponent_int, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.52, %if.end
  %15 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %15, 256
  br i1 %cmp12, label %for.body.14, label %for.end.54

for.body.14:                                      ; preds = %for.cond.11
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load i32*, i32** %hist.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %17, i64 %idxprom15
  %18 = load i32, i32* %arrayidx16, align 4
  %conv17 = sitofp i32 %18 to float
  %19 = load i32, i32* %hist_max, align 4
  %conv18 = sitofp i32 %19 to float
  %div19 = fdiv float %conv17, %conv18
  store float %div19, float* %ratio, align 4
  %20 = load i32, i32* %exponent_int, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body.14
  %21 = load float, float* %ratio, align 4
  %22 = load i32, i32* %exponent_int, align 4
  %call21 = call float @fast_powf(float %21, i32 %22)
  store float %call21, float* %weight, align 4
  br label %if.end.26

if.else:                                          ; preds = %for.body.14
  %23 = load float, float* %ratio, align 4
  %conv22 = fpext float %23 to double
  %24 = load float, float* %exponent.addr, align 4
  %conv23 = fpext float %24 to double
  %call24 = call double @pow(double %conv22, double %conv23) #6
  %conv25 = fptrunc double %call24 to float
  store float %conv25, float* %weight, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.20
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i32*, i32** %hist.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %26, i64 %idxprom27
  %27 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp sgt i32 %27, 0
  br i1 %cmp29, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %if.end.26
  store i32 0, i32* %b, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.47, %if.then.31
  %28 = load i32, i32* %b, align 4
  %29 = load i32, i32* %bpp.addr, align 4
  %cmp33 = icmp slt i32 %28, %29
  br i1 %cmp33, label %for.body.35, label %for.end.49

for.body.35:                                      ; preds = %for.cond.32
  %30 = load float, float* %weight, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load i32, i32* %b, align 4
  %idxprom37 = sext i32 %32 to i64
  %33 = load [256 x i32]*, [256 x i32]** %hist_rgb.addr, align 8
  %arrayidx38 = getelementptr inbounds [256 x i32], [256 x i32]* %33, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx38, i32 0, i64 %idxprom36
  %34 = load i32, i32* %arrayidx39, align 4
  %conv40 = sitofp i32 %34 to float
  %mul = fmul float %30, %conv40
  %35 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %35 to i64
  %36 = load i32*, i32** %hist.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %36, i64 %idxprom41
  %37 = load i32, i32* %arrayidx42, align 4
  %conv43 = sitofp i32 %37 to float
  %div44 = fdiv float %mul, %conv43
  %38 = load i32, i32* %b, align 4
  %idxprom45 = sext i32 %38 to i64
  %arrayidx46 = getelementptr inbounds [4 x float], [4 x float]* %color, i32 0, i64 %idxprom45
  %39 = load float, float* %arrayidx46, align 4
  %add = fadd float %39, %div44
  store float %add, float* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.35
  %40 = load i32, i32* %b, align 4
  %inc48 = add nsw i32 %40, 1
  store i32 %inc48, i32* %b, align 4
  br label %for.cond.32

for.end.49:                                       ; preds = %for.cond.32
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %if.end.26
  %41 = load float, float* %weight, align 4
  %42 = load float, float* %div, align 4
  %add51 = fadd float %42, %41
  store float %add51, float* %div, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.50
  %43 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %43, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.11

for.end.54:                                       ; preds = %for.cond.11
  store i32 0, i32* %b, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.78, %for.end.54
  %44 = load i32, i32* %b, align 4
  %45 = load i32, i32* %bpp.addr, align 4
  %cmp56 = icmp slt i32 %44, %45
  br i1 %cmp56, label %for.body.58, label %for.end.80

for.body.58:                                      ; preds = %for.cond.55
  %46 = load i32, i32* %b, align 4
  %idxprom59 = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds [4 x float], [4 x float]* %color, i32 0, i64 %idxprom59
  %47 = load float, float* %arrayidx60, align 4
  %48 = load float, float* %div, align 4
  %div61 = fdiv float %47, %48
  %conv62 = fptosi float %div61 to i32
  store i32 %conv62, i32* %c, align 4
  %49 = load i32, i32* %c, align 4
  %cmp63 = icmp sgt i32 %49, 255
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %for.body.58
  br label %cond.end.73

cond.false.66:                                    ; preds = %for.body.58
  %50 = load i32, i32* %c, align 4
  %cmp67 = icmp slt i32 %50, 0
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false.66
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.false.66
  %51 = load i32, i32* %c, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.69
  %cond72 = phi i32 [ 0, %cond.true.69 ], [ %51, %cond.false.70 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.65
  %cond74 = phi i32 [ 255, %cond.true.65 ], [ %cond72, %cond.end.71 ]
  %conv75 = trunc i32 %cond74 to i8
  %52 = load i32, i32* %b, align 4
  %idxprom76 = sext i32 %52 to i64
  %53 = load i8*, i8** %dest.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %53, i64 %idxprom76
  store i8 %conv75, i8* %arrayidx77, align 1
  br label %for.inc.78

for.inc.78:                                       ; preds = %cond.end.73
  %54 = load i32, i32* %b, align 4
  %inc79 = add nsw i32 %54, 1
  store i32 %inc79, i32* %b, align 4
  br label %for.cond.55

for.end.80:                                       ; preds = %for.cond.55
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @weighted_average_value(i32* %hist, float %exponent) #5 {
entry:
  %hist.addr = alloca i32*, align 8
  %exponent.addr = alloca float, align 4
  %i = alloca i32, align 4
  %hist_max = alloca i32, align 4
  %exponent_int = alloca i32, align 4
  %sum = alloca float, align 4
  %div = alloca float, align 4
  %value = alloca i32, align 4
  %ratio = alloca float, align 4
  %weight = alloca float, align 4
  store i32* %hist, i32** %hist.addr, align 8
  store float %exponent, float* %exponent.addr, align 4
  store i32 1, i32* %hist_max, align 4
  store i32 0, i32* %exponent_int, align 4
  store float 0.000000e+00, float* %sum, align 4
  store float 0x3EB0C6F7A0000000, float* %div, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %hist_max, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %hist.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %1, %4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i32, i32* %hist_max, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %hist.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %hist_max, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load float, float* %exponent.addr, align 4
  %conv = fpext float %10 to double
  %11 = load float, float* %exponent.addr, align 4
  %conv4 = fpext float %11 to double
  %call = call double @floor(double %conv4) #7
  %sub = fsub double %conv, %call
  %cmp5 = fcmp olt double %sub, 1.000000e-03
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %12 = load float, float* %exponent.addr, align 4
  %conv7 = fpext float %12 to double
  %cmp8 = fcmp ole double %conv7, 2.550000e+02
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load float, float* %exponent.addr, align 4
  %conv10 = fptosi float %13 to i32
  store i32 %conv10, i32* %exponent_int, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.29, %if.end
  %14 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %14, 256
  br i1 %cmp12, label %for.body.14, label %for.end.31

for.body.14:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load i32*, i32** %hist.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %conv17 = sitofp i32 %17 to float
  %18 = load i32, i32* %hist_max, align 4
  %conv18 = sitofp i32 %18 to float
  %div19 = fdiv float %conv17, %conv18
  store float %div19, float* %ratio, align 4
  %19 = load i32, i32* %exponent_int, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body.14
  %20 = load float, float* %ratio, align 4
  %21 = load i32, i32* %exponent_int, align 4
  %call21 = call float @fast_powf(float %20, i32 %21)
  store float %call21, float* %weight, align 4
  br label %if.end.26

if.else:                                          ; preds = %for.body.14
  %22 = load float, float* %ratio, align 4
  %conv22 = fpext float %22 to double
  %23 = load float, float* %exponent.addr, align 4
  %conv23 = fpext float %23 to double
  %call24 = call double @pow(double %conv22, double %conv23) #6
  %conv25 = fptrunc double %call24 to float
  store float %conv25, float* %weight, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.20
  %24 = load float, float* %weight, align 4
  %25 = load i32, i32* %i, align 4
  %conv27 = sitofp i32 %25 to float
  %mul = fmul float %24, %conv27
  %26 = load float, float* %sum, align 4
  %add = fadd float %26, %mul
  store float %add, float* %sum, align 4
  %27 = load float, float* %weight, align 4
  %28 = load float, float* %div, align 4
  %add28 = fadd float %28, %27
  store float %add28, float* %div, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.26
  %29 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.11

for.end.31:                                       ; preds = %for.cond.11
  %30 = load float, float* %sum, align 4
  %31 = load float, float* %div, align 4
  %div32 = fdiv float %30, %31
  %conv33 = fptosi float %div32 to i32
  store i32 %conv33, i32* %value, align 4
  %32 = load i32, i32* %value, align 4
  %cmp34 = icmp sgt i32 %32, 255
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %for.end.31
  br label %cond.end.44

cond.false.37:                                    ; preds = %for.end.31
  %33 = load i32, i32* %value, align 4
  %cmp38 = icmp slt i32 %33, 0
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.false.37
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.false.37
  %34 = load i32, i32* %value, align 4
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi i32 [ 0, %cond.true.40 ], [ %34, %cond.false.41 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.true.36
  %cond45 = phi i32 [ 255, %cond.true.36 ], [ %cond43, %cond.end.42 ]
  %conv46 = trunc i32 %cond45 to i8
  ret i8 %conv46
}

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal float @fast_powf(float %x, i32 %y) #5 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca i32, align 4
  %value = alloca float, align 4
  %x_pow = alloca [8 x float], align 16
  %y_uint = alloca i32, align 4
  %bitmask = alloca i32, align 4
  %i = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  store i32 %0, i32* %y_uint, align 4
  %1 = load i32, i32* %y_uint, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, float* %x.addr, align 4
  store float %2, float* %value, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store float 1.000000e+00, float* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load float, float* %x.addr, align 4
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %x_pow, i32 0, i64 0
  store float %3, float* %arrayidx, align 4
  store i32 2, i32* %bitmask, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %bitmask, align 4
  %5 = load i32, i32* %y_uint, align 4
  %cmp = icmp ule i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds [8 x float], [8 x float]* %x_pow, i32 0, i64 %idxprom
  %7 = load float, float* %arrayidx1, align 4
  %8 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %8, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %x_pow, i32 0, i64 %idxprom3
  %9 = load float, float* %arrayidx4, align 4
  %mul = fmul float %7, %9
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [8 x float], [8 x float]* %x_pow, i32 0, i64 %idxprom5
  store float %mul, float* %arrayidx6, align 4
  %11 = load i32, i32* %y_uint, align 4
  %12 = load i32, i32* %bitmask, align 4
  %and7 = and i32 %11, %12
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %x_pow, i32 0, i64 %idxprom10
  %14 = load float, float* %arrayidx11, align 4
  %15 = load float, float* %value, align 4
  %mul12 = fmul float %15, %14
  store float %mul12, float* %value, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %16 = load i32, i32* %bitmask, align 4
  %shl = shl i32 %16, 1
  store i32 %shl, i32* %bitmask, align 4
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load float, float* %value, align 4
  ret float %18
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
