; ModuleID = './plug-ins/common/lens-flare.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.FlareValues = type { i32, i32 }
%struct.REFLECT = type { %struct._GimpRGB, float, i32, i32, i32 }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct.FlareCenter = type { %struct._GimpDrawable*, %struct._GimpPreview*, %struct._GtkWidget* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pos-x\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"X-position\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pos-y\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Y-position\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"plug-in-flarefx\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Add a lens flare effect\00", align 1
@.str.12 = private unnamed_addr constant [112 x i8] c"Adds a lens flare effects.  Makes your image look like it was snapped with a cheap camera with a lot of lens :)\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Karl-Johan Andersson\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Lens _Flare...\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"<Image>/Filters/Light and Shadow/Light\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@fvals = internal global %struct.FlareValues { i32 128, i32 128 }, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"Render lens flare\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"flarefx\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Lens Flare\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"gimp-flarefx\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Center of Flare Effect\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"refval-changed\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Show _position\00", align 1
@show_cursor = internal global i32 1, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@xs = internal global i32 0, align 4
@ys = internal global i32 0, align 4
@scolor = internal global float 0.000000e+00, align 4
@sglow = internal global float 0.000000e+00, align 4
@sinner = internal global float 0.000000e+00, align 4
@souter = internal global float 0.000000e+00, align 4
@shalo = internal global float 0.000000e+00, align 4
@color = internal global %struct._GimpRGB zeroinitializer, align 8
@glow = internal global %struct._GimpRGB zeroinitializer, align 8
@inner = internal global %struct._GimpRGB zeroinitializer, align 8
@outer = internal global %struct._GimpRGB zeroinitializer, align 8
@halo = internal global %struct._GimpRGB zeroinitializer, align 8
@numref = internal global i32 0, align 4
@ref1 = internal global [19 x %struct.REFLECT] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #4
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
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.FlareValues* @fvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @flare_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %9)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %10 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %10, 5
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %11 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %11, 3
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 0), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 4
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 1), align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %if.end.11
  br label %sw.epilog

sw.bb.21:                                         ; preds = %do.end
  %call22 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.FlareValues* @fvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %if.end.20, %if.end
  %16 = load i32, i32* %status, align 4
  %cmp23 = icmp eq i32 %16, 3
  br i1 %cmp23, label %if.then.24, label %if.end.45

if.then.24:                                       ; preds = %sw.epilog
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id, align 4
  %call25 = call i32 @gimp_drawable_is_rgb(i32 %18)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.24
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id27, align 4
  %call28 = call i32 @gimp_drawable_is_gray(i32 %20)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %lor.lhs.false, %if.then.24
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #4
  %call32 = call i32 @gimp_progress_init(i8* %call31)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width, align 4
  %call33 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %22, %call33
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @FlareFX(%struct._GimpDrawable* %23, %struct._GimpPreview* null)
  %24 = load i32, i32* %run_mode, align 4
  %cmp34 = icmp ne i32 %24, 1
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.30
  %call37 = call i32 @gimp_displays_flush()
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.30
  %25 = load i32, i32* %run_mode, align 4
  %cmp39 = icmp eq i32 %25, 0
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.FlareValues* @fvals to i8*), i32 8)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.38
  br label %if.end.44

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %sw.epilog
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %27)
  br label %return

return:                                           ; preds = %if.end.45, %if.then
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
define internal i32 @flare_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -5, i8* null)
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
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_preview_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %20, i32 4)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @FlareFX to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 2)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_preview_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call20)
  %33 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpPreview*
  %call22 = call %struct._GtkWidget* @flare_center_create(%struct._GimpDrawable* %30, %struct._GimpPreview* %33)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %frame, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_dialog_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call25)
  %42 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDialog*
  %call27 = call i32 @gimp_dialog_run(%struct._GimpDialog* %42)
  %cmp = icmp eq i32 %call27, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %43)
  %44 = load i32, i32* %run, align 4
  ret i32 %44
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @FlareFX(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %cur_row = alloca i8*, align 8
  %s = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %matt = alloca i32, align 4
  %hyp = alloca float, align 4
  %zoom = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %src, align 8
  store i8* null, i8** %dest, align 8
  store double 0.000000e+00, double* %zoom, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %4 = bitcast %struct._GimpPreview* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpZoomPreview*
  %call2 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %5, i32* %width, i32* %height, i32* %bytes)
  store i8* %call2, i8** %src, align 8
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %7 = bitcast %struct._GimpPreview* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_zoom_preview_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpZoomPreview*
  %call5 = call double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview* %8)
  store double %call5, double* %zoom, align 8
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 1), align 4
  call void @gimp_preview_transform(%struct._GimpPreview* %9, i32 %10, i32 %11, i32* @xs, i32* @ys)
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  %12 = load i32, i32* %width, align 4
  store i32 %12, i32* %x2, align 4
  %13 = load i32, i32* %height, align 4
  store i32 %13, i32* %y2, align 4
  %14 = load i32, i32* %bytes, align 4
  %15 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %height, align 4
  %mul6 = mul nsw i32 %mul, %16
  %conv = sext i32 %mul6 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call7, i8** %dest, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id, align 4
  %call8 = call i32 @gimp_drawable_mask_bounds(i32 %18, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width9, align 4
  store i32 %20, i32* %width, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 2
  %22 = load i32, i32* %height10, align 4
  store i32 %22, i32* %height, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 0), align 4
  store i32 %23, i32* @xs, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 1), align 4
  store i32 %24, i32* @ys, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %26, i32 %27, i32 0, i32 0)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %28, i32 0, i32 0, i32 %29, i32 %30, i32 1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool11 = icmp ne %struct._GimpPreview* %31, null
  br i1 %tobool11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.end
  %32 = load i32, i32* %width, align 4
  %conv13 = sitofp i32 %32 to double
  %33 = load double, double* %zoom, align 8
  %mul14 = fmul double %conv13, %33
  %conv15 = fptosi double %mul14 to i32
  store i32 %conv15, i32* %matt, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.end
  %34 = load i32, i32* %width, align 4
  store i32 %34, i32* %matt, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.12
  %35 = load i32, i32* %x2, align 4
  %36 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %35, %36
  %37 = load i32, i32* %bytes, align 4
  %mul18 = mul nsw i32 %sub, %37
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %cur_row, align 8
  %38 = load i32, i32* %matt, align 4
  %conv21 = sitofp i32 %38 to float
  %conv22 = fpext float %conv21 to double
  %mul23 = fmul double %conv22, 3.750000e-02
  %conv24 = fptrunc double %mul23 to float
  store float %conv24, float* @scolor, align 4
  %39 = load i32, i32* %matt, align 4
  %conv25 = sitofp i32 %39 to float
  %conv26 = fpext float %conv25 to double
  %mul27 = fmul double %conv26, 7.812500e-02
  %conv28 = fptrunc double %mul27 to float
  store float %conv28, float* @sglow, align 4
  %40 = load i32, i32* %matt, align 4
  %conv29 = sitofp i32 %40 to float
  %conv30 = fpext float %conv29 to double
  %mul31 = fmul double %conv30, 1.796875e-01
  %conv32 = fptrunc double %mul31 to float
  store float %conv32, float* @sinner, align 4
  %41 = load i32, i32* %matt, align 4
  %conv33 = sitofp i32 %41 to float
  %conv34 = fpext float %conv33 to double
  %mul35 = fmul double %conv34, 3.359375e-01
  %conv36 = fptrunc double %mul35 to float
  store float %conv36, float* @souter, align 4
  %42 = load i32, i32* %matt, align 4
  %conv37 = sitofp i32 %42 to float
  %conv38 = fpext float %conv37 to double
  %mul39 = fmul double %conv38, 8.437500e-02
  %conv40 = fptrunc double %mul39 to float
  store float %conv40, float* @shalo, align 4
  store double 0x3FEDFDFDFDFDFDFE, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @color, i32 0, i32 0), align 8
  store double 0x3FEDFDFDFDFDFDFE, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @color, i32 0, i32 1), align 8
  store double 0x3FEDFDFDFDFDFDFE, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @color, i32 0, i32 2), align 8
  store double 0x3FEEBEBEBEBEBEBF, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @glow, i32 0, i32 0), align 8
  store double 0x3FEEBEBEBEBEBEBF, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @glow, i32 0, i32 1), align 8
  store double 0x3FEEBEBEBEBEBEBF, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @glow, i32 0, i32 2), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @inner, i32 0, i32 0), align 8
  store double 0x3FC3131313131313, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @inner, i32 0, i32 1), align 8
  store double 0x3FC5959595959596, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @inner, i32 0, i32 2), align 8
  store double 0x3FD1515151515151, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @outer, i32 0, i32 0), align 8
  store double 0x3FCD9D9D9D9D9D9E, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @outer, i32 0, i32 1), align 8
  store double 0x3FD0101010101010, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @outer, i32 0, i32 2), align 8
  store double 0x3FD4141414141414, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @halo, i32 0, i32 0), align 8
  store double 0x3FAE1E1E1E1E1E1E, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @halo, i32 0, i32 1), align 8
  store double 0x3F90101010101010, double* getelementptr inbounds (%struct._GimpRGB, %struct._GimpRGB* @halo, i32 0, i32 2), align 8
  %43 = load i32, i32* @xs, align 4
  %44 = load i32, i32* @ys, align 4
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %height, align 4
  %47 = load i32, i32* %matt, align 4
  call void @initref(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %48 = load i32, i32* %y1, align 4
  store i32 %48, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %if.end.17
  %49 = load i32, i32* %row, align 4
  %50 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %49, %50
  br i1 %cmp, label %for.body, label %for.end.103

for.body:                                         ; preds = %for.cond
  %51 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool42 = icmp ne %struct._GimpPreview* %51, null
  br i1 %tobool42, label %if.then.43, label %if.else.48

if.then.43:                                       ; preds = %for.body
  %52 = load i8*, i8** %cur_row, align 8
  %53 = load i8*, i8** %src, align 8
  %54 = load i32, i32* %row, align 4
  %55 = load i32, i32* %width, align 4
  %mul44 = mul nsw i32 %54, %55
  %56 = load i32, i32* %bytes, align 4
  %mul45 = mul nsw i32 %mul44, %56
  %idx.ext = sext i32 %mul45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  %57 = load i32, i32* %width, align 4
  %58 = load i32, i32* %bytes, align 4
  %mul46 = mul nsw i32 %57, %58
  %conv47 = sext i32 %mul46 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %add.ptr, i64 %conv47, i32 1, i1 false)
  br label %if.end.50

