; ModuleID = './plug-ins/common/emboss.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.piArgs = type { double, double, i32, i32 }
%struct.embossFilter = type { double, double, double, double, double, double, double }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"The Image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"The Drawable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"azimuth\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"The Light Angle (degrees)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"elevation\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"The Elevation Angle (degrees)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"The Filter Width\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"emboss\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Emboss or Bumpmap\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"plug-in-emboss\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Simulate an image created by embossing\00", align 1
@.str.16 = private unnamed_addr constant [95 x i8] c"Emboss or Bumpmap the given drawable, specifying the angle and elevation for the light source.\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Eric L. Hernes, John Schlag\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Eric L. Hernes\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"_Emboss...\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.rvals = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@evals = internal global %struct.piArgs { double 3.000000e+01, double 4.500000e+01, i32 20, i32 1 }, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"Emboss\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"gimp-emboss\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"_Bumpmap\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"_Emboss\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"_Azimuth:\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"E_levation:\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"_Depth:\00", align 1
@Filter = internal global %struct.embossFilter zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparam, %struct._GimpParam* %param, i32* %nretvals, %struct._GimpParam** %retvals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparam.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nretvals.addr = alloca i32*, align 8
  %retvals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparam, i32* %nparam.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nretvals, i32** %nretvals.addr, align 8
  store %struct._GimpParam** %retvals, %struct._GimpParam*** %retvals.addr, align 8
  %0 = load i32*, i32** %nretvals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %retvals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i32 0), %struct._GimpParam** %1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 5
  %5 = load i32, i32* %ntile_cols, align 4
  %conv = zext i32 %5 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_int32, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.piArgs* @evals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @emboss_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %call9 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.piArgs* @evals to i8*), i32 24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end
  %9 = load i32, i32* %nparam.addr, align 4
  %cmp = icmp ne i32 %9, 7
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb.10
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  br label %sw.epilog

