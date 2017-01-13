; ModuleID = './plug-ins/common/waves.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.piArgs = type { double, double, double, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"The Image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"The Drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"amplitude\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"The Amplitude of the Waves\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"The Phase of the Waves\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"wavelength\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"The Wavelength of the Waves\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Type of waves, black/smeared\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"reflective\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Use Reflection\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"plug-in-waves\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Distort the image with waves\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"none yet\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Eric L. Hernes, Stephen Norris\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Stephen Norris\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"_Waves...\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@wvals = internal global %struct.piArgs { double 1.000000e+01, double 0.000000e+00, double 1.000000e+01, i32 0, i32 0 }, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"waves\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Waves\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gimp-waves\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"_Smear\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"_Blacken\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"_Reflective\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"_Amplitude:\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"_Phase:\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"_Wavelength:\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Waving\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
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
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 2
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_drawable, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %4)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_int32, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.piArgs* @wvals to i8*))
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @waves_dialog(%struct._GimpDrawable* %7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %if.end.31

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %8 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %8, 8
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.25

if.else:                                          ; preds = %sw.bb.9
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data12 to double*
  %10 = load double, double* %d_float, align 8
  store double %10, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 0), align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 4
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_float15 = bitcast %union._GimpParamData* %data14 to double*
  %12 = load double, double* %d_float15, align 8
  store double %12, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 1), align 8
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 5
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_float18 = bitcast %union._GimpParamData* %data17 to double*
  %14 = load double, double* %d_float18, align 8
  store double %14, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 2), align 8
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 6
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %16 = load i32, i32* %d_int3221, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 3), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 7
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %18 = load i32, i32* %d_int3224, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 4), align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.10
  br label %sw.epilog

sw.bb.26:                                         ; preds = %do.end
  %call27 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.piArgs* @wvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %if.end.25, %if.end
  %19 = load i32, i32* %status, align 4
  %cmp28 = icmp eq i32 %19, 3
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %sw.epilog
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @waves(%struct._GimpDrawable* %20)
  %call30 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.piArgs* @wvals to i8*), i32 32)
  %21 = load i32, i32* %status, align 4
  store i32 %21, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then, %if.then.29, %sw.epilog
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

