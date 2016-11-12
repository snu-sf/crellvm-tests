; ModuleID = './plug-ins/common/edge-sobel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SobelValues = type { i32, i32, i32 }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Sobel in horizontal direction\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Sobel in vertical direction\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"keep-sign\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Keep sign of result (one direction only)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"plug-in-sobel\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Specialized direction-dependent edge detection\00", align 1
@.str.14 = private unnamed_addr constant [425 x i8] c"This plugin calculates the gradient with a sobel operator. The user can specify which direction to use. When both directions are used, the result is the RMS of the two gradients; if only one direction is used, the result either the absolut value of the gradient, or 127 + gradient (if the 'keep sign' switch is on). This way, information about the direction of the gradient is preserved. Resulting images are not autoscaled.\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Thorsten Schnier\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"_Sobel...\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"<Image>/Filters/Edge-Detect\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@bvals = internal global %struct.SobelValues { i32 1, i32 1, i32 1 }, align 4
@.str.22 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"edge-sobel\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Sobel Edge Detection\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"gimp-edge-sobel\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Sobel _horizontally\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Sobel _vertically\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"_Keep sign of result (one direction only)\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Sobel edge detecting\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([425 x i8], [425 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 5
  %8 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %8
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.SobelValues* @bvals to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @sobel_dialog(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %11, 6
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.26

if.else:                                          ; preds = %sw.bb.9
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %13 = load i32, i32* %d_int3214, align 4
  %tobool15 = icmp ne i32 %13, 0
  %cond = select i1 %tobool15, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 0), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 4
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %15 = load i32, i32* %d_int3218, align 4
  %tobool19 = icmp ne i32 %15, 0
  %cond20 = select i1 %tobool19, i32 1, i32 0
  store i32 %cond20, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 1), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 5
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int3223 = bitcast %union._GimpParamData* %data22 to i32*
  %17 = load i32, i32* %d_int3223, align 4
  %tobool24 = icmp ne i32 %17, 0
  %cond25 = select i1 %tobool24, i32 1, i32 0
  store i32 %cond25, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 2), align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.11
  br label %sw.epilog

sw.bb.27:                                         ; preds = %do.end
  %call28 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.SobelValues* @bvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %if.end.26, %if.end
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id, align 4
  %call29 = call i32 @gimp_drawable_is_rgb(i32 %19)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id31, align 4
  %call32 = call i32 @gimp_drawable_is_gray(i32 %21)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.45

if.then.34:                                       ; preds = %lor.lhs.false, %sw.epilog
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 0), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 2), align 4
  call void @sobel(%struct._GimpDrawable* %22, i32 %23, i32 %24, i32 %25, %struct._GimpPreview* null)
  %26 = load i32, i32* %run_mode, align 4
  %cmp35 = icmp ne i32 %26, 1
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.34
  %call38 = call i32 @gimp_displays_flush()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.34
  %27 = load i32, i32* %run_mode, align 4
  %cmp40 = icmp eq i32 %27, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %call43 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.SobelValues* @bvals to i8*), i32 12)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.39
  br label %if.end.47

