; ModuleID = './plug-ins/common/nl-filter.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.NLFilterValues = type { double, double, i32 }
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
@atfuncs = global [6 x i32 (i32*)*] [i32 (i32*)* @atfilt0, i32 (i32*)* @atfilt1, i32 (i32*)* @atfilt2, i32 (i32*)* @atfilt3, i32 (i32*)* @atfilt4, i32 (i32*)* @atfilt5], align 16
@V0 = global [256 x i32] zeroinitializer, align 16
@V1 = global [256 x i32] zeroinitializer, align 16
@V2 = global [256 x i32] zeroinitializer, align 16
@V3 = global [256 x i32] zeroinitializer, align 16
@M0 = global [256 x i32] zeroinitializer, align 16
@M1 = global [256 x i32] zeroinitializer, align 16
@M2 = global [256 x i32] zeroinitializer, align 16
@H0 = global [256 x i32] zeroinitializer, align 16
@H1 = global [256 x i32] zeroinitializer, align 16
@H2 = global [256 x i32] zeroinitializer, align 16
@H3 = global [256 x i32] zeroinitializer, align 16
@ALFRAC = global [2048 x i32] zeroinitializer, align 16
@AVEDIV = global [7147 x i32] zeroinitializer, align 16
@SQUARE = global [2042 x i32] zeroinitializer, align 16
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"img\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"The Image to Filter\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"drw\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"The Drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"The amount of the filter to apply\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"The filter radius\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.11 = private unnamed_addr constant [120 x i8] c"The Filter to Run, 0 - alpha trimmed mean; 1 - optimal estimation (alpha controls noise variance); 2 - edge enhancement\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"plug-in-nlfilt\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Nonlinear swiss army knife filter\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"This is the pnmnlfilt, in gimp's clothing.  See the pnmnlfilt manpage for details.\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Graeme W. Gill, gimp 0.99 plugin by Eric L. Hernes\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Graeme W. Gill, Eric L. Hernes\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"_NL Filter...\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"RGB,GRAY\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@nlfvals = internal global %struct.NLFilterValues { double 3.000000e-01, double 3.000000e-01, i32 0 }, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"nl-filter\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"NL Filter\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"gimp-nl-filter\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"_Alpha trimmed mean\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Op_timal estimation\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"_Edge enhancement\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"A_lpha:\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@noisevariance = internal global i32 0, align 4
@.str.37 = private unnamed_addr constant [19 x i8] c"unknown filter %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
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
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.NLFilterValues* @nlfvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @nlfilter_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 6
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.19

if.else:                                          ; preds = %sw.bb.9
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data12 to double*
  %11 = load double, double* %d_float, align 8
  store double %11, double* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 0), align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_float15 = bitcast %union._GimpParamData* %data14 to double*
  %13 = load double, double* %d_float15, align 8
  store double %13, double* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 1), align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %15 = load i32, i32* %d_int3218, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 2), align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.10
  br label %sw.epilog

sw.bb.20:                                         ; preds = %do.end
  %call21 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.NLFilterValues* @nlfvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.20, %if.end.19, %if.end
  %16 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %16, 3
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %sw.epilog
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @nlfilter(%struct._GimpDrawable* %17, %struct._GimpPreview* null)
  %18 = load i32, i32* %run_mode, align 4
  %cmp24 = icmp eq i32 %18, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.23
  %call26 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.NLFilterValues* @nlfvals to i8*), i32 24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %sw.epilog
  %19 = load i32, i32* %status, align 4
  store i32 %19, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %20)
  br label %return

return:                                           ; preds = %if.end.28, %if.then
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