if.end.13:                                        ; preds = %sw.bb.10
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data15 to double*
  %11 = load double, double* %d_float, align 8
  store double %11, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 0), align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_float18 = bitcast %union._GimpParamData* %data17 to double*
  %13 = load double, double* %d_float18, align 8
  store double %13, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 1), align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %15 = load i32, i32* %d_int3221, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 6
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %17 = load i32, i32* %d_int3224, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 3), align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @emboss(%struct._GimpDrawable* %18, %struct._GimpPreview* null)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %do.end
  %call26 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.piArgs* @evals to i8*))
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @emboss(%struct._GimpDrawable* %19, %struct._GimpPreview* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.25, %if.end.13, %if.then.12, %if.end
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
define internal i32 @emboss_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %radio1 = alloca %struct._GtkWidget*, align 8
  %radio2 = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @emboss to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)) #4
  %26 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 3), align 4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)) #4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call18, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 3) to i8*), i32 %26, i8* %call19, i32 0, %struct._GtkWidget** %radio1, i8* %call20, i32 1, %struct._GtkWidget** %radio2, i8* null)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %frame, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %radio1, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 2)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %radio2, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 2)
  %call26 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %table, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call27)
  %42 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %42, i32 6)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call29)
  %45 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %45, i32 6)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call31)
  %48 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #4
  %53 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 0), align 8
  %call36 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %52, i32 0, i32 0, i8* %call35, i32 100, i32 6, double %53, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call36, %struct._GtkObject** %adj, align 8
  %54 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %55 = bitcast %struct._GtkObject* %54 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.piArgs* @evals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 2)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call39)
  %62 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0)) #4
  %63 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 1), align 8
  %call42 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %62, i32 0, i32 1, i8* %call41, i32 100, i32 6, double %63, double 0.000000e+00, double 1.800000e+02, double 1.000000e+00, double 1.000000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call42, %struct._GtkObject** %adj, align 8
  %64 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %65 = bitcast %struct._GtkObject* %64 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %69, void (i8*, %struct._GClosure*)* null, i32 2)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call45)
  %72 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0)) #4
  %73 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %conv = sitofp i32 %73 to double
  %call48 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %72, i32 0, i32 2, i8* %call47, i32 100, i32 6, double %conv, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call48, %struct._GtkObject** %adj, align 8
  %74 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %75 = bitcast %struct._GtkObject* %74 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %76 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %77 = bitcast %struct._GtkObject* %76 to i8*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %79, void (i8*, %struct._GClosure*)* null, i32 2)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_dialog_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call51)
  %84 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDialog*
  %call53 = call i32 @gimp_dialog_run(%struct._GimpDialog* %84)
  %cmp = icmp eq i32 %call53, -5
  %conv54 = zext i1 %cmp to i32
  store i32 %conv54, i32* %run, align 4
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %85)
  %86 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %86, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @emboss(%struct._GimpDrawable* %87, %struct._GimpPreview* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %88 = load i32, i32* %run, align 4
  ret i32 %88
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @emboss(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src = alloca %struct._GimpPixelRgn, align 8
  %dst = alloca %struct._GimpPixelRgn, align 8
  %p_update = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bypp = alloca i32, align 4
  %rowsize = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %srcbuf = alloca i8*, align 8
  %dstbuf = alloca i8*, align 8
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
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %sub = sub nsw i32 %9, %10
  %cmp = icmp sgt i32 0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %11 = load i32, i32* %x1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %sub2 = sub nsw i32 %11, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub2, %cond.false ]
  store i32 %cond, i32* %x1, align 4
  %13 = load i32, i32* %y1, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %sub3 = sub nsw i32 %13, %14
  %cmp4 = icmp sgt i32 0, %sub3
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.8

cond.false.6:                                     ; preds = %cond.end
  %15 = load i32, i32* %y1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %sub7 = sub nsw i32 %15, %16
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.5
  %cond9 = phi i32 [ 0, %cond.true.5 ], [ %sub7, %cond.false.6 ]
  store i32 %cond9, i32* %y1, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width10, align 4
  %19 = load i32, i32* %x2, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %add11 = add nsw i32 %19, %20
  %cmp12 = icmp ult i32 %18, %add11
  br i1 %cmp12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.end.8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width14, align 4
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.end.8
  %23 = load i32, i32* %x2, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %add16 = add nsw i32 %23, %24
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.13
  %cond18 = phi i32 [ %22, %cond.true.13 ], [ %add16, %cond.false.15 ]
  store i32 %cond18, i32* %x2, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 2
  %26 = load i32, i32* %height19, align 4
  %27 = load i32, i32* %y2, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %add20 = add nsw i32 %27, %28
  %cmp21 = icmp ult i32 %26, %add20
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.17
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 2
  %30 = load i32, i32* %height23, align 4
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end.17
  %31 = load i32, i32* %y2, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %add25 = add nsw i32 %31, %32
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.22
  %cond27 = phi i32 [ %30, %cond.true.22 ], [ %add25, %cond.false.24 ]
  store i32 %cond27, i32* %y2, align 4
  %33 = load i32, i32* %x2, align 4
  %34 = load i32, i32* %x1, align 4
  %sub28 = sub nsw i32 %33, %34
  store i32 %sub28, i32* %width, align 4
  %35 = load i32, i32* %y2, align 4
  %36 = load i32, i32* %y1, align 4
  %sub29 = sub nsw i32 %35, %36
  store i32 %sub29, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.26, %if.then
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 3
  %38 = load i32, i32* %bpp, align 4
  store i32 %38, i32* %bypp, align 4
  %39 = load i32, i32* %height, align 4
  %div = sdiv i32 %39, 20
  %cmp30 = icmp sgt i32 1, %div
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.end
  br label %cond.end.34

cond.false.32:                                    ; preds = %if.end
  %40 = load i32, i32* %height, align 4
  %div33 = sdiv i32 %40, 20
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.31
  %cond35 = phi i32 [ 1, %cond.true.31 ], [ %div33, %cond.false.32 ]
  store i32 %cond35, i32* %p_update, align 4
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %bypp, align 4
  %mul = mul nsw i32 %41, %42
  store i32 %mul, i32* %rowsize, align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 0
  %44 = load i32, i32* %drawable_id36, align 4
  %call37 = call i32 @gimp_drawable_has_alpha(i32 %44)
  store i32 %call37, i32* %has_alpha, align 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %46 = load i32, i32* %x1, align 4
  %47 = load i32, i32* %y1, align 4
  %48 = load i32, i32* %width, align 4
  %49 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src, %struct._GimpDrawable* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 0, i32 0)
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %51 = load i32, i32* %x1, align 4
  %52 = load i32, i32* %y1, align 4
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  %55 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp38 = icmp eq %struct._GimpPreview* %55, null
  %conv = zext i1 %cmp38 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst, %struct._GimpDrawable* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %conv, i32 1)
  %56 = load i32, i32* %rowsize, align 4
  %mul39 = mul nsw i32 %56, 3
  %conv40 = sext i32 %mul39 to i64
  %call41 = call noalias i8* @g_malloc0_n(i64 %conv40, i64 1)
  store i8* %call41, i8** %srcbuf, align 8
  %57 = load i32, i32* %rowsize, align 4
  %conv42 = sext i32 %57 to i64
  %call43 = call noalias i8* @g_malloc0_n(i64 %conv42, i64 1)
  store i8* %call43, i8** %dstbuf, align 8
  %58 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 0), align 8
  %mul44 = fmul double %58, 0x3F91DF46A2529D39
  %59 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 1), align 8
  %mul45 = fmul double %59, 0x3F91DF46A2529D39
  %60 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 2), align 4
  %conv46 = trunc i32 %60 to i16
  call void @emboss_init(double %mul44, double %mul45, i16 zeroext %conv46)
  %61 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool47 = icmp ne %struct._GimpPreview* %61, null
  br i1 %tobool47, label %if.end.51, label %if.then.48