if.else.45:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  %28 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %28, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0)) #4
  store i8* %call46, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.end.44
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %29)
  %30 = load i32, i32* %status, align 4
  store i32 %30, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.47, %if.then
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
define internal i32 @sobel_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @sobel_preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0)) #4
  %call19 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %toggle, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_toggle_button_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkToggleButton*
  %27 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %26, i32 %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (%struct.SobelValues* @bvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 2)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)) #4
  %call27 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %toggle, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  %42 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %41, i32 %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call30)
  %45 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 0, i32 0, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 2)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0)) #4
  %call35 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call34)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %toggle, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call36)
  %56 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %57 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %56, i32 %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call38)
  %60 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %60, %struct._GtkWidget* %61, i32 0, i32 0, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 2)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_dialog_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call42)
  %72 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDialog*
  %call44 = call i32 @gimp_dialog_run(%struct._GimpDialog* %72)
  %cmp = icmp eq i32 %call44, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %73)
  %74 = load i32, i32* %run, align 4
  ret i32 %74
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal void @sobel(%struct._GimpDrawable* %drawable, i32 %do_horizontal, i32 %do_vertical, i32 %keep_sign, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %do_horizontal.addr = alloca i32, align 4
  %do_vertical.addr = alloca i32, align 4
  %keep_sign.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %gradient = alloca i32, align 4
  %hor_gradient = alloca i32, align 4
  %ver_gradient = alloca i32, align 4
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %prev_row = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %cur_row = alloca i8*, align 8
  %cr = alloca i8*, align 8
  %next_row = alloca i8*, align 8
  %nr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %alpha = alloca i32, align 4
  %counter = alloca i32, align 4
  %preview_buffer = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %do_horizontal, i32* %do_horizontal.addr, align 4
  store i32 %do_vertical, i32* %do_vertical.addr, align 4
  store i32 %keep_sign, i32* %keep_sign.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %preview_buffer, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %x, i32* %y)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %width, i32* %height)
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %4, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0)) #4
  %call11 = call i32 @gimp_progress_init(i8* %call10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  store i32 %6, i32* %bytes, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id13, align 4
  %call14 = call i32 @gimp_drawable_has_alpha(i32 %8)
  store i32 %call14, i32* %alpha, align 4
  %9 = load i32, i32* %width, align 4
  %add = add nsw i32 %9, 2
  %10 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %add, %10
  %conv = sext i32 %mul to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call15, i8** %prev_row, align 8
  %11 = load i32, i32* %width, align 4
  %add16 = add nsw i32 %11, 2
  %12 = load i32, i32* %bytes, align 4
  %mul17 = mul nsw i32 %add16, %12
  %conv18 = sext i32 %mul17 to i64
  %call19 = call noalias i8* @g_malloc_n(i64 %conv18, i64 1)
  store i8* %call19, i8** %cur_row, align 8
  %13 = load i32, i32* %width, align 4
  %add20 = add nsw i32 %13, 2
  %14 = load i32, i32* %bytes, align 4
  %mul21 = mul nsw i32 %add20, %14
  %conv22 = sext i32 %mul21 to i64
  %call23 = call noalias i8* @g_malloc_n(i64 %conv22, i64 1)
  store i8* %call23, i8** %next_row, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %bytes, align 4
  %mul24 = mul nsw i32 %15, %16
  %conv25 = sext i32 %mul24 to i64
  %call26 = call noalias i8* @g_malloc_n(i64 %conv25, i64 1)
  store i8* %call26, i8** %dest, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 1
  %19 = load i32, i32* %width27, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 2
  %21 = load i32, i32* %height28, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %17, i32 0, i32 0, i32 %19, i32 %21, i32 0, i32 0)
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool29 = icmp ne %struct._GimpPreview* %22, null
  br i1 %tobool29, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %if.end.12
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  %mul31 = mul nsw i32 %23, %24
  %25 = load i32, i32* %bytes, align 4
  %mul32 = mul nsw i32 %mul31, %25
  %conv33 = sext i32 %mul32 to i64
  %call34 = call noalias i8* @g_malloc_n(i64 %conv33, i64 1)
  store i8* %call34, i8** %preview_buffer, align 8
  br label %if.end.38

if.else.35:                                       ; preds = %if.end.12
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 1
  %28 = load i32, i32* %width36, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 2
  %30 = load i32, i32* %height37, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %26, i32 0, i32 0, i32 %28, i32 %30, i32 1, i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.30
  %31 = load i8*, i8** %prev_row, align 8
  %32 = load i32, i32* %bytes, align 4
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %pr, align 8
  %33 = load i8*, i8** %cur_row, align 8
  %34 = load i32, i32* %bytes, align 4
  %idx.ext39 = sext i32 %34 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %33, i64 %idx.ext39
  store i8* %add.ptr40, i8** %cr, align 8
  %35 = load i8*, i8** %next_row, align 8
  %36 = load i32, i32* %bytes, align 4
  %idx.ext41 = sext i32 %36 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %35, i64 %idx.ext41
  store i8* %add.ptr42, i8** %nr, align 8
  %37 = load i8*, i8** %pr, align 8
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %39, 1
  %40 = load i32, i32* %width, align 4
  call void @sobel_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %37, i32 %38, i32 %sub, i32 %40)
  %41 = load i8*, i8** %cr, align 8
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %width, align 4
  call void @sobel_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %counter, align 4
  %45 = load i32, i32* %y, align 4
  store i32 %45, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.187, %if.end.38
  %46 = load i32, i32* %row, align 4
  %47 = load i32, i32* %y, align 4
  %48 = load i32, i32* %height, align 4
  %add43 = add nsw i32 %47, %48
  %cmp = icmp slt i32 %46, %add43
  br i1 %cmp, label %for.body, label %for.end.189