; Function Attrs: nounwind uwtable
define internal i32 @atfilt0(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %retv = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* @M0, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 3
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @M1, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 7
  %7 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @M2, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %8
  store i32 %add8, i32* %retv, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %11, %14
  %15 = load i32*, i32** %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom17
  %17 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %add15, %17
  %18 = load i32*, i32** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 8
  %19 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add19, %20
  %21 = load i32, i32* %retv, align 4
  %add24 = add nsw i32 %21, %add23
  store i32 %add24, i32* %retv, align 4
  %22 = load i32*, i32** %p.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %25 = load i32*, i32** %p.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %25, i64 3
  %26 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom29
  %27 = load i32, i32* %arrayidx30, align 4
  %add31 = add nsw i32 %24, %27
  %28 = load i32*, i32** %p.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %28, i64 2
  %29 = load i32, i32* %arrayidx32, align 4
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom33
  %30 = load i32, i32* %arrayidx34, align 4
  %add35 = add nsw i32 %add31, %30
  %31 = load i32*, i32** %p.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom37
  %33 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %add35, %33
  %34 = load i32, i32* %retv, align 4
  %add40 = add nsw i32 %34, %add39
  store i32 %add40, i32* %retv, align 4
  %35 = load i32*, i32** %p.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom42
  %37 = load i32, i32* %arrayidx43, align 4
  %38 = load i32*, i32** %p.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %38, i64 3
  %39 = load i32, i32* %arrayidx44, align 4
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom45
  %40 = load i32, i32* %arrayidx46, align 4
  %add47 = add nsw i32 %37, %40
  %41 = load i32*, i32** %p.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %41, i64 4
  %42 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom49
  %43 = load i32, i32* %arrayidx50, align 4
  %add51 = add nsw i32 %add47, %43
  %44 = load i32*, i32** %p.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %44, i64 5
  %45 = load i32, i32* %arrayidx52, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom53
  %46 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %add51, %46
  %47 = load i32, i32* %retv, align 4
  %add56 = add nsw i32 %47, %add55
  store i32 %add56, i32* %retv, align 4
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx59, align 4
  %51 = load i32*, i32** %p.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %51, i64 4
  %52 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %52 to i64
  %arrayidx62 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom61
  %53 = load i32, i32* %arrayidx62, align 4
  %add63 = add nsw i32 %50, %53
  %54 = load i32*, i32** %p.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %54, i64 5
  %55 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %55 to i64
  %arrayidx66 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom65
  %56 = load i32, i32* %arrayidx66, align 4
  %add67 = add nsw i32 %add63, %56
  %57 = load i32*, i32** %p.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %57, i64 6
  %58 = load i32, i32* %arrayidx68, align 4
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom69
  %59 = load i32, i32* %arrayidx70, align 4
  %add71 = add nsw i32 %add67, %59
  %60 = load i32, i32* %retv, align 4
  %add72 = add nsw i32 %60, %add71
  store i32 %add72, i32* %retv, align 4
  %61 = load i32*, i32** %p.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx73, align 4
  %idxprom74 = sext i32 %62 to i64
  %arrayidx75 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom74
  %63 = load i32, i32* %arrayidx75, align 4
  %64 = load i32*, i32** %p.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %64, i64 7
  %65 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %65 to i64
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom77
  %66 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %63, %66
  %67 = load i32*, i32** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %67, i64 6
  %68 = load i32, i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %68 to i64
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom81
  %69 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %add79, %69
  %70 = load i32*, i32** %p.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %70, i64 5
  %71 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %71 to i64
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom85
  %72 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %add83, %72
  %73 = load i32, i32* %retv, align 4
  %add88 = add nsw i32 %73, %add87
  store i32 %add88, i32* %retv, align 4
  %74 = load i32*, i32** %p.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %75 to i64
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom90
  %76 = load i32, i32* %arrayidx91, align 4
  %77 = load i32*, i32** %p.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %77, i64 7
  %78 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %78 to i64
  %arrayidx94 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom93
  %79 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %76, %79
  %80 = load i32*, i32** %p.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %80, i64 8
  %81 = load i32, i32* %arrayidx96, align 4
  %idxprom97 = sext i32 %81 to i64
  %arrayidx98 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom97
  %82 = load i32, i32* %arrayidx98, align 4
  %add99 = add nsw i32 %add95, %82
  %83 = load i32*, i32** %p.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %83, i64 1
  %84 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %84 to i64
  %arrayidx102 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom101
  %85 = load i32, i32* %arrayidx102, align 4
  %add103 = add nsw i32 %add99, %85
  %86 = load i32, i32* %retv, align 4
  %add104 = add nsw i32 %86, %add103
  store i32 %add104, i32* %retv, align 4
  %87 = load i32, i32* %retv, align 4
  %shr = ashr i32 %87, 8
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define internal i32 @atfilt1(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %h0 = alloca i32, align 4
  %h1 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %h3 = alloca i32, align 4
  %h4 = alloca i32, align 4
  %h5 = alloca i32, align 4
  %h6 = alloca i32, align 4
  %big = alloca i32, align 4
  %small = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* @M0, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 3
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @M1, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 7
  %7 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @M2, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %8
  store i32 %add8, i32* %h0, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %11, %14
  %15 = load i32*, i32** %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom17
  %17 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %add15, %17
  %18 = load i32*, i32** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 8
  %19 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add19, %20
  store i32 %add23, i32* %h1, align 4
  %21 = load i32*, i32** %p.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx26, align 4
  %24 = load i32*, i32** %p.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %24, i64 3
  %25 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom28
  %26 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %23, %26
  %27 = load i32*, i32** %p.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %27, i64 2
  %28 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom32
  %29 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %add30, %29
  %30 = load i32*, i32** %p.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %30, i64 1
  %31 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom36
  %32 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %add34, %32
  store i32 %add38, i32* %h2, align 4
  %33 = load i32*, i32** %p.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx39, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %36 = load i32*, i32** %p.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom43
  %38 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %35, %38
  %39 = load i32*, i32** %p.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %39, i64 4
  %40 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom47
  %41 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %add45, %41
  %42 = load i32*, i32** %p.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %42, i64 5
  %43 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %43 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom51
  %44 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %add49, %44
  store i32 %add53, i32* %h3, align 4
  %45 = load i32*, i32** %p.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom55
  %47 = load i32, i32* %arrayidx56, align 4
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %48, i64 4
  %49 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %47, %50
  %51 = load i32*, i32** %p.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %51, i64 5
  %52 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom62
  %53 = load i32, i32* %arrayidx63, align 4
  %add64 = add nsw i32 %add60, %53
  %54 = load i32*, i32** %p.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %54, i64 6
  %55 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %55 to i64
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom66
  %56 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %add64, %56
  store i32 %add68, i32* %h4, align 4
  %57 = load i32*, i32** %p.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %58 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom70
  %59 = load i32, i32* %arrayidx71, align 4
  %60 = load i32*, i32** %p.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %60, i64 7
  %61 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %61 to i64
  %arrayidx74 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom73
  %62 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %59, %62
  %63 = load i32*, i32** %p.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %63, i64 6
  %64 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %64 to i64
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom77
  %65 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %add75, %65
  %66 = load i32*, i32** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %66, i64 5
  %67 = load i32, i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %67 to i64
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom81
  %68 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %add79, %68
  store i32 %add83, i32* %h5, align 4
  %69 = load i32*, i32** %p.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %70 to i64
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom85
  %71 = load i32, i32* %arrayidx86, align 4
  %72 = load i32*, i32** %p.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %72, i64 7
  %73 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom88
  %74 = load i32, i32* %arrayidx89, align 4
  %add90 = add nsw i32 %71, %74
  %75 = load i32*, i32** %p.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %75, i64 8
  %76 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom92
  %77 = load i32, i32* %arrayidx93, align 4
  %add94 = add nsw i32 %add90, %77
  %78 = load i32*, i32** %p.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %78, i64 1
  %79 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %79 to i64
  %arrayidx97 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom96
  %80 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %add94, %80
  store i32 %add98, i32* %h6, align 4
  %81 = load i32, i32* %h0, align 4
  store i32 %81, i32* %small, align 4
  store i32 %81, i32* %big, align 4
  %82 = load i32, i32* %h1, align 4
  %83 = load i32, i32* %h0, align 4
  %add99 = add nsw i32 %83, %82
  store i32 %add99, i32* %h0, align 4
  %84 = load i32, i32* %h1, align 4
  %85 = load i32, i32* %big, align 4
  %cmp = icmp sgt i32 %84, %85
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %86 = load i32, i32* %h1, align 4
  store i32 %86, i32* %big, align 4
  br label %if.end.102

if.else:                                          ; preds = %entry
  %87 = load i32, i32* %h1, align 4
  %88 = load i32, i32* %small, align 4
  %cmp100 = icmp slt i32 %87, %88
  br i1 %cmp100, label %if.then.101, label %if.end

if.then.101:                                      ; preds = %if.else
  %89 = load i32, i32* %h1, align 4
  store i32 %89, i32* %small, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.101, %if.else
  br label %if.end.102

if.end.102:                                       ; preds = %if.end, %if.then
  %90 = load i32, i32* %h2, align 4
  %91 = load i32, i32* %h0, align 4
  %add103 = add nsw i32 %91, %90
  store i32 %add103, i32* %h0, align 4
  %92 = load i32, i32* %h2, align 4
  %93 = load i32, i32* %big, align 4
  %cmp104 = icmp sgt i32 %92, %93
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.end.102
  %94 = load i32, i32* %h2, align 4
  store i32 %94, i32* %big, align 4
  br label %if.end.110

if.else.106:                                      ; preds = %if.end.102
  %95 = load i32, i32* %h2, align 4
  %96 = load i32, i32* %small, align 4
  %cmp107 = icmp slt i32 %95, %96
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.else.106
  %97 = load i32, i32* %h2, align 4
  store i32 %97, i32* %small, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.else.106
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.105
  %98 = load i32, i32* %h3, align 4
  %99 = load i32, i32* %h0, align 4
  %add111 = add nsw i32 %99, %98
  store i32 %add111, i32* %h0, align 4
  %100 = load i32, i32* %h3, align 4
  %101 = load i32, i32* %big, align 4
  %cmp112 = icmp sgt i32 %100, %101
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %if.end.110
  %102 = load i32, i32* %h3, align 4
  store i32 %102, i32* %big, align 4
  br label %if.end.118

if.else.114:                                      ; preds = %if.end.110
  %103 = load i32, i32* %h3, align 4
  %104 = load i32, i32* %small, align 4
  %cmp115 = icmp slt i32 %103, %104
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.else.114
  %105 = load i32, i32* %h3, align 4
  store i32 %105, i32* %small, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.else.114
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.113
  %106 = load i32, i32* %h4, align 4
  %107 = load i32, i32* %h0, align 4
  %add119 = add nsw i32 %107, %106
  store i32 %add119, i32* %h0, align 4
  %108 = load i32, i32* %h4, align 4
  %109 = load i32, i32* %big, align 4
  %cmp120 = icmp sgt i32 %108, %109
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.end.118
  %110 = load i32, i32* %h4, align 4
  store i32 %110, i32* %big, align 4
  br label %if.end.126

if.else.122:                                      ; preds = %if.end.118
  %111 = load i32, i32* %h4, align 4
  %112 = load i32, i32* %small, align 4
  %cmp123 = icmp slt i32 %111, %112
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.else.122
  %113 = load i32, i32* %h4, align 4
  store i32 %113, i32* %small, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.else.122
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.121
  %114 = load i32, i32* %h5, align 4
  %115 = load i32, i32* %h0, align 4
  %add127 = add nsw i32 %115, %114
  store i32 %add127, i32* %h0, align 4
  %116 = load i32, i32* %h5, align 4
  %117 = load i32, i32* %big, align 4
  %cmp128 = icmp sgt i32 %116, %117
  br i1 %cmp128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %if.end.126
  %118 = load i32, i32* %h5, align 4
  store i32 %118, i32* %big, align 4
  br label %if.end.134

if.else.130:                                      ; preds = %if.end.126
  %119 = load i32, i32* %h5, align 4
  %120 = load i32, i32* %small, align 4
  %cmp131 = icmp slt i32 %119, %120
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.else.130
  %121 = load i32, i32* %h5, align 4
  store i32 %121, i32* %small, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.else.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.129
  %122 = load i32, i32* %h6, align 4
  %123 = load i32, i32* %h0, align 4
  %add135 = add nsw i32 %123, %122
  store i32 %add135, i32* %h0, align 4
  %124 = load i32, i32* %h6, align 4
  %125 = load i32, i32* %big, align 4
  %cmp136 = icmp sgt i32 %124, %125
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.end.134
  %126 = load i32, i32* %h6, align 4
  store i32 %126, i32* %big, align 4
  br label %if.end.142

if.else.138:                                      ; preds = %if.end.134
  %127 = load i32, i32* %h6, align 4
  %128 = load i32, i32* %small, align 4
  %cmp139 = icmp slt i32 %127, %128
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.else.138
  %129 = load i32, i32* %h6, align 4
  store i32 %129, i32* %small, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.else.138
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.137
  %130 = load i32, i32* %h0, align 4
  %131 = load i32, i32* %big, align 4
  %132 = load i32, i32* %small, align 4
  %add143 = add nsw i32 %131, %132
  %shr = ashr i32 %add143, 8
  %idxprom144 = sext i32 %shr to i64
  %arrayidx145 = getelementptr inbounds [2048 x i32], [2048 x i32]* @ALFRAC, i32 0, i64 %idxprom144
  %133 = load i32, i32* %arrayidx145, align 4
  %sub = sub nsw i32 %130, %133
  %shr146 = ashr i32 %sub, 8
  ret i32 %shr146
}

; Function Attrs: nounwind uwtable
define internal i32 @atfilt2(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %h0 = alloca i32, align 4
  %h1 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %h3 = alloca i32, align 4
  %h4 = alloca i32, align 4
  %h5 = alloca i32, align 4
  %h6 = alloca i32, align 4
  %big0 = alloca i32, align 4
  %big1 = alloca i32, align 4
  %small0 = alloca i32, align 4
  %small1 = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* @M0, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 3
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @M1, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 7
  %7 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @M2, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %8
  store i32 %add8, i32* %h0, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %11, %14
  %15 = load i32*, i32** %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom17
  %17 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %add15, %17
  %18 = load i32*, i32** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 8
  %19 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add19, %20
  store i32 %add23, i32* %h1, align 4
  %21 = load i32*, i32** %p.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx26, align 4
  %24 = load i32*, i32** %p.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %24, i64 3
  %25 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom28
  %26 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %23, %26
  %27 = load i32*, i32** %p.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %27, i64 2
  %28 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom32
  %29 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %add30, %29
  %30 = load i32*, i32** %p.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %30, i64 1
  %31 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom36
  %32 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %add34, %32
  store i32 %add38, i32* %h2, align 4
  %33 = load i32*, i32** %p.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx39, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %36 = load i32*, i32** %p.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom43
  %38 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %35, %38
  %39 = load i32*, i32** %p.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %39, i64 4
  %40 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom47
  %41 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %add45, %41
  %42 = load i32*, i32** %p.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %42, i64 5
  %43 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %43 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom51
  %44 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %add49, %44
  store i32 %add53, i32* %h3, align 4
  %45 = load i32*, i32** %p.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom55
  %47 = load i32, i32* %arrayidx56, align 4
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %48, i64 4
  %49 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %47, %50
  %51 = load i32*, i32** %p.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %51, i64 5
  %52 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom62
  %53 = load i32, i32* %arrayidx63, align 4
  %add64 = add nsw i32 %add60, %53
  %54 = load i32*, i32** %p.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %54, i64 6
  %55 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %55 to i64
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom66
  %56 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %add64, %56
  store i32 %add68, i32* %h4, align 4
  %57 = load i32*, i32** %p.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %58 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom70
  %59 = load i32, i32* %arrayidx71, align 4
  %60 = load i32*, i32** %p.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %60, i64 7
  %61 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %61 to i64
  %arrayidx74 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom73
  %62 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %59, %62
  %63 = load i32*, i32** %p.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %63, i64 6
  %64 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %64 to i64
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom77
  %65 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %add75, %65
  %66 = load i32*, i32** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %66, i64 5
  %67 = load i32, i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %67 to i64
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom81
  %68 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %add79, %68
  store i32 %add83, i32* %h5, align 4
  %69 = load i32*, i32** %p.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %70 to i64
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom85
  %71 = load i32, i32* %arrayidx86, align 4
  %72 = load i32*, i32** %p.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %72, i64 7
  %73 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom88
  %74 = load i32, i32* %arrayidx89, align 4
  %add90 = add nsw i32 %71, %74
  %75 = load i32*, i32** %p.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %75, i64 8
  %76 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom92
  %77 = load i32, i32* %arrayidx93, align 4
  %add94 = add nsw i32 %add90, %77
  %78 = load i32*, i32** %p.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %78, i64 1
  %79 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %79 to i64
  %arrayidx97 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom96
  %80 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %add94, %80
  store i32 %add98, i32* %h6, align 4
  %81 = load i32, i32* %h0, align 4
  store i32 %81, i32* %small0, align 4
  store i32 %81, i32* %big0, align 4
  store i32 2147483647, i32* %small1, align 4
  store i32 0, i32* %big1, align 4
  %82 = load i32, i32* %h1, align 4
  %83 = load i32, i32* %h0, align 4
  %add99 = add nsw i32 %83, %82
  store i32 %add99, i32* %h0, align 4
  %84 = load i32, i32* %h1, align 4
  %85 = load i32, i32* %big1, align 4
  %cmp = icmp sgt i32 %84, %85
  br i1 %cmp, label %if.then, label %if.end.102

if.then:                                          ; preds = %entry
  %86 = load i32, i32* %h1, align 4
  %87 = load i32, i32* %big0, align 4
  %cmp100 = icmp sgt i32 %86, %87
  br i1 %cmp100, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %if.then
  %88 = load i32, i32* %big0, align 4
  store i32 %88, i32* %big1, align 4
  %89 = load i32, i32* %h1, align 4
  store i32 %89, i32* %big0, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %90 = load i32, i32* %h1, align 4
  store i32 %90, i32* %big1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.101
  br label %if.end.102

if.end.102:                                       ; preds = %if.end, %entry
  %91 = load i32, i32* %h1, align 4
  %92 = load i32, i32* %small1, align 4
  %cmp103 = icmp slt i32 %91, %92
  br i1 %cmp103, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.end.102
  %93 = load i32, i32* %h1, align 4
  %94 = load i32, i32* %small0, align 4
  %cmp105 = icmp slt i32 %93, %94
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %if.then.104
  %95 = load i32, i32* %small0, align 4
  store i32 %95, i32* %small1, align 4
  %96 = load i32, i32* %h1, align 4
  store i32 %96, i32* %small0, align 4
  br label %if.end.108

if.else.107:                                      ; preds = %if.then.104
  %97 = load i32, i32* %h1, align 4
  store i32 %97, i32* %small1, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.then.106
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.102
  %98 = load i32, i32* %h2, align 4
  %99 = load i32, i32* %h0, align 4
  %add110 = add nsw i32 %99, %98
  store i32 %add110, i32* %h0, align 4
  %100 = load i32, i32* %h2, align 4
  %101 = load i32, i32* %big1, align 4
  %cmp111 = icmp sgt i32 %100, %101
  br i1 %cmp111, label %if.then.112, label %if.end.117

if.then.112:                                      ; preds = %if.end.109
  %102 = load i32, i32* %h2, align 4
  %103 = load i32, i32* %big0, align 4
  %cmp113 = icmp sgt i32 %102, %103
  br i1 %cmp113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %if.then.112
  %104 = load i32, i32* %big0, align 4
  store i32 %104, i32* %big1, align 4
  %105 = load i32, i32* %h2, align 4
  store i32 %105, i32* %big0, align 4
  br label %if.end.116

if.else.115:                                      ; preds = %if.then.112
  %106 = load i32, i32* %h2, align 4
  store i32 %106, i32* %big1, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.109
  %107 = load i32, i32* %h2, align 4
  %108 = load i32, i32* %small1, align 4
  %cmp118 = icmp slt i32 %107, %108
  br i1 %cmp118, label %if.then.119, label %if.end.124

if.then.119:                                      ; preds = %if.end.117
  %109 = load i32, i32* %h2, align 4
  %110 = load i32, i32* %small0, align 4
  %cmp120 = icmp slt i32 %109, %110
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.then.119
  %111 = load i32, i32* %small0, align 4
  store i32 %111, i32* %small1, align 4
  %112 = load i32, i32* %h2, align 4
  store i32 %112, i32* %small0, align 4
  br label %if.end.123

if.else.122:                                      ; preds = %if.then.119
  %113 = load i32, i32* %h2, align 4
  store i32 %113, i32* %small1, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.122, %if.then.121
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.117
  %114 = load i32, i32* %h3, align 4
  %115 = load i32, i32* %h0, align 4
  %add125 = add nsw i32 %115, %114
  store i32 %add125, i32* %h0, align 4
  %116 = load i32, i32* %h3, align 4
  %117 = load i32, i32* %big1, align 4
  %cmp126 = icmp sgt i32 %116, %117
  br i1 %cmp126, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.end.124
  %118 = load i32, i32* %h3, align 4
  %119 = load i32, i32* %big0, align 4
  %cmp128 = icmp sgt i32 %118, %119
  br i1 %cmp128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %if.then.127
  %120 = load i32, i32* %big0, align 4
  store i32 %120, i32* %big1, align 4
  %121 = load i32, i32* %h3, align 4
  store i32 %121, i32* %big0, align 4
  br label %if.end.131

if.else.130:                                      ; preds = %if.then.127
  %122 = load i32, i32* %h3, align 4
  store i32 %122, i32* %big1, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.130, %if.then.129
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.124
  %123 = load i32, i32* %h3, align 4
  %124 = load i32, i32* %small1, align 4
  %cmp133 = icmp slt i32 %123, %124
  br i1 %cmp133, label %if.then.134, label %if.end.139

if.then.134:                                      ; preds = %if.end.132
  %125 = load i32, i32* %h3, align 4
  %126 = load i32, i32* %small0, align 4
  %cmp135 = icmp slt i32 %125, %126
  br i1 %cmp135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.then.134
  %127 = load i32, i32* %small0, align 4
  store i32 %127, i32* %small1, align 4
  %128 = load i32, i32* %h3, align 4
  store i32 %128, i32* %small0, align 4
  br label %if.end.138

if.else.137:                                      ; preds = %if.then.134
  %129 = load i32, i32* %h3, align 4
  store i32 %129, i32* %small1, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.137, %if.then.136
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.132
  %130 = load i32, i32* %h4, align 4
  %131 = load i32, i32* %h0, align 4
  %add140 = add nsw i32 %131, %130
  store i32 %add140, i32* %h0, align 4
  %132 = load i32, i32* %h4, align 4
  %133 = load i32, i32* %big1, align 4
  %cmp141 = icmp sgt i32 %132, %133
  br i1 %cmp141, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %if.end.139
  %134 = load i32, i32* %h4, align 4
  %135 = load i32, i32* %big0, align 4
  %cmp143 = icmp sgt i32 %134, %135
  br i1 %cmp143, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %if.then.142
  %136 = load i32, i32* %big0, align 4
  store i32 %136, i32* %big1, align 4
  %137 = load i32, i32* %h4, align 4
  store i32 %137, i32* %big0, align 4
  br label %if.end.146

if.else.145:                                      ; preds = %if.then.142
  %138 = load i32, i32* %h4, align 4
  store i32 %138, i32* %big1, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.144
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.139
  %139 = load i32, i32* %h4, align 4
  %140 = load i32, i32* %small1, align 4
  %cmp148 = icmp slt i32 %139, %140
  br i1 %cmp148, label %if.then.149, label %if.end.154

if.then.149:                                      ; preds = %if.end.147
  %141 = load i32, i32* %h4, align 4
  %142 = load i32, i32* %small0, align 4
  %cmp150 = icmp slt i32 %141, %142
  br i1 %cmp150, label %if.then.151, label %if.else.152

if.then.151:                                      ; preds = %if.then.149
  %143 = load i32, i32* %small0, align 4
  store i32 %143, i32* %small1, align 4
  %144 = load i32, i32* %h4, align 4
  store i32 %144, i32* %small0, align 4
  br label %if.end.153

if.else.152:                                      ; preds = %if.then.149
  %145 = load i32, i32* %h4, align 4
  store i32 %145, i32* %small1, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.152, %if.then.151
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.147
  %146 = load i32, i32* %h5, align 4
  %147 = load i32, i32* %h0, align 4
  %add155 = add nsw i32 %147, %146
  store i32 %add155, i32* %h0, align 4
  %148 = load i32, i32* %h5, align 4
  %149 = load i32, i32* %big1, align 4
  %cmp156 = icmp sgt i32 %148, %149
  br i1 %cmp156, label %if.then.157, label %if.end.162

if.then.157:                                      ; preds = %if.end.154
  %150 = load i32, i32* %h5, align 4
  %151 = load i32, i32* %big0, align 4
  %cmp158 = icmp sgt i32 %150, %151
  br i1 %cmp158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %if.then.157
  %152 = load i32, i32* %big0, align 4
  store i32 %152, i32* %big1, align 4
  %153 = load i32, i32* %h5, align 4
  store i32 %153, i32* %big0, align 4
  br label %if.end.161

if.else.160:                                      ; preds = %if.then.157
  %154 = load i32, i32* %h5, align 4
  store i32 %154, i32* %big1, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.160, %if.then.159
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.154
  %155 = load i32, i32* %h5, align 4
  %156 = load i32, i32* %small1, align 4
  %cmp163 = icmp slt i32 %155, %156
  br i1 %cmp163, label %if.then.164, label %if.end.169

if.then.164:                                      ; preds = %if.end.162
  %157 = load i32, i32* %h5, align 4
  %158 = load i32, i32* %small0, align 4
  %cmp165 = icmp slt i32 %157, %158
  br i1 %cmp165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %if.then.164
  %159 = load i32, i32* %small0, align 4
  store i32 %159, i32* %small1, align 4
  %160 = load i32, i32* %h5, align 4
  store i32 %160, i32* %small0, align 4
  br label %if.end.168

if.else.167:                                      ; preds = %if.then.164
  %161 = load i32, i32* %h5, align 4
  store i32 %161, i32* %small1, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.167, %if.then.166
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.162
  %162 = load i32, i32* %h6, align 4
  %163 = load i32, i32* %h0, align 4
  %add170 = add nsw i32 %163, %162
  store i32 %add170, i32* %h0, align 4
  %164 = load i32, i32* %h6, align 4
  %165 = load i32, i32* %big1, align 4
  %cmp171 = icmp sgt i32 %164, %165
  br i1 %cmp171, label %if.then.172, label %if.end.177

if.then.172:                                      ; preds = %if.end.169
  %166 = load i32, i32* %h6, align 4
  %167 = load i32, i32* %big0, align 4
  %cmp173 = icmp sgt i32 %166, %167
  br i1 %cmp173, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %if.then.172
  %168 = load i32, i32* %big0, align 4
  store i32 %168, i32* %big1, align 4
  %169 = load i32, i32* %h6, align 4
  store i32 %169, i32* %big0, align 4
  br label %if.end.176

if.else.175:                                      ; preds = %if.then.172
  %170 = load i32, i32* %h6, align 4
  store i32 %170, i32* %big1, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.175, %if.then.174
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.169
  %171 = load i32, i32* %h6, align 4
  %172 = load i32, i32* %small1, align 4
  %cmp178 = icmp slt i32 %171, %172
  br i1 %cmp178, label %if.then.179, label %if.end.184

if.then.179:                                      ; preds = %if.end.177
  %173 = load i32, i32* %h6, align 4
  %174 = load i32, i32* %small0, align 4
  %cmp180 = icmp slt i32 %173, %174
  br i1 %cmp180, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %if.then.179
  %175 = load i32, i32* %small0, align 4
  store i32 %175, i32* %small1, align 4
  %176 = load i32, i32* %h6, align 4
  store i32 %176, i32* %small0, align 4
  br label %if.end.183

if.else.182:                                      ; preds = %if.then.179
  %177 = load i32, i32* %h6, align 4
  store i32 %177, i32* %small1, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.182, %if.then.181
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.177
  %178 = load i32, i32* %h0, align 4
  %179 = load i32, i32* %big0, align 4
  %sub = sub nsw i32 %178, %179
  %180 = load i32, i32* %small0, align 4
  %sub185 = sub nsw i32 %sub, %180
  %181 = load i32, i32* %big1, align 4
  %182 = load i32, i32* %small1, align 4
  %add186 = add nsw i32 %181, %182
  %shr = ashr i32 %add186, 8
  %idxprom187 = sext i32 %shr to i64
  %arrayidx188 = getelementptr inbounds [2048 x i32], [2048 x i32]* @ALFRAC, i32 0, i64 %idxprom187
  %183 = load i32, i32* %arrayidx188, align 4
  %sub189 = sub nsw i32 %sub185, %183
  %shr190 = ashr i32 %sub189, 8
  ret i32 %shr190
}

; Function Attrs: nounwind uwtable
define internal i32 @atfilt3(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %h0 = alloca i32, align 4
  %h1 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %h3 = alloca i32, align 4
  %h4 = alloca i32, align 4
  %h5 = alloca i32, align 4
  %h6 = alloca i32, align 4
  %big0 = alloca i32, align 4
  %big1 = alloca i32, align 4
  %big2 = alloca i32, align 4
  %small0 = alloca i32, align 4
  %small1 = alloca i32, align 4
  %small2 = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* @M0, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 3
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @M1, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 7
  %7 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @M2, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %8
  store i32 %add8, i32* %h0, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %11, %14
  %15 = load i32*, i32** %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom17
  %17 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %add15, %17
  %18 = load i32*, i32** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 8
  %19 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add19, %20
  store i32 %add23, i32* %h1, align 4
  %21 = load i32*, i32** %p.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx26, align 4
  %24 = load i32*, i32** %p.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %24, i64 3
  %25 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom28
  %26 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %23, %26
  %27 = load i32*, i32** %p.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %27, i64 2
  %28 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom32
  %29 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %add30, %29
  %30 = load i32*, i32** %p.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %30, i64 1
  %31 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom36
  %32 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %add34, %32
  store i32 %add38, i32* %h2, align 4
  %33 = load i32*, i32** %p.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx39, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %36 = load i32*, i32** %p.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom43
  %38 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %35, %38
  %39 = load i32*, i32** %p.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %39, i64 4
  %40 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom47
  %41 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %add45, %41
  %42 = load i32*, i32** %p.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %42, i64 5
  %43 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %43 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom51
  %44 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %add49, %44
  store i32 %add53, i32* %h3, align 4
  %45 = load i32*, i32** %p.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom55
  %47 = load i32, i32* %arrayidx56, align 4
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %48, i64 4
  %49 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %47, %50
  %51 = load i32*, i32** %p.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %51, i64 5
  %52 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom62
  %53 = load i32, i32* %arrayidx63, align 4
  %add64 = add nsw i32 %add60, %53
  %54 = load i32*, i32** %p.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %54, i64 6
  %55 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %55 to i64
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom66
  %56 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %add64, %56
  store i32 %add68, i32* %h4, align 4
  %57 = load i32*, i32** %p.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %58 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom70
  %59 = load i32, i32* %arrayidx71, align 4
  %60 = load i32*, i32** %p.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %60, i64 7
  %61 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %61 to i64
  %arrayidx74 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom73
  %62 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %59, %62
  %63 = load i32*, i32** %p.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %63, i64 6
  %64 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %64 to i64
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom77
  %65 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %add75, %65
  %66 = load i32*, i32** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %66, i64 5
  %67 = load i32, i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %67 to i64
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom81
  %68 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %add79, %68
  store i32 %add83, i32* %h5, align 4
  %69 = load i32*, i32** %p.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %70 to i64
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom85
  %71 = load i32, i32* %arrayidx86, align 4
  %72 = load i32*, i32** %p.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %72, i64 7
  %73 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom88
  %74 = load i32, i32* %arrayidx89, align 4
  %add90 = add nsw i32 %71, %74
  %75 = load i32*, i32** %p.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %75, i64 8
  %76 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom92
  %77 = load i32, i32* %arrayidx93, align 4
  %add94 = add nsw i32 %add90, %77
  %78 = load i32*, i32** %p.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %78, i64 1
  %79 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %79 to i64
  %arrayidx97 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom96
  %80 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %add94, %80
  store i32 %add98, i32* %h6, align 4
  %81 = load i32, i32* %h0, align 4
  store i32 %81, i32* %small0, align 4
  store i32 %81, i32* %big0, align 4
  store i32 2147483647, i32* %small2, align 4
  store i32 2147483647, i32* %small1, align 4
  store i32 0, i32* %big2, align 4
  store i32 0, i32* %big1, align 4
  %82 = load i32, i32* %h1, align 4
  %83 = load i32, i32* %h0, align 4
  %add99 = add nsw i32 %83, %82
  store i32 %add99, i32* %h0, align 4
  %84 = load i32, i32* %h1, align 4
  %85 = load i32, i32* %big2, align 4
  %cmp = icmp sgt i32 %84, %85
  br i1 %cmp, label %if.then, label %if.end.106

if.then:                                          ; preds = %entry
  %86 = load i32, i32* %h1, align 4
  %87 = load i32, i32* %big1, align 4
  %cmp100 = icmp sgt i32 %86, %87
  br i1 %cmp100, label %if.then.101, label %if.else.104

if.then.101:                                      ; preds = %if.then
  %88 = load i32, i32* %h1, align 4
  %89 = load i32, i32* %big0, align 4
  %cmp102 = icmp sgt i32 %88, %89
  br i1 %cmp102, label %if.then.103, label %if.else

if.then.103:                                      ; preds = %if.then.101
  %90 = load i32, i32* %big1, align 4
  store i32 %90, i32* %big2, align 4
  %91 = load i32, i32* %big0, align 4
  store i32 %91, i32* %big1, align 4
  %92 = load i32, i32* %h1, align 4
  store i32 %92, i32* %big0, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.101
  %93 = load i32, i32* %big1, align 4
  store i32 %93, i32* %big2, align 4
  %94 = load i32, i32* %h1, align 4
  store i32 %94, i32* %big1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.103
  br label %if.end.105

if.else.104:                                      ; preds = %if.then
  %95 = load i32, i32* %h1, align 4
  store i32 %95, i32* %big2, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.104, %if.end
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %entry
  %96 = load i32, i32* %h1, align 4
  %97 = load i32, i32* %small2, align 4
  %cmp107 = icmp slt i32 %96, %97
  br i1 %cmp107, label %if.then.108, label %if.end.117

if.then.108:                                      ; preds = %if.end.106
  %98 = load i32, i32* %h1, align 4
  %99 = load i32, i32* %small1, align 4
  %cmp109 = icmp slt i32 %98, %99
  br i1 %cmp109, label %if.then.110, label %if.else.115

if.then.110:                                      ; preds = %if.then.108
  %100 = load i32, i32* %h1, align 4
  %101 = load i32, i32* %small0, align 4
  %cmp111 = icmp slt i32 %100, %101
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %if.then.110
  %102 = load i32, i32* %small1, align 4
  store i32 %102, i32* %small2, align 4
  %103 = load i32, i32* %small0, align 4
  store i32 %103, i32* %small1, align 4
  %104 = load i32, i32* %h1, align 4
  store i32 %104, i32* %small0, align 4
  br label %if.end.114

if.else.113:                                      ; preds = %if.then.110
  %105 = load i32, i32* %small1, align 4
  store i32 %105, i32* %small2, align 4
  %106 = load i32, i32* %h1, align 4
  store i32 %106, i32* %small1, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.113, %if.then.112
  br label %if.end.116

if.else.115:                                      ; preds = %if.then.108
  %107 = load i32, i32* %h1, align 4
  store i32 %107, i32* %small2, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.end.114
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.106
  %108 = load i32, i32* %h2, align 4
  %109 = load i32, i32* %h0, align 4
  %add118 = add nsw i32 %109, %108
  store i32 %add118, i32* %h0, align 4
  %110 = load i32, i32* %h2, align 4
  %111 = load i32, i32* %big2, align 4
  %cmp119 = icmp sgt i32 %110, %111
  br i1 %cmp119, label %if.then.120, label %if.end.129

if.then.120:                                      ; preds = %if.end.117
  %112 = load i32, i32* %h2, align 4
  %113 = load i32, i32* %big1, align 4
  %cmp121 = icmp sgt i32 %112, %113
  br i1 %cmp121, label %if.then.122, label %if.else.127

if.then.122:                                      ; preds = %if.then.120
  %114 = load i32, i32* %h2, align 4
  %115 = load i32, i32* %big0, align 4
  %cmp123 = icmp sgt i32 %114, %115
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %if.then.122
  %116 = load i32, i32* %big1, align 4
  store i32 %116, i32* %big2, align 4
  %117 = load i32, i32* %big0, align 4
  store i32 %117, i32* %big1, align 4
  %118 = load i32, i32* %h2, align 4
  store i32 %118, i32* %big0, align 4
  br label %if.end.126

if.else.125:                                      ; preds = %if.then.122
  %119 = load i32, i32* %big1, align 4
  store i32 %119, i32* %big2, align 4
  %120 = load i32, i32* %h2, align 4
  store i32 %120, i32* %big1, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.125, %if.then.124
  br label %if.end.128

if.else.127:                                      ; preds = %if.then.120
  %121 = load i32, i32* %h2, align 4
  store i32 %121, i32* %big2, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.end.126
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.117
  %122 = load i32, i32* %h2, align 4
  %123 = load i32, i32* %small2, align 4
  %cmp130 = icmp slt i32 %122, %123
  br i1 %cmp130, label %if.then.131, label %if.end.140

if.then.131:                                      ; preds = %if.end.129
  %124 = load i32, i32* %h2, align 4
  %125 = load i32, i32* %small1, align 4
  %cmp132 = icmp slt i32 %124, %125
  br i1 %cmp132, label %if.then.133, label %if.else.138

if.then.133:                                      ; preds = %if.then.131
  %126 = load i32, i32* %h2, align 4
  %127 = load i32, i32* %small0, align 4
  %cmp134 = icmp slt i32 %126, %127
  br i1 %cmp134, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %if.then.133
  %128 = load i32, i32* %small1, align 4
  store i32 %128, i32* %small2, align 4
  %129 = load i32, i32* %small0, align 4
  store i32 %129, i32* %small1, align 4
  %130 = load i32, i32* %h2, align 4
  store i32 %130, i32* %small0, align 4
  br label %if.end.137

if.else.136:                                      ; preds = %if.then.133
  %131 = load i32, i32* %small1, align 4
  store i32 %131, i32* %small2, align 4
  %132 = load i32, i32* %h2, align 4
  store i32 %132, i32* %small1, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.136, %if.then.135
  br label %if.end.139

if.else.138:                                      ; preds = %if.then.131
  %133 = load i32, i32* %h2, align 4
  store i32 %133, i32* %small2, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.138, %if.end.137
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.129
  %134 = load i32, i32* %h3, align 4
  %135 = load i32, i32* %h0, align 4
  %add141 = add nsw i32 %135, %134
  store i32 %add141, i32* %h0, align 4
  %136 = load i32, i32* %h3, align 4
  %137 = load i32, i32* %big2, align 4
  %cmp142 = icmp sgt i32 %136, %137
  br i1 %cmp142, label %if.then.143, label %if.end.152

if.then.143:                                      ; preds = %if.end.140
  %138 = load i32, i32* %h3, align 4
  %139 = load i32, i32* %big1, align 4
  %cmp144 = icmp sgt i32 %138, %139
  br i1 %cmp144, label %if.then.145, label %if.else.150

if.then.145:                                      ; preds = %if.then.143
  %140 = load i32, i32* %h3, align 4
  %141 = load i32, i32* %big0, align 4
  %cmp146 = icmp sgt i32 %140, %141
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %if.then.145
  %142 = load i32, i32* %big1, align 4
  store i32 %142, i32* %big2, align 4
  %143 = load i32, i32* %big0, align 4
  store i32 %143, i32* %big1, align 4
  %144 = load i32, i32* %h3, align 4
  store i32 %144, i32* %big0, align 4
  br label %if.end.149

if.else.148:                                      ; preds = %if.then.145
  %145 = load i32, i32* %big1, align 4
  store i32 %145, i32* %big2, align 4
  %146 = load i32, i32* %h3, align 4
  store i32 %146, i32* %big1, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.then.147
  br label %if.end.151

if.else.150:                                      ; preds = %if.then.143
  %147 = load i32, i32* %h3, align 4
  store i32 %147, i32* %big2, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.150, %if.end.149
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.140
  %148 = load i32, i32* %h3, align 4
  %149 = load i32, i32* %small2, align 4
  %cmp153 = icmp slt i32 %148, %149
  br i1 %cmp153, label %if.then.154, label %if.end.163

if.then.154:                                      ; preds = %if.end.152
  %150 = load i32, i32* %h3, align 4
  %151 = load i32, i32* %small1, align 4
  %cmp155 = icmp slt i32 %150, %151
  br i1 %cmp155, label %if.then.156, label %if.else.161

if.then.156:                                      ; preds = %if.then.154
  %152 = load i32, i32* %h3, align 4
  %153 = load i32, i32* %small0, align 4
  %cmp157 = icmp slt i32 %152, %153
  br i1 %cmp157, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %if.then.156
  %154 = load i32, i32* %small1, align 4
  store i32 %154, i32* %small2, align 4
  %155 = load i32, i32* %small0, align 4
  store i32 %155, i32* %small1, align 4
  %156 = load i32, i32* %h3, align 4
  store i32 %156, i32* %small0, align 4
  br label %if.end.160

if.else.159:                                      ; preds = %if.then.156
  %157 = load i32, i32* %small1, align 4
  store i32 %157, i32* %small2, align 4
  %158 = load i32, i32* %h3, align 4
  store i32 %158, i32* %small1, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.159, %if.then.158
  br label %if.end.162

if.else.161:                                      ; preds = %if.then.154
  %159 = load i32, i32* %h3, align 4
  store i32 %159, i32* %small2, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.161, %if.end.160
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.152
  %160 = load i32, i32* %h4, align 4
  %161 = load i32, i32* %h0, align 4
  %add164 = add nsw i32 %161, %160
  store i32 %add164, i32* %h0, align 4
  %162 = load i32, i32* %h4, align 4
  %163 = load i32, i32* %big2, align 4
  %cmp165 = icmp sgt i32 %162, %163
  br i1 %cmp165, label %if.then.166, label %if.end.175

if.then.166:                                      ; preds = %if.end.163
  %164 = load i32, i32* %h4, align 4
  %165 = load i32, i32* %big1, align 4
  %cmp167 = icmp sgt i32 %164, %165
  br i1 %cmp167, label %if.then.168, label %if.else.173

if.then.168:                                      ; preds = %if.then.166
  %166 = load i32, i32* %h4, align 4
  %167 = load i32, i32* %big0, align 4
  %cmp169 = icmp sgt i32 %166, %167
  br i1 %cmp169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.then.168
  %168 = load i32, i32* %big1, align 4
  store i32 %168, i32* %big2, align 4
  %169 = load i32, i32* %big0, align 4
  store i32 %169, i32* %big1, align 4
  %170 = load i32, i32* %h4, align 4
  store i32 %170, i32* %big0, align 4
  br label %if.end.172

if.else.171:                                      ; preds = %if.then.168
  %171 = load i32, i32* %big1, align 4
  store i32 %171, i32* %big2, align 4
  %172 = load i32, i32* %h4, align 4
  store i32 %172, i32* %big1, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.171, %if.then.170
  br label %if.end.174

if.else.173:                                      ; preds = %if.then.166
  %173 = load i32, i32* %h4, align 4
  store i32 %173, i32* %big2, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.173, %if.end.172
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.163
  %174 = load i32, i32* %h4, align 4
  %175 = load i32, i32* %small2, align 4
  %cmp176 = icmp slt i32 %174, %175
  br i1 %cmp176, label %if.then.177, label %if.end.186

if.then.177:                                      ; preds = %if.end.175
  %176 = load i32, i32* %h4, align 4
  %177 = load i32, i32* %small1, align 4
  %cmp178 = icmp slt i32 %176, %177
  br i1 %cmp178, label %if.then.179, label %if.else.184

if.then.179:                                      ; preds = %if.then.177
  %178 = load i32, i32* %h4, align 4
  %179 = load i32, i32* %small0, align 4
  %cmp180 = icmp slt i32 %178, %179
  br i1 %cmp180, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %if.then.179
  %180 = load i32, i32* %small1, align 4
  store i32 %180, i32* %small2, align 4
  %181 = load i32, i32* %small0, align 4
  store i32 %181, i32* %small1, align 4
  %182 = load i32, i32* %h4, align 4
  store i32 %182, i32* %small0, align 4
  br label %if.end.183

if.else.182:                                      ; preds = %if.then.179
  %183 = load i32, i32* %small1, align 4
  store i32 %183, i32* %small2, align 4
  %184 = load i32, i32* %h4, align 4
  store i32 %184, i32* %small1, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.182, %if.then.181
  br label %if.end.185

if.else.184:                                      ; preds = %if.then.177
  %185 = load i32, i32* %h4, align 4
  store i32 %185, i32* %small2, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.end.183
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.175
  %186 = load i32, i32* %h5, align 4
  %187 = load i32, i32* %h0, align 4
  %add187 = add nsw i32 %187, %186
  store i32 %add187, i32* %h0, align 4
  %188 = load i32, i32* %h5, align 4
  %189 = load i32, i32* %big2, align 4
  %cmp188 = icmp sgt i32 %188, %189
  br i1 %cmp188, label %if.then.189, label %if.end.198

if.then.189:                                      ; preds = %if.end.186
  %190 = load i32, i32* %h5, align 4
  %191 = load i32, i32* %big1, align 4
  %cmp190 = icmp sgt i32 %190, %191
  br i1 %cmp190, label %if.then.191, label %if.else.196

if.then.191:                                      ; preds = %if.then.189
  %192 = load i32, i32* %h5, align 4
  %193 = load i32, i32* %big0, align 4
  %cmp192 = icmp sgt i32 %192, %193
  br i1 %cmp192, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %if.then.191
  %194 = load i32, i32* %big1, align 4
  store i32 %194, i32* %big2, align 4
  %195 = load i32, i32* %big0, align 4
  store i32 %195, i32* %big1, align 4
  %196 = load i32, i32* %h5, align 4
  store i32 %196, i32* %big0, align 4
  br label %if.end.195

if.else.194:                                      ; preds = %if.then.191
  %197 = load i32, i32* %big1, align 4
  store i32 %197, i32* %big2, align 4
  %198 = load i32, i32* %h5, align 4
  store i32 %198, i32* %big1, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.194, %if.then.193
  br label %if.end.197

if.else.196:                                      ; preds = %if.then.189
  %199 = load i32, i32* %h5, align 4
  store i32 %199, i32* %big2, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.196, %if.end.195
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.186
  %200 = load i32, i32* %h5, align 4
  %201 = load i32, i32* %small2, align 4
  %cmp199 = icmp slt i32 %200, %201
  br i1 %cmp199, label %if.then.200, label %if.end.209

if.then.200:                                      ; preds = %if.end.198
  %202 = load i32, i32* %h5, align 4
  %203 = load i32, i32* %small1, align 4
  %cmp201 = icmp slt i32 %202, %203
  br i1 %cmp201, label %if.then.202, label %if.else.207

if.then.202:                                      ; preds = %if.then.200
  %204 = load i32, i32* %h5, align 4
  %205 = load i32, i32* %small0, align 4
  %cmp203 = icmp slt i32 %204, %205
  br i1 %cmp203, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %if.then.202
  %206 = load i32, i32* %small1, align 4
  store i32 %206, i32* %small2, align 4
  %207 = load i32, i32* %small0, align 4
  store i32 %207, i32* %small1, align 4
  %208 = load i32, i32* %h5, align 4
  store i32 %208, i32* %small0, align 4
  br label %if.end.206

if.else.205:                                      ; preds = %if.then.202
  %209 = load i32, i32* %small1, align 4
  store i32 %209, i32* %small2, align 4
  %210 = load i32, i32* %h5, align 4
  store i32 %210, i32* %small1, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.205, %if.then.204
  br label %if.end.208

if.else.207:                                      ; preds = %if.then.200
  %211 = load i32, i32* %h5, align 4
  store i32 %211, i32* %small2, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.207, %if.end.206
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.198
  %212 = load i32, i32* %h6, align 4
  %213 = load i32, i32* %h0, align 4
  %add210 = add nsw i32 %213, %212
  store i32 %add210, i32* %h0, align 4
  %214 = load i32, i32* %h6, align 4
  %215 = load i32, i32* %big2, align 4
  %cmp211 = icmp sgt i32 %214, %215
  br i1 %cmp211, label %if.then.212, label %if.end.221

if.then.212:                                      ; preds = %if.end.209
  %216 = load i32, i32* %h6, align 4
  %217 = load i32, i32* %big1, align 4
  %cmp213 = icmp sgt i32 %216, %217
  br i1 %cmp213, label %if.then.214, label %if.else.219

if.then.214:                                      ; preds = %if.then.212
  %218 = load i32, i32* %h6, align 4
  %219 = load i32, i32* %big0, align 4
  %cmp215 = icmp sgt i32 %218, %219
  br i1 %cmp215, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %if.then.214
  %220 = load i32, i32* %big1, align 4
  store i32 %220, i32* %big2, align 4
  %221 = load i32, i32* %big0, align 4
  store i32 %221, i32* %big1, align 4
  %222 = load i32, i32* %h6, align 4
  store i32 %222, i32* %big0, align 4
  br label %if.end.218

if.else.217:                                      ; preds = %if.then.214
  %223 = load i32, i32* %big1, align 4
  store i32 %223, i32* %big2, align 4
  %224 = load i32, i32* %h6, align 4
  store i32 %224, i32* %big1, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.217, %if.then.216
  br label %if.end.220

if.else.219:                                      ; preds = %if.then.212
  %225 = load i32, i32* %h6, align 4
  store i32 %225, i32* %big2, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.219, %if.end.218
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.209
  %226 = load i32, i32* %h6, align 4
  %227 = load i32, i32* %small2, align 4
  %cmp222 = icmp slt i32 %226, %227
  br i1 %cmp222, label %if.then.223, label %if.end.232

if.then.223:                                      ; preds = %if.end.221
  %228 = load i32, i32* %h6, align 4
  %229 = load i32, i32* %small1, align 4
  %cmp224 = icmp slt i32 %228, %229
  br i1 %cmp224, label %if.then.225, label %if.else.230

if.then.225:                                      ; preds = %if.then.223
  %230 = load i32, i32* %h6, align 4
  %231 = load i32, i32* %small0, align 4
  %cmp226 = icmp slt i32 %230, %231
  br i1 %cmp226, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %if.then.225
  %232 = load i32, i32* %small1, align 4
  store i32 %232, i32* %small2, align 4
  %233 = load i32, i32* %small0, align 4
  store i32 %233, i32* %small1, align 4
  %234 = load i32, i32* %h6, align 4
  store i32 %234, i32* %small0, align 4
  br label %if.end.229

if.else.228:                                      ; preds = %if.then.225
  %235 = load i32, i32* %small1, align 4
  store i32 %235, i32* %small2, align 4
  %236 = load i32, i32* %h6, align 4
  store i32 %236, i32* %small1, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.228, %if.then.227
  br label %if.end.231

if.else.230:                                      ; preds = %if.then.223
  %237 = load i32, i32* %h6, align 4
  store i32 %237, i32* %small2, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.230, %if.end.229
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.221
  %238 = load i32, i32* %h0, align 4
  %239 = load i32, i32* %big0, align 4
  %sub = sub nsw i32 %238, %239
  %240 = load i32, i32* %big1, align 4
  %sub233 = sub nsw i32 %sub, %240
  %241 = load i32, i32* %small0, align 4
  %sub234 = sub nsw i32 %sub233, %241
  %242 = load i32, i32* %small1, align 4
  %sub235 = sub nsw i32 %sub234, %242
  %243 = load i32, i32* %big2, align 4
  %244 = load i32, i32* %small2, align 4
  %add236 = add nsw i32 %243, %244
  %shr = ashr i32 %add236, 8
  %idxprom237 = sext i32 %shr to i64
  %arrayidx238 = getelementptr inbounds [2048 x i32], [2048 x i32]* @ALFRAC, i32 0, i64 %idxprom237
  %245 = load i32, i32* %arrayidx238, align 4
  %sub239 = sub nsw i32 %sub235, %245
  %shr240 = ashr i32 %sub239, 8
  ret i32 %shr240
}

; Function Attrs: nounwind uwtable
define internal i32 @atfilt4(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %hav = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* @M0, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 3
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @M1, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 7
  %7 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @M2, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %8
  store i32 %add8, i32* %hav, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %11, %14
  %15 = load i32*, i32** %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom17
  %17 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %add15, %17
  %18 = load i32*, i32** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 8
  %19 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add19, %20
  %21 = load i32, i32* %hav, align 4
  %add24 = add nsw i32 %21, %add23
  store i32 %add24, i32* %hav, align 4
  %22 = load i32*, i32** %p.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %25 = load i32*, i32** %p.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %25, i64 3
  %26 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom29
  %27 = load i32, i32* %arrayidx30, align 4
  %add31 = add nsw i32 %24, %27
  %28 = load i32*, i32** %p.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %28, i64 2
  %29 = load i32, i32* %arrayidx32, align 4
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom33
  %30 = load i32, i32* %arrayidx34, align 4
  %add35 = add nsw i32 %add31, %30
  %31 = load i32*, i32** %p.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom37
  %33 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %add35, %33
  %34 = load i32, i32* %hav, align 4
  %add40 = add nsw i32 %34, %add39
  store i32 %add40, i32* %hav, align 4
  %35 = load i32*, i32** %p.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom42
  %37 = load i32, i32* %arrayidx43, align 4
  %38 = load i32*, i32** %p.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %38, i64 3
  %39 = load i32, i32* %arrayidx44, align 4
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom45
  %40 = load i32, i32* %arrayidx46, align 4
  %add47 = add nsw i32 %37, %40
  %41 = load i32*, i32** %p.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %41, i64 4
  %42 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom49
  %43 = load i32, i32* %arrayidx50, align 4
  %add51 = add nsw i32 %add47, %43
  %44 = load i32*, i32** %p.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %44, i64 5
  %45 = load i32, i32* %arrayidx52, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom53
  %46 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %add51, %46
  %47 = load i32, i32* %hav, align 4
  %add56 = add nsw i32 %47, %add55
  store i32 %add56, i32* %hav, align 4
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx59, align 4
  %51 = load i32*, i32** %p.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %51, i64 4
  %52 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %52 to i64
  %arrayidx62 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom61
  %53 = load i32, i32* %arrayidx62, align 4
  %add63 = add nsw i32 %50, %53
  %54 = load i32*, i32** %p.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %54, i64 5
  %55 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %55 to i64
  %arrayidx66 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom65
  %56 = load i32, i32* %arrayidx66, align 4
  %add67 = add nsw i32 %add63, %56
  %57 = load i32*, i32** %p.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %57, i64 6
  %58 = load i32, i32* %arrayidx68, align 4
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom69
  %59 = load i32, i32* %arrayidx70, align 4
  %add71 = add nsw i32 %add67, %59
  %60 = load i32, i32* %hav, align 4
  %add72 = add nsw i32 %60, %add71
  store i32 %add72, i32* %hav, align 4
  %61 = load i32*, i32** %p.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx73, align 4
  %idxprom74 = sext i32 %62 to i64
  %arrayidx75 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom74
  %63 = load i32, i32* %arrayidx75, align 4
  %64 = load i32*, i32** %p.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %64, i64 7
  %65 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %65 to i64
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom77
  %66 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %63, %66
  %67 = load i32*, i32** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %67, i64 6
  %68 = load i32, i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %68 to i64
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom81
  %69 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %add79, %69
  %70 = load i32*, i32** %p.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %70, i64 5
  %71 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %71 to i64
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom85
  %72 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %add83, %72
  %73 = load i32, i32* %hav, align 4
  %add88 = add nsw i32 %73, %add87
  store i32 %add88, i32* %hav, align 4
  %74 = load i32*, i32** %p.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %75 to i64
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom90
  %76 = load i32, i32* %arrayidx91, align 4
  %77 = load i32*, i32** %p.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %77, i64 7
  %78 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %78 to i64
  %arrayidx94 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom93
  %79 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %76, %79
  %80 = load i32*, i32** %p.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %80, i64 8
  %81 = load i32, i32* %arrayidx96, align 4
  %idxprom97 = sext i32 %81 to i64
  %arrayidx98 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom97
  %82 = load i32, i32* %arrayidx98, align 4
  %add99 = add nsw i32 %add95, %82
  %83 = load i32*, i32** %p.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %83, i64 1
  %84 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %84 to i64
  %arrayidx102 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom101
  %85 = load i32, i32* %arrayidx102, align 4
  %add103 = add nsw i32 %add99, %85
  %86 = load i32, i32* %hav, align 4
  %add104 = add nsw i32 %86, %add103
  store i32 %add104, i32* %hav, align 4
  %87 = load i32, i32* %hav, align 4
  %cmp = icmp slt i32 %87, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %hav, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %88 = load i32, i32* %hav, align 4
  %shr = ashr i32 %88, 8
  store i32 %shr, i32* %hav, align 4
  %89 = load i32, i32* %hav, align 4
  %conv = sitofp i32 %89 to double
  %cmp105 = fcmp ogt double %conv, 2.550000e+02
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end
  store i32 255, i32* %hav, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end
  %90 = load i32, i32* %hav, align 4
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal i32 @atfilt5(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %mean = alloca i32, align 4
  %variance = alloca i32, align 4
  %temp = alloca i32, align 4
  %h0 = alloca i32, align 4
  %h1 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %h3 = alloca i32, align 4
  %h4 = alloca i32, align 4
  %h5 = alloca i32, align 4
  %h6 = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* @M0, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 3
  %4 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @M1, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 7
  %7 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @M2, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %8
  store i32 %add8, i32* %h0, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %11, %14
  %15 = load i32*, i32** %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom17
  %17 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %add15, %17
  %18 = load i32*, i32** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 8
  %19 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add19, %20
  store i32 %add23, i32* %h1, align 4
  %21 = load i32*, i32** %p.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx26, align 4
  %24 = load i32*, i32** %p.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %24, i64 3
  %25 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom28
  %26 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %23, %26
  %27 = load i32*, i32** %p.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %27, i64 2
  %28 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom32
  %29 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %add30, %29
  %30 = load i32*, i32** %p.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %30, i64 1
  %31 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom36
  %32 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %add34, %32
  store i32 %add38, i32* %h2, align 4
  %33 = load i32*, i32** %p.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx39, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %36 = load i32*, i32** %p.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom43
  %38 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %35, %38
  %39 = load i32*, i32** %p.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %39, i64 4
  %40 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom47
  %41 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %add45, %41
  %42 = load i32*, i32** %p.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %42, i64 5
  %43 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %43 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom51
  %44 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %add49, %44
  store i32 %add53, i32* %h3, align 4
  %45 = load i32*, i32** %p.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom55
  %47 = load i32, i32* %arrayidx56, align 4
  %48 = load i32*, i32** %p.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %48, i64 4
  %49 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %47, %50
  %51 = load i32*, i32** %p.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %51, i64 5
  %52 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom62
  %53 = load i32, i32* %arrayidx63, align 4
  %add64 = add nsw i32 %add60, %53
  %54 = load i32*, i32** %p.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %54, i64 6
  %55 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %55 to i64
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom66
  %56 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %add64, %56
  store i32 %add68, i32* %h4, align 4
  %57 = load i32*, i32** %p.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %58 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom70
  %59 = load i32, i32* %arrayidx71, align 4
  %60 = load i32*, i32** %p.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %60, i64 7
  %61 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %61 to i64
  %arrayidx74 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom73
  %62 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %59, %62
  %63 = load i32*, i32** %p.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %63, i64 6
  %64 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %64 to i64
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom77
  %65 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %add75, %65
  %66 = load i32*, i32** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %66, i64 5
  %67 = load i32, i32* %arrayidx80, align 4
  %idxprom81 = sext i32 %67 to i64
  %arrayidx82 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom81
  %68 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %add79, %68
  store i32 %add83, i32* %h5, align 4
  %69 = load i32*, i32** %p.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %70 to i64
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom85
  %71 = load i32, i32* %arrayidx86, align 4
  %72 = load i32*, i32** %p.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %72, i64 7
  %73 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom88
  %74 = load i32, i32* %arrayidx89, align 4
  %add90 = add nsw i32 %71, %74
  %75 = load i32*, i32** %p.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %75, i64 8
  %76 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom92
  %77 = load i32, i32* %arrayidx93, align 4
  %add94 = add nsw i32 %add90, %77
  %78 = load i32*, i32** %p.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %78, i64 1
  %79 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %79 to i64
  %arrayidx97 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom96
  %80 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %add94, %80
  store i32 %add98, i32* %h6, align 4
  %81 = load i32, i32* %h0, align 4
  %82 = load i32, i32* %h1, align 4
  %add99 = add nsw i32 %81, %82
  %83 = load i32, i32* %h2, align 4
  %add100 = add nsw i32 %add99, %83
  %84 = load i32, i32* %h3, align 4
  %add101 = add nsw i32 %add100, %84
  %85 = load i32, i32* %h4, align 4
  %add102 = add nsw i32 %add101, %85
  %86 = load i32, i32* %h5, align 4
  %add103 = add nsw i32 %add102, %86
  %87 = load i32, i32* %h6, align 4
  %add104 = add nsw i32 %add103, %87
  store i32 %add104, i32* %mean, align 4
  %88 = load i32, i32* %mean, align 4
  %shr = ashr i32 %88, 6
  %idxprom105 = sext i32 %shr to i64
  %arrayidx106 = getelementptr inbounds [7147 x i32], [7147 x i32]* @AVEDIV, i32 0, i64 %idxprom105
  %89 = load i32, i32* %arrayidx106, align 4
  store i32 %89, i32* %mean, align 4
  %90 = load i32, i32* %h1, align 4
  %91 = load i32, i32* %mean, align 4
  %sub = sub nsw i32 %90, %91
  store i32 %sub, i32* %temp, align 4
  %92 = load i32, i32* %temp, align 4
  %shr107 = ashr i32 %92, 6
  %add108 = add nsw i32 1021, %shr107
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom109
  %93 = load i32, i32* %arrayidx110, align 4
  store i32 %93, i32* %variance, align 4
  %94 = load i32, i32* %h2, align 4
  %95 = load i32, i32* %mean, align 4
  %sub111 = sub nsw i32 %94, %95
  store i32 %sub111, i32* %temp, align 4
  %96 = load i32, i32* %temp, align 4
  %shr112 = ashr i32 %96, 6
  %add113 = add nsw i32 1021, %shr112
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom114
  %97 = load i32, i32* %arrayidx115, align 4
  %98 = load i32, i32* %variance, align 4
  %add116 = add nsw i32 %98, %97
  store i32 %add116, i32* %variance, align 4
  %99 = load i32, i32* %h3, align 4
  %100 = load i32, i32* %mean, align 4
  %sub117 = sub nsw i32 %99, %100
  store i32 %sub117, i32* %temp, align 4
  %101 = load i32, i32* %temp, align 4
  %shr118 = ashr i32 %101, 6
  %add119 = add nsw i32 1021, %shr118
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom120
  %102 = load i32, i32* %arrayidx121, align 4
  %103 = load i32, i32* %variance, align 4
  %add122 = add nsw i32 %103, %102
  store i32 %add122, i32* %variance, align 4
  %104 = load i32, i32* %h4, align 4
  %105 = load i32, i32* %mean, align 4
  %sub123 = sub nsw i32 %104, %105
  store i32 %sub123, i32* %temp, align 4
  %106 = load i32, i32* %temp, align 4
  %shr124 = ashr i32 %106, 6
  %add125 = add nsw i32 1021, %shr124
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom126
  %107 = load i32, i32* %arrayidx127, align 4
  %108 = load i32, i32* %variance, align 4
  %add128 = add nsw i32 %108, %107
  store i32 %add128, i32* %variance, align 4
  %109 = load i32, i32* %h5, align 4
  %110 = load i32, i32* %mean, align 4
  %sub129 = sub nsw i32 %109, %110
  store i32 %sub129, i32* %temp, align 4
  %111 = load i32, i32* %temp, align 4
  %shr130 = ashr i32 %111, 6
  %add131 = add nsw i32 1021, %shr130
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom132
  %112 = load i32, i32* %arrayidx133, align 4
  %113 = load i32, i32* %variance, align 4
  %add134 = add nsw i32 %113, %112
  store i32 %add134, i32* %variance, align 4
  %114 = load i32, i32* %h6, align 4
  %115 = load i32, i32* %mean, align 4
  %sub135 = sub nsw i32 %114, %115
  store i32 %sub135, i32* %temp, align 4
  %116 = load i32, i32* %temp, align 4
  %shr136 = ashr i32 %116, 6
  %add137 = add nsw i32 1021, %shr136
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom138
  %117 = load i32, i32* %arrayidx139, align 4
  %118 = load i32, i32* %variance, align 4
  %add140 = add nsw i32 %118, %117
  store i32 %add140, i32* %variance, align 4
  %119 = load i32, i32* %h0, align 4
  %120 = load i32, i32* %mean, align 4
  %sub141 = sub nsw i32 %119, %120
  store i32 %sub141, i32* %temp, align 4
  %121 = load i32, i32* %temp, align 4
  %shr142 = ashr i32 %121, 6
  %add143 = add nsw i32 1021, %shr142
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom144
  %122 = load i32, i32* %arrayidx145, align 4
  %123 = load i32, i32* %variance, align 4
  %add146 = add nsw i32 %123, %122
  store i32 %add146, i32* %variance, align 4
  %124 = load i32, i32* %variance, align 4
  %cmp = icmp ne i32 %124, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %125 = load i32, i32* %mean, align 4
  %126 = load i32, i32* %variance, align 4
  %127 = load i32, i32* %temp, align 4
  %mul = mul nsw i32 %126, %127
  %128 = load i32, i32* %variance, align 4
  %129 = load i32, i32* @noisevariance, align 4
  %add147 = add nsw i32 %128, %129
  %div = sdiv i32 %mul, %add147
  %add148 = add nsw i32 %125, %div
  store i32 %add148, i32* %temp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %130 = load i32, i32* %h0, align 4
  store i32 %130, i32* %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %131 = load i32, i32* %temp, align 4
  %cmp149 = icmp slt i32 %131, 0
  br i1 %cmp149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end
  store i32 0, i32* %temp, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.end
  %132 = load i32, i32* %temp, align 4
  %add152 = add nsw i32 %132, 128
  %shr153 = ashr i32 %add152, 8
  store i32 %shr153, i32* %temp, align 4
  %133 = load i32, i32* %temp, align 4
  %conv = sitofp i32 %133 to double
  %cmp154 = fcmp ogt double %conv, 2.550000e+02
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.151
  store i32 255, i32* %temp, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.151
  %134 = load i32, i32* %temp, align 4
  ret i32 %134
}

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

; Function Attrs: nounwind uwtable
define internal i32 @nlfilter_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %alpha_trim = alloca %struct._GtkWidget*, align 8
  %opt_est = alloca %struct._GtkWidget*, align 8
  %edge_enhance = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @nlfilter to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)) #4
  %26 = load i32, i32* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 2), align 4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)) #4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0)) #4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0)) #4
  %call22 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call18, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 2) to i8*), i32 %26, i8* %call19, i32 0, %struct._GtkWidget** %alpha_trim, i8* %call20, i32 1, %struct._GtkWidget** %opt_est, i8* %call21, i32 2, %struct._GtkWidget** %edge_enhance, i8* null)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %frame, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_trim, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 2)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %opt_est, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 2)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %edge_enhance, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 2)
  %call28 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %table, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call29)
  %46 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %46, i32 6)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %49, i32 6)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call35)
  %57 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #4
  %58 = load double, double* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 0), align 8
  %call38 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %57, i32 0, i32 0, i8* %call37, i32 0, i32 0, double %58, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call38, %struct._GtkObject** %adj, align 8
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.NLFilterValues* @nlfvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 2)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call41)
  %67 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #4
  %68 = load double, double* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 1), align 8
  %call44 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %67, i32 0, i32 1, i8* %call43, i32 0, i32 0, double %68, double 0x3FD5555555555555, double 1.000000e+00, double 5.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call44, %struct._GtkObject** %adj, align 8
  %69 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %70 = bitcast %struct._GtkObject* %69 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 2)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_dialog_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call47)
  %78 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDialog*
  %call49 = call i32 @gimp_dialog_run(%struct._GimpDialog* %78)
  %cmp = icmp eq i32 %call49, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %79)
  %80 = load i32, i32* %run, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal void @nlfilter(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPr = alloca %struct._GimpPixelRgn, align 8
  %dstPr = alloca %struct._GimpPixelRgn, align 8
  %srcbuf = alloca i8*, align 8
  %dstbuf = alloca i8*, align 8
  %lastrow = alloca i8*, align 8
  %thisrow = alloca i8*, align 8
  %nextrow = alloca i8*, align 8
  %temprow = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %filtno = alloca i32, align 4
  %y = alloca i32, align 4
  %rowsize = alloca i32, align 4
  %exrowsize = alloca i32, align 4
  %p_update = alloca i32, align 4
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
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 3
  %14 = load i32, i32* %bpp3, align 4
  store i32 %14, i32* %bpp, align 4
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %15, %16
  store i32 %mul, i32* %rowsize, align 4
  %17 = load i32, i32* %width, align 4
  %add4 = add nsw i32 %17, 2
  %18 = load i32, i32* %bpp, align 4
  %mul5 = mul nsw i32 %add4, %18
  store i32 %mul5, i32* %exrowsize, align 4
  %19 = load i32, i32* %width, align 4
  %div = sdiv i32 %19, 20
  %add6 = add nsw i32 %div, 1
  store i32 %add6, i32* %p_update, align 4
  %20 = load i32, i32* %width, align 4
  %call7 = call i32 @gimp_tile_width() #5
  %div8 = udiv i32 %20, %call7
  %add9 = add i32 %div8, 1
  %mul10 = mul i32 2, %add9
  %conv = zext i32 %mul10 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %22 = load i32, i32* %x1, align 4
  %23 = load i32, i32* %y1, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPr, %struct._GimpDrawable* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 0, i32 0)
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = load i32, i32* %x1, align 4
  %28 = load i32, i32* %y1, align 4
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %31, null
  %conv11 = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dstPr, %struct._GimpDrawable* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %conv11, i32 1)
  %32 = load i32, i32* %exrowsize, align 4
  %mul12 = mul nsw i32 %32, 3
  %conv13 = sext i32 %mul12 to i64
  %call14 = call noalias i8* @g_malloc0_n(i64 %conv13, i64 1)
  store i8* %call14, i8** %srcbuf, align 8
  %33 = load i32, i32* %rowsize, align 4
  %conv15 = sext i32 %33 to i64
  %call16 = call noalias i8* @g_malloc0_n(i64 %conv15, i64 1)
  store i8* %call16, i8** %dstbuf, align 8
  %34 = load i8*, i8** %srcbuf, align 8
  %35 = load i32, i32* %bpp, align 4
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %lastrow, align 8
  %36 = load i8*, i8** %lastrow, align 8
  %37 = load i32, i32* %exrowsize, align 4
  %idx.ext17 = sext i32 %37 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %36, i64 %idx.ext17
  store i8* %add.ptr18, i8** %thisrow, align 8
  %38 = load i8*, i8** %thisrow, align 8
  %39 = load i32, i32* %exrowsize, align 4
  %idx.ext19 = sext i32 %39 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %38, i64 %idx.ext19
  store i8* %add.ptr20, i8** %nextrow, align 8
  %40 = load double, double* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 0), align 8
  %41 = load double, double* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 1), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.NLFilterValues, %struct.NLFilterValues* @nlfvals, i32 0, i32 2), align 4
  %call21 = call i32 @nlfiltInit(double %40, double %41, i32 %42)
  store i32 %call21, i32* %filtno, align 4
  %43 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool22 = icmp ne %struct._GimpPreview* %43, null
  br i1 %tobool22, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)) #4
  %call25 = call i32 @gimp_progress_init(i8* %call24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end
  %44 = load i8*, i8** %thisrow, align 8
  %45 = load i32, i32* %x1, align 4
  %46 = load i32, i32* %y1, align 4
  %47 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPr, i8* %44, i32 %45, i32 %46, i32 %47)
  %48 = load i8*, i8** %thisrow, align 8
  %49 = load i32, i32* %bpp, align 4
  %idx.ext27 = sext i32 %49 to i64
  %idx.neg = sub i64 0, %idx.ext27
  %add.ptr28 = getelementptr inbounds i8, i8* %48, i64 %idx.neg
  %50 = load i8*, i8** %thisrow, align 8
  %51 = load i32, i32* %bpp, align 4
  %conv29 = sext i32 %51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr28, i8* %50, i64 %conv29, i32 1, i1 false)
  %52 = load i8*, i8** %thisrow, align 8
  %53 = load i32, i32* %rowsize, align 4
  %idx.ext30 = sext i32 %53 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %52, i64 %idx.ext30
  %54 = load i8*, i8** %thisrow, align 8
  %55 = load i32, i32* %rowsize, align 4
  %idx.ext32 = sext i32 %55 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %54, i64 %idx.ext32
  %56 = load i32, i32* %bpp, align 4
  %idx.ext34 = sext i32 %56 to i64
  %idx.neg35 = sub i64 0, %idx.ext34
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr33, i64 %idx.neg35
  %57 = load i32, i32* %bpp, align 4
  %conv37 = sext i32 %57 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr31, i8* %add.ptr36, i64 %conv37, i32 1, i1 false)
  %58 = load i8*, i8** %lastrow, align 8
  %59 = load i32, i32* %bpp, align 4
  %idx.ext38 = sext i32 %59 to i64
  %idx.neg39 = sub i64 0, %idx.ext38
  %add.ptr40 = getelementptr inbounds i8, i8* %58, i64 %idx.neg39
  %60 = load i8*, i8** %thisrow, align 8
  %61 = load i32, i32* %bpp, align 4
  %idx.ext41 = sext i32 %61 to i64
  %idx.neg42 = sub i64 0, %idx.ext41
  %add.ptr43 = getelementptr inbounds i8, i8* %60, i64 %idx.neg42
  %62 = load i32, i32* %exrowsize, align 4
  %conv44 = sext i32 %62 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr40, i8* %add.ptr43, i64 %conv44, i32 1, i1 false)
  %63 = load i32, i32* %y1, align 4
  store i32 %63, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %64 = load i32, i32* %y, align 4
  %65 = load i32, i32* %y2, align 4
  %sub45 = sub nsw i32 %65, 1
  %cmp46 = icmp slt i32 %64, %sub45
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %y, align 4
  %67 = load i32, i32* %p_update, align 4
  %rem = srem i32 %66, %67
  %cmp48 = icmp eq i32 %rem, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %for.body
  %68 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool50 = icmp ne %struct._GimpPreview* %68, null
  br i1 %tobool50, label %if.end.56, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true
  %69 = load i32, i32* %y, align 4
  %conv52 = sitofp i32 %69 to double
  %70 = load i32, i32* %height, align 4
  %conv53 = sitofp i32 %70 to double
  %div54 = fdiv double %conv52, %conv53
  %call55 = call i32 @gimp_progress_update(double %div54)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %land.lhs.true, %for.body
  %71 = load i8*, i8** %nextrow, align 8
  %72 = load i32, i32* %x1, align 4
  %73 = load i32, i32* %y, align 4
  %add57 = add nsw i32 %73, 1
  %74 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPr, i8* %71, i32 %72, i32 %add57, i32 %74)
  %75 = load i8*, i8** %nextrow, align 8
  %76 = load i32, i32* %bpp, align 4
  %idx.ext58 = sext i32 %76 to i64
  %idx.neg59 = sub i64 0, %idx.ext58
  %add.ptr60 = getelementptr inbounds i8, i8* %75, i64 %idx.neg59
  %77 = load i8*, i8** %nextrow, align 8
  %78 = load i32, i32* %bpp, align 4
  %conv61 = sext i32 %78 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr60, i8* %77, i64 %conv61, i32 1, i1 false)
  %79 = load i8*, i8** %nextrow, align 8
  %80 = load i32, i32* %rowsize, align 4
  %idx.ext62 = sext i32 %80 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %79, i64 %idx.ext62
  %81 = load i8*, i8** %nextrow, align 8
  %82 = load i32, i32* %rowsize, align 4
  %idx.ext64 = sext i32 %82 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %81, i64 %idx.ext64
  %83 = load i32, i32* %bpp, align 4
  %idx.ext66 = sext i32 %83 to i64
  %idx.neg67 = sub i64 0, %idx.ext66
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr65, i64 %idx.neg67
  %84 = load i32, i32* %bpp, align 4
  %conv69 = sext i32 %84 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr63, i8* %add.ptr68, i64 %conv69, i32 1, i1 false)
  %85 = load i8*, i8** %lastrow, align 8
  %86 = load i8*, i8** %thisrow, align 8
  %87 = load i8*, i8** %nextrow, align 8
  %88 = load i8*, i8** %dstbuf, align 8
  %89 = load i32, i32* %width, align 4
  %90 = load i32, i32* %bpp, align 4
  %91 = load i32, i32* %filtno, align 4
  call void @nlfiltRow(i8* %85, i8* %86, i8* %87, i8* %88, i32 %89, i32 %90, i32 %91)
  %92 = load i8*, i8** %dstbuf, align 8
  %93 = load i32, i32* %x1, align 4
  %94 = load i32, i32* %y, align 4
  %95 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dstPr, i8* %92, i32 %93, i32 %94, i32 %95)
  %96 = load i8*, i8** %lastrow, align 8
  store i8* %96, i8** %temprow, align 8
  %97 = load i8*, i8** %thisrow, align 8
  store i8* %97, i8** %lastrow, align 8
  %98 = load i8*, i8** %nextrow, align 8
  store i8* %98, i8** %thisrow, align 8
  %99 = load i8*, i8** %temprow, align 8
  store i8* %99, i8** %nextrow, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %100 = load i32, i32* %y, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %101 = load i8*, i8** %nextrow, align 8
  %102 = load i32, i32* %bpp, align 4
  %idx.ext70 = sext i32 %102 to i64
  %idx.neg71 = sub i64 0, %idx.ext70
  %add.ptr72 = getelementptr inbounds i8, i8* %101, i64 %idx.neg71
  %103 = load i8*, i8** %thisrow, align 8
  %104 = load i32, i32* %bpp, align 4
  %idx.ext73 = sext i32 %104 to i64
  %idx.neg74 = sub i64 0, %idx.ext73
  %add.ptr75 = getelementptr inbounds i8, i8* %103, i64 %idx.neg74
  %105 = load i32, i32* %exrowsize, align 4
  %conv76 = sext i32 %105 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr72, i8* %add.ptr75, i64 %conv76, i32 1, i1 false)
  %106 = load i8*, i8** %lastrow, align 8
  %107 = load i8*, i8** %thisrow, align 8
  %108 = load i8*, i8** %nextrow, align 8
  %109 = load i8*, i8** %dstbuf, align 8
  %110 = load i32, i32* %width, align 4
  %111 = load i32, i32* %bpp, align 4
  %112 = load i32, i32* %filtno, align 4
  call void @nlfiltRow(i8* %106, i8* %107, i8* %108, i8* %109, i32 %110, i32 %111, i32 %112)
  %113 = load i8*, i8** %dstbuf, align 8
  %114 = load i32, i32* %x1, align 4
  %115 = load i32, i32* %y2, align 4
  %sub77 = sub nsw i32 %115, 1
  %116 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dstPr, i8* %113, i32 %114, i32 %sub77, i32 %116)
  %117 = load i8*, i8** %srcbuf, align 8
  call void @g_free(i8* %117)
  %118 = load i8*, i8** %dstbuf, align 8
  call void @g_free(i8* %118)
  %119 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool78 = icmp ne %struct._GimpPreview* %119, null
  br i1 %tobool78, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %for.end
  %120 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %121 = bitcast %struct._GimpPreview* %120 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_drawable_preview_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call80)
  %122 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %122, %struct._GimpPixelRgn* %dstPr)
  br label %if.end.89