if.then.48:                                       ; preds = %cond.end.34
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #4
  %call50 = call i32 @gimp_progress_init(i8* %call49)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %cond.end.34
  %62 = load i8*, i8** %srcbuf, align 8
  %63 = load i32, i32* %x1, align 4
  %64 = load i32, i32* %y1, align 4
  %65 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src, i8* %62, i32 %63, i32 %64, i32 %65, i32 3)
  %66 = load i8*, i8** %srcbuf, align 8
  %67 = load i8*, i8** %srcbuf, align 8
  %68 = load i32, i32* %rowsize, align 4
  %idx.ext = sext i32 %68 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  %69 = load i32, i32* %rowsize, align 4
  %conv52 = sext i32 %69 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %add.ptr, i64 %conv52, i32 1, i1 false)
  %70 = load i8*, i8** %srcbuf, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 3), align 4
  %tobool53 = icmp ne i32 %71, 0
  br i1 %tobool53, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %if.end.51
  br label %cond.end.56

cond.false.55:                                    ; preds = %if.end.51
  %72 = load i8*, i8** %srcbuf, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i8* [ null, %cond.true.54 ], [ %72, %cond.false.55 ]
  %73 = load i8*, i8** %dstbuf, align 8
  %74 = load i32, i32* %width, align 4
  %75 = load i32, i32* %bypp, align 4
  %76 = load i32, i32* %has_alpha, align 4
  call void @emboss_row(i8* %70, i8* %cond57, i8* %73, i32 %74, i32 %75, i32 %76)
  %77 = load i8*, i8** %dstbuf, align 8
  %78 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dst, i8* %77, i32 0, i32 0, i32 %78)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.56
  %79 = load i32, i32* %y, align 4
  %80 = load i32, i32* %height, align 4
  %sub58 = sub nsw i32 %80, 2
  %cmp59 = icmp slt i32 %79, %sub58
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool61 = icmp ne %struct._GimpPreview* %81, null
  br i1 %tobool61, label %if.end.69, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %82 = load i32, i32* %y, align 4
  %83 = load i32, i32* %p_update, align 4
  %rem = srem i32 %82, %83
  %cmp62 = icmp eq i32 %rem, 0
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %land.lhs.true
  %84 = load i32, i32* %y, align 4
  %conv65 = sitofp i32 %84 to double
  %85 = load i32, i32* %height, align 4
  %conv66 = sitofp i32 %85 to double
  %div67 = fdiv double %conv65, %conv66
  %call68 = call i32 @gimp_progress_update(double %div67)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %land.lhs.true, %for.body
  %86 = load i8*, i8** %srcbuf, align 8
  %87 = load i32, i32* %x1, align 4
  %88 = load i32, i32* %y1, align 4
  %89 = load i32, i32* %y, align 4
  %add70 = add nsw i32 %88, %89
  %90 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src, i8* %86, i32 %87, i32 %add70, i32 %90, i32 3)
  %91 = load i8*, i8** %srcbuf, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 3), align 4
  %tobool71 = icmp ne i32 %92, 0
  br i1 %tobool71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %if.end.69
  br label %cond.end.74