if.else.48:                                       ; preds = %for.body
  %59 = load i8*, i8** %cur_row, align 8
  %60 = load i32, i32* %x1, align 4
  %61 = load i32, i32* %row, align 4
  %62 = load i32, i32* %x2, align 4
  %63 = load i32, i32* %x1, align 4
  %sub49 = sub nsw i32 %62, %63
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %59, i32 %60, i32 %61, i32 %sub49)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.43
  %64 = load i8*, i8** %cur_row, align 8
  store i8* %64, i8** %s, align 8
  %65 = load i32, i32* %x1, align 4
  store i32 %65, i32* %col, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.78, %if.end.50
  %66 = load i32, i32* %col, align 4
  %67 = load i32, i32* %x2, align 4
  %cmp52 = icmp slt i32 %66, %67
  br i1 %cmp52, label %for.body.54, label %for.end.80

for.body.54:                                      ; preds = %for.cond.51
  %68 = load i32, i32* %col, align 4
  %69 = load i32, i32* @xs, align 4
  %sub55 = sub nsw i32 %68, %69
  %conv56 = sitofp i32 %sub55 to double
  %70 = load i32, i32* %row, align 4
  %71 = load i32, i32* @ys, align 4
  %sub57 = sub nsw i32 %70, %71
  %conv58 = sitofp i32 %sub57 to double
  %call59 = call double @hypot(double %conv56, double %conv58) #4
  %conv60 = fptrunc double %call59 to float
  store float %conv60, float* %hyp, align 4
  %72 = load i8*, i8** %s, align 8
  %73 = load float, float* %hyp, align 4
  call void @mcolor(i8* %72, float %73)
  %74 = load i8*, i8** %s, align 8
  %75 = load float, float* %hyp, align 4
  call void @mglow(i8* %74, float %75)
  %76 = load i8*, i8** %s, align 8
  %77 = load float, float* %hyp, align 4
  call void @minner(i8* %76, float %77)
  %78 = load i8*, i8** %s, align 8
  %79 = load float, float* %hyp, align 4
  call void @mouter(i8* %78, float %79)
  %80 = load i8*, i8** %s, align 8
  %81 = load float, float* %hyp, align 4
  call void @mhalo(i8* %80, float %81)
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %for.body.54
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* @numref, align 4
  %cmp62 = icmp slt i32 %82, %83
  br i1 %cmp62, label %for.body.64, label %for.end

for.body.64:                                      ; preds = %for.cond.61
  %84 = load i32, i32* %i, align 4
  %idxprom = sext i32 %84 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %arrayidx, i32 0, i32 4
  %85 = load i32, i32* %type, align 4
  switch i32 %85, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.67
    i32 3, label %sw.bb.70
    i32 4, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %for.body.64
  %86 = load i8*, i8** %s, align 8
  %87 = load i32, i32* %i, align 4
  %idx.ext65 = sext i32 %87 to i64
  %add.ptr66 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i32 0), i64 %idx.ext65
  %88 = load i32, i32* %col, align 4
  %89 = load i32, i32* %row, align 4
  call void @mrt1(i8* %86, %struct.REFLECT* %add.ptr66, i32 %88, i32 %89)
  br label %sw.epilog

sw.bb.67:                                         ; preds = %for.body.64
  %90 = load i8*, i8** %s, align 8
  %91 = load i32, i32* %i, align 4
  %idx.ext68 = sext i32 %91 to i64
  %add.ptr69 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i32 0), i64 %idx.ext68
  %92 = load i32, i32* %col, align 4
  %93 = load i32, i32* %row, align 4
  call void @mrt2(i8* %90, %struct.REFLECT* %add.ptr69, i32 %92, i32 %93)
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.body.64
  %94 = load i8*, i8** %s, align 8
  %95 = load i32, i32* %i, align 4
  %idx.ext71 = sext i32 %95 to i64
  %add.ptr72 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i32 0), i64 %idx.ext71
  %96 = load i32, i32* %col, align 4
  %97 = load i32, i32* %row, align 4
  call void @mrt3(i8* %94, %struct.REFLECT* %add.ptr72, i32 %96, i32 %97)
  br label %sw.epilog

sw.bb.73:                                         ; preds = %for.body.64
  %98 = load i8*, i8** %s, align 8
  %99 = load i32, i32* %i, align 4
  %idx.ext74 = sext i32 %99 to i64
  %add.ptr75 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i32 0), i64 %idx.ext74
  %100 = load i32, i32* %col, align 4
  %101 = load i32, i32* %row, align 4
  call void @mrt4(i8* %98, %struct.REFLECT* %add.ptr75, i32 %100, i32 %101)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.64, %sw.bb.73, %sw.bb.70, %sw.bb.67, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %102 = load i32, i32* %i, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  %103 = load i32, i32* %bytes, align 4
  %104 = load i8*, i8** %s, align 8
  %idx.ext76 = sext i32 %103 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %104, i64 %idx.ext76
  store i8* %add.ptr77, i8** %s, align 8
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end
  %105 = load i32, i32* %col, align 4
  %inc79 = add nsw i32 %105, 1
  store i32 %inc79, i32* %col, align 4
  br label %for.cond.51

for.end.80:                                       ; preds = %for.cond.51
  %106 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool81 = icmp ne %struct._GimpPreview* %106, null
  br i1 %tobool81, label %if.then.82, label %if.else.89

if.then.82:                                       ; preds = %for.end.80
  %107 = load i8*, i8** %dest, align 8
  %108 = load i32, i32* %row, align 4
  %109 = load i32, i32* %width, align 4
  %mul83 = mul nsw i32 %108, %109
  %110 = load i32, i32* %bytes, align 4
  %mul84 = mul nsw i32 %mul83, %110
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %107, i64 %idx.ext85
  %111 = load i8*, i8** %cur_row, align 8
  %112 = load i32, i32* %width, align 4
  %113 = load i32, i32* %bytes, align 4
  %mul87 = mul nsw i32 %112, %113
  %conv88 = sext i32 %mul87 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr86, i8* %111, i64 %conv88, i32 1, i1 false)
  br label %if.end.91

if.else.89:                                       ; preds = %for.end.80
  %114 = load i8*, i8** %cur_row, align 8
  %115 = load i32, i32* %x1, align 4
  %116 = load i32, i32* %row, align 4
  %117 = load i32, i32* %x2, align 4
  %118 = load i32, i32* %x1, align 4
  %sub90 = sub nsw i32 %117, %118
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %114, i32 %115, i32 %116, i32 %sub90)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.82
  %119 = load i32, i32* %row, align 4
  %rem = srem i32 %119, 5
  %cmp92 = icmp eq i32 %rem, 0
  br i1 %cmp92, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %if.end.91
  %120 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool94 = icmp ne %struct._GimpPreview* %120, null
  br i1 %tobool94, label %if.end.100, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true
  %121 = load i32, i32* %row, align 4
  %conv96 = sitofp i32 %121 to double
  %122 = load i32, i32* %y2, align 4
  %123 = load i32, i32* %y1, align 4
  %sub97 = sub nsw i32 %122, %123
  %conv98 = sitofp i32 %sub97 to double
  %div = fdiv double %conv96, %conv98
  %call99 = call i32 @gimp_progress_update(double %div)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %land.lhs.true, %if.end.91
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %124 = load i32, i32* %row, align 4
  %inc102 = add nsw i32 %124, 1
  store i32 %inc102, i32* %row, align 4
  br label %for.cond