if.else.82:                                       ; preds = %for.end
  %call83 = call i32 @gimp_progress_update(double 1.000000e+00)
  %123 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %123)
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id84 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %124, i32 0, i32 0
  %125 = load i32, i32* %drawable_id84, align 4
  %call85 = call i32 @gimp_drawable_merge_shadow(i32 %125, i32 1)
  %126 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id86 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %126, i32 0, i32 0
  %127 = load i32, i32* %drawable_id86, align 4
  %128 = load i32, i32* %x1, align 4
  %129 = load i32, i32* %y1, align 4
  %130 = load i32, i32* %width, align 4
  %131 = load i32, i32* %height, align 4
  %call87 = call i32 @gimp_drawable_update(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %call88 = call i32 @gimp_displays_flush()
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.82, %if.then.79
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

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @nlfiltInit(double %alpha, double %radius, i32 %filter) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %radius.addr = alloca double, align 8
  %filter.addr = alloca i32, align 4
  %alpharange = alloca i32, align 4
  %meanscale = alloca double, align 8
  %mmeanscale = alloca double, align 8
  %alphafraction = alloca double, align 8
  %noinmean = alloca double, align 8
  %i = alloca i32, align 4
  %noinmean17 = alloca double, align 8
  %val = alloca i32, align 4
  %i53 = alloca i32, align 4
  %hexhoff = alloca double, align 8
  %hexvoff = alloca double, align 8
  %tabscale = alloca double, align 8
  %mtabscale = alloca double, align 8
  %v0 = alloca double, align 8
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  %v3 = alloca double, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  %m2 = alloca double, align 8
  %h0 = alloca double, align 8
  %h1 = alloca double, align 8
  %h2 = alloca double, align 8
  %h3 = alloca double, align 8
  %fi = alloca double, align 8
  store double %alpha, double* %alpha.addr, align 8
  store double %radius, double* %radius.addr, align 8
  store i32 %filter, i32* %filter.addr, align 4
  %0 = load i32, i32* %filter.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %entry
  %1 = load double, double* %alpha.addr, align 8
  %div = fdiv double %1, 2.000000e+00
  store double %div, double* %alpha.addr, align 8
  %2 = load double, double* %alpha.addr, align 8
  %sub = fsub double 5.000000e-01, %2
  %mul = fmul double %sub, 1.200000e+01
  %add = fadd double %mul, 1.000000e+00
  store double %add, double* %noinmean, align 8
  %3 = load double, double* %noinmean, align 8
  %div1 = fdiv double 1.000000e+00, %3
  store double %div1, double* %meanscale, align 8
  store double %div1, double* %mmeanscale, align 8
  %4 = load double, double* %alpha.addr, align 8
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %alpharange, align 4
  store double 0.000000e+00, double* %alphafraction, align 8
  br label %if.end.15

if.else:                                          ; preds = %sw.bb
  %5 = load double, double* %alpha.addr, align 8
  %cmp2 = fcmp olt double %5, 0x3FC5555555555555
  br i1 %cmp2, label %if.then.3, label %if.else.6

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %alpharange, align 4
  %6 = load double, double* %noinmean, align 8
  %sub4 = fsub double 7.000000e+00, %6
  %div5 = fdiv double %sub4, 2.000000e+00
  store double %div5, double* %alphafraction, align 8
  br label %if.end.14

if.else.6:                                        ; preds = %if.else
  %7 = load double, double* %alpha.addr, align 8
  %cmp7 = fcmp olt double %7, 0x3FD5555555555555
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else.6
  store i32 2, i32* %alpharange, align 4
  %8 = load double, double* %noinmean, align 8
  %sub9 = fsub double 5.000000e+00, %8
  %div10 = fdiv double %sub9, 2.000000e+00
  store double %div10, double* %alphafraction, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else.6
  store i32 3, i32* %alpharange, align 4
  %9 = load double, double* %noinmean, align 8
  %sub12 = fsub double 3.000000e+00, %9
  %div13 = fdiv double %sub12, 2.000000e+00
  store double %div13, double* %alphafraction, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  store double 7.000000e+00, double* %noinmean17, align 8
  store i32 5, i32* %alpharange, align 4
  store double 1.000000e+00, double* %meanscale, align 8
  store double 1.000000e+00, double* %mmeanscale, align 8
  %10 = load double, double* %noinmean17, align 8
  %div18 = fdiv double 1.000000e+00, %10
  store double %div18, double* %alphafraction, align 8
  %11 = load double, double* %alpha.addr, align 8
  %mul19 = fmul double %11, 2.550000e+02
  %conv = fptosi double %mul19 to i32
  store i32 %conv, i32* @noisevariance, align 4
  %12 = load i32, i32* @noisevariance, align 4
  %13 = load i32, i32* @noisevariance, align 4
  %mul20 = mul nsw i32 %12, %13
  %conv21 = sitofp i32 %mul20 to double
  %div22 = fdiv double %conv21, 8.000000e+00
  %conv23 = fptosi double %div22 to i32
  store i32 %conv23, i32* @noisevariance, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.16
  %14 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %14, 7147
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %shl = shl i32 %15, 6
  %div26 = sdiv i32 %shl, 7
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [7147 x i32], [7147 x i32]* @AVEDIV, i32 0, i64 %idxprom
  store i32 %div26, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.36, %for.end
  %18 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %18, 2042
  br i1 %cmp28, label %for.body.30, label %for.end.38

for.body.30:                                      ; preds = %for.cond.27
  %19 = load i32, i32* %i, align 4
  %sub31 = sub nsw i32 %19, 1021
  %shl32 = shl i32 %sub31, 6
  store i32 %shl32, i32* %val, align 4
  %20 = load i32, i32* %val, align 4
  %21 = load i32, i32* %val, align 4
  %mul33 = mul nsw i32 %20, %21
  %shr = ashr i32 %mul33, 18
  %22 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [2042 x i32], [2042 x i32]* @SQUARE, i32 0, i64 %idxprom34
  store i32 %shr, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.30
  %23 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %23, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.27

for.end.38:                                       ; preds = %for.cond.27
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %24 = load double, double* %alpha.addr, align 8
  %cmp40 = fcmp oeq double %24, 1.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.bb.39
  store double 9.900000e-01, double* %alpha.addr, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %sw.bb.39
  store i32 4, i32* %alpharange, align 4
  %25 = load double, double* %alpha.addr, align 8
  %sub44 = fsub double -0.000000e+00, %25
  %26 = load double, double* %alpha.addr, align 8
  %sub45 = fsub double 1.000000e+00, %26
  %mul46 = fmul double %sub45, 7.000000e+00
  %div47 = fdiv double %sub44, %mul46
  %mul48 = fmul double 1.000000e+00, %div47
  store double %mul48, double* %meanscale, align 8
  %27 = load double, double* %alpha.addr, align 8
  %sub49 = fsub double 1.000000e+00, %27
  %div50 = fdiv double 1.000000e+00, %sub49
  %28 = load double, double* %meanscale, align 8
  %add51 = fadd double %div50, %28
  %mul52 = fmul double 1.000000e+00, %add51
  store double %mul52, double* %mmeanscale, align 8
  store double 0.000000e+00, double* %alphafraction, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %29 = load i32, i32* %filter.addr, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i32 %29)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.43, %for.end.38, %if.end.15
  %30 = load double, double* %radius.addr, align 8
  %div54 = fdiv double %30, 2.000000e+00
  store double %div54, double* %hexhoff, align 8
  %31 = load double, double* %radius.addr, align 8
  %mul55 = fmul double 3.000000e+00, %31
  %call = call double @sqrt(double 1.200000e+01) #4
  %div56 = fdiv double %mul55, %call
  store double %div56, double* %hexvoff, align 8
  %32 = load double, double* %meanscale, align 8
  %33 = load double, double* %radius.addr, align 8
  %34 = load double, double* %hexvoff, align 8
  %mul57 = fmul double %33, %34
  %div58 = fdiv double %32, %mul57
  store double %div58, double* %tabscale, align 8
  %35 = load double, double* %mmeanscale, align 8
  %36 = load double, double* %radius.addr, align 8
  %37 = load double, double* %hexvoff, align 8
  %mul59 = fmul double %36, %37
  %div60 = fdiv double %35, %mul59
  store double %div60, double* %mtabscale, align 8
  %38 = load double, double* %hexhoff, align 8
  %39 = load double, double* %hexvoff, align 8
  %40 = load double, double* %radius.addr, align 8
  %call61 = call double @hex_area(double 0.000000e+00, double 0.000000e+00, double %38, double %39, double %40)
  %41 = load double, double* %tabscale, align 8
  %mul62 = fmul double %call61, %41
  store double %mul62, double* %v0, align 8
  %42 = load double, double* %hexhoff, align 8
  %43 = load double, double* %hexvoff, align 8
  %44 = load double, double* %radius.addr, align 8
  %call63 = call double @hex_area(double 0.000000e+00, double 1.000000e+00, double %42, double %43, double %44)
  %45 = load double, double* %tabscale, align 8
  %mul64 = fmul double %call63, %45
  store double %mul64, double* %v1, align 8
  %46 = load double, double* %hexhoff, align 8
  %47 = load double, double* %hexvoff, align 8
  %48 = load double, double* %radius.addr, align 8
  %call65 = call double @hex_area(double 1.000000e+00, double 1.000000e+00, double %46, double %47, double %48)
  %49 = load double, double* %tabscale, align 8
  %mul66 = fmul double %call65, %49
  store double %mul66, double* %v2, align 8
  %50 = load double, double* %hexhoff, align 8
  %51 = load double, double* %hexvoff, align 8
  %52 = load double, double* %radius.addr, align 8
  %call67 = call double @hex_area(double 1.000000e+00, double 0.000000e+00, double %50, double %51, double %52)
  %53 = load double, double* %tabscale, align 8
  %mul68 = fmul double %call67, %53
  store double %mul68, double* %v3, align 8
  %54 = load double, double* %radius.addr, align 8
  %call69 = call double @hex_area(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double %54)
  %55 = load double, double* %mtabscale, align 8
  %mul70 = fmul double %call69, %55
  store double %mul70, double* %m0, align 8
  %56 = load double, double* %radius.addr, align 8
  %call71 = call double @hex_area(double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double %56)
  %57 = load double, double* %mtabscale, align 8
  %mul72 = fmul double %call71, %57
  store double %mul72, double* %m1, align 8
  %58 = load double, double* %radius.addr, align 8
  %call73 = call double @hex_area(double 0.000000e+00, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00, double %58)
  %59 = load double, double* %mtabscale, align 8
  %mul74 = fmul double %call73, %59
  store double %mul74, double* %m2, align 8
  %60 = load double, double* %radius.addr, align 8
  %61 = load double, double* %radius.addr, align 8
  %call75 = call double @hex_area(double 0.000000e+00, double 0.000000e+00, double %60, double 0.000000e+00, double %61)
  %62 = load double, double* %tabscale, align 8
  %mul76 = fmul double %call75, %62
  store double %mul76, double* %h0, align 8
  %63 = load double, double* %radius.addr, align 8
  %64 = load double, double* %radius.addr, align 8
  %call77 = call double @hex_area(double 1.000000e+00, double 1.000000e+00, double %63, double 0.000000e+00, double %64)
  %65 = load double, double* %tabscale, align 8
  %mul78 = fmul double %call77, %65
  store double %mul78, double* %h1, align 8
  %66 = load double, double* %radius.addr, align 8
  %67 = load double, double* %radius.addr, align 8
  %call79 = call double @hex_area(double 1.000000e+00, double 0.000000e+00, double %66, double 0.000000e+00, double %67)
  %68 = load double, double* %tabscale, align 8
  %mul80 = fmul double %call79, %68
  store double %mul80, double* %h2, align 8
  %69 = load double, double* %radius.addr, align 8
  %70 = load double, double* %radius.addr, align 8
  %call81 = call double @hex_area(double 1.000000e+00, double -1.000000e+00, double %69, double 0.000000e+00, double %70)
  %71 = load double, double* %tabscale, align 8
  %mul82 = fmul double %call81, %71
  store double %mul82, double* %h3, align 8
  store i32 0, i32* %i53, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.154, %sw.epilog
  %72 = load i32, i32* %i53, align 4
  %cmp84 = icmp sle i32 %72, 255
  br i1 %cmp84, label %for.body.86, label %for.end.156