cond.false.73:                                    ; preds = %if.end.69
  %93 = load i8*, i8** %srcbuf, align 8
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi i8* [ null, %cond.true.72 ], [ %93, %cond.false.73 ]
  %94 = load i8*, i8** %dstbuf, align 8
  %95 = load i32, i32* %width, align 4
  %96 = load i32, i32* %bypp, align 4
  %97 = load i32, i32* %has_alpha, align 4
  call void @emboss_row(i8* %91, i8* %cond75, i8* %94, i32 %95, i32 %96, i32 %97)
  %98 = load i8*, i8** %dstbuf, align 8
  %99 = load i32, i32* %x1, align 4
  %100 = load i32, i32* %y1, align 4
  %101 = load i32, i32* %y, align 4
  %add76 = add nsw i32 %100, %101
  %add77 = add nsw i32 %add76, 1
  %102 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dst, i8* %98, i32 %99, i32 %add77, i32 %102)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.74
  %103 = load i32, i32* %y, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %104 = load i8*, i8** %srcbuf, align 8
  %105 = load i32, i32* %x1, align 4
  %106 = load i32, i32* %y2, align 4
  %sub78 = sub nsw i32 %106, 3
  %107 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src, i8* %104, i32 %105, i32 %sub78, i32 %107, i32 3)
  %108 = load i8*, i8** %srcbuf, align 8
  %109 = load i32, i32* %rowsize, align 4
  %mul79 = mul nsw i32 %109, 2
  %idx.ext80 = sext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %108, i64 %idx.ext80
  %110 = load i8*, i8** %srcbuf, align 8
  %111 = load i32, i32* %rowsize, align 4
  %idx.ext82 = sext i32 %111 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %110, i64 %idx.ext82
  %112 = load i32, i32* %rowsize, align 4
  %conv84 = sext i32 %112 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr81, i8* %add.ptr83, i64 %conv84, i32 1, i1 false)
  %113 = load i8*, i8** %srcbuf, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @evals, i32 0, i32 3), align 4
  %tobool85 = icmp ne i32 %114, 0
  br i1 %tobool85, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %for.end
  br label %cond.end.88

cond.false.87:                                    ; preds = %for.end
  %115 = load i8*, i8** %srcbuf, align 8
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.86
  %cond89 = phi i8* [ null, %cond.true.86 ], [ %115, %cond.false.87 ]
  %116 = load i8*, i8** %dstbuf, align 8
  %117 = load i32, i32* %width, align 4
  %118 = load i32, i32* %bypp, align 4
  %119 = load i32, i32* %has_alpha, align 4
  call void @emboss_row(i8* %113, i8* %cond89, i8* %116, i32 %117, i32 %118, i32 %119)
  %120 = load i8*, i8** %dstbuf, align 8
  %121 = load i32, i32* %x1, align 4
  %122 = load i32, i32* %y2, align 4
  %sub90 = sub nsw i32 %122, 1
  %123 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dst, i8* %120, i32 %121, i32 %sub90, i32 %123)
  %124 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool91 = icmp ne %struct._GimpPreview* %124, null
  br i1 %tobool91, label %if.then.92, label %if.else.95

if.then.92:                                       ; preds = %cond.end.88
  %125 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %126 = bitcast %struct._GimpPreview* %125 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_drawable_preview_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call93)
  %127 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %127, %struct._GimpPixelRgn* %dst)
  br label %if.end.102