for.body:                                         ; preds = %for.cond
  %49 = load i8*, i8** %nr, align 8
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* %row, align 4
  %add45 = add nsw i32 %51, 1
  %52 = load i32, i32* %width, align 4
  call void @sobel_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %49, i32 %50, i32 %add45, i32 %52)
  %53 = load i8*, i8** %dest, align 8
  store i8* %53, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body
  %54 = load i32, i32* %col, align 4
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %bytes, align 4
  %mul47 = mul nsw i32 %55, %56
  %cmp48 = icmp slt i32 %54, %mul47
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.46
  %57 = load i32, i32* %do_horizontal.addr, align 4
  %tobool51 = icmp ne i32 %57, 0
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.50
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %bytes, align 4
  %sub52 = sub nsw i32 %58, %59
  %idxprom = sext i32 %sub52 to i64
  %60 = load i8*, i8** %pr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 %idxprom
  %61 = load i8, i8* %arrayidx, align 1
  %conv53 = zext i8 %61 to i32
  %62 = load i32, i32* %col, align 4
  %idxprom54 = sext i32 %62 to i64
  %63 = load i8*, i8** %pr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %63, i64 %idxprom54
  %64 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %64 to i32
  %mul57 = mul nsw i32 2, %conv56
  %add58 = add nsw i32 %conv53, %mul57
  %65 = load i32, i32* %col, align 4
  %66 = load i32, i32* %bytes, align 4
  %add59 = add nsw i32 %65, %66
  %idxprom60 = sext i32 %add59 to i64
  %67 = load i8*, i8** %pr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %67, i64 %idxprom60
  %68 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %68 to i32
  %add63 = add nsw i32 %add58, %conv62
  %69 = load i32, i32* %col, align 4
  %70 = load i32, i32* %bytes, align 4
  %sub64 = sub nsw i32 %69, %70
  %idxprom65 = sext i32 %sub64 to i64
  %71 = load i8*, i8** %nr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %71, i64 %idxprom65
  %72 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %72 to i32
  %73 = load i32, i32* %col, align 4
  %idxprom68 = sext i32 %73 to i64
  %74 = load i8*, i8** %nr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %74, i64 %idxprom68
  %75 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %75 to i32
  %mul71 = mul nsw i32 2, %conv70
  %add72 = add nsw i32 %conv67, %mul71
  %76 = load i32, i32* %col, align 4
  %77 = load i32, i32* %bytes, align 4
  %add73 = add nsw i32 %76, %77
  %idxprom74 = sext i32 %add73 to i64
  %78 = load i8*, i8** %nr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %78, i64 %idxprom74
  %79 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %79 to i32
  %add77 = add nsw i32 %add72, %conv76
  %sub78 = sub nsw i32 %add63, %add77
  br label %cond.end

cond.false:                                       ; preds = %for.body.50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub78, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %hor_gradient, align 4
  %80 = load i32, i32* %do_vertical.addr, align 4
  %tobool79 = icmp ne i32 %80, 0
  br i1 %tobool79, label %cond.true.80, label %cond.false.112