for.body.86:                                      ; preds = %for.cond.83
  %73 = load i32, i32* %i53, align 4
  %conv87 = sitofp i32 %73 to double
  store double %conv87, double* %fi, align 8
  %74 = load double, double* %fi, align 8
  %75 = load double, double* %v0, align 8
  %mul88 = fmul double %74, %75
  %mul89 = fmul double %mul88, 2.560000e+02
  %add90 = fadd double %mul89, 5.000000e-01
  %conv91 = fptosi double %add90 to i32
  %76 = load i32, i32* %i53, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* @V0, i32 0, i64 %idxprom92
  store i32 %conv91, i32* %arrayidx93, align 4
  %77 = load double, double* %fi, align 8
  %78 = load double, double* %v1, align 8
  %mul94 = fmul double %77, %78
  %mul95 = fmul double %mul94, 2.560000e+02
  %add96 = fadd double %mul95, 5.000000e-01
  %conv97 = fptosi double %add96 to i32
  %79 = load i32, i32* %i53, align 4
  %idxprom98 = sext i32 %79 to i64
  %arrayidx99 = getelementptr inbounds [256 x i32], [256 x i32]* @V1, i32 0, i64 %idxprom98
  store i32 %conv97, i32* %arrayidx99, align 4
  %80 = load double, double* %fi, align 8
  %81 = load double, double* %v2, align 8
  %mul100 = fmul double %80, %81
  %mul101 = fmul double %mul100, 2.560000e+02
  %add102 = fadd double %mul101, 5.000000e-01
  %conv103 = fptosi double %add102 to i32
  %82 = load i32, i32* %i53, align 4
  %idxprom104 = sext i32 %82 to i64
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* @V2, i32 0, i64 %idxprom104
  store i32 %conv103, i32* %arrayidx105, align 4
  %83 = load double, double* %fi, align 8
  %84 = load double, double* %v3, align 8
  %mul106 = fmul double %83, %84
  %mul107 = fmul double %mul106, 2.560000e+02
  %add108 = fadd double %mul107, 5.000000e-01
  %conv109 = fptosi double %add108 to i32
  %85 = load i32, i32* %i53, align 4
  %idxprom110 = sext i32 %85 to i64
  %arrayidx111 = getelementptr inbounds [256 x i32], [256 x i32]* @V3, i32 0, i64 %idxprom110
  store i32 %conv109, i32* %arrayidx111, align 4
  %86 = load double, double* %fi, align 8
  %87 = load double, double* %m0, align 8
  %mul112 = fmul double %86, %87
  %mul113 = fmul double %mul112, 2.560000e+02
  %add114 = fadd double %mul113, 5.000000e-01
  %conv115 = fptosi double %add114 to i32
  %88 = load i32, i32* %i53, align 4
  %idxprom116 = sext i32 %88 to i64
  %arrayidx117 = getelementptr inbounds [256 x i32], [256 x i32]* @M0, i32 0, i64 %idxprom116
  store i32 %conv115, i32* %arrayidx117, align 4
  %89 = load double, double* %fi, align 8
  %90 = load double, double* %m1, align 8
  %mul118 = fmul double %89, %90
  %mul119 = fmul double %mul118, 2.560000e+02
  %add120 = fadd double %mul119, 5.000000e-01
  %conv121 = fptosi double %add120 to i32
  %91 = load i32, i32* %i53, align 4
  %idxprom122 = sext i32 %91 to i64
  %arrayidx123 = getelementptr inbounds [256 x i32], [256 x i32]* @M1, i32 0, i64 %idxprom122
  store i32 %conv121, i32* %arrayidx123, align 4
  %92 = load double, double* %fi, align 8
  %93 = load double, double* %m2, align 8
  %mul124 = fmul double %92, %93
  %mul125 = fmul double %mul124, 2.560000e+02
  %add126 = fadd double %mul125, 5.000000e-01
  %conv127 = fptosi double %add126 to i32
  %94 = load i32, i32* %i53, align 4
  %idxprom128 = sext i32 %94 to i64
  %arrayidx129 = getelementptr inbounds [256 x i32], [256 x i32]* @M2, i32 0, i64 %idxprom128
  store i32 %conv127, i32* %arrayidx129, align 4
  %95 = load double, double* %fi, align 8
  %96 = load double, double* %h0, align 8
  %mul130 = fmul double %95, %96
  %mul131 = fmul double %mul130, 2.560000e+02
  %add132 = fadd double %mul131, 5.000000e-01
  %conv133 = fptosi double %add132 to i32
  %97 = load i32, i32* %i53, align 4
  %idxprom134 = sext i32 %97 to i64
  %arrayidx135 = getelementptr inbounds [256 x i32], [256 x i32]* @H0, i32 0, i64 %idxprom134
  store i32 %conv133, i32* %arrayidx135, align 4
  %98 = load double, double* %fi, align 8
  %99 = load double, double* %h1, align 8
  %mul136 = fmul double %98, %99
  %mul137 = fmul double %mul136, 2.560000e+02
  %add138 = fadd double %mul137, 5.000000e-01
  %conv139 = fptosi double %add138 to i32
  %100 = load i32, i32* %i53, align 4
  %idxprom140 = sext i32 %100 to i64
  %arrayidx141 = getelementptr inbounds [256 x i32], [256 x i32]* @H1, i32 0, i64 %idxprom140
  store i32 %conv139, i32* %arrayidx141, align 4
  %101 = load double, double* %fi, align 8
  %102 = load double, double* %h2, align 8
  %mul142 = fmul double %101, %102
  %mul143 = fmul double %mul142, 2.560000e+02
  %add144 = fadd double %mul143, 5.000000e-01
  %conv145 = fptosi double %add144 to i32
  %103 = load i32, i32* %i53, align 4
  %idxprom146 = sext i32 %103 to i64
  %arrayidx147 = getelementptr inbounds [256 x i32], [256 x i32]* @H2, i32 0, i64 %idxprom146
  store i32 %conv145, i32* %arrayidx147, align 4
  %104 = load double, double* %fi, align 8
  %105 = load double, double* %h3, align 8
  %mul148 = fmul double %104, %105
  %mul149 = fmul double %mul148, 2.560000e+02
  %add150 = fadd double %mul149, 5.000000e-01
  %conv151 = fptosi double %add150 to i32
  %106 = load i32, i32* %i53, align 4
  %idxprom152 = sext i32 %106 to i64
  %arrayidx153 = getelementptr inbounds [256 x i32], [256 x i32]* @H3, i32 0, i64 %idxprom152
  store i32 %conv151, i32* %arrayidx153, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.86
  %107 = load i32, i32* %i53, align 4
  %inc155 = add nsw i32 %107, 1
  store i32 %inc155, i32* %i53, align 4
  br label %for.cond.83