if.else.95:                                       ; preds = %cond.end.88
  %call96 = call i32 @gimp_progress_update(double 1.000000e+00)
  %128 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %128)
  %129 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id97 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %129, i32 0, i32 0
  %130 = load i32, i32* %drawable_id97, align 4
  %call98 = call i32 @gimp_drawable_merge_shadow(i32 %130, i32 1)
  %131 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id99 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %131, i32 0, i32 0
  %132 = load i32, i32* %drawable_id99, align 4
  %133 = load i32, i32* %x1, align 4
  %134 = load i32, i32* %y1, align 4
  %135 = load i32, i32* %width, align 4
  %136 = load i32, i32* %height, align 4
  %call100 = call i32 @gimp_drawable_update(i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %call101 = call i32 @gimp_displays_flush()
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.95, %if.then.92
  %137 = load i8*, i8** %srcbuf, align 8
  call void @g_free(i8* %137)
  %138 = load i8*, i8** %dstbuf, align 8
  call void @g_free(i8* %138)
  ret void
}

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

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @emboss_init(double %azimuth, double %elevation, i16 zeroext %width45) #0 {
entry:
  %azimuth.addr = alloca double, align 8
  %elevation.addr = alloca double, align 8
  %width45.addr = alloca i16, align 2
  store double %azimuth, double* %azimuth.addr, align 8
  store double %elevation, double* %elevation.addr, align 8
  store i16 %width45, i16* %width45.addr, align 2
  %0 = load double, double* %azimuth.addr, align 8
  %call = call double @cos(double %0) #4
  %1 = load double, double* %elevation.addr, align 8
  %call1 = call double @cos(double %1) #4
  %mul = fmul double %call, %call1
  %mul2 = fmul double %mul, 2.559000e+02
  store double %mul2, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 0), align 8
  %2 = load double, double* %azimuth.addr, align 8
  %call3 = call double @sin(double %2) #4
  %3 = load double, double* %elevation.addr, align 8
  %call4 = call double @cos(double %3) #4
  %mul5 = fmul double %call3, %call4
  %mul6 = fmul double %mul5, 2.559000e+02
  store double %mul6, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 1), align 8
  %4 = load double, double* %elevation.addr, align 8
  %call7 = call double @sin(double %4) #4
  %mul8 = fmul double %call7, 2.559000e+02
  store double %mul8, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 2), align 8
  %5 = load i16, i16* %width45.addr, align 2
  %conv = zext i16 %5 to i32
  %div = sdiv i32 1530, %conv
  %conv9 = sitofp i32 %div to double
  store double %conv9, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 3), align 8
  %6 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 3), align 8
  %7 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 3), align 8
  %mul10 = fmul double %6, %7
  store double %mul10, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 4), align 8
  %8 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 3), align 8
  %9 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 2), align 8
  %mul11 = fmul double %8, %9
  store double %mul11, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 5), align 8
  %10 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 2), align 8
  store double %10, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 6), align 8
  ret void
}

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @emboss_row(i8* %src, i8* %texture, i8* %dst, i32 %width, i32 %bypp, i32 %alpha) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %texture.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bypp.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %s = alloca [3 x i8*], align 16
  %M = alloca [3 x [3 x double]], align 16
  %x = alloca i32, align 4
  %bytes = alloca i32, align 4
  %a = alloca double, align 8
  %Nx = alloca i64, align 8
  %Ny = alloca i64, align 8
  %NdotL = alloca i64, align 8
  %shade = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %texture, i8** %texture.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bypp, i32* %bypp.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 0
  store i8* %0, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx1, align 8
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %bypp.addr, align 4
  %mul = mul i32 %2, %3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %arrayidx2 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 1
  store i8* %add.ptr, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 1
  %4 = load i8*, i8** %arrayidx3, align 8
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %bypp.addr, align 4
  %mul4 = mul i32 %5, %6
  %idx.ext5 = zext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %4, i64 %idx.ext5
  %arrayidx7 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 2
  store i8* %add.ptr6, i8** %arrayidx7, align 8
  %7 = load i32, i32* %bypp.addr, align 4
  %8 = load i8*, i8** %dst.addr, align 8
  %idx.ext8 = zext i32 %7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %8, i64 %idx.ext8
  store i8* %add.ptr9, i8** %dst.addr, align 8
  %9 = load i32, i32* %alpha.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i32, i32* %bypp.addr, align 4
  %sub = sub i32 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %bypp.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %bytes, align 4
  %12 = load i8*, i8** %texture.addr, align 8
  %tobool10 = icmp ne i8* %12, null
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load i32, i32* %width.addr, align 4
  %add = add i32 %13, 1
  %14 = load i32, i32* %bypp.addr, align 4
  %mul11 = mul i32 %add, %14
  %15 = load i8*, i8** %texture.addr, align 8
  %idx.ext12 = zext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %15, i64 %idx.ext12
  store i8* %add.ptr13, i8** %texture.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  store i32 1, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.185, %if.end
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %width.addr, align 4
  %sub14 = sub i32 %17, 1
  %cmp = icmp ult i32 %16, %sub14
  br i1 %cmp, label %for.body, label %for.end.187

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.24, %for.body
  %18 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %18, 3
  br i1 %cmp16, label %for.body.17, label %for.end.26