cond.true.80:                                     ; preds = %cond.end
  %81 = load i32, i32* %col, align 4
  %82 = load i32, i32* %bytes, align 4
  %sub81 = sub nsw i32 %81, %82
  %idxprom82 = sext i32 %sub81 to i64
  %83 = load i8*, i8** %pr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %83, i64 %idxprom82
  %84 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %84 to i32
  %85 = load i32, i32* %col, align 4
  %86 = load i32, i32* %bytes, align 4
  %sub85 = sub nsw i32 %85, %86
  %idxprom86 = sext i32 %sub85 to i64
  %87 = load i8*, i8** %cr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %87, i64 %idxprom86
  %88 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %88 to i32
  %mul89 = mul nsw i32 2, %conv88
  %add90 = add nsw i32 %conv84, %mul89
  %89 = load i32, i32* %col, align 4
  %90 = load i32, i32* %bytes, align 4
  %sub91 = sub nsw i32 %89, %90
  %idxprom92 = sext i32 %sub91 to i64
  %91 = load i8*, i8** %nr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %91, i64 %idxprom92
  %92 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %92 to i32
  %add95 = add nsw i32 %add90, %conv94
  %93 = load i32, i32* %col, align 4
  %94 = load i32, i32* %bytes, align 4
  %add96 = add nsw i32 %93, %94
  %idxprom97 = sext i32 %add96 to i64
  %95 = load i8*, i8** %pr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %95, i64 %idxprom97
  %96 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %96 to i32
  %97 = load i32, i32* %col, align 4
  %98 = load i32, i32* %bytes, align 4
  %add100 = add nsw i32 %97, %98
  %idxprom101 = sext i32 %add100 to i64
  %99 = load i8*, i8** %cr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %99, i64 %idxprom101
  %100 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %100 to i32
  %mul104 = mul nsw i32 2, %conv103
  %add105 = add nsw i32 %conv99, %mul104
  %101 = load i32, i32* %col, align 4
  %102 = load i32, i32* %bytes, align 4
  %add106 = add nsw i32 %101, %102
  %idxprom107 = sext i32 %add106 to i64
  %103 = load i8*, i8** %nr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %103, i64 %idxprom107
  %104 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %104 to i32
  %add110 = add nsw i32 %add105, %conv109
  %sub111 = sub nsw i32 %add95, %add110
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.end
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.80
  %cond114 = phi i32 [ %sub111, %cond.true.80 ], [ 0, %cond.false.112 ]
  store i32 %cond114, i32* %ver_gradient, align 4
  %105 = load i32, i32* %do_vertical.addr, align 4
  %tobool115 = icmp ne i32 %105, 0
  br i1 %tobool115, label %land.lhs.true, label %cond.false.126

land.lhs.true:                                    ; preds = %cond.end.113
  %106 = load i32, i32* %do_horizontal.addr, align 4
  %tobool116 = icmp ne i32 %106, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.126

cond.true.117:                                    ; preds = %land.lhs.true
  %107 = load i32, i32* %hor_gradient, align 4
  %108 = load i32, i32* %hor_gradient, align 4
  %mul118 = mul nsw i32 %107, %108
  %109 = load i32, i32* %ver_gradient, align 4
  %110 = load i32, i32* %ver_gradient, align 4
  %mul119 = mul nsw i32 %109, %110
  %add120 = add nsw i32 %mul118, %mul119
  %conv121 = sitofp i32 %add120 to double
  %call122 = call double @sqrt(double %conv121) #4
  %add123 = fadd double %call122, 5.000000e-01
  %conv124 = fptosi double %add123 to i32
  %conv125 = sitofp i32 %conv124 to double
  %div = fdiv double %conv125, 5.660000e+00
  br label %cond.end.145

cond.false.126:                                   ; preds = %land.lhs.true, %cond.end.113
  %111 = load i32, i32* %keep_sign.addr, align 4
  %tobool127 = icmp ne i32 %111, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.135

cond.true.128:                                    ; preds = %cond.false.126
  %112 = load i32, i32* %hor_gradient, align 4
  %113 = load i32, i32* %ver_gradient, align 4
  %add129 = add nsw i32 %112, %113
  %conv130 = sitofp i32 %add129 to double
  %div131 = fdiv double %conv130, 8.000000e+00
  %add132 = fadd double %div131, 5.000000e-01
  %conv133 = fptosi double %add132 to i32
  %add134 = add nsw i32 127, %conv133
  br label %cond.end.142

cond.false.135:                                   ; preds = %cond.false.126
  %114 = load i32, i32* %hor_gradient, align 4
  %115 = load i32, i32* %ver_gradient, align 4
  %add136 = add nsw i32 %114, %115
  %call137 = call i32 @abs(i32 %add136) #5
  %conv138 = sitofp i32 %call137 to double
  %div139 = fdiv double %conv138, 4.000000e+00
  %add140 = fadd double %div139, 5.000000e-01
  %conv141 = fptosi double %add140 to i32
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.135, %cond.true.128
  %cond143 = phi i32 [ %add134, %cond.true.128 ], [ %conv141, %cond.false.135 ]
  %conv144 = sitofp i32 %cond143 to double
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end.142, %cond.true.117
  %cond146 = phi double [ %div, %cond.true.117 ], [ %conv144, %cond.end.142 ]
  %conv147 = fptosi double %cond146 to i32
  store i32 %conv147, i32* %gradient, align 4
  %116 = load i32, i32* %alpha, align 4
  %tobool148 = icmp ne i32 %116, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.else.158