for.end.103:                                      ; preds = %for.cond
  %125 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool104 = icmp ne %struct._GimpPreview* %125, null
  br i1 %tobool104, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %for.end.103
  %126 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %127 = load i8*, i8** %dest, align 8
  %128 = load i32, i32* %width, align 4
  %129 = load i32, i32* %bytes, align 4
  %mul106 = mul nsw i32 %128, %129
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %126, i8* %127, i32 %mul106)
  %130 = load i8*, i8** %src, align 8
  call void @g_free(i8* %130)
  %131 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %131)
  br label %if.end.115

if.else.107:                                      ; preds = %for.end.103
  %call108 = call i32 @gimp_progress_update(double 1.000000e+00)
  %132 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %132)
  %133 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id109 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %133, i32 0, i32 0
  %134 = load i32, i32* %drawable_id109, align 4
  %call110 = call i32 @gimp_drawable_merge_shadow(i32 %134, i32 1)
  %135 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id111 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %135, i32 0, i32 0
  %136 = load i32, i32* %drawable_id111, align 4
  %137 = load i32, i32* %x1, align 4
  %138 = load i32, i32* %y1, align 4
  %139 = load i32, i32* %x2, align 4
  %140 = load i32, i32* %x1, align 4
  %sub112 = sub nsw i32 %139, %140
  %141 = load i32, i32* %y2, align 4
  %142 = load i32, i32* %y1, align 4
  %sub113 = sub nsw i32 %141, %142
  %call114 = call i32 @gimp_drawable_update(i32 %136, i32 %137, i32 %138, i32 %sub112, i32 %sub113)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.107, %if.then.105
  %143 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %143)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @flare_center_create(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %center = alloca %struct.FlareCenter*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %check = alloca %struct._GtkWidget*, align 8
  %image_ID = alloca i32, align 4
  %res_x = alloca double, align 8
  %res_y = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.FlareCenter*
  store %struct.FlareCenter* %0, %struct.FlareCenter** %center, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %drawable1 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %2, i32 0, i32 0
  store %struct._GimpDrawable* %1, %struct._GimpDrawable** %drawable1, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %4 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %preview2 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %4, i32 0, i32 1
  store %struct._GimpPreview* %3, %struct._GimpPreview** %preview2, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %8 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %9 = bitcast %struct.FlareCenter* %8 to i8*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %13 = bitcast %struct.FlareCenter* %12 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (i8*)* @g_free to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 2)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %hbox, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_item_get_image(i32 %20)
  store i32 %call10, i32* %image_ID, align 4
  %21 = load i32, i32* %image_ID, align 4
  %call11 = call i32 @gimp_image_get_resolution(i32 %21, double* %res_x, double* %res_y)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #4
  %22 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %22 to double
  %23 = load double, double* %res_x, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load i32, i32* %width, align 4
  %conv13 = uitofp i32 %25 to double
  %sub = fsub double -0.000000e+00, %conv13
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 1
  %27 = load i32, i32* %width14, align 4
  %mul = mul i32 2, %27
  %conv15 = uitofp i32 %mul to double
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load i32, i32* %width16, align 4
  %conv17 = uitofp i32 %29 to double
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)) #4
  %30 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 1), align 4
  %conv19 = sitofp i32 %30 to double
  %31 = load double, double* %res_y, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 2
  %33 = load i32, i32* %height, align 4
  %conv20 = uitofp i32 %33 to double
  %sub21 = fsub double -0.000000e+00, %conv20
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 2
  %35 = load i32, i32* %height22, align 4
  %mul23 = mul i32 2, %35
  %conv24 = uitofp i32 %mul23 to double
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 2
  %37 = load i32, i32* %height25, align 4
  %conv26 = uitofp i32 %37 to double
  %call27 = call %struct._GtkWidget* @gimp_coordinates_new(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 1, i32 -1, i32 1, i32 0, i32 0, i8* %call12, double %conv, double %23, double %sub, double %conv15, double 0.000000e+00, double %conv17, i8* %call18, double %conv19, double %31, double %sub21, double %conv24, double 0.000000e+00, double %conv26)
  %38 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %coords = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %38, i32 0, i32 2
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %coords, align 8
  %39 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %coords28 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %39, i32 0, i32 2
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %coords28, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %42, i32 1, i32 12)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call31)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %46 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %coords33 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %46, i32 0, i32 2
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %coords33, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %coords34 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %48, i32 0, i32 2
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %coords34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %coords35 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %50, i32 0, i32 2
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %coords35, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %54 = bitcast %struct.FlareCenter* %53 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct.FlareCenter*)* @flare_center_coords_update to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %coords37 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %55, i32 0, i32 2
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %coords37, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %58 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %59 = bitcast %struct.FlareCenter* %58 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct.FlareCenter*)* @flare_center_coords_update to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 0)
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0)) #4
  %call40 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call39)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %check, align 8
  %60 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %coords41 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %60, i32 0, i32 2
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %coords41, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call42)
  %63 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  call void @gtk_table_attach(%struct._GtkTable* %63, %struct._GtkWidget* %64, i32 0, i32 5, i32 2, i32 3, i32 5, i32 4, i32 0, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_toggle_button_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call44)
  %67 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkToggleButton*
  %68 = load i32, i32* @show_cursor, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %67, i32 %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @show_cursor to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %74, i32 0, i32 2
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_queue_draw to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area48 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %77, i32 0, i32 2
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %area48, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %81 = bitcast %struct.FlareCenter* %80 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.FlareCenter*)* @flare_center_preview_realize to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area50 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %82, i32 0, i32 2
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %area50, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %85 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %86 = bitcast %struct.FlareCenter* %85 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct.FlareCenter*)* @flare_center_preview_expose to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 1)
  %87 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area52 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %87, i32 0, i32 2
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %area52, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %90 = load %struct.FlareCenter*, %struct.FlareCenter** %center, align 8
  %91 = bitcast %struct.FlareCenter* %90 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct.FlareCenter*)* @flare_center_preview_events to void ()*), i8* %91, void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %92
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @flare_center_coords_update(%struct._GimpSizeEntry* %coords, %struct.FlareCenter* %center) #0 {
entry:
  %coords.addr = alloca %struct._GimpSizeEntry*, align 8
  %center.addr = alloca %struct.FlareCenter*, align 8
  store %struct._GimpSizeEntry* %coords, %struct._GimpSizeEntry** %coords.addr, align 8
  store %struct.FlareCenter* %center, %struct.FlareCenter** %center.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %coords.addr, align 8
  %call = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %0, i32 0)
  %conv = fptosi double %call to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 0), align 4
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %coords.addr, align 8
  %call1 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %1, i32 1)
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 1), align 4
  %2 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %2, i32 0, i32 1
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %3)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @flare_center_preview_realize(%struct._GtkWidget* %widget, %struct.FlareCenter* %center) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %center.addr = alloca %struct.FlareCenter*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.FlareCenter* %center, %struct.FlareCenter** %center.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %1, i32 34)
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor, align 8
  %2 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %2, i32 0, i32 1
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %4 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gimp_preview_set_default_cursor(%struct._GimpPreview* %3, %struct._GdkCursor* %4)
  %5 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @flare_center_preview_expose(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct.FlareCenter* %center) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %center.addr = alloca %struct.FlareCenter*, align 8
  %cr = alloca %struct._cairo*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct.FlareCenter* %center, %struct.FlareCenter** %center.addr, align 8
  %0 = load i32, i32* @show_cursor, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %1, i32 0, i32 1
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %3)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %4 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %preview2 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %4, i32 0, i32 1
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.FlareValues, %struct.FlareValues* @fvals, i32 0, i32 1), align 4
  call void @gimp_preview_transform(%struct._GimpPreview* %5, i32 %6, i32 %7, i32* %x, i32* %y)
  %8 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %preview3 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %8, i32 0, i32 1
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview3, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %9, i32* %width, i32* %height)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %11 = load i32, i32* %x, align 4
  %conv = sitofp i32 %11 to double
  %add = fadd double %conv, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %10, double %add, double 0.000000e+00)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %13 = load i32, i32* %x, align 4
  %conv4 = sitofp i32 %13 to double
  %add5 = fadd double %conv4, 5.000000e-01
  %14 = load i32, i32* %height, align 4
  %conv6 = sitofp i32 %14 to double
  call void @cairo_line_to(%struct._cairo* %12, double %add5, double %conv6)
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %16 = load i32, i32* %y, align 4
  %conv7 = sitofp i32 %16 to double
  %add8 = fadd double %conv7, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %15, double 0.000000e+00, double %add8)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %18 = load i32, i32* %width, align 4
  %conv9 = sitofp i32 %18 to double
  %19 = load i32, i32* %y, align 4
  %conv10 = sitofp i32 %19 to double
  %add11 = fadd double %conv10, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %17, double %conv9, double %add11)
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %20, double 3.000000e+00)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %21, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %22 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %22)
  %23 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %23, double 1.000000e+00)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %24, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flare_center_preview_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct.FlareCenter* %center) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %center.addr = alloca %struct.FlareCenter*, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct.FlareCenter* %center, %struct.FlareCenter** %center.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventMotion*
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %3, i32 0, i32 7
  %4 = load i32, i32* %state, align 4
  %and = and i32 %4, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %if.end
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %6 = bitcast %union._GdkEvent* %5 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %6, %struct._GdkEventButton** %bevent, align 8
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 8
  %8 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %sw.bb.1
  %9 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %9, i32 0, i32 1
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 4
  %12 = load double, double* %x, align 8
  %conv = fptosi double %12 to i32
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 5
  %14 = load double, double* %y, align 8
  %conv3 = fptosi double %14 to i32
  call void @gimp_preview_untransform(%struct._GimpPreview* %10, i32 %conv, i32 %conv3, i32* %tx, i32* %ty)
  %15 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %coords = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %15, i32 0, i32 2
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %coords, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %19 = bitcast %struct.FlareCenter* %18 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct.FlareCenter*)* @flare_center_coords_update to i8*), i8* %19)
  %20 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %coords4 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %coords4, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_size_entry_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call5)
  %23 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSizeEntry*
  %24 = load i32, i32* %tx, align 4
  %conv7 = sitofp i32 %24 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %23, i32 0, double %conv7)
  %25 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %coords8 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %coords8, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_size_entry_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call9)
  %28 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSizeEntry*
  %29 = load i32, i32* %ty, align 4
  %conv11 = sitofp i32 %29 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %28, i32 1, double %conv11)
  %30 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %coords12 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %30, i32 0, i32 2
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %coords12, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %34 = bitcast %struct.FlareCenter* %33 to i8*
  %call13 = call i32 @g_signal_handlers_unblock_matched(i8* %32, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct.FlareCenter*)* @flare_center_coords_update to i8*), i8* %34)
  %35 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %coords14 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %35, i32 0, i32 2
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %coords14, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_size_entry_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call15)
  %38 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpSizeEntry*
  %39 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  call void @flare_center_coords_update(%struct._GimpSizeEntry* %38, %struct.FlareCenter* %39)
  %40 = load %struct.FlareCenter*, %struct.FlareCenter** %center.addr, align 8
  %preview17 = getelementptr inbounds %struct.FlareCenter, %struct.FlareCenter* %40, i32 0, i32 1
  %41 = load %struct._GimpPreview*, %struct._GimpPreview** %preview17, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %41, i32 0, i32 2
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %42)
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %sw.bb.1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.2
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gimp_preview_set_default_cursor(%struct._GimpPreview*, %struct._GdkCursor*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gimp_preview_transform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gimp_preview_untransform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @initref(i32 %sx, i32 %sy, i32 %width, i32 %height, i32 %matt) #0 {
entry:
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %matt.addr = alloca i32, align 4
  %xh = alloca i32, align 4
  %yh = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store i32 %sx, i32* %sx.addr, align 4
  store i32 %sy, i32* %sy.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %matt, i32* %matt.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %xh, align 4
  %1 = load i32, i32* %height.addr, align 4
  %div1 = sdiv i32 %1, 2
  store i32 %div1, i32* %yh, align 4
  %2 = load i32, i32* %xh, align 4
  %3 = load i32, i32* %sx.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %dx, align 4
  %4 = load i32, i32* %yh, align 4
  %5 = load i32, i32* %sy.addr, align 4
  %sub2 = sub nsw i32 %4, %5
  store i32 %sub2, i32* %dy, align 4
  store i32 19, i32* @numref, align 4
  store i32 1, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 0, i32 4), align 4
  %6 = load i32, i32* %matt.addr, align 4
  %conv = sitofp i32 %6 to float
  %conv3 = fpext float %conv to double
  %mul = fmul double %conv3, 2.700000e-02
  %conv4 = fptrunc double %mul to float
  store float %conv4, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 0, i32 1), align 4
  %7 = load i32, i32* %dx, align 4
  %conv5 = sitofp i32 %7 to double
  %mul6 = fmul double 6.699000e-01, %conv5
  %8 = load i32, i32* %xh, align 4
  %conv7 = sitofp i32 %8 to double
  %add = fadd double %mul6, %conv7
  %conv8 = fptosi double %add to i32
  store i32 %conv8, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 0, i32 2), align 4
  %9 = load i32, i32* %dy, align 4
  %conv9 = sitofp i32 %9 to double
  %mul10 = fmul double 6.699000e-01, %conv9
  %10 = load i32, i32* %yh, align 4
  %conv11 = sitofp i32 %10 to double
  %add12 = fadd double %mul10, %conv11
  %conv13 = fptosi double %add12 to i32
  store i32 %conv13, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 0, i32 3), align 4
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 0, i32 0, i32 0), align 8
  store double 0x3FAC1C1C1C1C1C1C, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 0, i32 0, i32 1), align 8
  store double 0x3FDC5C5C5C5C5C5C, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 0, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 1, i32 4), align 4
  %11 = load i32, i32* %matt.addr, align 4
  %conv14 = sitofp i32 %11 to float
  %conv15 = fpext float %conv14 to double
  %mul16 = fmul double %conv15, 1.000000e-02
  %conv17 = fptrunc double %mul16 to float
  store float %conv17, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 1, i32 1), align 4
  %12 = load i32, i32* %dx, align 4
  %conv18 = sitofp i32 %12 to double
  %mul19 = fmul double 2.692000e-01, %conv18
  %13 = load i32, i32* %xh, align 4
  %conv20 = sitofp i32 %13 to double
  %add21 = fadd double %mul19, %conv20
  %conv22 = fptosi double %add21 to i32
  store i32 %conv22, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 1, i32 2), align 4
  %14 = load i32, i32* %dy, align 4
  %conv23 = sitofp i32 %14 to double
  %mul24 = fmul double 2.692000e-01, %conv23
  %15 = load i32, i32* %yh, align 4
  %conv25 = sitofp i32 %15 to double
  %add26 = fadd double %mul24, %conv25
  %conv27 = fptosi double %add26 to i32
  store i32 %conv27, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 1, i32 3), align 4
  store double 0x3FD6969696969697, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 1, i32 0, i32 0), align 8
  store double 0x3FE6B6B6B6B6B6B7, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 1, i32 0, i32 1), align 8
  store double 0x3FE1D1D1D1D1D1D2, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 1, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 2, i32 4), align 4
  %16 = load i32, i32* %matt.addr, align 4
  %conv28 = sitofp i32 %16 to float
  %conv29 = fpext float %conv28 to double
  %mul30 = fmul double %conv29, 5.000000e-03
  %conv31 = fptrunc double %mul30 to float
  store float %conv31, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 2, i32 1), align 4
  %17 = load i32, i32* %dx, align 4
  %conv32 = sitofp i32 %17 to double
  %mul33 = fmul double -1.120000e-02, %conv32
  %18 = load i32, i32* %xh, align 4
  %conv34 = sitofp i32 %18 to double
  %add35 = fadd double %mul33, %conv34
  %conv36 = fptosi double %add35 to i32
  store i32 %conv36, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 2, i32 2), align 4
  %19 = load i32, i32* %dy, align 4
  %conv37 = sitofp i32 %19 to double
  %mul38 = fmul double -1.120000e-02, %conv37
  %20 = load i32, i32* %yh, align 4
  %conv39 = sitofp i32 %20 to double
  %add40 = fadd double %mul38, %conv39
  %conv41 = fptosi double %add40 to i32
  store i32 %conv41, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 2, i32 3), align 4
  store double 0x3FCC1C1C1C1C1C1C, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 2, i32 0, i32 0), align 8
  store double 0x3FE1919191919192, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 2, i32 0, i32 1), align 8
  store double 0x3FDA9A9A9A9A9A9B, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 2, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 3, i32 4), align 4
  %21 = load i32, i32* %matt.addr, align 4
  %conv42 = sitofp i32 %21 to float
  %conv43 = fpext float %conv42 to double
  %mul44 = fmul double %conv43, 3.100000e-02
  %conv45 = fptrunc double %mul44 to float
  store float %conv45, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 3, i32 1), align 4
  %22 = load i32, i32* %dx, align 4
  %conv46 = sitofp i32 %22 to double
  %mul47 = fmul double 6.490000e-01, %conv46
  %23 = load i32, i32* %xh, align 4
  %conv48 = sitofp i32 %23 to double
  %add49 = fadd double %mul47, %conv48
  %conv50 = fptosi double %add49 to i32
  store i32 %conv50, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 3, i32 2), align 4
  %24 = load i32, i32* %dy, align 4
  %conv51 = sitofp i32 %24 to double
  %mul52 = fmul double 6.490000e-01, %conv51
  %25 = load i32, i32* %yh, align 4
  %conv53 = sitofp i32 %25 to double
  %add54 = fadd double %mul52, %conv53
  %conv55 = fptosi double %add54 to i32
  store i32 %conv55, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 3, i32 3), align 4
  store double 0x3FA2121212121212, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 3, i32 0, i32 0), align 8
  store double 0x3FBD1D1D1D1D1D1D, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 3, i32 0, i32 1), align 8
  store double 0x3FB3131313131313, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 3, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 4, i32 4), align 4
  %26 = load i32, i32* %matt.addr, align 4
  %conv56 = sitofp i32 %26 to float
  %conv57 = fpext float %conv56 to double
  %mul58 = fmul double %conv57, 1.500000e-02
  %conv59 = fptrunc double %mul58 to float
  store float %conv59, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 4, i32 1), align 4
  %27 = load i32, i32* %dx, align 4
  %conv60 = sitofp i32 %27 to double
  %mul61 = fmul double 4.696000e-01, %conv60
  %28 = load i32, i32* %xh, align 4
  %conv62 = sitofp i32 %28 to double
  %add63 = fadd double %mul61, %conv62
  %conv64 = fptosi double %add63 to i32
  store i32 %conv64, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 4, i32 2), align 4
  %29 = load i32, i32* %dy, align 4
  %conv65 = sitofp i32 %29 to double
  %mul66 = fmul double 4.696000e-01, %conv65
  %30 = load i32, i32* %yh, align 4
  %conv67 = sitofp i32 %30 to double
  %add68 = fadd double %mul66, %conv67
  %conv69 = fptosi double %add68 to i32
  store i32 %conv69, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 4, i32 3), align 4
  store double 0x3FB8181818181818, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 4, i32 0, i32 0), align 8
  store double 0x3FAC1C1C1C1C1C1C, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 4, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 4, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 5, i32 4), align 4
  %31 = load i32, i32* %matt.addr, align 4
  %conv70 = sitofp i32 %31 to float
  %conv71 = fpext float %conv70 to double
  %mul72 = fmul double %conv71, 3.700000e-02
  %conv73 = fptrunc double %mul72 to float
  store float %conv73, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 5, i32 1), align 4
  %32 = load i32, i32* %dx, align 4
  %conv74 = sitofp i32 %32 to double
  %mul75 = fmul double 4.087000e-01, %conv74
  %33 = load i32, i32* %xh, align 4
  %conv76 = sitofp i32 %33 to double
  %add77 = fadd double %mul75, %conv76
  %conv78 = fptosi double %add77 to i32
  store i32 %conv78, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 5, i32 2), align 4
  %34 = load i32, i32* %dy, align 4
  %conv79 = sitofp i32 %34 to double
  %mul80 = fmul double 4.087000e-01, %conv79
  %35 = load i32, i32* %yh, align 4
  %conv81 = sitofp i32 %35 to double
  %add82 = fadd double %mul80, %conv81
  %conv83 = fptosi double %add82 to i32
  store i32 %conv83, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 5, i32 3), align 4
  store double 0x3FB8181818181818, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 5, i32 0, i32 0), align 8
  store double 0x3FAC1C1C1C1C1C1C, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 5, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 5, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 6, i32 4), align 4
  %36 = load i32, i32* %matt.addr, align 4
  %conv84 = sitofp i32 %36 to float
  %conv85 = fpext float %conv84 to double
  %mul86 = fmul double %conv85, 2.200000e-02
  %conv87 = fptrunc double %mul86 to float
  store float %conv87, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 6, i32 1), align 4
  %37 = load i32, i32* %dx, align 4
  %conv88 = sitofp i32 %37 to double
  %mul89 = fmul double -2.003000e-01, %conv88
  %38 = load i32, i32* %xh, align 4
  %conv90 = sitofp i32 %38 to double
  %add91 = fadd double %mul89, %conv90
  %conv92 = fptosi double %add91 to i32
  store i32 %conv92, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 6, i32 2), align 4
  %39 = load i32, i32* %dy, align 4
  %conv93 = sitofp i32 %39 to double
  %mul94 = fmul double -2.003000e-01, %conv93
  %40 = load i32, i32* %yh, align 4
  %conv95 = sitofp i32 %40 to double
  %add96 = fadd double %mul94, %conv95
  %conv97 = fptosi double %add96 to i32
  store i32 %conv97, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 6, i32 3), align 4
  store double 0x3FC5151515151515, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 6, i32 0, i32 0), align 8
  store double 0x3FB3131313131313, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 6, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 6, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 7, i32 4), align 4
  %41 = load i32, i32* %matt.addr, align 4
  %conv98 = sitofp i32 %41 to float
  %conv99 = fpext float %conv98 to double
  %mul100 = fmul double %conv99, 2.500000e-02
  %conv101 = fptrunc double %mul100 to float
  store float %conv101, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 7, i32 1), align 4
  %42 = load i32, i32* %dx, align 4
  %conv102 = sitofp i32 %42 to double
  %mul103 = fmul double -4.103000e-01, %conv102
  %43 = load i32, i32* %xh, align 4
  %conv104 = sitofp i32 %43 to double
  %add105 = fadd double %mul103, %conv104
  %conv106 = fptosi double %add105 to i32
  store i32 %conv106, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 7, i32 2), align 4
  %44 = load i32, i32* %dy, align 4
  %conv107 = sitofp i32 %44 to double
  %mul108 = fmul double -4.103000e-01, %conv107
  %45 = load i32, i32* %yh, align 4
  %conv109 = sitofp i32 %45 to double
  %add110 = fadd double %mul108, %conv109
  %conv111 = fptosi double %add110 to i32
  store i32 %conv111, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 7, i32 3), align 4
  store double 0x3FB1111111111111, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 7, i32 0, i32 2), align 8
  store double 0x3FA2121212121212, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 7, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 7, i32 0, i32 0), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 8, i32 4), align 4
  %46 = load i32, i32* %matt.addr, align 4
  %conv112 = sitofp i32 %46 to float
  %conv113 = fpext float %conv112 to double
  %mul114 = fmul double %conv113, 5.800000e-02
  %conv115 = fptrunc double %mul114 to float
  store float %conv115, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 8, i32 1), align 4
  %47 = load i32, i32* %dx, align 4
  %conv116 = sitofp i32 %47 to double
  %mul117 = fmul double -4.503000e-01, %conv116
  %48 = load i32, i32* %xh, align 4
  %conv118 = sitofp i32 %48 to double
  %add119 = fadd double %mul117, %conv118
  %conv120 = fptosi double %add119 to i32
  store i32 %conv120, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 8, i32 2), align 4
  %49 = load i32, i32* %dy, align 4
  %conv121 = sitofp i32 %49 to double
  %mul122 = fmul double -4.503000e-01, %conv121
  %50 = load i32, i32* %yh, align 4
  %conv123 = sitofp i32 %50 to double
  %add124 = fadd double %mul122, %conv123
  %conv125 = fptosi double %add124 to i32
  store i32 %conv125, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 8, i32 3), align 4
  store double 0x3FA4141414141414, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 8, i32 0, i32 2), align 8
  store double 0x3F90101010101010, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 8, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 8, i32 0, i32 0), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 9, i32 4), align 4
  %51 = load i32, i32* %matt.addr, align 4
  %conv126 = sitofp i32 %51 to float
  %conv127 = fpext float %conv126 to double
  %mul128 = fmul double %conv127, 1.700000e-02
  %conv129 = fptrunc double %mul128 to float
  store float %conv129, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 9, i32 1), align 4
  %52 = load i32, i32* %dx, align 4
  %conv130 = sitofp i32 %52 to double
  %mul131 = fmul double -5.112000e-01, %conv130
  %53 = load i32, i32* %xh, align 4
  %conv132 = sitofp i32 %53 to double
  %add133 = fadd double %mul131, %conv132
  %conv134 = fptosi double %add133 to i32
  store i32 %conv134, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 9, i32 2), align 4
  %54 = load i32, i32* %dy, align 4
  %conv135 = sitofp i32 %54 to double
  %mul136 = fmul double -5.112000e-01, %conv135
  %55 = load i32, i32* %yh, align 4
  %conv137 = sitofp i32 %55 to double
  %add138 = fadd double %mul136, %conv137
  %conv139 = fptosi double %add138 to i32
  store i32 %conv139, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 9, i32 3), align 4
  store double 0x3F94141414141414, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 9, i32 0, i32 0), align 8
  store double 0x3F94141414141414, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 9, i32 0, i32 1), align 8
  store double 0x3FAC1C1C1C1C1C1C, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 9, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 10, i32 4), align 4
  %56 = load i32, i32* %matt.addr, align 4
  %conv140 = sitofp i32 %56 to float
  %conv141 = fpext float %conv140 to double
  %mul142 = fmul double %conv141, 2.000000e-01
  %conv143 = fptrunc double %mul142 to float
  store float %conv143, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 10, i32 1), align 4
  %57 = load i32, i32* %dx, align 4
  %conv144 = sitofp i32 %57 to double
  %mul145 = fmul double -1.496000e+00, %conv144
  %58 = load i32, i32* %xh, align 4
  %conv146 = sitofp i32 %58 to double
  %add147 = fadd double %mul145, %conv146
  %conv148 = fptosi double %add147 to i32
  store i32 %conv148, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 10, i32 2), align 4
  %59 = load i32, i32* %dy, align 4
  %conv149 = sitofp i32 %59 to double
  %mul150 = fmul double -1.496000e+00, %conv149
  %60 = load i32, i32* %yh, align 4
  %conv151 = sitofp i32 %60 to double
  %add152 = fadd double %mul150, %conv151
  %conv153 = fptosi double %add152 to i32
  store i32 %conv153, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 10, i32 3), align 4
  store double 0x3FA2121212121212, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 10, i32 0, i32 0), align 8
  store double 0x3F90101010101010, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 10, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 10, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 11, i32 4), align 4
  %61 = load i32, i32* %matt.addr, align 4
  %conv154 = sitofp i32 %61 to float
  %conv155 = fpext float %conv154 to double
  %mul156 = fmul double %conv155, 5.000000e-01
  %conv157 = fptrunc double %mul156 to float
  store float %conv157, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 11, i32 1), align 4
  %62 = load i32, i32* %dx, align 4
  %conv158 = sitofp i32 %62 to double
  %mul159 = fmul double -1.496000e+00, %conv158
  %63 = load i32, i32* %xh, align 4
  %conv160 = sitofp i32 %63 to double
  %add161 = fadd double %mul159, %conv160
  %conv162 = fptosi double %add161 to i32
  store i32 %conv162, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 11, i32 2), align 4
  %64 = load i32, i32* %dy, align 4
  %conv163 = sitofp i32 %64 to double
  %mul164 = fmul double -1.496000e+00, %conv163
  %65 = load i32, i32* %yh, align 4
  %conv165 = sitofp i32 %65 to double
  %add166 = fadd double %mul164, %conv165
  %conv167 = fptosi double %add166 to i32
  store i32 %conv167, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 11, i32 3), align 4
  store double 0x3FA2121212121212, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 11, i32 0, i32 0), align 8
  store double 0x3F90101010101010, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 11, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 11, i32 0, i32 2), align 8
  store i32 3, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 12, i32 4), align 4
  %66 = load i32, i32* %matt.addr, align 4
  %conv168 = sitofp i32 %66 to float
  %conv169 = fpext float %conv168 to double
  %mul170 = fmul double %conv169, 7.500000e-02
  %conv171 = fptrunc double %mul170 to float
  store float %conv171, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 12, i32 1), align 4
  %67 = load i32, i32* %dx, align 4
  %conv172 = sitofp i32 %67 to double
  %mul173 = fmul double 4.487000e-01, %conv172
  %68 = load i32, i32* %xh, align 4
  %conv174 = sitofp i32 %68 to double
  %add175 = fadd double %mul173, %conv174
  %conv176 = fptosi double %add175 to i32
  store i32 %conv176, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 12, i32 2), align 4
  %69 = load i32, i32* %dy, align 4
  %conv177 = sitofp i32 %69 to double
  %mul178 = fmul double 4.487000e-01, %conv177
  %70 = load i32, i32* %yh, align 4
  %conv179 = sitofp i32 %70 to double
  %add180 = fadd double %mul178, %conv179
  %conv181 = fptosi double %add180 to i32
  store i32 %conv181, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 12, i32 3), align 4
  store double 0x3FC1111111111111, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 12, i32 0, i32 0), align 8
  store double 0x3FB3131313131313, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 12, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 12, i32 0, i32 2), align 8
  store i32 3, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 13, i32 4), align 4
  %71 = load i32, i32* %matt.addr, align 4
  %conv182 = sitofp i32 %71 to float
  %conv183 = fpext float %conv182 to double
  %mul184 = fmul double %conv183, 1.000000e-01
  %conv185 = fptrunc double %mul184 to float
  store float %conv185, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 13, i32 1), align 4
  %72 = load i32, i32* %dx, align 4
  %73 = load i32, i32* %xh, align 4
  %add186 = add nsw i32 %72, %73
  store i32 %add186, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 13, i32 2), align 4
  %74 = load i32, i32* %dy, align 4
  %75 = load i32, i32* %yh, align 4
  %add187 = add nsw i32 %74, %75
  store i32 %add187, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 13, i32 3), align 4
  store double 0x3FAC1C1C1C1C1C1C, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 13, i32 0, i32 0), align 8
  store double 0x3FBA1A1A1A1A1A1A, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 13, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 13, i32 0, i32 2), align 8
  store i32 3, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 14, i32 4), align 4
  %76 = load i32, i32* %matt.addr, align 4
  %conv188 = sitofp i32 %76 to float
  %conv189 = fpext float %conv188 to double
  %mul190 = fmul double %conv189, 3.900000e-02
  %conv191 = fptrunc double %mul190 to float
  store float %conv191, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 14, i32 1), align 4
  %77 = load i32, i32* %dx, align 4
  %conv192 = sitofp i32 %77 to double
  %mul193 = fmul double -1.301000e+00, %conv192
  %78 = load i32, i32* %xh, align 4
  %conv194 = sitofp i32 %78 to double
  %add195 = fadd double %mul193, %conv194
  %conv196 = fptosi double %add195 to i32
  store i32 %conv196, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 14, i32 2), align 4
  %79 = load i32, i32* %dy, align 4
  %conv197 = sitofp i32 %79 to double
  %mul198 = fmul double -1.301000e+00, %conv197
  %80 = load i32, i32* %yh, align 4
  %conv199 = sitofp i32 %80 to double
  %add200 = fadd double %mul198, %conv199
  %conv201 = fptosi double %add200 to i32
  store i32 %conv201, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 14, i32 3), align 4
  store double 0x3FA4141414141414, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 14, i32 0, i32 0), align 8
  store double 0x3FB9191919191919, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 14, i32 0, i32 1), align 8
  store double 0x3FAA1A1A1A1A1A1A, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 14, i32 0, i32 2), align 8
  store i32 4, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 15, i32 4), align 4
  %81 = load i32, i32* %matt.addr, align 4
  %conv202 = sitofp i32 %81 to float
  %conv203 = fpext float %conv202 to double
  %mul204 = fmul double %conv203, 1.900000e-01
  %conv205 = fptrunc double %mul204 to float
  store float %conv205, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 15, i32 1), align 4
  %82 = load i32, i32* %dx, align 4
  %conv206 = sitofp i32 %82 to double
  %mul207 = fmul double 1.309000e+00, %conv206
  %83 = load i32, i32* %xh, align 4
  %conv208 = sitofp i32 %83 to double
  %add209 = fadd double %mul207, %conv208
  %conv210 = fptosi double %add209 to i32
  store i32 %conv210, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 15, i32 2), align 4
  %84 = load i32, i32* %dy, align 4
  %conv211 = sitofp i32 %84 to double
  %mul212 = fmul double 1.309000e+00, %conv211
  %85 = load i32, i32* %yh, align 4
  %conv213 = sitofp i32 %85 to double
  %add214 = fadd double %mul212, %conv213
  %conv215 = fptosi double %add214 to i32
  store i32 %conv215, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 15, i32 3), align 4
  store double 0x3FA2121212121212, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 15, i32 0, i32 0), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 15, i32 0, i32 1), align 8
  store double 0x3FB1111111111111, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 15, i32 0, i32 2), align 8
  store i32 4, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 16, i32 4), align 4
  %86 = load i32, i32* %matt.addr, align 4
  %conv216 = sitofp i32 %86 to float
  %conv217 = fpext float %conv216 to double
  %mul218 = fmul double %conv217, 1.950000e-01
  %conv219 = fptrunc double %mul218 to float
  store float %conv219, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 16, i32 1), align 4
  %87 = load i32, i32* %dx, align 4
  %conv220 = sitofp i32 %87 to double
  %mul221 = fmul double 1.309000e+00, %conv220
  %88 = load i32, i32* %xh, align 4
  %conv222 = sitofp i32 %88 to double
  %add223 = fadd double %mul221, %conv222
  %conv224 = fptosi double %add223 to i32
  store i32 %conv224, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 16, i32 2), align 4
  %89 = load i32, i32* %dy, align 4
  %conv225 = sitofp i32 %89 to double
  %mul226 = fmul double 1.309000e+00, %conv225
  %90 = load i32, i32* %yh, align 4
  %conv227 = sitofp i32 %90 to double
  %add228 = fadd double %mul226, %conv227
  %conv229 = fptosi double %add228 to i32
  store i32 %conv229, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 16, i32 3), align 4
  store double 0x3FA2121212121212, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 16, i32 0, i32 0), align 8
  store double 0x3FB0101010101010, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 16, i32 0, i32 1), align 8
  store double 0x3F94141414141414, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 16, i32 0, i32 2), align 8
  store i32 4, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 17, i32 4), align 4
  %91 = load i32, i32* %matt.addr, align 4
  %conv230 = sitofp i32 %91 to float
  %conv231 = fpext float %conv230 to double
  %mul232 = fmul double %conv231, 2.000000e-01
  %conv233 = fptrunc double %mul232 to float
  store float %conv233, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 17, i32 1), align 4
  %92 = load i32, i32* %dx, align 4
  %conv234 = sitofp i32 %92 to double
  %mul235 = fmul double 1.309000e+00, %conv234
  %93 = load i32, i32* %xh, align 4
  %conv236 = sitofp i32 %93 to double
  %add237 = fadd double %mul235, %conv236
  %conv238 = fptosi double %add237 to i32
  store i32 %conv238, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 17, i32 2), align 4
  %94 = load i32, i32* %dy, align 4
  %conv239 = sitofp i32 %94 to double
  %mul240 = fmul double 1.309000e+00, %conv239
  %95 = load i32, i32* %yh, align 4
  %conv241 = sitofp i32 %95 to double
  %add242 = fadd double %mul240, %conv241
  %conv243 = fptosi double %add242 to i32
  store i32 %conv243, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 17, i32 3), align 4
  store double 0x3FB1111111111111, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 17, i32 0, i32 0), align 8
  store double 0x3F90101010101010, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 17, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 17, i32 0, i32 2), align 8
  store i32 4, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 18, i32 4), align 4
  %96 = load i32, i32* %matt.addr, align 4
  %conv244 = sitofp i32 %96 to float
  %conv245 = fpext float %conv244 to double
  %mul246 = fmul double %conv245, 3.800000e-02
  %conv247 = fptrunc double %mul246 to float
  store float %conv247, float* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 18, i32 1), align 4
  %97 = load i32, i32* %dx, align 4
  %conv248 = sitofp i32 %97 to double
  %mul249 = fmul double -1.301000e+00, %conv248
  %98 = load i32, i32* %xh, align 4
  %conv250 = sitofp i32 %98 to double
  %add251 = fadd double %mul249, %conv250
  %conv252 = fptosi double %add251 to i32
  store i32 %conv252, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 18, i32 2), align 4
  %99 = load i32, i32* %dy, align 4
  %conv253 = sitofp i32 %99 to double
  %mul254 = fmul double -1.301000e+00, %conv253
  %100 = load i32, i32* %yh, align 4
  %conv255 = sitofp i32 %100 to double
  %add256 = fadd double %mul254, %conv255
  %conv257 = fptosi double %add256 to i32
  store i32 %conv257, i32* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 18, i32 3), align 4
  store double 0x3FB1111111111111, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 18, i32 0, i32 0), align 8
  store double 0x3F90101010101010, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 18, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([19 x %struct.REFLECT], [19 x %struct.REFLECT]* @ref1, i32 0, i64 18, i32 0, i32 2), align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare double @hypot(double, double) #2