for.body.17:                                      ; preds = %for.cond.15
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.17
  %19 = load i32, i32* %j, align 4
  %cmp19 = icmp slt i32 %19, 3
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %20 = load i32, i32* %j, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx22, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %23, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.15

for.end.26:                                       ; preds = %for.cond.15
  store i32 0, i32* %b, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.66, %for.end.26
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %bytes, align 4
  %cmp28 = icmp slt i32 %24, %25
  br i1 %cmp28, label %for.body.29, label %for.end.68

for.body.29:                                      ; preds = %for.cond.27
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.63, %for.body.29
  %26 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %26, 3
  br i1 %cmp31, label %for.body.32, label %for.end.65

for.body.32:                                      ; preds = %for.cond.30
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.60, %for.body.32
  %27 = load i32, i32* %j, align 4
  %cmp34 = icmp slt i32 %27, 3
  br i1 %cmp34, label %for.body.35, label %for.end.62

for.body.35:                                      ; preds = %for.cond.33
  %28 = load i32, i32* %alpha.addr, align 4
  %tobool36 = icmp ne i32 %28, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %for.body.35
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %bypp.addr, align 4
  %mul38 = mul i32 %29, %30
  %31 = load i32, i32* %bytes, align 4
  %add39 = add i32 %mul38, %31
  %idxprom40 = zext i32 %add39 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 %idxprom41
  %33 = load i8*, i8** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %33, i64 %idxprom40
  %34 = load i8, i8* %arrayidx43, align 1
  %conv = zext i8 %34 to i32
  %conv44 = sitofp i32 %conv to double
  %div = fdiv double %conv44, 2.550000e+02
  store double %div, double* %a, align 8
  br label %if.end.45

if.else:                                          ; preds = %for.body.35
  store double 1.000000e+00, double* %a, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.37
  %35 = load double, double* %a, align 8
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %bypp.addr, align 4
  %mul46 = mul i32 %36, %37
  %38 = load i32, i32* %b, align 4
  %add47 = add i32 %mul46, %38
  %idxprom48 = zext i32 %add47 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 %idxprom49
  %40 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %40, i64 %idxprom48
  %41 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %41 to i32
  %conv53 = sitofp i32 %conv52 to double
  %mul54 = fmul double %35, %conv53
  %42 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %43 to i64
  %arrayidx57 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx57, i32 0, i64 %idxprom55
  %44 = load double, double* %arrayidx58, align 8
  %add59 = fadd double %44, %mul54
  store double %add59, double* %arrayidx58, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.45
  %45 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %45, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.33

for.end.62:                                       ; preds = %for.cond.33
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %46 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %46, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.30

for.end.65:                                       ; preds = %for.cond.30
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %47 = load i32, i32* %b, align 4
  %inc67 = add nsw i32 %47, 1
  store i32 %inc67, i32* %b, align 4
  br label %for.cond.27

for.end.68:                                       ; preds = %for.cond.27
  %arrayidx69 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 0
  %arrayidx70 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx69, i32 0, i64 0
  %48 = load double, double* %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 1
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx71, i32 0, i64 0
  %49 = load double, double* %arrayidx72, align 8
  %add73 = fadd double %48, %49
  %arrayidx74 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 2
  %arrayidx75 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx74, i32 0, i64 0
  %50 = load double, double* %arrayidx75, align 8
  %add76 = fadd double %add73, %50
  %arrayidx77 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx77, i32 0, i64 2
  %51 = load double, double* %arrayidx78, align 8
  %sub79 = fsub double %add76, %51
  %arrayidx80 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 1
  %arrayidx81 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx80, i32 0, i64 2
  %52 = load double, double* %arrayidx81, align 8
  %sub82 = fsub double %sub79, %52
  %arrayidx83 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 2
  %arrayidx84 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx83, i32 0, i64 2
  %53 = load double, double* %arrayidx84, align 8
  %sub85 = fsub double %sub82, %53
  %conv86 = fptosi double %sub85 to i64
  store i64 %conv86, i64* %Nx, align 8
  %arrayidx87 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 2
  %arrayidx88 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx87, i32 0, i64 0
  %54 = load double, double* %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 2
  %arrayidx90 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx89, i32 0, i64 1
  %55 = load double, double* %arrayidx90, align 8
  %add91 = fadd double %54, %55
  %arrayidx92 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 2
  %arrayidx93 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx92, i32 0, i64 2
  %56 = load double, double* %arrayidx93, align 8
  %add94 = fadd double %add91, %56
  %arrayidx95 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 0
  %arrayidx96 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx95, i32 0, i64 0
  %57 = load double, double* %arrayidx96, align 8
  %sub97 = fsub double %add94, %57
  %arrayidx98 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 0
  %arrayidx99 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx98, i32 0, i64 1
  %58 = load double, double* %arrayidx99, align 8
  %sub100 = fsub double %sub97, %58
  %arrayidx101 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %M, i32 0, i64 0
  %arrayidx102 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx101, i32 0, i64 2
  %59 = load double, double* %arrayidx102, align 8
  %sub103 = fsub double %sub100, %59
  %conv104 = fptosi double %sub103 to i64
  store i64 %conv104, i64* %Ny, align 8
  %60 = load i64, i64* %Nx, align 8
  %cmp105 = icmp eq i64 %60, 0
  br i1 %cmp105, label %land.lhs.true, label %if.else.111