land.lhs.true.149:                                ; preds = %cond.end.145
  %117 = load i32, i32* %col, align 4
  %add150 = add nsw i32 %117, 1
  %118 = load i32, i32* %bytes, align 4
  %rem = srem i32 %add150, %118
  %cmp151 = icmp eq i32 %rem, 0
  br i1 %cmp151, label %if.then.153, label %if.else.158

if.then.153:                                      ; preds = %land.lhs.true.149
  %119 = load i32, i32* %counter, align 4
  %cmp154 = icmp eq i32 %119, 0
  %cond156 = select i1 %cmp154, i32 0, i32 255
  %conv157 = trunc i32 %cond156 to i8
  %120 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %conv157, i8* %120, align 1
  store i32 0, i32* %counter, align 4
  br label %if.end.165

if.else.158:                                      ; preds = %land.lhs.true.149, %cond.end.145
  %121 = load i32, i32* %gradient, align 4
  %conv159 = trunc i32 %121 to i8
  %122 = load i8*, i8** %d, align 8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr160, i8** %d, align 8
  store i8 %conv159, i8* %122, align 1
  %123 = load i32, i32* %gradient, align 4
  %cmp161 = icmp sgt i32 %123, 10
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.else.158
  %124 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.else.158
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.153
  br label %for.inc

for.inc:                                          ; preds = %if.end.165
  %125 = load i32, i32* %col, align 4
  %inc166 = add nsw i32 %125, 1
  store i32 %inc166, i32* %col, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %126 = load i8*, i8** %pr, align 8
  store i8* %126, i8** %tmp, align 8
  %127 = load i8*, i8** %cr, align 8
  store i8* %127, i8** %pr, align 8
  %128 = load i8*, i8** %nr, align 8
  store i8* %128, i8** %cr, align 8
  %129 = load i8*, i8** %tmp, align 8
  store i8* %129, i8** %nr, align 8
  %130 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool167 = icmp ne %struct._GimpPreview* %130, null
  br i1 %tobool167, label %if.then.168, label %if.else.176

if.then.168:                                      ; preds = %for.end
  %131 = load i8*, i8** %preview_buffer, align 8
  %132 = load i32, i32* %width, align 4
  %133 = load i32, i32* %row, align 4
  %134 = load i32, i32* %y, align 4
  %sub169 = sub nsw i32 %133, %134
  %mul170 = mul nsw i32 %132, %sub169
  %135 = load i32, i32* %bytes, align 4
  %mul171 = mul nsw i32 %mul170, %135
  %idx.ext172 = sext i32 %mul171 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %131, i64 %idx.ext172
  %136 = load i8*, i8** %dest, align 8
  %137 = load i32, i32* %width, align 4
  %138 = load i32, i32* %bytes, align 4
  %mul174 = mul nsw i32 %137, %138
  %conv175 = sext i32 %mul174 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr173, i8* %136, i64 %conv175, i32 1, i1 false)
  br label %if.end.186

if.else.176:                                      ; preds = %for.end
  %139 = load i8*, i8** %dest, align 8
  %140 = load i32, i32* %x, align 4
  %141 = load i32, i32* %row, align 4
  %142 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %139, i32 %140, i32 %141, i32 %142)
  %143 = load i32, i32* %row, align 4
  %rem177 = srem i32 %143, 20
  %cmp178 = icmp eq i32 %rem177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.185

if.then.180:                                      ; preds = %if.else.176
  %144 = load i32, i32* %row, align 4
  %conv181 = sitofp i32 %144 to double
  %145 = load i32, i32* %height, align 4
  %conv182 = sitofp i32 %145 to double
  %div183 = fdiv double %conv181, %conv182
  %call184 = call i32 @gimp_progress_update(double %div183)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.180, %if.else.176
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.168
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %146 = load i32, i32* %row, align 4
  %inc188 = add nsw i32 %146, 1
  store i32 %inc188, i32* %row, align 4
  br label %for.cond