for.end.156:                                      ; preds = %for.cond.83
  store i32 0, i32* %i53, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.168, %for.end.156
  %108 = load i32, i32* %i53, align 4
  %cmp158 = icmp slt i32 %108, 2048
  br i1 %cmp158, label %for.body.160, label %for.end.170

for.body.160:                                     ; preds = %for.cond.157
  %109 = load i32, i32* %i53, align 4
  %conv161 = sitofp i32 %109 to double
  %110 = load double, double* %alphafraction, align 8
  %mul162 = fmul double %conv161, %110
  %mul163 = fmul double %mul162, 2.560000e+02
  %add164 = fadd double %mul163, 5.000000e-01
  %conv165 = fptosi double %add164 to i32
  %111 = load i32, i32* %i53, align 4
  %idxprom166 = sext i32 %111 to i64
  %arrayidx167 = getelementptr inbounds [2048 x i32], [2048 x i32]* @ALFRAC, i32 0, i64 %idxprom166
  store i32 %conv165, i32* %arrayidx167, align 4
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.160
  %112 = load i32, i32* %i53, align 4
  %inc169 = add nsw i32 %112, 1
  store i32 %inc169, i32* %i53, align 4
  br label %for.cond.157

for.end.170:                                      ; preds = %for.cond.157
  %113 = load i32, i32* %alpharange, align 4
  store i32 %113, i32* %retval
  br label %return