land.lhs.true:                                    ; preds = %for.end.68
  %61 = load i64, i64* %Ny, align 8
  %cmp107 = icmp eq i64 %61, 0
  br i1 %cmp107, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %land.lhs.true
  %62 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 6), align 8
  %conv110 = fptosi double %62 to i32
  store i32 %conv110, i32* %shade, align 4
  br label %if.end.132

if.else.111:                                      ; preds = %land.lhs.true, %for.end.68
  %63 = load i64, i64* %Nx, align 8
  %conv112 = sitofp i64 %63 to double
  %64 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 0), align 8
  %mul113 = fmul double %conv112, %64
  %65 = load i64, i64* %Ny, align 8
  %conv114 = sitofp i64 %65 to double
  %66 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 1), align 8
  %mul115 = fmul double %conv114, %66
  %add116 = fadd double %mul113, %mul115
  %67 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 5), align 8
  %add117 = fadd double %add116, %67
  %conv118 = fptosi double %add117 to i64
  store i64 %conv118, i64* %NdotL, align 8
  %cmp119 = icmp slt i64 %conv118, 0
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.else.111
  store i32 0, i32* %shade, align 4
  br label %if.end.131

if.else.122:                                      ; preds = %if.else.111
  %68 = load i64, i64* %NdotL, align 8
  %conv123 = sitofp i64 %68 to double
  %69 = load i64, i64* %Nx, align 8
  %70 = load i64, i64* %Nx, align 8
  %mul124 = mul nsw i64 %69, %70
  %71 = load i64, i64* %Ny, align 8
  %72 = load i64, i64* %Ny, align 8
  %mul125 = mul nsw i64 %71, %72
  %add126 = add nsw i64 %mul124, %mul125
  %conv127 = sitofp i64 %add126 to double
  %73 = load double, double* getelementptr inbounds (%struct.embossFilter, %struct.embossFilter* @Filter, i32 0, i32 4), align 8
  %add128 = fadd double %conv127, %73
  %call = call double @sqrt(double %add128) #4
  %div129 = fdiv double %conv123, %call
  %conv130 = fptosi double %div129 to i32
  store i32 %conv130, i32* %shade, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.122, %if.then.121
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.109
  %74 = load i8*, i8** %texture.addr, align 8
  %tobool133 = icmp ne i8* %74, null
  br i1 %tobool133, label %if.then.134, label %if.else.155

if.then.134:                                      ; preds = %if.end.132
  store i32 0, i32* %b, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.143, %if.then.134
  %75 = load i32, i32* %b, align 4
  %76 = load i32, i32* %bytes, align 4
  %cmp136 = icmp slt i32 %75, %76
  br i1 %cmp136, label %for.body.138, label %for.end.145

for.body.138:                                     ; preds = %for.cond.135
  %77 = load i8*, i8** %texture.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr, i8** %texture.addr, align 8
  %78 = load i8, i8* %77, align 1
  %conv139 = zext i8 %78 to i32
  %79 = load i32, i32* %shade, align 4
  %mul140 = mul nsw i32 %conv139, %79
  %shr = ashr i32 %mul140, 8
  %conv141 = trunc i32 %shr to i8
  %80 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr142, i8** %dst.addr, align 8
  store i8 %conv141, i8* %80, align 1
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.138
  %81 = load i32, i32* %b, align 4
  %inc144 = add nsw i32 %81, 1
  store i32 %inc144, i32* %b, align 4
  br label %for.cond.135