; Function Attrs: nounwind uwtable
define internal i32 @waves_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %smear = alloca %struct._GtkWidget*, align 8
  %blacken = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable* %16)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @waves_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #4
  %26 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 3), align 4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call18, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 3) to i8*), i32 %26, i8* %call19, i32 0, %struct._GtkWidget** %smear, i8* %call20, i32 1, %struct._GtkWidget** %blacken, i8* null)
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
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %smear, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 2)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %blacken, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 2)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #4
  %call27 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %toggle, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  %43 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %42, i32 %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call30)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 2)
  %call34 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %table, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call35)
  %57 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %57, i32 6)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call37)
  %60 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %60, i32 6)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call39)
  %63 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %63, %struct._GtkWidget* %64, i32 0, i32 0, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call41)
  %68 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)) #4
  %69 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 0), align 8
  %call44 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %68, i32 0, i32 0, i8* %call43, i32 140, i32 6, double %69, double 0.000000e+00, double 1.010000e+02, double 1.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call44, %struct._GtkObject** %adj, align 8
  %70 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %71 = bitcast %struct._GtkObject* %70 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.piArgs* @wvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %73 = bitcast %struct._GtkObject* %72 to i8*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 2)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call47)
  %78 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #4
  %79 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 1), align 8
  %call50 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %78, i32 0, i32 1, i8* %call49, i32 140, i32 6, double %79, double 0.000000e+00, double 3.600000e+02, double 2.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call50, %struct._GtkObject** %adj, align 8
  %80 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %81 = bitcast %struct._GtkObject* %80 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %83 = bitcast %struct._GtkObject* %82 to i8*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 2)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call53)
  %88 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0)) #4
  %89 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 2), align 8
  %call56 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %88, i32 0, i32 2, i8* %call55, i32 140, i32 6, double %89, double 1.000000e-01, double 5.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call56, %struct._GtkObject** %adj, align 8
  %90 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %91 = bitcast %struct._GtkObject* %90 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %93 = bitcast %struct._GtkObject* %92 to i8*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %95, void (i8*, %struct._GClosure*)* null, i32 2)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_dialog_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call59)
  %99 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpDialog*
  %call61 = call i32 @gimp_dialog_run(%struct._GimpDialog* %99)
  %cmp = icmp eq i32 %call61, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %100)
  %101 = load i32, i32* %run, align 4
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal void @waves(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPr = alloca %struct._GimpPixelRgn, align 8
  %dstPr = alloca %struct._GimpPixelRgn, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height2, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 3
  %5 = load i32, i32* %bpp3, align 4
  store i32 %5, i32* %bpp, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %7)
  store i32 %call, i32* %has_alpha, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %mul = mul i32 %8, %9
  %10 = load i32, i32* %bpp, align 4
  %mul4 = mul i32 %mul, %10
  %conv = zext i32 %mul4 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %src, align 8
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %mul6 = mul i32 %11, %12
  %13 = load i32, i32* %bpp, align 4
  %mul7 = mul i32 %mul6, %13
  %conv8 = zext i32 %mul7 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv8, i64 1)
  store i8* %call9, i8** %dst, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPr, %struct._GimpDrawable* %14, i32 0, i32 0, i32 %15, i32 %16, i32 0, i32 0)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dstPr, %struct._GimpDrawable* %17, i32 0, i32 0, i32 %18, i32 %19, i32 1, i32 1)
  %20 = load i8*, i8** %src, align 8
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %srcPr, i8* %20, i32 0, i32 0, i32 %21, i32 %22)
  %23 = load i8*, i8** %src, align 8
  %24 = load i8*, i8** %dst, align 8
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  %27 = load i32, i32* %bpp, align 4
  %28 = load i32, i32* %has_alpha, align 4
  %29 = load i32, i32* %width, align 4
  %conv10 = uitofp i32 %29 to double
  %div = fdiv double %conv10, 2.000000e+00
  %30 = load i32, i32* %height, align 4
  %conv11 = uitofp i32 %30 to double
  %div12 = fdiv double %conv11, 2.000000e+00
  %31 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 0), align 8
  %32 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 2), align 8
  %33 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 1), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %34, 0
  %conv13 = zext i1 %cmp to i32
  %35 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 4), align 4
  call void @wave(i8* %23, i8* %24, i32 %25, i32 %26, i32 %27, i32 %28, double %div, double %div12, double %31, double %32, double %33, i32 %conv13, i32 %35, i32 1)
  %36 = load i8*, i8** %dst, align 8
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dstPr, i8* %36, i32 0, i32 0, i32 %37, i32 %38)
  %39 = load i8*, i8** %src, align 8
  call void @g_free(i8* %39)
  %40 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %40)
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %41)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 0
  %43 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_merge_shadow(i32 %43, i32 1)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 0
  %45 = load i32, i32* %drawable_id16, align 4
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %height, align 4
  %call17 = call i32 @gimp_drawable_update(i32 %45, i32 0, i32 0, i32 %46, i32 %47)
  %call18 = call i32 @gimp_displays_flush()
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @waves_preview(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %zoom = alloca double, align 8
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpZoomPreview*
  %call2 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %2, i32* %width, i32* %height, i32* %bpp)
  store i8* %call2, i8** %src, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %4 = bitcast %struct._GimpPreview* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_zoom_preview_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpZoomPreview*
  %call5 = call double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview* %5)
  store double %call5, double* %zoom, align 8
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width6, align 4
  %conv = uitofp i32 %8 to double
  %div = fdiv double %conv, 2.000000e+00
  %conv7 = fptosi double %div to i32
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 2
  %10 = load i32, i32* %height8, align 4
  %conv9 = uitofp i32 %10 to double
  %div10 = fdiv double %conv9, 2.000000e+00
  %conv11 = fptosi double %div10 to i32
  call void @gimp_preview_transform(%struct._GimpPreview* %6, i32 %conv7, i32 %conv11, i32* %xc, i32* %yc)
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %bpp, align 4
  %mul12 = mul nsw i32 %mul, %13
  %conv13 = sext i32 %mul12 to i64
  %call14 = call noalias i8* @g_malloc_n(i64 %conv13, i64 1)
  store i8* %call14, i8** %dest, align 8
  %14 = load i8*, i8** %src, align 8
  %15 = load i8*, i8** %dest, align 8
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  %18 = load i32, i32* %bpp, align 4
  %19 = load i32, i32* %bpp, align 4
  %cmp = icmp eq i32 %19, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %20 = load i32, i32* %bpp, align 4
  %cmp16 = icmp eq i32 %20, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %21 = phi i1 [ true, %entry ], [ %cmp16, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32
  %22 = load i32, i32* %xc, align 4
  %conv18 = sitofp i32 %22 to double
  %23 = load i32, i32* %yc, align 4
  %conv19 = sitofp i32 %23 to double
  %24 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 0), align 8
  %25 = load i32, i32* %width, align 4
  %conv20 = sitofp i32 %25 to double
  %mul21 = fmul double %24, %conv20
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 1
  %27 = load i32, i32* %width22, align 4
  %conv23 = uitofp i32 %27 to double
  %div24 = fdiv double %mul21, %conv23
  %28 = load double, double* %zoom, align 8
  %mul25 = fmul double %div24, %28
  %29 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 2), align 8
  %30 = load i32, i32* %height, align 4
  %conv26 = sitofp i32 %30 to double
  %mul27 = fmul double %29, %conv26
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 2
  %32 = load i32, i32* %height28, align 4
  %conv29 = uitofp i32 %32 to double
  %div30 = fdiv double %mul27, %conv29
  %33 = load double, double* %zoom, align 8
  %mul31 = fmul double %div30, %33
  %34 = load double, double* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 1), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 3), align 4
  %cmp32 = icmp eq i32 %35, 0
  %conv33 = zext i1 %cmp32 to i32
  %36 = load i32, i32* getelementptr inbounds (%struct.piArgs, %struct.piArgs* @wvals, i32 0, i32 4), align 4
  call void @wave(i8* %14, i8* %15, i32 %16, i32 %17, i32 %18, i32 %lor.ext, double %conv18, double %conv19, double %mul25, double %mul31, double %34, i32 %conv33, i32 %36, i32 0)
  %37 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %38 = load i8*, i8** %dest, align 8
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %bpp, align 4
  %mul34 = mul nsw i32 %39, %40
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %37, i8* %38, i32 %mul34)
  %41 = load i8*, i8** %src, align 8
  call void @g_free(i8* %41)
  %42 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %42)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

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

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview*) #1