for.end.189:                                      ; preds = %for.cond
  %147 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool190 = icmp ne %struct._GimpPreview* %147, null
  br i1 %tobool190, label %if.then.191, label %if.else.193

if.then.191:                                      ; preds = %for.end.189
  %148 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %149 = load i8*, i8** %preview_buffer, align 8
  %150 = load i32, i32* %width, align 4
  %151 = load i32, i32* %bytes, align 4
  %mul192 = mul nsw i32 %150, %151
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %148, i8* %149, i32 %mul192)
  %152 = load i8*, i8** %preview_buffer, align 8
  call void @g_free(i8* %152)
  br label %if.end.199

if.else.193:                                      ; preds = %for.end.189
  %call194 = call i32 @gimp_progress_update(double 1.000000e+00)
  %153 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %153)
  %154 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id195 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %154, i32 0, i32 0
  %155 = load i32, i32* %drawable_id195, align 4
  %call196 = call i32 @gimp_drawable_merge_shadow(i32 %155, i32 1)
  %156 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id197 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %156, i32 0, i32 0
  %157 = load i32, i32* %drawable_id197, align 4
  %158 = load i32, i32* %x, align 4
  %159 = load i32, i32* %y, align 4
  %160 = load i32, i32* %width, align 4
  %161 = load i32, i32* %height, align 4
  %call198 = call i32 @gimp_drawable_update(i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.193, %if.then.191
  %162 = load i8*, i8** %prev_row, align 8
  call void @g_free(i8* %162)
  %163 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %163)
  %164 = load i8*, i8** %next_row, align 8
  call void @g_free(i8* %164)
  %165 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %165)
  br label %return

return:                                           ; preds = %if.end.199, %if.then.9
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

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

; Function Attrs: nounwind uwtable
define internal void @sobel_preview_update(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.SobelValues, %struct.SobelValues* @bvals, i32 0, i32 2), align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @sobel(%struct._GimpDrawable* %call2, i32 %3, i32 %4, i32 %5, %struct._GimpPreview* %6)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @sobel_prepare_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %data, i32 %x, i32 %y, i32 %w) #0 {
entry:
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %data.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 7
  %2 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp sgt i32 %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 7
  %4 = load i32, i32* %h1, align 4
  %sub2 = sub nsw i32 %4, 1
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %6 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 0, %cond.true.4 ], [ %6, %cond.false.5 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %sub2, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond7, i32* %y.addr, align 4
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %7, i8* %8, i32 %9, i32 %10, i32 %11)
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.6
  %12 = load i32, i32* %b, align 4
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 2
  %14 = load i32, i32* %bpp, align 4
  %cmp8 = icmp slt i32 %12, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %b, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %18 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp9 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %18, i32 0, i32 2
  %19 = load i32, i32* %bpp9, align 4
  %sub10 = sub nsw i32 0, %19
  %20 = load i32, i32* %b, align 4
  %add = add nsw i32 %sub10, %20
  %idxprom11 = sext i32 %add to i64
  %21 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 %idxprom11
  store i8 %17, i8* %arrayidx12, align 1
  %22 = load i32, i32* %w.addr, align 4
  %sub13 = sub nsw i32 %22, 1
  %23 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %23, i32 0, i32 2
  %24 = load i32, i32* %bpp14, align 4
  %mul = mul nsw i32 %sub13, %24
  %25 = load i32, i32* %b, align 4
  %add15 = add nsw i32 %mul, %25
  %idxprom16 = sext i32 %add15 to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 %idxprom16
  %27 = load i8, i8* %arrayidx17, align 1
  %28 = load i32, i32* %w.addr, align 4
  %29 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp18 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %29, i32 0, i32 2
  %30 = load i32, i32* %bpp18, align 4
  %mul19 = mul nsw i32 %28, %30
  %31 = load i32, i32* %b, align 4
  %add20 = add nsw i32 %mul19, %31
  %idxprom21 = sext i32 %add20 to i64
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %32, i64 %idxprom21
  store i8 %27, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %b, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