return:                                           ; preds = %for.end.170, %sw.default
  %114 = load i32, i32* %retval
  ret i32 %114
}

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal void @nlfiltRow(i8* %srclast, i8* %srcthis, i8* %srcnext, i8* %dst, i32 %width, i32 %bpp, i32 %filtno) #0 {
entry:
  %srclast.addr = alloca i8*, align 8
  %srcthis.addr = alloca i8*, align 8
  %srcnext.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %filtno.addr = alloca i32, align 4
  %pf = alloca [9 x i32], align 16
  %ip0 = alloca i8*, align 8
  %ip1 = alloca i8*, align 8
  %ip2 = alloca i8*, align 8
  %or = alloca i8*, align 8
  %orend = alloca i8*, align 8
  store i8* %srclast, i8** %srclast.addr, align 8
  store i8* %srcthis, i8** %srcthis.addr, align 8
  store i8* %srcnext, i8** %srcnext.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %filtno, i32* %filtno.addr, align 4
  %0 = load i8*, i8** %dst.addr, align 8
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %bpp.addr, align 4
  %mul = mul nsw i32 %1, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %orend, align 8
  %3 = load i8*, i8** %srclast.addr, align 8
  store i8* %3, i8** %ip0, align 8
  %4 = load i8*, i8** %srcthis.addr, align 8
  store i8* %4, i8** %ip1, align 8
  %5 = load i8*, i8** %srcnext.addr, align 8
  store i8* %5, i8** %ip2, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  store i8* %6, i8** %or, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i8*, i8** %or, align 8
  %8 = load i8*, i8** %orend, align 8
  %cmp = icmp ult i8* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %ip1, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4
  %11 = load i8*, i8** %ip1, align 8
  %12 = load i32, i32* %bpp.addr, align 4
  %idx.ext1 = sext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext1
  %add.ptr2 = getelementptr inbounds i8, i8* %11, i64 %idx.neg
  %13 = load i8, i8* %add.ptr2, align 1
  %conv3 = zext i8 %13 to i32
  %arrayidx4 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 1
  store i32 %conv3, i32* %arrayidx4, align 4
  %14 = load i8*, i8** %ip2, align 8
  %15 = load i32, i32* %bpp.addr, align 4
  %idx.ext5 = sext i32 %15 to i64
  %idx.neg6 = sub i64 0, %idx.ext5
  %add.ptr7 = getelementptr inbounds i8, i8* %14, i64 %idx.neg6
  %16 = load i8, i8* %add.ptr7, align 1
  %conv8 = zext i8 %16 to i32
  %arrayidx9 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 2
  store i32 %conv8, i32* %arrayidx9, align 4
  %17 = load i8*, i8** %ip2, align 8
  %18 = load i8, i8* %17, align 1
  %conv10 = zext i8 %18 to i32
  %arrayidx11 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 3
  store i32 %conv10, i32* %arrayidx11, align 4
  %19 = load i8*, i8** %ip2, align 8
  %20 = load i32, i32* %bpp.addr, align 4
  %idx.ext12 = sext i32 %20 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %19, i64 %idx.ext12
  %21 = load i8, i8* %add.ptr13, align 1
  %conv14 = zext i8 %21 to i32
  %arrayidx15 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 4
  store i32 %conv14, i32* %arrayidx15, align 4
  %22 = load i8*, i8** %ip1, align 8
  %23 = load i32, i32* %bpp.addr, align 4
  %idx.ext16 = sext i32 %23 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %22, i64 %idx.ext16
  %24 = load i8, i8* %add.ptr17, align 1
  %conv18 = zext i8 %24 to i32
  %arrayidx19 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 5
  store i32 %conv18, i32* %arrayidx19, align 4
  %25 = load i8*, i8** %ip0, align 8
  %26 = load i32, i32* %bpp.addr, align 4
  %idx.ext20 = sext i32 %26 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %25, i64 %idx.ext20
  %27 = load i8, i8* %add.ptr21, align 1
  %conv22 = zext i8 %27 to i32
  %arrayidx23 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 6
  store i32 %conv22, i32* %arrayidx23, align 4
  %28 = load i8*, i8** %ip0, align 8
  %29 = load i8, i8* %28, align 1
  %conv24 = zext i8 %29 to i32
  %arrayidx25 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 7
  store i32 %conv24, i32* %arrayidx25, align 4
  %30 = load i8*, i8** %ip0, align 8
  %31 = load i32, i32* %bpp.addr, align 4
  %idx.ext26 = sext i32 %31 to i64
  %idx.neg27 = sub i64 0, %idx.ext26
  %add.ptr28 = getelementptr inbounds i8, i8* %30, i64 %idx.neg27
  %32 = load i8, i8* %add.ptr28, align 1
  %conv29 = zext i8 %32 to i32
  %arrayidx30 = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i64 8
  store i32 %conv29, i32* %arrayidx30, align 4
  %33 = load i32, i32* %filtno.addr, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds [6 x i32 (i32*)*], [6 x i32 (i32*)*]* @atfuncs, i32 0, i64 %idxprom
  %34 = load i32 (i32*)*, i32 (i32*)** %arrayidx31, align 8
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %pf, i32 0, i32 0
  %call = call i32 %34(i32* %arraydecay)
  %conv32 = trunc i32 %call to i8
  %35 = load i8*, i8** %or, align 8
  store i8 %conv32, i8* %35, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i8*, i8** %ip0, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %ip0, align 8
  %37 = load i8*, i8** %ip1, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr33, i8** %ip1, align 8
  %38 = load i8*, i8** %ip2, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr34, i8** %ip2, align 8
  %39 = load i8*, i8** %or, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr35, i8** %or, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal double @hex_area(double %sx, double %sy, double %hx, double %hy, double %d) #0 {