declare void @gimp_preview_transform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @wave(i8* %src, i8* %dst, i32 %width, i32 %height, i32 %bypp, i32 %has_alpha, double %cen_x, double %cen_y, double %amplitude, double %wavelength, double %phase, i32 %smear, i32 %reflective, i32 %verbose) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bypp.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %cen_x.addr = alloca double, align 8
  %cen_y.addr = alloca double, align 8
  %amplitude.addr = alloca double, align 8
  %wavelength.addr = alloca double, align 8
  %phase.addr = alloca double, align 8
  %smear.addr = alloca i32, align 4
  %reflective.addr = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %rowsiz = alloca i64, align 8
  %p = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %prog_interval = alloca i32, align 4
  %x1_in = alloca i32, align 4
  %y1_in = alloca i32, align 4
  %x2_in = alloca i32, align 4
  %y2_in = alloca i32, align 4
  %xhsiz = alloca double, align 8
  %yhsiz = alloca double, align 8
  %amnt = alloca double, align 8
  %d = alloca double, align 8
  %needx = alloca double, align 8
  %needy = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %xscale = alloca double, align 8
  %yscale = alloca double, align 8
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %values = alloca [4 x i8*], align 16
  %zeroes = alloca [4 x i8], align 1
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bypp, i32* %bypp.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store double %cen_x, double* %cen_x.addr, align 8
  store double %cen_y, double* %cen_y.addr, align 8
  store double %amplitude, double* %amplitude.addr, align 8
  store double %wavelength, double* %wavelength.addr, align 8
  store double %phase, double* %phase.addr, align 8
  store i32 %smear, i32* %smear.addr, align 4
  store i32 %reflective, i32* %reflective.addr, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %prog_interval, align 4
  %0 = bitcast [4 x i8]* %zeroes to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  %1 = load double, double* %phase.addr, align 8
  %mul = fmul double %1, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  store double %div, double* %phase.addr, align 8
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %bypp.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %conv = sext i32 %mul1 to i64
  store i64 %conv, i64* %rowsiz, align 8
  %4 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)) #4
  %call2 = call i32 @gimp_progress_init(i8* %call)
  %5 = load i32, i32* %height.addr, align 4
  %div3 = sdiv i32 %5, 10
  store i32 %div3, i32* %prog_interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %y1, align 4
  store i32 0, i32* %x1, align 4
  %6 = load i32, i32* %width.addr, align 4
  store i32 %6, i32* %x2, align 4
  %7 = load i32, i32* %height.addr, align 4
  store i32 %7, i32* %y2, align 4
  %8 = load i32, i32* %x2, align 4
  %9 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %8, %9
  %conv4 = sitofp i32 %sub to double
  %div5 = fdiv double %conv4, 2.000000e+00
  store double %div5, double* %xhsiz, align 8
  %10 = load i32, i32* %y2, align 4
  %11 = load i32, i32* %y1, align 4
  %sub6 = sub nsw i32 %10, %11
  %conv7 = sitofp i32 %sub6 to double
  %div8 = fdiv double %conv7, 2.000000e+00
  store double %div8, double* %yhsiz, align 8
  %12 = load double, double* %xhsiz, align 8
  %13 = load double, double* %yhsiz, align 8
  %cmp = fcmp olt double %12, %13
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %14 = load double, double* %yhsiz, align 8
  %15 = load double, double* %xhsiz, align 8
  %div11 = fdiv double %14, %15
  store double %div11, double* %xscale, align 8
  store double 1.000000e+00, double* %yscale, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %16 = load double, double* %xhsiz, align 8
  %17 = load double, double* %yhsiz, align 8
  %cmp12 = fcmp ogt double %16, %17
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else
  store double 1.000000e+00, double* %xscale, align 8
  %18 = load double, double* %xhsiz, align 8
  %19 = load double, double* %yhsiz, align 8
  %div15 = fdiv double %18, %19
  store double %div15, double* %yscale, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %if.else
  store double 1.000000e+00, double* %xscale, align 8
  store double 1.000000e+00, double* %yscale, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %20 = load i32, i32* %y1, align 4
  %conv19 = sext i32 %20 to i64
  %21 = load i64, i64* %rowsiz, align 8
  %mul20 = mul nsw i64 %conv19, %21
  %22 = load i32, i32* %x1, align 4
  %23 = load i32, i32* %bypp.addr, align 4
  %mul21 = mul nsw i32 %22, %23
  %conv22 = sext i32 %mul21 to i64
  %add = add nsw i64 %mul20, %conv22
  %24 = load i8*, i8** %dst.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %add
  store i8* %add.ptr, i8** %dst.addr, align 8
  %25 = load double, double* %wavelength.addr, align 8
  %mul23 = fmul double %25, 2.000000e+00
  store double %mul23, double* %wavelength.addr, align 8
  %26 = load i32, i32* %y1, align 4
  store i32 %26, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.195, %if.end.18
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %y2, align 4
  %cmp24 = icmp slt i32 %27, %28
  br i1 %cmp24, label %for.body, label %for.end.197

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %dst.addr, align 8
  store i8* %29, i8** %dest, align 8
  %30 = load i32, i32* %verbose.addr, align 4
  %tobool26 = icmp ne i32 %30, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %prog_interval, align 4
  %rem = srem i32 %31, %32
  %cmp27 = icmp eq i32 %rem, 0
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %land.lhs.true
  %33 = load i32, i32* %y, align 4
  %conv30 = sitofp i32 %33 to double
  %34 = load i32, i32* %height.addr, align 4
  %conv31 = sitofp i32 %34 to double
  %div32 = fdiv double %conv30, %conv31
  %call33 = call i32 @gimp_progress_update(double %div32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %land.lhs.true, %for.body
  %35 = load i32, i32* %x1, align 4
  store i32 %35, i32* %x, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %if.end.34
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %x2, align 4
  %cmp36 = icmp slt i32 %36, %37
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.35
  %38 = load i32, i32* %x, align 4
  %conv39 = sitofp i32 %38 to double
  %39 = load double, double* %cen_x.addr, align 8
  %sub40 = fsub double %conv39, %39
  %40 = load double, double* %xscale, align 8
  %mul41 = fmul double %sub40, %40
  store double %mul41, double* %dx, align 8
  %41 = load i32, i32* %y, align 4
  %conv42 = sitofp i32 %41 to double
  %42 = load double, double* %cen_y.addr, align 8
  %sub43 = fsub double %conv42, %42
  %43 = load double, double* %yscale, align 8
  %mul44 = fmul double %sub43, %43
  store double %mul44, double* %dy, align 8
  %44 = load double, double* %dx, align 8
  %45 = load double, double* %dx, align 8
  %mul45 = fmul double %44, %45
  %46 = load double, double* %dy, align 8
  %47 = load double, double* %dy, align 8
  %mul46 = fmul double %46, %47
  %add47 = fadd double %mul45, %mul46
  %call48 = call double @sqrt(double %add47) #4
  store double %call48, double* %d, align 8
  %48 = load i32, i32* %reflective.addr, align 4
  %tobool49 = icmp ne i32 %48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.63

if.then.50:                                       ; preds = %for.body.38
  %49 = load double, double* %amplitude.addr, align 8
  %50 = load double, double* %d, align 8
  %51 = load double, double* %wavelength.addr, align 8
  %div51 = fdiv double %50, %51
  %mul52 = fmul double %div51, 0x401921FB54442D18
  %52 = load double, double* %phase.addr, align 8
  %add53 = fadd double %mul52, %52
  %call54 = call double @sin(double %add53) #4
  %call55 = call double @fabs(double %call54) #5
  %mul56 = fmul double %49, %call55
  store double %mul56, double* %amnt, align 8
  %53 = load double, double* %amnt, align 8
  %54 = load double, double* %dx, align 8
  %mul57 = fmul double %53, %54
  %55 = load double, double* %xscale, align 8
  %div58 = fdiv double %mul57, %55
  %56 = load double, double* %cen_x.addr, align 8
  %add59 = fadd double %div58, %56
  store double %add59, double* %needx, align 8
  %57 = load double, double* %amnt, align 8
  %58 = load double, double* %dy, align 8
  %mul60 = fmul double %57, %58
  %59 = load double, double* %yscale, align 8
  %div61 = fdiv double %mul60, %59
  %60 = load double, double* %cen_y.addr, align 8
  %add62 = fadd double %div61, %60
  store double %add62, double* %needy, align 8
  br label %if.end.75

if.else.63:                                       ; preds = %for.body.38
  %61 = load double, double* %amplitude.addr, align 8
  %62 = load double, double* %d, align 8
  %63 = load double, double* %wavelength.addr, align 8
  %div64 = fdiv double %62, %63
  %mul65 = fmul double %div64, 0x401921FB54442D18
  %64 = load double, double* %phase.addr, align 8
  %add66 = fadd double %mul65, %64
  %call67 = call double @sin(double %add66) #4
  %mul68 = fmul double %61, %call67
  store double %mul68, double* %amnt, align 8
  %65 = load double, double* %amnt, align 8
  %66 = load double, double* %dx, align 8
  %add69 = fadd double %65, %66
  %67 = load double, double* %xscale, align 8
  %div70 = fdiv double %add69, %67
  %68 = load double, double* %cen_x.addr, align 8
  %add71 = fadd double %div70, %68
  store double %add71, double* %needx, align 8
  %69 = load double, double* %amnt, align 8
  %70 = load double, double* %dy, align 8
  %add72 = fadd double %69, %70
  %71 = load double, double* %yscale, align 8
  %div73 = fdiv double %add72, %71
  %72 = load double, double* %cen_y.addr, align 8
  %add74 = fadd double %div73, %72
  store double %add74, double* %needy, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.63, %if.then.50
  %73 = load i32, i32* %smear.addr, align 4
  %tobool76 = icmp ne i32 %73, 0
  br i1 %tobool76, label %if.then.77, label %if.else.108

if.then.77:                                       ; preds = %if.end.75
  %74 = load double, double* %needx, align 8
  %75 = load i32, i32* %width.addr, align 4
  %sub78 = sub nsw i32 %75, 2
  %conv79 = sitofp i32 %sub78 to double
  %cmp80 = fcmp ogt double %74, %conv79
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.77
  %76 = load i32, i32* %width.addr, align 4
  %sub82 = sub nsw i32 %76, 2
  %conv83 = sitofp i32 %sub82 to double
  br label %cond.end.88

cond.false:                                       ; preds = %if.then.77
  %77 = load double, double* %needx, align 8
  %cmp84 = fcmp olt double %77, 0.000000e+00
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.false
  br label %cond.end

cond.false.87:                                    ; preds = %cond.false
  %78 = load double, double* %needx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.87, %cond.true.86
  %cond = phi double [ 0.000000e+00, %cond.true.86 ], [ %78, %cond.false.87 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end, %cond.true
  %cond89 = phi double [ %conv83, %cond.true ], [ %cond, %cond.end ]
  %conv90 = fptosi double %cond89 to i32
  store i32 %conv90, i32* %xi, align 4
  %79 = load double, double* %needy, align 8
  %80 = load i32, i32* %height.addr, align 4
  %sub91 = sub nsw i32 %80, 2
  %conv92 = sitofp i32 %sub91 to double
  %cmp93 = fcmp ogt double %79, %conv92
  br i1 %cmp93, label %cond.true.95, label %cond.false.98

cond.true.95:                                     ; preds = %cond.end.88
  %81 = load i32, i32* %height.addr, align 4
  %sub96 = sub nsw i32 %81, 2
  %conv97 = sitofp i32 %sub96 to double
  br label %cond.end.105

cond.false.98:                                    ; preds = %cond.end.88
  %82 = load double, double* %needy, align 8
  %cmp99 = fcmp olt double %82, 0.000000e+00
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.false.98
  br label %cond.end.103

cond.false.102:                                   ; preds = %cond.false.98
  %83 = load double, double* %needy, align 8
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.101
  %cond104 = phi double [ 0.000000e+00, %cond.true.101 ], [ %83, %cond.false.102 ]
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.end.103, %cond.true.95
  %cond106 = phi double [ %conv97, %cond.true.95 ], [ %cond104, %cond.end.103 ]
  %conv107 = fptosi double %cond106 to i32
  store i32 %conv107, i32* %yi, align 4
  br label %if.end.111

if.else.108:                                      ; preds = %if.end.75
  %84 = load double, double* %needx, align 8
  %conv109 = fptosi double %84 to i32
  store i32 %conv109, i32* %xi, align 4
  %85 = load double, double* %needy, align 8
  %conv110 = fptosi double %85 to i32
  store i32 %conv110, i32* %yi, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %cond.end.105
  %86 = load i8*, i8** %src.addr, align 8
  %87 = load i64, i64* %rowsiz, align 8
  %88 = load i32, i32* %yi, align 4
  %conv112 = sext i32 %88 to i64
  %mul113 = mul nsw i64 %87, %conv112
  %add.ptr114 = getelementptr inbounds i8, i8* %86, i64 %mul113
  %89 = load i32, i32* %xi, align 4
  %90 = load i32, i32* %bypp.addr, align 4
  %mul115 = mul nsw i32 %89, %90
  %idx.ext = sext i32 %mul115 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %add.ptr114, i64 %idx.ext
  store i8* %add.ptr116, i8** %p, align 8
  %91 = load i32, i32* %xi, align 4
  %cmp117 = icmp sle i32 0, %91
  br i1 %cmp117, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.111
  %92 = load i32, i32* %xi, align 4
  %93 = load i32, i32* %width.addr, align 4
  %sub119 = sub nsw i32 %93, 1
  %cmp120 = icmp sle i32 %92, %sub119
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.111
  %94 = phi i1 [ false, %if.end.111 ], [ %cmp120, %land.rhs ]
  %cond122 = select i1 %94, i32 1, i32 0
  store i32 %cond122, i32* %x1_in, align 4
  %95 = load i32, i32* %yi, align 4
  %cmp123 = icmp sle i32 0, %95
  br i1 %cmp123, label %land.rhs.125, label %land.end.129

land.rhs.125:                                     ; preds = %land.end
  %96 = load i32, i32* %yi, align 4
  %97 = load i32, i32* %height.addr, align 4
  %sub126 = sub nsw i32 %97, 1
  %cmp127 = icmp sle i32 %96, %sub126
  br label %land.end.129

land.end.129:                                     ; preds = %land.rhs.125, %land.end
  %98 = phi i1 [ false, %land.end ], [ %cmp127, %land.rhs.125 ]
  %cond130 = select i1 %98, i32 1, i32 0
  store i32 %cond130, i32* %y1_in, align 4
  %99 = load i32, i32* %xi, align 4
  %add131 = add nsw i32 %99, 1
  %cmp132 = icmp sle i32 0, %add131
  br i1 %cmp132, label %land.rhs.134, label %land.end.139

land.rhs.134:                                     ; preds = %land.end.129
  %100 = load i32, i32* %xi, align 4
  %add135 = add nsw i32 %100, 1
  %101 = load i32, i32* %width.addr, align 4
  %sub136 = sub nsw i32 %101, 1
  %cmp137 = icmp sle i32 %add135, %sub136
  br label %land.end.139

land.end.139:                                     ; preds = %land.rhs.134, %land.end.129
  %102 = phi i1 [ false, %land.end.129 ], [ %cmp137, %land.rhs.134 ]
  %cond140 = select i1 %102, i32 1, i32 0
  store i32 %cond140, i32* %x2_in, align 4
  %103 = load i32, i32* %yi, align 4
  %add141 = add nsw i32 %103, 1
  %cmp142 = icmp sle i32 0, %add141
  br i1 %cmp142, label %land.rhs.144, label %land.end.149

land.rhs.144:                                     ; preds = %land.end.139
  %104 = load i32, i32* %yi, align 4
  %add145 = add nsw i32 %104, 1
  %105 = load i32, i32* %height.addr, align 4
  %sub146 = sub nsw i32 %105, 1
  %cmp147 = icmp sle i32 %add145, %sub146
  br label %land.end.149

land.end.149:                                     ; preds = %land.rhs.144, %land.end.139
  %106 = phi i1 [ false, %land.end.139 ], [ %cmp147, %land.rhs.144 ]
  %cond150 = select i1 %106, i32 1, i32 0
  store i32 %cond150, i32* %y2_in, align 4
  %107 = load i32, i32* %x1_in, align 4
  %tobool151 = icmp ne i32 %107, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.else.155

land.lhs.true.152:                                ; preds = %land.end.149
  %108 = load i32, i32* %y1_in, align 4
  %tobool153 = icmp ne i32 %108, 0
  br i1 %tobool153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %land.lhs.true.152
  %109 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 0
  store i8* %109, i8** %arrayidx, align 8
  br label %if.end.157

if.else.155:                                      ; preds = %land.lhs.true.152, %land.end.149
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %zeroes, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 0
  store i8* %arraydecay, i8** %arrayidx156, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.then.154
  %110 = load i32, i32* %x2_in, align 4
  %tobool158 = icmp ne i32 %110, 0
  br i1 %tobool158, label %land.lhs.true.159, label %if.else.165

land.lhs.true.159:                                ; preds = %if.end.157
  %111 = load i32, i32* %y1_in, align 4
  %tobool160 = icmp ne i32 %111, 0
  br i1 %tobool160, label %if.then.161, label %if.else.165

if.then.161:                                      ; preds = %land.lhs.true.159
  %112 = load i8*, i8** %p, align 8
  %113 = load i32, i32* %bypp.addr, align 4
  %idx.ext162 = sext i32 %113 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %112, i64 %idx.ext162
  %arrayidx164 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 1
  store i8* %add.ptr163, i8** %arrayidx164, align 8
  br label %if.end.168

if.else.165:                                      ; preds = %land.lhs.true.159, %if.end.157
  %arraydecay166 = getelementptr inbounds [4 x i8], [4 x i8]* %zeroes, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 1
  store i8* %arraydecay166, i8** %arrayidx167, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.165, %if.then.161
  %114 = load i32, i32* %x1_in, align 4
  %tobool169 = icmp ne i32 %114, 0
  br i1 %tobool169, label %land.lhs.true.170, label %if.else.175

land.lhs.true.170:                                ; preds = %if.end.168
  %115 = load i32, i32* %y2_in, align 4
  %tobool171 = icmp ne i32 %115, 0
  br i1 %tobool171, label %if.then.172, label %if.else.175

if.then.172:                                      ; preds = %land.lhs.true.170
  %116 = load i8*, i8** %p, align 8
  %117 = load i64, i64* %rowsiz, align 8
  %add.ptr173 = getelementptr inbounds i8, i8* %116, i64 %117
  %arrayidx174 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 2
  store i8* %add.ptr173, i8** %arrayidx174, align 8
  br label %if.end.178

if.else.175:                                      ; preds = %land.lhs.true.170, %if.end.168
  %arraydecay176 = getelementptr inbounds [4 x i8], [4 x i8]* %zeroes, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 2
  store i8* %arraydecay176, i8** %arrayidx177, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.175, %if.then.172
  %118 = load i32, i32* %x2_in, align 4
  %tobool179 = icmp ne i32 %118, 0
  br i1 %tobool179, label %land.lhs.true.180, label %if.else.187

land.lhs.true.180:                                ; preds = %if.end.178
  %119 = load i32, i32* %y2_in, align 4
  %tobool181 = icmp ne i32 %119, 0
  br i1 %tobool181, label %if.then.182, label %if.else.187

if.then.182:                                      ; preds = %land.lhs.true.180
  %120 = load i8*, i8** %p, align 8
  %121 = load i32, i32* %bypp.addr, align 4
  %idx.ext183 = sext i32 %121 to i64
  %add.ptr184 = getelementptr inbounds i8, i8* %120, i64 %idx.ext183
  %122 = load i64, i64* %rowsiz, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr184, i64 %122
  %arrayidx186 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 3
  store i8* %add.ptr185, i8** %arrayidx186, align 8
  br label %if.end.190

if.else.187:                                      ; preds = %land.lhs.true.180, %if.end.178
  %arraydecay188 = getelementptr inbounds [4 x i8], [4 x i8]* %zeroes, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 3
  store i8* %arraydecay188, i8** %arrayidx189, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.187, %if.then.182
  %123 = load i8*, i8** %dest, align 8
  %124 = load double, double* %needx, align 8
  %125 = load double, double* %needy, align 8
  %126 = load i32, i32* %bypp.addr, align 4
  %127 = load i32, i32* %has_alpha.addr, align 4
  %arraydecay191 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i32 0
  call void @gimp_bilinear_pixels_8(i8* %123, double %124, double %125, i32 %126, i32 %127, i8** %arraydecay191)
  %128 = load i32, i32* %bypp.addr, align 4
  %129 = load i8*, i8** %dest, align 8
  %idx.ext192 = sext i32 %128 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %129, i64 %idx.ext192
  store i8* %add.ptr193, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.190
  %130 = load i32, i32* %x, align 4
  %inc = add nsw i32 %130, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  %131 = load i64, i64* %rowsiz, align 8
  %132 = load i8*, i8** %dst.addr, align 8
  %add.ptr194 = getelementptr inbounds i8, i8* %132, i64 %131
  store i8* %add.ptr194, i8** %dst.addr, align 8
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.end
  %133 = load i32, i32* %y, align 4
  %inc196 = add nsw i32 %133, 1
  store i32 %inc196, i32* %y, align 4
  br label %for.cond

for.end.197:                                      ; preds = %for.cond
  %134 = load i32, i32* %verbose.addr, align 4
  %tobool198 = icmp ne i32 %134, 0
  br i1 %tobool198, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %for.end.197
  %call200 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.199, %for.end.197
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sin(double) #2

declare void @gimp_bilinear_pixels_8(i8*, double, double, i32, i32, i8**) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_displays_flush() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