; Function Attrs: nounwind uwtable
define internal void @mcolor(i8* %s, float %h) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %h.addr = alloca float, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store float %h, float* %h.addr, align 4
  %0 = load float, float* @scolor, align 4
  %1 = load float, float* %h.addr, align 4
  %sub = fsub float %0, %1
  store float %sub, float* %procent, align 4
  %2 = load float, float* @scolor, align 4
  %3 = load float, float* %procent, align 4
  %div = fdiv float %3, %2
  store float %div, float* %procent, align 4
  %4 = load float, float* %procent, align 4
  %conv = fpext float %4 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load float, float* %procent, align 4
  %6 = load float, float* %procent, align 4
  %mul = fmul float %6, %5
  store float %mul, float* %procent, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load float, float* %procent, align 4
  call void @fixpix(i8* %7, float %8, %struct._GimpRGB* @color)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mglow(i8* %s, float %h) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %h.addr = alloca float, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store float %h, float* %h.addr, align 4
  %0 = load float, float* @sglow, align 4
  %1 = load float, float* %h.addr, align 4
  %sub = fsub float %0, %1
  store float %sub, float* %procent, align 4
  %2 = load float, float* @sglow, align 4
  %3 = load float, float* %procent, align 4
  %div = fdiv float %3, %2
  store float %div, float* %procent, align 4
  %4 = load float, float* %procent, align 4
  %conv = fpext float %4 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load float, float* %procent, align 4
  %6 = load float, float* %procent, align 4
  %mul = fmul float %6, %5
  store float %mul, float* %procent, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load float, float* %procent, align 4
  call void @fixpix(i8* %7, float %8, %struct._GimpRGB* @glow)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @minner(i8* %s, float %h) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %h.addr = alloca float, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store float %h, float* %h.addr, align 4
  %0 = load float, float* @sinner, align 4
  %1 = load float, float* %h.addr, align 4
  %sub = fsub float %0, %1
  store float %sub, float* %procent, align 4
  %2 = load float, float* @sinner, align 4
  %3 = load float, float* %procent, align 4
  %div = fdiv float %3, %2
  store float %div, float* %procent, align 4
  %4 = load float, float* %procent, align 4
  %conv = fpext float %4 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load float, float* %procent, align 4
  %6 = load float, float* %procent, align 4
  %mul = fmul float %6, %5
  store float %mul, float* %procent, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load float, float* %procent, align 4
  call void @fixpix(i8* %7, float %8, %struct._GimpRGB* @inner)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mouter(i8* %s, float %h) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %h.addr = alloca float, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store float %h, float* %h.addr, align 4
  %0 = load float, float* @souter, align 4
  %1 = load float, float* %h.addr, align 4
  %sub = fsub float %0, %1
  store float %sub, float* %procent, align 4
  %2 = load float, float* @souter, align 4
  %3 = load float, float* %procent, align 4
  %div = fdiv float %3, %2
  store float %div, float* %procent, align 4
  %4 = load float, float* %procent, align 4
  %conv = fpext float %4 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load float, float* %procent, align 4
  call void @fixpix(i8* %5, float %6, %struct._GimpRGB* @outer)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mhalo(i8* %s, float %h) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %h.addr = alloca float, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store float %h, float* %h.addr, align 4
  %0 = load float, float* %h.addr, align 4
  %1 = load float, float* @shalo, align 4
  %sub = fsub float %0, %1
  store float %sub, float* %procent, align 4
  %2 = load float, float* @shalo, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %conv, 7.000000e-02
  %3 = load float, float* %procent, align 4
  %conv1 = fpext float %3 to double
  %div = fdiv double %conv1, %mul
  %conv2 = fptrunc double %div to float
  store float %conv2, float* %procent, align 4
  %4 = load float, float* %procent, align 4
  %conv3 = fpext float %4 to double
  %call = call double @fabs(double %conv3) #5
  %conv4 = fptrunc double %call to float
  store float %conv4, float* %procent, align 4
  %5 = load float, float* %procent, align 4
  %conv5 = fpext float %5 to double
  %cmp = fcmp olt double %conv5, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load float, float* %procent, align 4
  %conv7 = fpext float %7 to double
  %sub8 = fsub double 1.000000e+00, %conv7
  %conv9 = fptrunc double %sub8 to float
  call void @fixpix(i8* %6, float %conv9, %struct._GimpRGB* @halo)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mrt1(i8* %s, %struct.REFLECT* %ref, i32 %col, i32 %row) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %ref.addr = alloca %struct.REFLECT*, align 8
  %col.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.REFLECT* %ref, %struct.REFLECT** %ref.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %0, i32 0, i32 1
  %1 = load float, float* %size, align 4
  %conv = fpext float %1 to double
  %2 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %xp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %2, i32 0, i32 2
  %3 = load i32, i32* %xp, align 4
  %4 = load i32, i32* %col.addr, align 4
  %sub = sub nsw i32 %3, %4
  %conv1 = sitofp i32 %sub to double
  %5 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %yp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %5, i32 0, i32 3
  %6 = load i32, i32* %yp, align 4
  %7 = load i32, i32* %row.addr, align 4
  %sub2 = sub nsw i32 %6, %7
  %conv3 = sitofp i32 %sub2 to double
  %call = call double @hypot(double %conv1, double %conv3) #4
  %sub4 = fsub double %conv, %call
  %conv5 = fptrunc double %sub4 to float
  store float %conv5, float* %procent, align 4
  %8 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size6 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %8, i32 0, i32 1
  %9 = load float, float* %size6, align 4
  %10 = load float, float* %procent, align 4
  %div = fdiv float %10, %9
  store float %div, float* %procent, align 4
  %11 = load float, float* %procent, align 4
  %conv7 = fpext float %11 to double
  %cmp = fcmp ogt double %conv7, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load float, float* %procent, align 4
  %13 = load float, float* %procent, align 4
  %mul = fmul float %13, %12
  store float %mul, float* %procent, align 4
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load float, float* %procent, align 4
  %16 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %ccol = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %16, i32 0, i32 0
  call void @fixpix(i8* %14, float %15, %struct._GimpRGB* %ccol)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mrt2(i8* %s, %struct.REFLECT* %ref, i32 %col, i32 %row) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %ref.addr = alloca %struct.REFLECT*, align 8
  %col.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.REFLECT* %ref, %struct.REFLECT** %ref.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %0, i32 0, i32 1
  %1 = load float, float* %size, align 4
  %conv = fpext float %1 to double
  %2 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %xp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %2, i32 0, i32 2
  %3 = load i32, i32* %xp, align 4
  %4 = load i32, i32* %col.addr, align 4
  %sub = sub nsw i32 %3, %4
  %conv1 = sitofp i32 %sub to double
  %5 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %yp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %5, i32 0, i32 3
  %6 = load i32, i32* %yp, align 4
  %7 = load i32, i32* %row.addr, align 4
  %sub2 = sub nsw i32 %6, %7
  %conv3 = sitofp i32 %sub2 to double
  %call = call double @hypot(double %conv1, double %conv3) #4
  %sub4 = fsub double %conv, %call
  %conv5 = fptrunc double %sub4 to float
  store float %conv5, float* %procent, align 4
  %8 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size6 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %8, i32 0, i32 1
  %9 = load float, float* %size6, align 4
  %conv7 = fpext float %9 to double
  %mul = fmul double %conv7, 1.500000e-01
  %10 = load float, float* %procent, align 4
  %conv8 = fpext float %10 to double
  %div = fdiv double %conv8, %mul
  %conv9 = fptrunc double %div to float
  store float %conv9, float* %procent, align 4
  %11 = load float, float* %procent, align 4
  %conv10 = fpext float %11 to double
  %cmp = fcmp ogt double %conv10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %12 = load float, float* %procent, align 4
  %conv12 = fpext float %12 to double
  %cmp13 = fcmp ogt double %conv12, 1.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  store float 1.000000e+00, float* %procent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load float, float* %procent, align 4
  %15 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %ccol = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %15, i32 0, i32 0
  call void @fixpix(i8* %13, float %14, %struct._GimpRGB* %ccol)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mrt3(i8* %s, %struct.REFLECT* %ref, i32 %col, i32 %row) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %ref.addr = alloca %struct.REFLECT*, align 8
  %col.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.REFLECT* %ref, %struct.REFLECT** %ref.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %0, i32 0, i32 1
  %1 = load float, float* %size, align 4
  %conv = fpext float %1 to double
  %2 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %xp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %2, i32 0, i32 2
  %3 = load i32, i32* %xp, align 4
  %4 = load i32, i32* %col.addr, align 4
  %sub = sub nsw i32 %3, %4
  %conv1 = sitofp i32 %sub to double
  %5 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %yp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %5, i32 0, i32 3
  %6 = load i32, i32* %yp, align 4
  %7 = load i32, i32* %row.addr, align 4
  %sub2 = sub nsw i32 %6, %7
  %conv3 = sitofp i32 %sub2 to double
  %call = call double @hypot(double %conv1, double %conv3) #4
  %sub4 = fsub double %conv, %call
  %conv5 = fptrunc double %sub4 to float
  store float %conv5, float* %procent, align 4
  %8 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size6 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %8, i32 0, i32 1
  %9 = load float, float* %size6, align 4
  %conv7 = fpext float %9 to double
  %mul = fmul double %conv7, 1.200000e-01
  %10 = load float, float* %procent, align 4
  %conv8 = fpext float %10 to double
  %div = fdiv double %conv8, %mul
  %conv9 = fptrunc double %div to float
  store float %conv9, float* %procent, align 4
  %11 = load float, float* %procent, align 4
  %conv10 = fpext float %11 to double
  %cmp = fcmp ogt double %conv10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %12 = load float, float* %procent, align 4
  %conv12 = fpext float %12 to double
  %cmp13 = fcmp ogt double %conv12, 1.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %13 = load float, float* %procent, align 4
  %conv16 = fpext float %13 to double
  %mul17 = fmul double %conv16, 1.200000e-01
  %sub18 = fsub double 1.000000e+00, %mul17
  %conv19 = fptrunc double %sub18 to float
  store float %conv19, float* %procent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load float, float* %procent, align 4
  %16 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %ccol = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %16, i32 0, i32 0
  call void @fixpix(i8* %14, float %15, %struct._GimpRGB* %ccol)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mrt4(i8* %s, %struct.REFLECT* %ref, i32 %col, i32 %row) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %ref.addr = alloca %struct.REFLECT*, align 8
  %col.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %procent = alloca float, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.REFLECT* %ref, %struct.REFLECT** %ref.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %xp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %0, i32 0, i32 2
  %1 = load i32, i32* %xp, align 4
  %2 = load i32, i32* %col.addr, align 4
  %sub = sub nsw i32 %1, %2
  %conv = sitofp i32 %sub to double
  %3 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %yp = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %3, i32 0, i32 3
  %4 = load i32, i32* %yp, align 4
  %5 = load i32, i32* %row.addr, align 4
  %sub1 = sub nsw i32 %4, %5
  %conv2 = sitofp i32 %sub1 to double
  %call = call double @hypot(double %conv, double %conv2) #4
  %6 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %6, i32 0, i32 1
  %7 = load float, float* %size, align 4
  %conv3 = fpext float %7 to double
  %sub4 = fsub double %call, %conv3
  %conv5 = fptrunc double %sub4 to float
  store float %conv5, float* %procent, align 4
  %8 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %size6 = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %8, i32 0, i32 1
  %9 = load float, float* %size6, align 4
  %conv7 = fpext float %9 to double
  %mul = fmul double %conv7, 4.000000e-02
  %10 = load float, float* %procent, align 4
  %conv8 = fpext float %10 to double
  %div = fdiv double %conv8, %mul
  %conv9 = fptrunc double %div to float
  store float %conv9, float* %procent, align 4
  %11 = load float, float* %procent, align 4
  %conv10 = fpext float %11 to double
  %call11 = call double @fabs(double %conv10) #5
  %conv12 = fptrunc double %call11 to float
  store float %conv12, float* %procent, align 4
  %12 = load float, float* %procent, align 4
  %conv13 = fpext float %12 to double
  %cmp = fcmp olt double %conv13, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load float, float* %procent, align 4
  %conv15 = fpext float %14 to double
  %sub16 = fsub double 1.000000e+00, %conv15
  %conv17 = fptrunc double %sub16 to float
  %15 = load %struct.REFLECT*, %struct.REFLECT** %ref.addr, align 8
  %ccol = getelementptr inbounds %struct.REFLECT, %struct.REFLECT* %15, i32 0, i32 0
  call void @fixpix(i8* %13, float %conv17, %struct._GimpRGB* %ccol)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fixpix(i8* %data, float %procent, %struct._GimpRGB* %colpro) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %procent.addr = alloca float, align 4
  %colpro.addr = alloca %struct._GimpRGB*, align 8
  store i8* %data, i8** %data.addr, align 8
  store float %procent, float* %procent.addr, align 4
  store %struct._GimpRGB* %colpro, %struct._GimpRGB** %colpro.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 255, %conv
  %conv1 = sitofp i32 %sub to float
  %2 = load float, float* %procent.addr, align 4
  %mul = fmul float %conv1, %2
  %conv2 = fpext float %mul to double
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %colpro.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %mul3 = fmul double %conv2, %4
  %5 = load i8*, i8** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = uitofp i8 %6 to double
  %add = fadd double %conv5, %mul3
  %conv6 = fptoui double %add to i8
  store i8 %conv6, i8* %arrayidx4, align 1
  %7 = load i8*, i8** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  %sub9 = sub nsw i32 255, %conv8
  %conv10 = sitofp i32 %sub9 to float
  %9 = load float, float* %procent.addr, align 4
  %mul11 = fmul float %conv10, %9
  %conv12 = fpext float %mul11 to double
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %colpro.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 1
  %11 = load double, double* %g, align 8
  %mul13 = fmul double %conv12, %11
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = uitofp i8 %13 to double
  %add16 = fadd double %conv15, %mul13
  %conv17 = fptoui double %add16 to i8
  store i8 %conv17, i8* %arrayidx14, align 1
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  %sub20 = sub nsw i32 255, %conv19
  %conv21 = sitofp i32 %sub20 to float
  %16 = load float, float* %procent.addr, align 4
  %mul22 = fmul float %conv21, %16
  %conv23 = fpext float %mul22 to double
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %colpro.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 2
  %18 = load double, double* %b, align 8
  %mul24 = fmul double %conv23, %18
  %19 = load i8*, i8** %data.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = uitofp i8 %20 to double
  %add27 = fadd double %conv26, %mul24
  %conv28 = fptoui double %add27 to i8
  store i8 %conv28, i8* %arrayidx25, align 1
  ret void
}

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