entry:
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %hx.addr = alloca double, align 8
  %hy.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  %hx0 = alloca double, align 8
  %hx1 = alloca double, align 8
  %hx2 = alloca double, align 8
  %hy0 = alloca double, align 8
  %hy1 = alloca double, align 8
  %hy2 = alloca double, align 8
  %hy3 = alloca double, align 8
  %sx0 = alloca double, align 8
  %sx1 = alloca double, align 8
  %sy0 = alloca double, align 8
  %sy1 = alloca double, align 8
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  store double %hx, double* %hx.addr, align 8
  store double %hy, double* %hy.addr, align 8
  store double %d, double* %d.addr, align 8
  %0 = load double, double* %sx.addr, align 8
  %sub = fsub double %0, 5.000000e-01
  store double %sub, double* %sx0, align 8
  %1 = load double, double* %sy.addr, align 8
  %sub1 = fsub double %1, 5.000000e-01
  store double %sub1, double* %sy0, align 8
  %2 = load double, double* %sx.addr, align 8
  %add = fadd double %2, 5.000000e-01
  store double %add, double* %sx1, align 8
  %3 = load double, double* %sy.addr, align 8
  %add2 = fadd double %3, 5.000000e-01
  store double %add2, double* %sy1, align 8
  %4 = load double, double* %hx.addr, align 8
  %5 = load double, double* %d.addr, align 8
  %div = fdiv double %5, 2.000000e+00
  %sub3 = fsub double %4, %div
  store double %sub3, double* %hx0, align 8
  %6 = load double, double* %hx.addr, align 8
  store double %6, double* %hx1, align 8
  %7 = load double, double* %hx.addr, align 8
  %8 = load double, double* %d.addr, align 8
  %div4 = fdiv double %8, 2.000000e+00
  %add5 = fadd double %7, %div4
  store double %add5, double* %hx2, align 8
  %9 = load double, double* %hy.addr, align 8
  %10 = load double, double* %d.addr, align 8
  %mul = fmul double 0x3FE279A74591A01F, %10
  %sub6 = fsub double %9, %mul
  store double %sub6, double* %hy0, align 8
  %11 = load double, double* %hy.addr, align 8
  %12 = load double, double* %d.addr, align 8
  %mul7 = fmul double 0x3FD279A74591A01F, %12
  %sub8 = fsub double %11, %mul7
  store double %sub8, double* %hy1, align 8
  %13 = load double, double* %hy.addr, align 8
  %14 = load double, double* %d.addr, align 8
  %mul9 = fmul double 0x3FD279A74591A01F, %14
  %add10 = fadd double %13, %mul9
  store double %add10, double* %hy2, align 8
  %15 = load double, double* %hy.addr, align 8
  %16 = load double, double* %d.addr, align 8
  %mul11 = fmul double 0x3FE279A74591A01F, %16
  %add12 = fadd double %15, %mul11
  store double %add12, double* %hy3, align 8
  %17 = load double, double* %sx0, align 8
  %18 = load double, double* %sy0, align 8
  %19 = load double, double* %sx1, align 8
  %20 = load double, double* %sy1, align 8
  %21 = load double, double* %hx0, align 8
  %22 = load double, double* %hy2, align 8
  %23 = load double, double* %hx1, align 8
  %24 = load double, double* %hy3, align 8
  %call = call double @triang_area(double %17, double %18, double %19, double %20, double %21, double %22, double %23, double %24, i32 0)
  %25 = load double, double* %sx0, align 8
  %26 = load double, double* %sy0, align 8
  %27 = load double, double* %sx1, align 8
  %28 = load double, double* %sy1, align 8
  %29 = load double, double* %hx1, align 8
  %30 = load double, double* %hy2, align 8
  %31 = load double, double* %hx2, align 8
  %32 = load double, double* %hy3, align 8
  %call13 = call double @triang_area(double %25, double %26, double %27, double %28, double %29, double %30, double %31, double %32, i32 1)
  %add14 = fadd double %call, %call13
  %33 = load double, double* %sx0, align 8
  %34 = load double, double* %sy0, align 8
  %35 = load double, double* %sx1, align 8
  %36 = load double, double* %sy1, align 8
  %37 = load double, double* %hx0, align 8
  %38 = load double, double* %hy1, align 8
  %39 = load double, double* %hx2, align 8
  %40 = load double, double* %hy2, align 8
  %call15 = call double @rectang_area(double %33, double %34, double %35, double %36, double %37, double %38, double %39, double %40)
  %add16 = fadd double %add14, %call15
  %41 = load double, double* %sx0, align 8
  %42 = load double, double* %sy0, align 8
  %43 = load double, double* %sx1, align 8
  %44 = load double, double* %sy1, align 8
  %45 = load double, double* %hx0, align 8
  %46 = load double, double* %hy0, align 8
  %47 = load double, double* %hx1, align 8
  %48 = load double, double* %hy1, align 8
  %call17 = call double @triang_area(double %41, double %42, double %43, double %44, double %45, double %46, double %47, double %48, i32 2)
  %add18 = fadd double %add16, %call17
  %49 = load double, double* %sx0, align 8
  %50 = load double, double* %sy0, align 8
  %51 = load double, double* %sx1, align 8
  %52 = load double, double* %sy1, align 8
  %53 = load double, double* %hx1, align 8
  %54 = load double, double* %hy0, align 8
  %55 = load double, double* %hx2, align 8
  %56 = load double, double* %hy1, align 8
  %call19 = call double @triang_area(double %49, double %50, double %51, double %52, double %53, double %54, double %55, double %56, i32 3)
  %add20 = fadd double %add18, %call19
  ret double %add20
}