for.end.145:                                      ; preds = %for.cond.135
  %82 = load i32, i32* %alpha.addr, align 4
  %tobool146 = icmp ne i32 %82, 0
  br i1 %tobool146, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %for.end.145
  %83 = load i32, i32* %bypp.addr, align 4
  %84 = load i32, i32* %bytes, align 4
  %add148 = add i32 %83, %84
  %idxprom149 = zext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 1
  %85 = load i8*, i8** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %85, i64 %idxprom149
  %86 = load i8, i8* %arrayidx151, align 1
  %87 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr152, i8** %dst.addr, align 8
  store i8 %86, i8* %87, align 1
  %88 = load i8*, i8** %texture.addr, align 8
  %incdec.ptr153 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr153, i8** %texture.addr, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.147, %for.end.145
  br label %if.end.173

if.else.155:                                      ; preds = %if.end.132
  store i32 0, i32* %b, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.162, %if.else.155
  %89 = load i32, i32* %b, align 4
  %90 = load i32, i32* %bytes, align 4
  %cmp157 = icmp slt i32 %89, %90
  br i1 %cmp157, label %for.body.159, label %for.end.164

for.body.159:                                     ; preds = %for.cond.156
  %91 = load i32, i32* %shade, align 4
  %conv160 = trunc i32 %91 to i8
  %92 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr161 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr161, i8** %dst.addr, align 8
  store i8 %conv160, i8* %92, align 1
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.159
  %93 = load i32, i32* %b, align 4
  %inc163 = add nsw i32 %93, 1
  store i32 %inc163, i32* %b, align 4
  br label %for.cond.156

for.end.164:                                      ; preds = %for.cond.156
  %94 = load i32, i32* %alpha.addr, align 4
  %tobool165 = icmp ne i32 %94, 0
  br i1 %tobool165, label %if.then.166, label %if.end.172

if.then.166:                                      ; preds = %for.end.164
  %95 = load i32, i32* %bypp.addr, align 4
  %96 = load i32, i32* %bytes, align 4
  %add167 = add i32 %95, %96
  %idxprom168 = zext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 1
  %97 = load i8*, i8** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %97, i64 %idxprom168
  %98 = load i8, i8* %arrayidx170, align 1
  %99 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr171, i8** %dst.addr, align 8
  store i8 %98, i8* %99, align 1
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.166, %for.end.164
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.154
  store i32 0, i32* %i, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.182, %if.end.173
  %100 = load i32, i32* %i, align 4
  %cmp175 = icmp slt i32 %100, 3
  br i1 %cmp175, label %for.body.177, label %for.end.184

for.body.177:                                     ; preds = %for.cond.174
  %101 = load i32, i32* %bypp.addr, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %102 to i64
  %arrayidx179 = getelementptr inbounds [3 x i8*], [3 x i8*]* %s, i32 0, i64 %idxprom178
  %103 = load i8*, i8** %arrayidx179, align 8
  %idx.ext180 = zext i32 %101 to i64
  %add.ptr181 = getelementptr inbounds i8, i8* %103, i64 %idx.ext180
  store i8* %add.ptr181, i8** %arrayidx179, align 8
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.177
  %104 = load i32, i32* %i, align 4
  %inc183 = add nsw i32 %104, 1
  store i32 %inc183, i32* %i, align 4
  br label %for.cond.174

for.end.184:                                      ; preds = %for.cond.174
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184
  %105 = load i32, i32* %x, align 4
  %inc186 = add nsw i32 %105, 1
  store i32 %inc186, i32* %x, align 4
  br label %for.cond

for.end.187:                                      ; preds = %for.cond
  %106 = load i8*, i8** %texture.addr, align 8
  %tobool188 = icmp ne i8* %106, null
  br i1 %tobool188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %for.end.187
  %107 = load i32, i32* %bypp.addr, align 4
  %108 = load i8*, i8** %texture.addr, align 8
  %idx.ext190 = zext i32 %107 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %108, i64 %idx.ext190
  store i8* %add.ptr191, i8** %texture.addr, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %for.end.187
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