; Function Attrs: nounwind uwtable
define internal double @triang_area(double %rx0, double %ry0, double %rx1, double %ry1, double %tx0, double %ty0, double %tx1, double %ty1, i32 %tt) #0 {
entry:
  %retval = alloca double, align 8
  %rx0.addr = alloca double, align 8
  %ry0.addr = alloca double, align 8
  %rx1.addr = alloca double, align 8
  %ry1.addr = alloca double, align 8
  %tx0.addr = alloca double, align 8
  %ty0.addr = alloca double, align 8
  %tx1.addr = alloca double, align 8
  %ty1.addr = alloca double, align 8
  %tt.addr = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %lx0 = alloca double, align 8
  %ly0 = alloca double, align 8
  %lx1 = alloca double, align 8
  %ly1 = alloca double, align 8
  %t = alloca double, align 8
  %t7 = alloca double, align 8
  store double %rx0, double* %rx0.addr, align 8
  store double %ry0, double* %ry0.addr, align 8
  store double %rx1, double* %rx1.addr, align 8
  store double %ry1, double* %ry1.addr, align 8
  store double %tx0, double* %tx0.addr, align 8
  store double %ty0, double* %ty0.addr, align 8
  store double %tx1, double* %tx1.addr, align 8
  store double %ty1, double* %ty1.addr, align 8
  store i32 %tt, i32* %tt.addr, align 4
  %0 = load i32, i32* %tt.addr, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %ry0.addr, align 8
  store double %1, double* %t, align 8
  %2 = load double, double* %ry1.addr, align 8
  %sub = fsub double -0.000000e+00, %2
  store double %sub, double* %ry0.addr, align 8
  %3 = load double, double* %t, align 8
  %sub1 = fsub double -0.000000e+00, %3
  store double %sub1, double* %ry1.addr, align 8
  %4 = load double, double* %ty0.addr, align 8
  store double %4, double* %t, align 8
  %5 = load double, double* %ty1.addr, align 8
  %sub2 = fsub double -0.000000e+00, %5
  store double %sub2, double* %ty0.addr, align 8
  %6 = load double, double* %t, align 8
  %sub3 = fsub double -0.000000e+00, %6
  store double %sub3, double* %ty1.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %tt.addr, align 4
  %and4 = and i32 %7, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end
  %8 = load double, double* %rx0.addr, align 8
  store double %8, double* %t7, align 8
  %9 = load double, double* %rx1.addr, align 8
  %sub8 = fsub double -0.000000e+00, %9
  store double %sub8, double* %rx0.addr, align 8
  %10 = load double, double* %t7, align 8
  %sub9 = fsub double -0.000000e+00, %10
  store double %sub9, double* %rx1.addr, align 8
  %11 = load double, double* %tx0.addr, align 8
  store double %11, double* %t7, align 8
  %12 = load double, double* %tx1.addr, align 8
  %sub10 = fsub double -0.000000e+00, %12
  store double %sub10, double* %tx0.addr, align 8
  %13 = load double, double* %t7, align 8
  %sub11 = fsub double -0.000000e+00, %13
  store double %sub11, double* %tx1.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.6, %if.end
  %14 = load double, double* %tx0.addr, align 8
  %15 = load double, double* %rx0.addr, align 8
  %cmp = fcmp ogt double %14, %15
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.12
  %16 = load double, double* %tx0.addr, align 8
  store double %16, double* %rx0.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.12
  %17 = load double, double* %ty0.addr, align 8
  %18 = load double, double* %ry0.addr, align 8
  %cmp15 = fcmp ogt double %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %19 = load double, double* %ty0.addr, align 8
  store double %19, double* %ry0.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %20 = load double, double* %tx1.addr, align 8
  %21 = load double, double* %rx1.addr, align 8
  %cmp18 = fcmp olt double %20, %21
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %22 = load double, double* %tx1.addr, align 8
  store double %22, double* %rx1.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %23 = load double, double* %ty1.addr, align 8
  %24 = load double, double* %ry1.addr, align 8
  %cmp21 = fcmp olt double %23, %24
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %25 = load double, double* %ty1.addr, align 8
  store double %25, double* %ry1.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %26 = load double, double* %rx1.addr, align 8
  %27 = load double, double* %rx0.addr, align 8
  %cmp24 = fcmp ole double %26, %27
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %28 = load double, double* %ry1.addr, align 8
  %29 = load double, double* %ry0.addr, align 8
  %cmp25 = fcmp ole double %28, %29
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.23
  store double 0.000000e+00, double* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  %30 = load double, double* %tx1.addr, align 8
  %31 = load double, double* %tx0.addr, align 8
  %sub28 = fsub double %30, %31
  %32 = load double, double* %ty1.addr, align 8
  %33 = load double, double* %ty0.addr, align 8
  %sub29 = fsub double %32, %33
  %div = fdiv double %sub28, %sub29
  store double %div, double* %b, align 8
  %34 = load double, double* %tx0.addr, align 8
  %35 = load double, double* %b, align 8
  %36 = load double, double* %ty0.addr, align 8
  %mul = fmul double %35, %36
  %sub30 = fsub double %34, %mul
  store double %sub30, double* %a, align 8
  %37 = load double, double* %ty1.addr, align 8
  %38 = load double, double* %ty0.addr, align 8
  %sub31 = fsub double %37, %38
  %39 = load double, double* %tx1.addr, align 8
  %40 = load double, double* %tx0.addr, align 8
  %sub32 = fsub double %39, %40
  %div33 = fdiv double %sub31, %sub32
  store double %div33, double* %d, align 8
  %41 = load double, double* %ty0.addr, align 8
  %42 = load double, double* %d, align 8
  %43 = load double, double* %tx0.addr, align 8
  %mul34 = fmul double %42, %43
  %sub35 = fsub double %41, %mul34
  store double %sub35, double* %c, align 8
  store i32 0, i32* %tt.addr, align 4
  %44 = load double, double* %ry1.addr, align 8
  store double %44, double* %ly1, align 8
  %45 = load double, double* %a, align 8
  %46 = load double, double* %b, align 8
  %47 = load double, double* %ly1, align 8
  %mul36 = fmul double %46, %47
  %add = fadd double %45, %mul36
  store double %add, double* %lx1, align 8
  %48 = load double, double* %lx1, align 8
  %49 = load double, double* %rx0.addr, align 8
  %cmp37 = fcmp ole double %48, %49
  br i1 %cmp37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.27
  %50 = load double, double* %rx1.addr, align 8
  %51 = load double, double* %rx0.addr, align 8
  %sub39 = fsub double %50, %51
  %52 = load double, double* %ry1.addr, align 8
  %53 = load double, double* %ry0.addr, align 8
  %sub40 = fsub double %52, %53
  %mul41 = fmul double %sub39, %sub40
  store double %mul41, double* %retval
  br label %return

if.else:                                          ; preds = %if.end.27
  %54 = load double, double* %lx1, align 8
  %55 = load double, double* %rx1.addr, align 8
  %cmp42 = fcmp ogt double %54, %55
  br i1 %cmp42, label %if.then.43, label %if.end.52

if.then.43:                                       ; preds = %if.else
  %56 = load double, double* %rx1.addr, align 8
  store double %56, double* %lx1, align 8
  %57 = load double, double* %c, align 8
  %58 = load double, double* %d, align 8
  %59 = load double, double* %lx1, align 8
  %mul44 = fmul double %58, %59
  %add45 = fadd double %57, %mul44
  store double %add45, double* %ly1, align 8
  %60 = load double, double* %ly1, align 8
  %61 = load double, double* %ry0.addr, align 8
  %cmp46 = fcmp ole double %60, %61
  br i1 %cmp46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.then.43
  %62 = load double, double* %rx1.addr, align 8
  %63 = load double, double* %rx0.addr, align 8
  %sub48 = fsub double %62, %63
  %64 = load double, double* %ry1.addr, align 8
  %65 = load double, double* %ry0.addr, align 8
  %sub49 = fsub double %64, %65
  %mul50 = fmul double %sub48, %sub49
  store double %mul50, double* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.43
  store i32 1, i32* %tt.addr, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  %66 = load double, double* %rx0.addr, align 8
  store double %66, double* %lx0, align 8
  %67 = load double, double* %c, align 8
  %68 = load double, double* %d, align 8
  %69 = load double, double* %lx0, align 8
  %mul54 = fmul double %68, %69
  %add55 = fadd double %67, %mul54
  store double %add55, double* %ly0, align 8
  %70 = load double, double* %ly0, align 8
  %71 = load double, double* %ry1.addr, align 8
  %cmp56 = fcmp oge double %70, %71
  br i1 %cmp56, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %if.end.53
  %72 = load double, double* %rx1.addr, align 8
  %73 = load double, double* %rx0.addr, align 8
  %sub58 = fsub double %72, %73
  %74 = load double, double* %ry1.addr, align 8
  %75 = load double, double* %ry0.addr, align 8
  %sub59 = fsub double %74, %75
  %mul60 = fmul double %sub58, %sub59
  store double %mul60, double* %retval
  br label %return

if.else.61:                                       ; preds = %if.end.53
  %76 = load double, double* %ly0, align 8
  %77 = load double, double* %ry0.addr, align 8
  %cmp62 = fcmp olt double %76, %77
  br i1 %cmp62, label %if.then.63, label %if.end.72

if.then.63:                                       ; preds = %if.else.61
  %78 = load double, double* %ry0.addr, align 8
  store double %78, double* %ly0, align 8
  %79 = load double, double* %a, align 8
  %80 = load double, double* %b, align 8
  %81 = load double, double* %ly0, align 8
  %mul64 = fmul double %80, %81
  %add65 = fadd double %79, %mul64
  store double %add65, double* %lx0, align 8
  %82 = load double, double* %lx0, align 8
  %83 = load double, double* %rx1.addr, align 8
  %cmp66 = fcmp oge double %82, %83
  br i1 %cmp66, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %if.then.63
  %84 = load double, double* %rx1.addr, align 8
  %85 = load double, double* %rx0.addr, align 8
  %sub68 = fsub double %84, %85
  %86 = load double, double* %ry1.addr, align 8
  %87 = load double, double* %ry0.addr, align 8
  %sub69 = fsub double %86, %87
  %mul70 = fmul double %sub68, %sub69
  store double %mul70, double* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.63
  %88 = load i32, i32* %tt.addr, align 4
  %or = or i32 %88, 2
  store i32 %or, i32* %tt.addr, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.else.61
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  %89 = load i32, i32* %tt.addr, align 4
  %cmp74 = icmp eq i32 %89, 0
  br i1 %cmp74, label %if.then.75, label %if.else.84

if.then.75:                                       ; preds = %if.end.73
  %90 = load double, double* %rx1.addr, align 8
  %91 = load double, double* %rx0.addr, align 8
  %sub76 = fsub double %90, %91
  %92 = load double, double* %ry1.addr, align 8
  %93 = load double, double* %ry0.addr, align 8
  %sub77 = fsub double %92, %93
  %mul78 = fmul double %sub76, %sub77
  %94 = load double, double* %lx1, align 8
  %95 = load double, double* %rx0.addr, align 8
  %sub79 = fsub double %94, %95
  %mul80 = fmul double 5.000000e-01, %sub79
  %96 = load double, double* %ry1.addr, align 8
  %97 = load double, double* %ly0, align 8
  %sub81 = fsub double %96, %97
  %mul82 = fmul double %mul80, %sub81
  %sub83 = fsub double %mul78, %mul82
  store double %sub83, double* %retval
  br label %return

if.else.84:                                       ; preds = %if.end.73
  %98 = load i32, i32* %tt.addr, align 4
  %cmp85 = icmp eq i32 %98, 1
  br i1 %cmp85, label %if.then.86, label %if.else.95

if.then.86:                                       ; preds = %if.else.84
  %99 = load double, double* %rx1.addr, align 8
  %100 = load double, double* %rx0.addr, align 8
  %sub87 = fsub double %99, %100
  %101 = load double, double* %ly0, align 8
  %102 = load double, double* %ry0.addr, align 8
  %sub88 = fsub double %101, %102
  %mul89 = fmul double %sub87, %sub88
  %103 = load double, double* %rx1.addr, align 8
  %104 = load double, double* %rx0.addr, align 8
  %sub90 = fsub double %103, %104
  %mul91 = fmul double 5.000000e-01, %sub90
  %105 = load double, double* %ly1, align 8
  %106 = load double, double* %ly0, align 8
  %sub92 = fsub double %105, %106
  %mul93 = fmul double %mul91, %sub92
  %add94 = fadd double %mul89, %mul93
  store double %add94, double* %retval
  br label %return

if.else.95:                                       ; preds = %if.else.84
  %107 = load i32, i32* %tt.addr, align 4
  %cmp96 = icmp eq i32 %107, 2
  br i1 %cmp96, label %if.then.97, label %if.else.106

if.then.97:                                       ; preds = %if.else.95
  %108 = load double, double* %rx1.addr, align 8
  %109 = load double, double* %lx1, align 8
  %sub98 = fsub double %108, %109
  %110 = load double, double* %ry1.addr, align 8
  %111 = load double, double* %ry0.addr, align 8
  %sub99 = fsub double %110, %111
  %mul100 = fmul double %sub98, %sub99
  %112 = load double, double* %lx1, align 8
  %113 = load double, double* %lx0, align 8
  %sub101 = fsub double %112, %113
  %mul102 = fmul double 5.000000e-01, %sub101
  %114 = load double, double* %ry1.addr, align 8
  %115 = load double, double* %ry0.addr, align 8
  %sub103 = fsub double %114, %115
  %mul104 = fmul double %mul102, %sub103
  %add105 = fadd double %mul100, %mul104
  store double %add105, double* %retval
  br label %return

if.else.106:                                      ; preds = %if.else.95
  %116 = load double, double* %rx1.addr, align 8
  %117 = load double, double* %lx0, align 8
  %sub107 = fsub double %116, %117
  %mul108 = fmul double 5.000000e-01, %sub107
  %118 = load double, double* %ly1, align 8
  %119 = load double, double* %ry0.addr, align 8
  %sub109 = fsub double %118, %119
  %mul110 = fmul double %mul108, %sub109
  store double %mul110, double* %retval
  br label %return

return:                                           ; preds = %if.else.106, %if.then.97, %if.then.86, %if.then.75, %if.then.67, %if.then.57, %if.then.47, %if.then.38, %if.then.26
  %120 = load double, double* %retval
  ret double %120
}

; Function Attrs: nounwind uwtable
define internal double @rectang_area(double %rx0, double %ry0, double %rx1, double %ry1, double %tx0, double %ty0, double %tx1, double %ty1) #0 {
entry:
  %retval = alloca double, align 8
  %rx0.addr = alloca double, align 8
  %ry0.addr = alloca double, align 8
  %rx1.addr = alloca double, align 8
  %ry1.addr = alloca double, align 8
  %tx0.addr = alloca double, align 8
  %ty0.addr = alloca double, align 8
  %tx1.addr = alloca double, align 8
  %ty1.addr = alloca double, align 8
  store double %rx0, double* %rx0.addr, align 8
  store double %ry0, double* %ry0.addr, align 8
  store double %rx1, double* %rx1.addr, align 8
  store double %ry1, double* %ry1.addr, align 8
  store double %tx0, double* %tx0.addr, align 8
  store double %ty0, double* %ty0.addr, align 8
  store double %tx1, double* %tx1.addr, align 8
  store double %ty1, double* %ty1.addr, align 8
  %0 = load double, double* %tx0.addr, align 8
  %1 = load double, double* %rx0.addr, align 8
  %cmp = fcmp ogt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, double* %tx0.addr, align 8
  store double %2, double* %rx0.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load double, double* %ty0.addr, align 8
  %4 = load double, double* %ry0.addr, align 8
  %cmp1 = fcmp ogt double %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load double, double* %ty0.addr, align 8
  store double %5, double* %ry0.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load double, double* %tx1.addr, align 8
  %7 = load double, double* %rx1.addr, align 8
  %cmp4 = fcmp olt double %6, %7
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load double, double* %tx1.addr, align 8
  store double %8, double* %rx1.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %9 = load double, double* %ty1.addr, align 8
  %10 = load double, double* %ry1.addr, align 8
  %cmp7 = fcmp olt double %9, %10
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %11 = load double, double* %ty1.addr, align 8
  store double %11, double* %ry1.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %12 = load double, double* %rx1.addr, align 8
  %13 = load double, double* %rx0.addr, align 8
  %cmp10 = fcmp ole double %12, %13
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %14 = load double, double* %ry1.addr, align 8
  %15 = load double, double* %ry0.addr, align 8
  %cmp11 = fcmp ole double %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.9
  store double 0.000000e+00, double* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %16 = load double, double* %rx1.addr, align 8
  %17 = load double, double* %rx0.addr, align 8
  %sub = fsub double %16, %17
  %18 = load double, double* %ry1.addr, align 8
  %19 = load double, double* %ry0.addr, align 8
  %sub14 = fsub double %18, %19
  %mul = fmul double %sub, %sub14
  store double %mul, double* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12
  %20 = load double, double* %retval
  ret double %20
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
