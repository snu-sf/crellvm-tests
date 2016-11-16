; ModuleID = './plug-ins/common/softglow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SoftglowVals = type { double, double, double }
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
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"glow-radius\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Glow radius (radius in pixels)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Glow brightness (0.0 - 1.0)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"sharpness\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Glow sharpness (0.0 - 1.0)\00", align 1
@.str.12 = private unnamed_addr constant [668 x i8] c"Gives an image a softglow effect by intensifying the highlights in the image. This is done by screening a modified version of the drawable with itself. The modified version is desaturated and then a sigmoidal transfer function is applied to force the distribution of intensities into very small and very large only. This desaturated version is then blurred to give it a fuzzy 'vaseline-on-the-lens' effect. The glow radius parameter controls the sharpness of the glow effect. The brightness parameter controls the degree of intensification applied to image highlights. The sharpness parameter controls how defined or alternatively, diffuse, the glow effect should be.\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"plug-in-softglow\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Simulate glow by making highlights intense and fuzzy\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Spencer Kimball\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Bit Specialists, Inc.\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"2001\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"_Softglow...\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@svals = internal global %struct.SoftglowVals { double 1.000000e+01, double 7.500000e-01, double 8.500000e-01 }, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"Softglow\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"softglow\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"gimp-softglow\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"_Glow radius:\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"_Brightness:\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"_Sharpness:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %help_string = alloca i8*, align 8
  store i8* getelementptr inbounds ([668 x i8], [668 x i8]* @.str.12, i32 0, i32 0), i8** %help_string, align 8
  %0 = load i8*, i8** %help_string, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_tile_cache_ntiles(i64 48)
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call3 = call i8* @gimp_locale_directory() #5
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %call3) #4
  %call5 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #4
  %call6 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (%struct.SoftglowVals* @svals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @softglow_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 3
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data11 to double*
  %10 = load double, double* %d_float, align 8
  store double %10, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 0), align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 4
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_float14 = bitcast %union._GimpParamData* %data13 to double*
  %12 = load double, double* %d_float14, align 8
  store double %12, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 1), align 8
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 5
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_float17 = bitcast %union._GimpParamData* %data16 to double*
  %14 = load double, double* %d_float17, align 8
  store double %14, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 2), align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %do.end
  %call19 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (%struct.SoftglowVals* @svals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %sw.bb.9, %if.end
  %15 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %15, 3
  br i1 %cmp, label %if.then.20, label %if.end.38

if.then.20:                                       ; preds = %sw.epilog
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id, align 4
  %call21 = call i32 @gimp_drawable_is_rgb(i32 %17)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id23, align 4
  %call24 = call i32 @gimp_drawable_is_gray(i32 %19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %lor.lhs.false, %if.then.20
  %call27 = call i32 @gimp_progress_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0))
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @softglow(%struct._GimpDrawable* %20, %struct._GimpPreview* null)
  %21 = load i32, i32* %run_mode, align 4
  %cmp28 = icmp ne i32 %21, 1
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.26
  %call30 = call i32 @gimp_displays_flush()
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.26
  %22 = load i32, i32* %run_mode, align 4
  %cmp32 = icmp eq i32 %22, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %call34 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (%struct.SoftglowVals* @svals to i8*), i32 24)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  %23 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %23, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0)) #4
  store i8* %call36, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.end.35
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %sw.epilog
  %24 = load i32, i32* %status, align 4
  store i32 %24, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %25)
  br label %return

return:                                           ; preds = %if.end.38, %if.then
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

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @softglow_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @softglow to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #4
  %40 = load double, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 0), align 8
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 0, i8* %call27, i32 100, i32 5, double %40, double 1.000000e+00, double 5.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %scale_data, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.SoftglowVals* @svals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0)) #4
  %50 = load double, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 1), align 8
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %49, i32 0, i32 1, i8* %call33, i32 100, i32 5, double %50, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %scale_data, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call37)
  %59 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)) #4
  %60 = load double, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 2), align 8
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %59, i32 0, i32 2, i8* %call39, i32 100, i32 5, double %60, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call40, %struct._GtkObject** %scale_data, align 8
  %61 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 2)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_dialog_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call43)
  %70 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDialog*
  %call45 = call i32 @gimp_dialog_run(%struct._GimpDialog* %70)
  %cmp = icmp eq i32 %call45, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %71)
  %72 = load i32, i32* %run, align 4
  ret i32 %72
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @softglow(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca %struct._GimpPixelRgn*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %sp_p = alloca i8*, align 8
  %sp_m = alloca i8*, align 8
  %n_p = alloca [5 x double], align 16
  %n_m = alloca [5 x double], align 16
  %d_p = alloca [5 x double], align 16
  %d_m = alloca [5 x double], align 16
  %bd_p = alloca [5 x double], align 16
  %bd_m = alloca [5 x double], align 16
  %val_p = alloca double*, align 8
  %val_m = alloca double*, align 8
  %vp = alloca double*, align 8
  %vm = alloca double*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %terms = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %initial_p = alloca [4 x i32], align 16
  %initial_m = alloca [4 x i32], align 16
  %tmp = alloca i32, align 4
  %radius = alloca double, align 8
  %std_dev = alloca double, align 8
  %val = alloca double, align 8
  %src_ptr = alloca i8*, align 8
  %dest_ptr = alloca i8*, align 8
  %vpptr = alloca double*, align 8
  %vmptr = alloca double*, align 8
  %vpptr280 = alloca double*, align 8
  %vmptr282 = alloca double*, align 8
  %src_ptr385 = alloca i8*, align 8
  %dest_ptr388 = alloca i8*, align 8
  %blur_ptr = alloca i8*, align 8
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
  %add4 = add nsw i32 %5, %6
  store i32 %add4, i32* %y2, align 4
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
  %sub5 = sub nsw i32 %11, %12
  store i32 %sub5, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 3
  %14 = load i32, i32* %bpp, align 4
  store i32 %14, i32* %bytes, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_has_alpha(i32 %16)
  store i32 %call7, i32* %has_alpha, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %17, %18
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %20 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  %conv = sext i32 %cond to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %21 = bitcast i8* %call8 to double*
  store double* %21, double** %val_p, align 8
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %cmp9 = icmp sgt i32 %22, %23
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %24 = load i32, i32* %width, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  %25 = load i32, i32* %height, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %24, %cond.true.11 ], [ %25, %cond.false.12 ]
  %conv15 = sext i32 %cond14 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 8)
  %26 = bitcast i8* %call16 to double*
  store double* %26, double** %val_m, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %27, %28
  %conv17 = sext i32 %mul to i64
  %call18 = call noalias i8* @g_malloc0_n(i64 %conv17, i64 1)
  store i8* %call18, i8** %dest, align 8
  store i32 0, i32* %progress, align 4
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  %mul19 = mul nsw i32 %29, %30
  %mul20 = mul nsw i32 %mul19, 3
  store i32 %mul20, i32* %max_progress, align 4
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = load i32, i32* %x1, align 4
  %33 = load i32, i32* %y1, align 4
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 0, i32 0)
  %call21 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  %36 = bitcast i8* %call21 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %36, %struct._GimpPixelRgn** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %cond.end.13
  %37 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %cmp22 = icmp ne %struct._GimpPixelRgn* %37, null
  br i1 %cmp22, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8
  store i8* %38, i8** %src_ptr, align 8
  %39 = load i8*, i8** %dest, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %y1, align 4
  %sub26 = sub nsw i32 %40, %41
  %42 = load i32, i32* %width, align 4
  %mul27 = mul nsw i32 %sub26, %42
  %idx.ext = sext i32 %mul27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %x1, align 4
  %sub28 = sub nsw i32 %43, %44
  %idx.ext29 = sext i32 %sub28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext29
  store i8* %add.ptr30, i8** %dest_ptr, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.98, %for.body
  %45 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %46 = load i32, i32* %h, align 4
  %cmp32 = icmp slt i32 %45, %46
  br i1 %cmp32, label %for.body.34, label %for.end.100

for.body.34:                                      ; preds = %for.cond.31
  store i32 0, i32* %col, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %for.body.34
  %47 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %48 = load i32, i32* %w, align 4
  %cmp36 = icmp slt i32 %47, %48
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.35
  %49 = load i32, i32* %bytes, align 4
  %cmp39 = icmp sgt i32 %49, 2
  br i1 %cmp39, label %if.then.41, label %if.else.59

if.then.41:                                       ; preds = %for.body.38
  %50 = load i32, i32* %col, align 4
  %51 = load i32, i32* %bytes, align 4
  %mul42 = mul nsw i32 %50, %51
  %add43 = add nsw i32 %mul42, 0
  %idxprom = sext i32 %add43 to i64
  %52 = load i8*, i8** %src_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 %idxprom
  %53 = load i8, i8* %arrayidx, align 1
  %conv44 = zext i8 %53 to i32
  %54 = load i32, i32* %col, align 4
  %55 = load i32, i32* %bytes, align 4
  %mul45 = mul nsw i32 %54, %55
  %add46 = add nsw i32 %mul45, 1
  %idxprom47 = sext i32 %add46 to i64
  %56 = load i8*, i8** %src_ptr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %56, i64 %idxprom47
  %57 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %57 to i32
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %bytes, align 4
  %mul50 = mul nsw i32 %58, %59
  %add51 = add nsw i32 %mul50, 2
  %idxprom52 = sext i32 %add51 to i64
  %60 = load i8*, i8** %src_ptr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %60, i64 %idxprom52
  %61 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %61 to i32
  %call55 = call i32 @gimp_rgb_to_l_int(i32 %conv44, i32 %conv49, i32 %conv54)
  %conv56 = trunc i32 %call55 to i8
  %62 = load i32, i32* %col, align 4
  %idxprom57 = sext i32 %62 to i64
  %63 = load i8*, i8** %dest_ptr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %63, i64 %idxprom57
  store i8 %conv56, i8* %arrayidx58, align 1
  br label %if.end.65

if.else.59:                                       ; preds = %for.body.38
  %64 = load i32, i32* %col, align 4
  %65 = load i32, i32* %bytes, align 4
  %mul60 = mul nsw i32 %64, %65
  %idxprom61 = sext i32 %mul60 to i64
  %66 = load i8*, i8** %src_ptr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %66, i64 %idxprom61
  %67 = load i8, i8* %arrayidx62, align 1
  %68 = load i32, i32* %col, align 4
  %idxprom63 = sext i32 %68 to i64
  %69 = load i8*, i8** %dest_ptr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %69, i64 %idxprom63
  store i8 %67, i8* %arrayidx64, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.59, %if.then.41
  %70 = load i32, i32* %col, align 4
  %idxprom66 = sext i32 %70 to i64
  %71 = load i8*, i8** %dest_ptr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %71, i64 %idxprom66
  %72 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %72 to i32
  %conv69 = sitofp i32 %conv68 to double
  %div = fdiv double %conv69, 2.550000e+02
  store double %div, double* %val, align 8
  %73 = load double, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 2), align 8
  %mul70 = fmul double %73, 2.000000e+01
  %add71 = fadd double 2.000000e+00, %mul70
  %sub72 = fsub double -0.000000e+00, %add71
  %74 = load double, double* %val, align 8
  %sub73 = fsub double %74, 5.000000e-01
  %mul74 = fmul double %sub72, %sub73
  %call75 = call double @exp(double %mul74) #4
  %add76 = fadd double 1.000000e+00, %call75
  %div77 = fdiv double 2.550000e+02, %add76
  store double %div77, double* %val, align 8
  %75 = load double, double* %val, align 8
  %76 = load double, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 1), align 8
  %mul78 = fmul double %75, %76
  store double %mul78, double* %val, align 8
  %77 = load double, double* %val, align 8
  %cmp79 = fcmp ogt double %77, 2.550000e+02
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %if.end.65
  br label %cond.end.89

cond.false.82:                                    ; preds = %if.end.65
  %78 = load double, double* %val, align 8
  %cmp83 = fcmp olt double %78, 0.000000e+00
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.false.82
  br label %cond.end.87

cond.false.86:                                    ; preds = %cond.false.82
  %79 = load double, double* %val, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.85
  %cond88 = phi double [ 0.000000e+00, %cond.true.85 ], [ %79, %cond.false.86 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.81
  %cond90 = phi double [ 2.550000e+02, %cond.true.81 ], [ %cond88, %cond.end.87 ]
  %conv91 = fptoui double %cond90 to i8
  %80 = load i32, i32* %col, align 4
  %idxprom92 = sext i32 %80 to i64
  %81 = load i8*, i8** %dest_ptr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %81, i64 %idxprom92
  store i8 %conv91, i8* %arrayidx93, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.89
  %82 = load i32, i32* %col, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %83 = load i32, i32* %rowstride, align 4
  %84 = load i8*, i8** %src_ptr, align 8
  %idx.ext94 = sext i32 %83 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %84, i64 %idx.ext94
  store i8* %add.ptr95, i8** %src_ptr, align 8
  %85 = load i32, i32* %width, align 4
  %86 = load i8*, i8** %dest_ptr, align 8
  %idx.ext96 = sext i32 %85 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %86, i64 %idx.ext96
  store i8* %add.ptr97, i8** %dest_ptr, align 8
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end
  %87 = load i32, i32* %row, align 4
  %inc99 = add nsw i32 %87, 1
  store i32 %inc99, i32* %row, align 4
  br label %for.cond.31

for.end.100:                                      ; preds = %for.cond.31
  %88 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool101 = icmp ne %struct._GimpPreview* %88, null
  br i1 %tobool101, label %if.end.111, label %if.then.102

if.then.102:                                      ; preds = %for.end.100
  %w103 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %89 = load i32, i32* %w103, align 4
  %h104 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %90 = load i32, i32* %h104, align 4
  %mul105 = mul nsw i32 %89, %90
  %91 = load i32, i32* %progress, align 4
  %add106 = add nsw i32 %91, %mul105
  store i32 %add106, i32* %progress, align 4
  %92 = load i32, i32* %progress, align 4
  %conv107 = sitofp i32 %92 to double
  %93 = load i32, i32* %max_progress, align 4
  %conv108 = sitofp i32 %93 to double
  %div109 = fdiv double %conv107, %conv108
  %call110 = call i32 @gimp_progress_update(double %div109)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.102, %for.end.100
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %94 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %95 = bitcast %struct._GimpPixelRgn* %94 to i8*
  %call113 = call i8* @gimp_pixel_rgns_process(i8* %95)
  %96 = bitcast i8* %call113 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %96, %struct._GimpPixelRgn** %pr, align 8
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %97 = load double, double* getelementptr inbounds (%struct.SoftglowVals, %struct.SoftglowVals* @svals, i32 0, i32 0), align 8
  %call115 = call double @fabs(double %97) #5
  %add116 = fadd double %call115, 1.000000e+00
  store double %add116, double* %radius, align 8
  %98 = load double, double* %radius, align 8
  %99 = load double, double* %radius, align 8
  %mul117 = fmul double %98, %99
  %sub118 = fsub double -0.000000e+00, %mul117
  %call119 = call double @log(double 0x3F70101010101010) #4
  %mul120 = fmul double 2.000000e+00, %call119
  %div121 = fdiv double %sub118, %mul120
  %call122 = call double @sqrt(double %div121) #4
  store double %call122, double* %std_dev, align 8
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i32 0
  %arraydecay123 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i32 0
  %arraydecay124 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i32 0
  %arraydecay125 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i32 0
  %arraydecay126 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i32 0
  %arraydecay127 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i32 0
  %100 = load double, double* %std_dev, align 8
  call void @find_constants(double* %arraydecay, double* %arraydecay123, double* %arraydecay124, double* %arraydecay125, double* %arraydecay126, double* %arraydecay127, double %100)
  store i32 0, i32* %col, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.249, %for.end.114
  %101 = load i32, i32* %col, align 4
  %102 = load i32, i32* %width, align 4
  %cmp129 = icmp slt i32 %101, %102
  br i1 %cmp129, label %for.body.131, label %for.end.251

for.body.131:                                     ; preds = %for.cond.128
  %103 = load double*, double** %val_p, align 8
  %104 = bitcast double* %103 to i8*
  %105 = load i32, i32* %height, align 4
  %conv132 = sext i32 %105 to i64
  %mul133 = mul i64 %conv132, 8
  call void @llvm.memset.p0i8.i64(i8* %104, i8 0, i64 %mul133, i32 8, i1 false)
  %106 = load double*, double** %val_m, align 8
  %107 = bitcast double* %106 to i8*
  %108 = load i32, i32* %height, align 4
  %conv134 = sext i32 %108 to i64
  %mul135 = mul i64 %conv134, 8
  call void @llvm.memset.p0i8.i64(i8* %107, i8 0, i64 %mul135, i32 8, i1 false)
  %109 = load i8*, i8** %dest, align 8
  %110 = load i32, i32* %col, align 4
  %idx.ext136 = sext i32 %110 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %109, i64 %idx.ext136
  store i8* %add.ptr137, i8** %src, align 8
  %111 = load i8*, i8** %src, align 8
  store i8* %111, i8** %sp_p, align 8
  %112 = load i8*, i8** %src, align 8
  %113 = load i32, i32* %width, align 4
  %114 = load i32, i32* %height, align 4
  %sub138 = sub nsw i32 %114, 1
  %mul139 = mul nsw i32 %113, %sub138
  %idx.ext140 = sext i32 %mul139 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %112, i64 %idx.ext140
  store i8* %add.ptr141, i8** %sp_m, align 8
  %115 = load double*, double** %val_p, align 8
  store double* %115, double** %vp, align 8
  %116 = load double*, double** %val_m, align 8
  %117 = load i32, i32* %height, align 4
  %sub142 = sub nsw i32 %117, 1
  %idx.ext143 = sext i32 %sub142 to i64
  %add.ptr144 = getelementptr inbounds double, double* %116, i64 %idx.ext143
  store double* %add.ptr144, double** %vm, align 8
  %118 = load i8*, i8** %sp_p, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %119 to i32
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 0
  store i32 %conv146, i32* %arrayidx147, align 4
  %120 = load i8*, i8** %sp_m, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %121 to i32
  %arrayidx150 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 0
  store i32 %conv149, i32* %arrayidx150, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.232, %for.body.131
  %122 = load i32, i32* %row, align 4
  %123 = load i32, i32* %height, align 4
  %cmp152 = icmp slt i32 %122, %123
  br i1 %cmp152, label %for.body.154, label %for.end.234

for.body.154:                                     ; preds = %for.cond.151
  %124 = load i32, i32* %row, align 4
  %cmp157 = icmp slt i32 %124, 4
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %for.body.154
  %125 = load i32, i32* %row, align 4
  br label %cond.end.161

cond.false.160:                                   ; preds = %for.body.154
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.159
  %cond162 = phi i32 [ %125, %cond.true.159 ], [ 4, %cond.false.160 ]
  store i32 %cond162, i32* %terms, align 4
  %126 = load double*, double** %vp, align 8
  store double* %126, double** %vpptr, align 8
  %127 = load double*, double** %vm, align 8
  store double* %127, double** %vmptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.199, %cond.end.161
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %terms, align 4
  %cmp164 = icmp sle i32 %128, %129
  br i1 %cmp164, label %for.body.166, label %for.end.201

for.body.166:                                     ; preds = %for.cond.163
  %130 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %130 to i64
  %arrayidx168 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom167
  %131 = load double, double* %arrayidx168, align 8
  %132 = load i32, i32* %i, align 4
  %sub169 = sub nsw i32 0, %132
  %133 = load i32, i32* %width, align 4
  %mul170 = mul nsw i32 %sub169, %133
  %idxprom171 = sext i32 %mul170 to i64
  %134 = load i8*, i8** %sp_p, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %134, i64 %idxprom171
  %135 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %135 to i32
  %conv174 = sitofp i32 %conv173 to double
  %mul175 = fmul double %131, %conv174
  %136 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %136 to i64
  %arrayidx177 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i64 %idxprom176
  %137 = load double, double* %arrayidx177, align 8
  %138 = load i32, i32* %i, align 4
  %sub178 = sub nsw i32 0, %138
  %idxprom179 = sext i32 %sub178 to i64
  %139 = load double*, double** %vp, align 8
  %arrayidx180 = getelementptr inbounds double, double* %139, i64 %idxprom179
  %140 = load double, double* %arrayidx180, align 8
  %mul181 = fmul double %137, %140
  %sub182 = fsub double %mul175, %mul181
  %141 = load double*, double** %vpptr, align 8
  %142 = load double, double* %141, align 8
  %add183 = fadd double %142, %sub182
  store double %add183, double* %141, align 8
  %143 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %143 to i64
  %arrayidx185 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom184
  %144 = load double, double* %arrayidx185, align 8
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %width, align 4
  %mul186 = mul nsw i32 %145, %146
  %idxprom187 = sext i32 %mul186 to i64
  %147 = load i8*, i8** %sp_m, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %147, i64 %idxprom187
  %148 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %148 to i32
  %conv190 = sitofp i32 %conv189 to double
  %mul191 = fmul double %144, %conv190
  %149 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %149 to i64
  %arrayidx193 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i64 %idxprom192
  %150 = load double, double* %arrayidx193, align 8
  %151 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %151 to i64
  %152 = load double*, double** %vm, align 8
  %arrayidx195 = getelementptr inbounds double, double* %152, i64 %idxprom194
  %153 = load double, double* %arrayidx195, align 8
  %mul196 = fmul double %150, %153
  %sub197 = fsub double %mul191, %mul196
  %154 = load double*, double** %vmptr, align 8
  %155 = load double, double* %154, align 8
  %add198 = fadd double %155, %sub197
  store double %add198, double* %154, align 8
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.166
  %156 = load i32, i32* %i, align 4
  %inc200 = add nsw i32 %156, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.163

for.end.201:                                      ; preds = %for.cond.163
  %157 = load i32, i32* %i, align 4
  store i32 %157, i32* %j, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.224, %for.end.201
  %158 = load i32, i32* %j, align 4
  %cmp203 = icmp sle i32 %158, 4
  br i1 %cmp203, label %for.body.205, label %for.end.226

for.body.205:                                     ; preds = %for.cond.202
  %159 = load i32, i32* %j, align 4
  %idxprom206 = sext i32 %159 to i64
  %arrayidx207 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom206
  %160 = load double, double* %arrayidx207, align 8
  %161 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %161 to i64
  %arrayidx209 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i64 %idxprom208
  %162 = load double, double* %arrayidx209, align 8
  %sub210 = fsub double %160, %162
  %arrayidx211 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 0
  %163 = load i32, i32* %arrayidx211, align 4
  %conv212 = sitofp i32 %163 to double
  %mul213 = fmul double %sub210, %conv212
  %164 = load double*, double** %vpptr, align 8
  %165 = load double, double* %164, align 8
  %add214 = fadd double %165, %mul213
  store double %add214, double* %164, align 8
  %166 = load i32, i32* %j, align 4
  %idxprom215 = sext i32 %166 to i64
  %arrayidx216 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom215
  %167 = load double, double* %arrayidx216, align 8
  %168 = load i32, i32* %j, align 4
  %idxprom217 = sext i32 %168 to i64
  %arrayidx218 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i64 %idxprom217
  %169 = load double, double* %arrayidx218, align 8
  %sub219 = fsub double %167, %169
  %arrayidx220 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 0
  %170 = load i32, i32* %arrayidx220, align 4
  %conv221 = sitofp i32 %170 to double
  %mul222 = fmul double %sub219, %conv221
  %171 = load double*, double** %vmptr, align 8
  %172 = load double, double* %171, align 8
  %add223 = fadd double %172, %mul222
  store double %add223, double* %171, align 8
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.body.205
  %173 = load i32, i32* %j, align 4
  %inc225 = add nsw i32 %173, 1
  store i32 %inc225, i32* %j, align 4
  br label %for.cond.202

for.end.226:                                      ; preds = %for.cond.202
  %174 = load i32, i32* %width, align 4
  %175 = load i8*, i8** %sp_p, align 8
  %idx.ext227 = sext i32 %174 to i64
  %add.ptr228 = getelementptr inbounds i8, i8* %175, i64 %idx.ext227
  store i8* %add.ptr228, i8** %sp_p, align 8
  %176 = load i32, i32* %width, align 4
  %177 = load i8*, i8** %sp_m, align 8
  %idx.ext229 = sext i32 %176 to i64
  %idx.neg = sub i64 0, %idx.ext229
  %add.ptr230 = getelementptr inbounds i8, i8* %177, i64 %idx.neg
  store i8* %add.ptr230, i8** %sp_m, align 8
  %178 = load double*, double** %vp, align 8
  %incdec.ptr = getelementptr inbounds double, double* %178, i32 1
  store double* %incdec.ptr, double** %vp, align 8
  %179 = load double*, double** %vm, align 8
  %incdec.ptr231 = getelementptr inbounds double, double* %179, i32 -1
  store double* %incdec.ptr231, double** %vm, align 8
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.end.226
  %180 = load i32, i32* %row, align 4
  %inc233 = add nsw i32 %180, 1
  store i32 %inc233, i32* %row, align 4
  br label %for.cond.151

for.end.234:                                      ; preds = %for.cond.151
  %181 = load double*, double** %val_p, align 8
  %182 = load double*, double** %val_m, align 8
  %183 = load i8*, i8** %dest, align 8
  %184 = load i32, i32* %col, align 4
  %idx.ext235 = sext i32 %184 to i64
  %add.ptr236 = getelementptr inbounds i8, i8* %183, i64 %idx.ext235
  %185 = load i32, i32* %width, align 4
  %186 = load i32, i32* %height, align 4
  call void @transfer_pixels(double* %181, double* %182, i8* %add.ptr236, i32 %185, i32 %186)
  %187 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool237 = icmp ne %struct._GimpPreview* %187, null
  br i1 %tobool237, label %if.end.248, label %if.then.238

if.then.238:                                      ; preds = %for.end.234
  %188 = load i32, i32* %height, align 4
  %189 = load i32, i32* %progress, align 4
  %add239 = add nsw i32 %189, %188
  store i32 %add239, i32* %progress, align 4
  %190 = load i32, i32* %col, align 4
  %rem = srem i32 %190, 5
  %cmp240 = icmp eq i32 %rem, 0
  br i1 %cmp240, label %if.then.242, label %if.end.247

if.then.242:                                      ; preds = %if.then.238
  %191 = load i32, i32* %progress, align 4
  %conv243 = sitofp i32 %191 to double
  %192 = load i32, i32* %max_progress, align 4
  %conv244 = sitofp i32 %192 to double
  %div245 = fdiv double %conv243, %conv244
  %call246 = call i32 @gimp_progress_update(double %div245)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.242, %if.then.238
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %for.end.234
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.248
  %193 = load i32, i32* %col, align 4
  %inc250 = add nsw i32 %193, 1
  store i32 %inc250, i32* %col, align 4
  br label %for.cond.128

for.end.251:                                      ; preds = %for.cond.128
  store i32 0, i32* %row, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.374, %for.end.251
  %194 = load i32, i32* %row, align 4
  %195 = load i32, i32* %height, align 4
  %cmp253 = icmp slt i32 %194, %195
  br i1 %cmp253, label %for.body.255, label %for.end.376

for.body.255:                                     ; preds = %for.cond.252
  %196 = load double*, double** %val_p, align 8
  %197 = bitcast double* %196 to i8*
  %198 = load i32, i32* %width, align 4
  %conv256 = sext i32 %198 to i64
  %mul257 = mul i64 %conv256, 8
  call void @llvm.memset.p0i8.i64(i8* %197, i8 0, i64 %mul257, i32 8, i1 false)
  %199 = load double*, double** %val_m, align 8
  %200 = bitcast double* %199 to i8*
  %201 = load i32, i32* %width, align 4
  %conv258 = sext i32 %201 to i64
  %mul259 = mul i64 %conv258, 8
  call void @llvm.memset.p0i8.i64(i8* %200, i8 0, i64 %mul259, i32 8, i1 false)
  %202 = load i8*, i8** %dest, align 8
  %203 = load i32, i32* %row, align 4
  %204 = load i32, i32* %width, align 4
  %mul260 = mul nsw i32 %203, %204
  %idx.ext261 = sext i32 %mul260 to i64
  %add.ptr262 = getelementptr inbounds i8, i8* %202, i64 %idx.ext261
  store i8* %add.ptr262, i8** %src, align 8
  %205 = load i8*, i8** %src, align 8
  store i8* %205, i8** %sp_p, align 8
  %206 = load i8*, i8** %src, align 8
  %207 = load i32, i32* %width, align 4
  %idx.ext263 = sext i32 %207 to i64
  %add.ptr264 = getelementptr inbounds i8, i8* %206, i64 %idx.ext263
  %add.ptr265 = getelementptr inbounds i8, i8* %add.ptr264, i64 -1
  store i8* %add.ptr265, i8** %sp_m, align 8
  %208 = load double*, double** %val_p, align 8
  store double* %208, double** %vp, align 8
  %209 = load double*, double** %val_m, align 8
  %210 = load i32, i32* %width, align 4
  %idx.ext266 = sext i32 %210 to i64
  %add.ptr267 = getelementptr inbounds double, double* %209, i64 %idx.ext266
  %add.ptr268 = getelementptr inbounds double, double* %add.ptr267, i64 -1
  store double* %add.ptr268, double** %vm, align 8
  %211 = load i8*, i8** %sp_p, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %211, i64 0
  %212 = load i8, i8* %arrayidx269, align 1
  %conv270 = zext i8 %212 to i32
  %arrayidx271 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 0
  store i32 %conv270, i32* %arrayidx271, align 4
  %213 = load i8*, i8** %sp_m, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %213, i64 0
  %214 = load i8, i8* %arrayidx272, align 1
  %conv273 = zext i8 %214 to i32
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 0
  store i32 %conv273, i32* %arrayidx274, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.355, %for.body.255
  %215 = load i32, i32* %col, align 4
  %216 = load i32, i32* %width, align 4
  %cmp276 = icmp slt i32 %215, %216
  br i1 %cmp276, label %for.body.278, label %for.end.357

for.body.278:                                     ; preds = %for.cond.275
  %217 = load i32, i32* %col, align 4
  %cmp283 = icmp slt i32 %217, 4
  br i1 %cmp283, label %cond.true.285, label %cond.false.286

cond.true.285:                                    ; preds = %for.body.278
  %218 = load i32, i32* %col, align 4
  br label %cond.end.287

cond.false.286:                                   ; preds = %for.body.278
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.286, %cond.true.285
  %cond288 = phi i32 [ %218, %cond.true.285 ], [ 4, %cond.false.286 ]
  store i32 %cond288, i32* %terms, align 4
  %219 = load double*, double** %vp, align 8
  store double* %219, double** %vpptr280, align 8
  %220 = load double*, double** %vm, align 8
  store double* %220, double** %vmptr282, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.323, %cond.end.287
  %221 = load i32, i32* %i, align 4
  %222 = load i32, i32* %terms, align 4
  %cmp290 = icmp sle i32 %221, %222
  br i1 %cmp290, label %for.body.292, label %for.end.325

for.body.292:                                     ; preds = %for.cond.289
  %223 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %223 to i64
  %arrayidx294 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom293
  %224 = load double, double* %arrayidx294, align 8
  %225 = load i32, i32* %i, align 4
  %sub295 = sub nsw i32 0, %225
  %idxprom296 = sext i32 %sub295 to i64
  %226 = load i8*, i8** %sp_p, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %226, i64 %idxprom296
  %227 = load i8, i8* %arrayidx297, align 1
  %conv298 = zext i8 %227 to i32
  %conv299 = sitofp i32 %conv298 to double
  %mul300 = fmul double %224, %conv299
  %228 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %228 to i64
  %arrayidx302 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i64 %idxprom301
  %229 = load double, double* %arrayidx302, align 8
  %230 = load i32, i32* %i, align 4
  %sub303 = sub nsw i32 0, %230
  %idxprom304 = sext i32 %sub303 to i64
  %231 = load double*, double** %vp, align 8
  %arrayidx305 = getelementptr inbounds double, double* %231, i64 %idxprom304
  %232 = load double, double* %arrayidx305, align 8
  %mul306 = fmul double %229, %232
  %sub307 = fsub double %mul300, %mul306
  %233 = load double*, double** %vpptr280, align 8
  %234 = load double, double* %233, align 8
  %add308 = fadd double %234, %sub307
  store double %add308, double* %233, align 8
  %235 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %235 to i64
  %arrayidx310 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom309
  %236 = load double, double* %arrayidx310, align 8
  %237 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %237 to i64
  %238 = load i8*, i8** %sp_m, align 8
  %arrayidx312 = getelementptr inbounds i8, i8* %238, i64 %idxprom311
  %239 = load i8, i8* %arrayidx312, align 1
  %conv313 = zext i8 %239 to i32
  %conv314 = sitofp i32 %conv313 to double
  %mul315 = fmul double %236, %conv314
  %240 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %240 to i64
  %arrayidx317 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i64 %idxprom316
  %241 = load double, double* %arrayidx317, align 8
  %242 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %242 to i64
  %243 = load double*, double** %vm, align 8
  %arrayidx319 = getelementptr inbounds double, double* %243, i64 %idxprom318
  %244 = load double, double* %arrayidx319, align 8
  %mul320 = fmul double %241, %244
  %sub321 = fsub double %mul315, %mul320
  %245 = load double*, double** %vmptr282, align 8
  %246 = load double, double* %245, align 8
  %add322 = fadd double %246, %sub321
  store double %add322, double* %245, align 8
  br label %for.inc.323

for.inc.323:                                      ; preds = %for.body.292
  %247 = load i32, i32* %i, align 4
  %inc324 = add nsw i32 %247, 1
  store i32 %inc324, i32* %i, align 4
  br label %for.cond.289

for.end.325:                                      ; preds = %for.cond.289
  %248 = load i32, i32* %i, align 4
  store i32 %248, i32* %j, align 4
  br label %for.cond.326

for.cond.326:                                     ; preds = %for.inc.348, %for.end.325
  %249 = load i32, i32* %j, align 4
  %cmp327 = icmp sle i32 %249, 4
  br i1 %cmp327, label %for.body.329, label %for.end.350

for.body.329:                                     ; preds = %for.cond.326
  %250 = load i32, i32* %j, align 4
  %idxprom330 = sext i32 %250 to i64
  %arrayidx331 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom330
  %251 = load double, double* %arrayidx331, align 8
  %252 = load i32, i32* %j, align 4
  %idxprom332 = sext i32 %252 to i64
  %arrayidx333 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i64 %idxprom332
  %253 = load double, double* %arrayidx333, align 8
  %sub334 = fsub double %251, %253
  %arrayidx335 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 0
  %254 = load i32, i32* %arrayidx335, align 4
  %conv336 = sitofp i32 %254 to double
  %mul337 = fmul double %sub334, %conv336
  %255 = load double*, double** %vpptr280, align 8
  %256 = load double, double* %255, align 8
  %add338 = fadd double %256, %mul337
  store double %add338, double* %255, align 8
  %257 = load i32, i32* %j, align 4
  %idxprom339 = sext i32 %257 to i64
  %arrayidx340 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom339
  %258 = load double, double* %arrayidx340, align 8
  %259 = load i32, i32* %j, align 4
  %idxprom341 = sext i32 %259 to i64
  %arrayidx342 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i64 %idxprom341
  %260 = load double, double* %arrayidx342, align 8
  %sub343 = fsub double %258, %260
  %arrayidx344 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 0
  %261 = load i32, i32* %arrayidx344, align 4
  %conv345 = sitofp i32 %261 to double
  %mul346 = fmul double %sub343, %conv345
  %262 = load double*, double** %vmptr282, align 8
  %263 = load double, double* %262, align 8
  %add347 = fadd double %263, %mul346
  store double %add347, double* %262, align 8
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.329
  %264 = load i32, i32* %j, align 4
  %inc349 = add nsw i32 %264, 1
  store i32 %inc349, i32* %j, align 4
  br label %for.cond.326

for.end.350:                                      ; preds = %for.cond.326
  %265 = load i8*, i8** %sp_p, align 8
  %incdec.ptr351 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %incdec.ptr351, i8** %sp_p, align 8
  %266 = load i8*, i8** %sp_m, align 8
  %incdec.ptr352 = getelementptr inbounds i8, i8* %266, i32 -1
  store i8* %incdec.ptr352, i8** %sp_m, align 8
  %267 = load double*, double** %vp, align 8
  %incdec.ptr353 = getelementptr inbounds double, double* %267, i32 1
  store double* %incdec.ptr353, double** %vp, align 8
  %268 = load double*, double** %vm, align 8
  %incdec.ptr354 = getelementptr inbounds double, double* %268, i32 -1
  store double* %incdec.ptr354, double** %vm, align 8
  br label %for.inc.355

for.inc.355:                                      ; preds = %for.end.350
  %269 = load i32, i32* %col, align 4
  %inc356 = add nsw i32 %269, 1
  store i32 %inc356, i32* %col, align 4
  br label %for.cond.275

for.end.357:                                      ; preds = %for.cond.275
  %270 = load double*, double** %val_p, align 8
  %271 = load double*, double** %val_m, align 8
  %272 = load i8*, i8** %dest, align 8
  %273 = load i32, i32* %row, align 4
  %274 = load i32, i32* %width, align 4
  %mul358 = mul nsw i32 %273, %274
  %idx.ext359 = sext i32 %mul358 to i64
  %add.ptr360 = getelementptr inbounds i8, i8* %272, i64 %idx.ext359
  %275 = load i32, i32* %width, align 4
  call void @transfer_pixels(double* %270, double* %271, i8* %add.ptr360, i32 1, i32 %275)
  %276 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool361 = icmp ne %struct._GimpPreview* %276, null
  br i1 %tobool361, label %if.end.373, label %if.then.362

if.then.362:                                      ; preds = %for.end.357
  %277 = load i32, i32* %width, align 4
  %278 = load i32, i32* %progress, align 4
  %add363 = add nsw i32 %278, %277
  store i32 %add363, i32* %progress, align 4
  %279 = load i32, i32* %row, align 4
  %rem364 = srem i32 %279, 5
  %cmp365 = icmp eq i32 %rem364, 0
  br i1 %cmp365, label %if.then.367, label %if.end.372

if.then.367:                                      ; preds = %if.then.362
  %280 = load i32, i32* %progress, align 4
  %conv368 = sitofp i32 %280 to double
  %281 = load i32, i32* %max_progress, align 4
  %conv369 = sitofp i32 %281 to double
  %div370 = fdiv double %conv368, %conv369
  %call371 = call i32 @gimp_progress_update(double %div370)
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.367, %if.then.362
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %for.end.357
  br label %for.inc.374

for.inc.374:                                      ; preds = %if.end.373
  %282 = load i32, i32* %row, align 4
  %inc375 = add nsw i32 %282, 1
  store i32 %inc375, i32* %row, align 4
  br label %for.cond.252

for.end.376:                                      ; preds = %for.cond.252
  %283 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %284 = load i32, i32* %x1, align 4
  %285 = load i32, i32* %y1, align 4
  %286 = load i32, i32* %width, align 4
  %287 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 0, i32 0)
  %288 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %289 = load i32, i32* %x1, align 4
  %290 = load i32, i32* %y1, align 4
  %291 = load i32, i32* %width, align 4
  %292 = load i32, i32* %height, align 4
  %293 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp377 = icmp eq %struct._GimpPreview* %293, null
  %conv378 = zext i1 %cmp377 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %conv378, i32 1)
  %call379 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  %294 = bitcast i8* %call379 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %294, %struct._GimpPixelRgn** %pr, align 8
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.482, %for.end.376
  %295 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %cmp381 = icmp ne %struct._GimpPixelRgn* %295, null
  br i1 %cmp381, label %for.body.383, label %for.end.484

for.body.383:                                     ; preds = %for.cond.380
  %data386 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %296 = load i8*, i8** %data386, align 8
  store i8* %296, i8** %src_ptr385, align 8
  %data389 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %297 = load i8*, i8** %data389, align 8
  store i8* %297, i8** %dest_ptr388, align 8
  %298 = load i8*, i8** %dest, align 8
  %y391 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %299 = load i32, i32* %y391, align 4
  %300 = load i32, i32* %y1, align 4
  %sub392 = sub nsw i32 %299, %300
  %301 = load i32, i32* %width, align 4
  %mul393 = mul nsw i32 %sub392, %301
  %idx.ext394 = sext i32 %mul393 to i64
  %add.ptr395 = getelementptr inbounds i8, i8* %298, i64 %idx.ext394
  %x396 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %302 = load i32, i32* %x396, align 4
  %303 = load i32, i32* %x1, align 4
  %sub397 = sub nsw i32 %302, %303
  %idx.ext398 = sext i32 %sub397 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %add.ptr395, i64 %idx.ext398
  store i8* %add.ptr399, i8** %blur_ptr, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.400

for.cond.400:                                     ; preds = %for.inc.465, %for.body.383
  %304 = load i32, i32* %row, align 4
  %h401 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %305 = load i32, i32* %h401, align 4
  %cmp402 = icmp slt i32 %304, %305
  br i1 %cmp402, label %for.body.404, label %for.end.467

for.body.404:                                     ; preds = %for.cond.400
  store i32 0, i32* %col, align 4
  br label %for.cond.405

for.cond.405:                                     ; preds = %for.inc.454, %for.body.404
  %306 = load i32, i32* %col, align 4
  %w406 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %307 = load i32, i32* %w406, align 4
  %cmp407 = icmp slt i32 %306, %307
  br i1 %cmp407, label %for.body.409, label %for.end.456

for.body.409:                                     ; preds = %for.cond.405
  store i32 0, i32* %b, align 4
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.440, %for.body.409
  %308 = load i32, i32* %b, align 4
  %309 = load i32, i32* %has_alpha, align 4
  %tobool411 = icmp ne i32 %309, 0
  br i1 %tobool411, label %cond.true.412, label %cond.false.414

cond.true.412:                                    ; preds = %for.cond.410
  %310 = load i32, i32* %bytes, align 4
  %sub413 = sub nsw i32 %310, 1
  br label %cond.end.415

cond.false.414:                                   ; preds = %for.cond.410
  %311 = load i32, i32* %bytes, align 4
  br label %cond.end.415

cond.end.415:                                     ; preds = %cond.false.414, %cond.true.412
  %cond416 = phi i32 [ %sub413, %cond.true.412 ], [ %311, %cond.false.414 ]
  %cmp417 = icmp slt i32 %308, %cond416
  br i1 %cmp417, label %for.body.419, label %for.end.442

for.body.419:                                     ; preds = %cond.end.415
  %312 = load i32, i32* %col, align 4
  %313 = load i32, i32* %bytes, align 4
  %mul420 = mul nsw i32 %312, %313
  %314 = load i32, i32* %b, align 4
  %add421 = add nsw i32 %mul420, %314
  %idxprom422 = sext i32 %add421 to i64
  %315 = load i8*, i8** %src_ptr385, align 8
  %arrayidx423 = getelementptr inbounds i8, i8* %315, i64 %idxprom422
  %316 = load i8, i8* %arrayidx423, align 1
  %conv424 = zext i8 %316 to i32
  %sub425 = sub nsw i32 255, %conv424
  %317 = load i32, i32* %col, align 4
  %idxprom426 = sext i32 %317 to i64
  %318 = load i8*, i8** %blur_ptr, align 8
  %arrayidx427 = getelementptr inbounds i8, i8* %318, i64 %idxprom426
  %319 = load i8, i8* %arrayidx427, align 1
  %conv428 = zext i8 %319 to i32
  %sub429 = sub nsw i32 255, %conv428
  %mul430 = mul nsw i32 %sub425, %sub429
  %add431 = add nsw i32 %mul430, 128
  store i32 %add431, i32* %tmp, align 4
  %320 = load i32, i32* %tmp, align 4
  %shr = ashr i32 %320, 8
  %321 = load i32, i32* %tmp, align 4
  %add432 = add nsw i32 %shr, %321
  %shr433 = ashr i32 %add432, 8
  %sub434 = sub nsw i32 255, %shr433
  %conv435 = trunc i32 %sub434 to i8
  %322 = load i32, i32* %col, align 4
  %323 = load i32, i32* %bytes, align 4
  %mul436 = mul nsw i32 %322, %323
  %324 = load i32, i32* %b, align 4
  %add437 = add nsw i32 %mul436, %324
  %idxprom438 = sext i32 %add437 to i64
  %325 = load i8*, i8** %dest_ptr388, align 8
  %arrayidx439 = getelementptr inbounds i8, i8* %325, i64 %idxprom438
  store i8 %conv435, i8* %arrayidx439, align 1
  br label %for.inc.440

for.inc.440:                                      ; preds = %for.body.419
  %326 = load i32, i32* %b, align 4
  %inc441 = add nsw i32 %326, 1
  store i32 %inc441, i32* %b, align 4
  br label %for.cond.410

for.end.442:                                      ; preds = %cond.end.415
  %327 = load i32, i32* %has_alpha, align 4
  %tobool443 = icmp ne i32 %327, 0
  br i1 %tobool443, label %if.then.444, label %if.end.453

if.then.444:                                      ; preds = %for.end.442
  %328 = load i32, i32* %col, align 4
  %329 = load i32, i32* %bytes, align 4
  %mul445 = mul nsw i32 %328, %329
  %330 = load i32, i32* %b, align 4
  %add446 = add nsw i32 %mul445, %330
  %idxprom447 = sext i32 %add446 to i64
  %331 = load i8*, i8** %src_ptr385, align 8
  %arrayidx448 = getelementptr inbounds i8, i8* %331, i64 %idxprom447
  %332 = load i8, i8* %arrayidx448, align 1
  %333 = load i32, i32* %col, align 4
  %334 = load i32, i32* %bytes, align 4
  %mul449 = mul nsw i32 %333, %334
  %335 = load i32, i32* %b, align 4
  %add450 = add nsw i32 %mul449, %335
  %idxprom451 = sext i32 %add450 to i64
  %336 = load i8*, i8** %dest_ptr388, align 8
  %arrayidx452 = getelementptr inbounds i8, i8* %336, i64 %idxprom451
  store i8 %332, i8* %arrayidx452, align 1
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.444, %for.end.442
  br label %for.inc.454

for.inc.454:                                      ; preds = %if.end.453
  %337 = load i32, i32* %col, align 4
  %inc455 = add nsw i32 %337, 1
  store i32 %inc455, i32* %col, align 4
  br label %for.cond.405

for.end.456:                                      ; preds = %for.cond.405
  %rowstride457 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %338 = load i32, i32* %rowstride457, align 4
  %339 = load i8*, i8** %src_ptr385, align 8
  %idx.ext458 = sext i32 %338 to i64
  %add.ptr459 = getelementptr inbounds i8, i8* %339, i64 %idx.ext458
  store i8* %add.ptr459, i8** %src_ptr385, align 8
  %rowstride460 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %340 = load i32, i32* %rowstride460, align 4
  %341 = load i8*, i8** %dest_ptr388, align 8
  %idx.ext461 = sext i32 %340 to i64
  %add.ptr462 = getelementptr inbounds i8, i8* %341, i64 %idx.ext461
  store i8* %add.ptr462, i8** %dest_ptr388, align 8
  %342 = load i32, i32* %width, align 4
  %343 = load i8*, i8** %blur_ptr, align 8
  %idx.ext463 = sext i32 %342 to i64
  %add.ptr464 = getelementptr inbounds i8, i8* %343, i64 %idx.ext463
  store i8* %add.ptr464, i8** %blur_ptr, align 8
  br label %for.inc.465

for.inc.465:                                      ; preds = %for.end.456
  %344 = load i32, i32* %row, align 4
  %inc466 = add nsw i32 %344, 1
  store i32 %inc466, i32* %row, align 4
  br label %for.cond.400

for.end.467:                                      ; preds = %for.cond.400
  %345 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool468 = icmp ne %struct._GimpPreview* %345, null
  br i1 %tobool468, label %if.then.469, label %if.else.472

if.then.469:                                      ; preds = %for.end.467
  %346 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %347 = bitcast %struct._GimpPreview* %346 to %struct._GTypeInstance*
  %call470 = call i64 @gimp_drawable_preview_get_type() #5
  %call471 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %347, i64 %call470)
  %348 = bitcast %struct._GTypeInstance* %call471 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %348, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.481

if.else.472:                                      ; preds = %for.end.467
  %w473 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %349 = load i32, i32* %w473, align 4
  %h474 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %350 = load i32, i32* %h474, align 4
  %mul475 = mul nsw i32 %349, %350
  %351 = load i32, i32* %progress, align 4
  %add476 = add nsw i32 %351, %mul475
  store i32 %add476, i32* %progress, align 4
  %352 = load i32, i32* %progress, align 4
  %conv477 = sitofp i32 %352 to double
  %353 = load i32, i32* %max_progress, align 4
  %conv478 = sitofp i32 %353 to double
  %div479 = fdiv double %conv477, %conv478
  %call480 = call i32 @gimp_progress_update(double %div479)
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.472, %if.then.469
  br label %for.inc.482

for.inc.482:                                      ; preds = %if.end.481
  %354 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %355 = bitcast %struct._GimpPixelRgn* %354 to i8*
  %call483 = call i8* @gimp_pixel_rgns_process(i8* %355)
  %356 = bitcast i8* %call483 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %356, %struct._GimpPixelRgn** %pr, align 8
  br label %for.cond.380

for.end.484:                                      ; preds = %for.cond.380
  %357 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool485 = icmp ne %struct._GimpPreview* %357, null
  br i1 %tobool485, label %if.end.494, label %if.then.486

if.then.486:                                      ; preds = %for.end.484
  %call487 = call i32 @gimp_progress_update(double 1.000000e+00)
  %358 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %358)
  %359 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id488 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %359, i32 0, i32 0
  %360 = load i32, i32* %drawable_id488, align 4
  %call489 = call i32 @gimp_drawable_merge_shadow(i32 %360, i32 1)
  %361 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id490 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %361, i32 0, i32 0
  %362 = load i32, i32* %drawable_id490, align 4
  %363 = load i32, i32* %x1, align 4
  %364 = load i32, i32* %y1, align 4
  %365 = load i32, i32* %x2, align 4
  %366 = load i32, i32* %x1, align 4
  %sub491 = sub nsw i32 %365, %366
  %367 = load i32, i32* %y2, align 4
  %368 = load i32, i32* %y1, align 4
  %sub492 = sub nsw i32 %367, %368
  %call493 = call i32 @gimp_drawable_update(i32 %362, i32 %363, i32 %364, i32 %sub491, i32 %sub492)
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.486, %for.end.484
  %369 = load double*, double** %val_p, align 8
  %370 = bitcast double* %369 to i8*
  call void @g_free(i8* %370)
  %371 = load double*, double** %val_m, align 8
  %372 = bitcast double* %371 to i8*
  call void @g_free(i8* %372)
  %373 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %373)
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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_rgb_to_l_int(i32, i32, i32) #1

; Function Attrs: nounwind
declare double @exp(double) #2

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define internal void @find_constants(double* %n_p, double* %n_m, double* %d_p, double* %d_m, double* %bd_p, double* %bd_m, double %std_dev) #0 {
entry:
  %n_p.addr = alloca double*, align 8
  %n_m.addr = alloca double*, align 8
  %d_p.addr = alloca double*, align 8
  %d_m.addr = alloca double*, align 8
  %bd_p.addr = alloca double*, align 8
  %bd_m.addr = alloca double*, align 8
  %std_dev.addr = alloca double, align 8
  %i = alloca i32, align 4
  %constants = alloca [8 x double], align 16
  %div = alloca double, align 8
  %sum_n_p = alloca double, align 8
  %sum_n_m = alloca double, align 8
  %sum_d = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store double* %n_p, double** %n_p.addr, align 8
  store double* %n_m, double** %n_m.addr, align 8
  store double* %d_p, double** %d_p.addr, align 8
  store double* %d_m, double** %d_m.addr, align 8
  store double* %bd_p, double** %bd_p.addr, align 8
  store double* %bd_m, double** %bd_m.addr, align 8
  store double %std_dev, double* %std_dev.addr, align 8
  %call = call double @sqrt(double 0x401921FB54442D18) #4
  %0 = load double, double* %std_dev.addr, align 8
  %mul = fmul double %call, %0
  store double %mul, double* %div, align 8
  %1 = load double, double* %std_dev.addr, align 8
  %div1 = fdiv double -1.783000e+00, %1
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  store double %div1, double* %arrayidx, align 8
  %2 = load double, double* %std_dev.addr, align 8
  %div2 = fdiv double -1.723000e+00, %2
  %arrayidx3 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  store double %div2, double* %arrayidx3, align 8
  %3 = load double, double* %std_dev.addr, align 8
  %div4 = fdiv double 6.318000e-01, %3
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  store double %div4, double* %arrayidx5, align 8
  %4 = load double, double* %std_dev.addr, align 8
  %div6 = fdiv double 1.997000e+00, %4
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  store double %div6, double* %arrayidx7, align 8
  %5 = load double, double* %div, align 8
  %div8 = fdiv double 1.680300e+00, %5
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 4
  store double %div8, double* %arrayidx9, align 8
  %6 = load double, double* %div, align 8
  %div10 = fdiv double 3.735000e+00, %6
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 5
  store double %div10, double* %arrayidx11, align 8
  %7 = load double, double* %div, align 8
  %div12 = fdiv double -6.803000e-01, %7
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 6
  store double %div12, double* %arrayidx13, align 8
  %8 = load double, double* %div, align 8
  %div14 = fdiv double -2.598000e-01, %8
  %arrayidx15 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 7
  store double %div14, double* %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 4
  %9 = load double, double* %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 6
  %10 = load double, double* %arrayidx17, align 8
  %add = fadd double %9, %10
  %11 = load double*, double** %n_p.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %11, i64 0
  store double %add, double* %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %12 = load double, double* %arrayidx19, align 8
  %call20 = call double @exp(double %12) #4
  %arrayidx21 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 7
  %13 = load double, double* %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %14 = load double, double* %arrayidx22, align 8
  %call23 = call double @sin(double %14) #4
  %mul24 = fmul double %13, %call23
  %arrayidx25 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 6
  %15 = load double, double* %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 4
  %16 = load double, double* %arrayidx26, align 8
  %mul27 = fmul double 2.000000e+00, %16
  %add28 = fadd double %15, %mul27
  %arrayidx29 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %17 = load double, double* %arrayidx29, align 8
  %call30 = call double @cos(double %17) #4
  %mul31 = fmul double %add28, %call30
  %sub = fsub double %mul24, %mul31
  %mul32 = fmul double %call20, %sub
  %arrayidx33 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %18 = load double, double* %arrayidx33, align 8
  %call34 = call double @exp(double %18) #4
  %arrayidx35 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 5
  %19 = load double, double* %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %20 = load double, double* %arrayidx36, align 8
  %call37 = call double @sin(double %20) #4
  %mul38 = fmul double %19, %call37
  %arrayidx39 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 6
  %21 = load double, double* %arrayidx39, align 8
  %mul40 = fmul double 2.000000e+00, %21
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 4
  %22 = load double, double* %arrayidx41, align 8
  %add42 = fadd double %mul40, %22
  %arrayidx43 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %23 = load double, double* %arrayidx43, align 8
  %call44 = call double @cos(double %23) #4
  %mul45 = fmul double %add42, %call44
  %sub46 = fsub double %mul38, %mul45
  %mul47 = fmul double %call34, %sub46
  %add48 = fadd double %mul32, %mul47
  %24 = load double*, double** %n_p.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %24, i64 1
  store double %add48, double* %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %25 = load double, double* %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %26 = load double, double* %arrayidx51, align 8
  %add52 = fadd double %25, %26
  %call53 = call double @exp(double %add52) #4
  %mul54 = fmul double 2.000000e+00, %call53
  %arrayidx55 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 4
  %27 = load double, double* %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 6
  %28 = load double, double* %arrayidx56, align 8
  %add57 = fadd double %27, %28
  %arrayidx58 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %29 = load double, double* %arrayidx58, align 8
  %call59 = call double @cos(double %29) #4
  %mul60 = fmul double %add57, %call59
  %arrayidx61 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %30 = load double, double* %arrayidx61, align 8
  %call62 = call double @cos(double %30) #4
  %mul63 = fmul double %mul60, %call62
  %arrayidx64 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 5
  %31 = load double, double* %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %32 = load double, double* %arrayidx65, align 8
  %call66 = call double @cos(double %32) #4
  %mul67 = fmul double %31, %call66
  %arrayidx68 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %33 = load double, double* %arrayidx68, align 8
  %call69 = call double @sin(double %33) #4
  %mul70 = fmul double %mul67, %call69
  %sub71 = fsub double %mul63, %mul70
  %arrayidx72 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 7
  %34 = load double, double* %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %35 = load double, double* %arrayidx73, align 8
  %call74 = call double @cos(double %35) #4
  %mul75 = fmul double %34, %call74
  %arrayidx76 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %36 = load double, double* %arrayidx76, align 8
  %call77 = call double @sin(double %36) #4
  %mul78 = fmul double %mul75, %call77
  %sub79 = fsub double %sub71, %mul78
  %mul80 = fmul double %mul54, %sub79
  %arrayidx81 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 6
  %37 = load double, double* %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %38 = load double, double* %arrayidx82, align 8
  %mul83 = fmul double 2.000000e+00, %38
  %call84 = call double @exp(double %mul83) #4
  %mul85 = fmul double %37, %call84
  %add86 = fadd double %mul80, %mul85
  %arrayidx87 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 4
  %39 = load double, double* %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %40 = load double, double* %arrayidx88, align 8
  %mul89 = fmul double 2.000000e+00, %40
  %call90 = call double @exp(double %mul89) #4
  %mul91 = fmul double %39, %call90
  %add92 = fadd double %add86, %mul91
  %41 = load double*, double** %n_p.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %41, i64 2
  store double %add92, double* %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %42 = load double, double* %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %43 = load double, double* %arrayidx95, align 8
  %mul96 = fmul double 2.000000e+00, %43
  %add97 = fadd double %42, %mul96
  %call98 = call double @exp(double %add97) #4
  %arrayidx99 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 7
  %44 = load double, double* %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %45 = load double, double* %arrayidx100, align 8
  %call101 = call double @sin(double %45) #4
  %mul102 = fmul double %44, %call101
  %arrayidx103 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 6
  %46 = load double, double* %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %47 = load double, double* %arrayidx104, align 8
  %call105 = call double @cos(double %47) #4
  %mul106 = fmul double %46, %call105
  %sub107 = fsub double %mul102, %mul106
  %mul108 = fmul double %call98, %sub107
  %arrayidx109 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %48 = load double, double* %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %49 = load double, double* %arrayidx110, align 8
  %mul111 = fmul double 2.000000e+00, %49
  %add112 = fadd double %48, %mul111
  %call113 = call double @exp(double %add112) #4
  %arrayidx114 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 5
  %50 = load double, double* %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %51 = load double, double* %arrayidx115, align 8
  %call116 = call double @sin(double %51) #4
  %mul117 = fmul double %50, %call116
  %arrayidx118 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 4
  %52 = load double, double* %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %53 = load double, double* %arrayidx119, align 8
  %call120 = call double @cos(double %53) #4
  %mul121 = fmul double %52, %call120
  %sub122 = fsub double %mul117, %mul121
  %mul123 = fmul double %call113, %sub122
  %add124 = fadd double %mul108, %mul123
  %54 = load double*, double** %n_p.addr, align 8
  %arrayidx125 = getelementptr inbounds double, double* %54, i64 3
  store double %add124, double* %arrayidx125, align 8
  %55 = load double*, double** %n_p.addr, align 8
  %arrayidx126 = getelementptr inbounds double, double* %55, i64 4
  store double 0.000000e+00, double* %arrayidx126, align 8
  %56 = load double*, double** %d_p.addr, align 8
  %arrayidx127 = getelementptr inbounds double, double* %56, i64 0
  store double 0.000000e+00, double* %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %57 = load double, double* %arrayidx128, align 8
  %call129 = call double @exp(double %57) #4
  %mul130 = fmul double -2.000000e+00, %call129
  %arrayidx131 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %58 = load double, double* %arrayidx131, align 8
  %call132 = call double @cos(double %58) #4
  %mul133 = fmul double %mul130, %call132
  %arrayidx134 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %59 = load double, double* %arrayidx134, align 8
  %call135 = call double @exp(double %59) #4
  %mul136 = fmul double 2.000000e+00, %call135
  %arrayidx137 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %60 = load double, double* %arrayidx137, align 8
  %call138 = call double @cos(double %60) #4
  %mul139 = fmul double %mul136, %call138
  %sub140 = fsub double %mul133, %mul139
  %61 = load double*, double** %d_p.addr, align 8
  %arrayidx141 = getelementptr inbounds double, double* %61, i64 1
  store double %sub140, double* %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %62 = load double, double* %arrayidx142, align 8
  %call143 = call double @cos(double %62) #4
  %mul144 = fmul double 4.000000e+00, %call143
  %arrayidx145 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %63 = load double, double* %arrayidx145, align 8
  %call146 = call double @cos(double %63) #4
  %mul147 = fmul double %mul144, %call146
  %arrayidx148 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %64 = load double, double* %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %65 = load double, double* %arrayidx149, align 8
  %add150 = fadd double %64, %65
  %call151 = call double @exp(double %add150) #4
  %mul152 = fmul double %mul147, %call151
  %arrayidx153 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %66 = load double, double* %arrayidx153, align 8
  %mul154 = fmul double 2.000000e+00, %66
  %call155 = call double @exp(double %mul154) #4
  %add156 = fadd double %mul152, %call155
  %arrayidx157 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %67 = load double, double* %arrayidx157, align 8
  %mul158 = fmul double 2.000000e+00, %67
  %call159 = call double @exp(double %mul158) #4
  %add160 = fadd double %add156, %call159
  %68 = load double*, double** %d_p.addr, align 8
  %arrayidx161 = getelementptr inbounds double, double* %68, i64 2
  store double %add160, double* %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 2
  %69 = load double, double* %arrayidx162, align 8
  %call163 = call double @cos(double %69) #4
  %mul164 = fmul double -2.000000e+00, %call163
  %arrayidx165 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %70 = load double, double* %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %71 = load double, double* %arrayidx166, align 8
  %mul167 = fmul double 2.000000e+00, %71
  %add168 = fadd double %70, %mul167
  %call169 = call double @exp(double %add168) #4
  %mul170 = fmul double %mul164, %call169
  %arrayidx171 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 3
  %72 = load double, double* %arrayidx171, align 8
  %call172 = call double @cos(double %72) #4
  %mul173 = fmul double 2.000000e+00, %call172
  %arrayidx174 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %73 = load double, double* %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %74 = load double, double* %arrayidx175, align 8
  %mul176 = fmul double 2.000000e+00, %74
  %add177 = fadd double %73, %mul176
  %call178 = call double @exp(double %add177) #4
  %mul179 = fmul double %mul173, %call178
  %sub180 = fsub double %mul170, %mul179
  %75 = load double*, double** %d_p.addr, align 8
  %arrayidx181 = getelementptr inbounds double, double* %75, i64 3
  store double %sub180, double* %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 0
  %76 = load double, double* %arrayidx182, align 8
  %mul183 = fmul double 2.000000e+00, %76
  %arrayidx184 = getelementptr inbounds [8 x double], [8 x double]* %constants, i32 0, i64 1
  %77 = load double, double* %arrayidx184, align 8
  %mul185 = fmul double 2.000000e+00, %77
  %add186 = fadd double %mul183, %mul185
  %call187 = call double @exp(double %add186) #4
  %78 = load double*, double** %d_p.addr, align 8
  %arrayidx188 = getelementptr inbounds double, double* %78, i64 4
  store double %call187, double* %arrayidx188, align 8
  %79 = load double*, double** %d_m.addr, align 8
  %80 = bitcast double* %79 to i8*
  %81 = load double*, double** %d_p.addr, align 8
  %82 = bitcast double* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %82, i64 40, i32 8, i1 false)
  %83 = load double*, double** %n_m.addr, align 8
  %arrayidx189 = getelementptr inbounds double, double* %83, i64 0
  store double 0.000000e+00, double* %arrayidx189, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %84 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %84, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i32, i32* %i, align 4
  %idxprom = sext i32 %85 to i64
  %86 = load double*, double** %n_p.addr, align 8
  %arrayidx190 = getelementptr inbounds double, double* %86, i64 %idxprom
  %87 = load double, double* %arrayidx190, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %88 to i64
  %89 = load double*, double** %d_p.addr, align 8
  %arrayidx192 = getelementptr inbounds double, double* %89, i64 %idxprom191
  %90 = load double, double* %arrayidx192, align 8
  %91 = load double*, double** %n_p.addr, align 8
  %arrayidx193 = getelementptr inbounds double, double* %91, i64 0
  %92 = load double, double* %arrayidx193, align 8
  %mul194 = fmul double %90, %92
  %sub195 = fsub double %87, %mul194
  %93 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %93 to i64
  %94 = load double*, double** %n_m.addr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %94, i64 %idxprom196
  store double %sub195, double* %arrayidx197, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %95 = load i32, i32* %i, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %sum_n_p, align 8
  store double 0.000000e+00, double* %sum_n_m, align 8
  store double 0.000000e+00, double* %sum_d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.210, %for.end
  %96 = load i32, i32* %i, align 4
  %cmp199 = icmp sle i32 %96, 4
  br i1 %cmp199, label %for.body.200, label %for.end.212

for.body.200:                                     ; preds = %for.cond.198
  %97 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %97 to i64
  %98 = load double*, double** %n_p.addr, align 8
  %arrayidx202 = getelementptr inbounds double, double* %98, i64 %idxprom201
  %99 = load double, double* %arrayidx202, align 8
  %100 = load double, double* %sum_n_p, align 8
  %add203 = fadd double %100, %99
  store double %add203, double* %sum_n_p, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %101 to i64
  %102 = load double*, double** %n_m.addr, align 8
  %arrayidx205 = getelementptr inbounds double, double* %102, i64 %idxprom204
  %103 = load double, double* %arrayidx205, align 8
  %104 = load double, double* %sum_n_m, align 8
  %add206 = fadd double %104, %103
  store double %add206, double* %sum_n_m, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %105 to i64
  %106 = load double*, double** %d_p.addr, align 8
  %arrayidx208 = getelementptr inbounds double, double* %106, i64 %idxprom207
  %107 = load double, double* %arrayidx208, align 8
  %108 = load double, double* %sum_d, align 8
  %add209 = fadd double %108, %107
  store double %add209, double* %sum_d, align 8
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.200
  %109 = load i32, i32* %i, align 4
  %inc211 = add nsw i32 %109, 1
  store i32 %inc211, i32* %i, align 4
  br label %for.cond.198

for.end.212:                                      ; preds = %for.cond.198
  %110 = load double, double* %sum_d, align 8
  %inc213 = fadd double %110, 1.000000e+00
  store double %inc213, double* %sum_d, align 8
  %111 = load double, double* %sum_n_p, align 8
  %112 = load double, double* %sum_d, align 8
  %div214 = fdiv double %111, %112
  store double %div214, double* %a, align 8
  %113 = load double, double* %sum_n_m, align 8
  %114 = load double, double* %sum_d, align 8
  %div215 = fdiv double %113, %114
  store double %div215, double* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.229, %for.end.212
  %115 = load i32, i32* %i, align 4
  %cmp217 = icmp sle i32 %115, 4
  br i1 %cmp217, label %for.body.218, label %for.end.231

for.body.218:                                     ; preds = %for.cond.216
  %116 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %116 to i64
  %117 = load double*, double** %d_p.addr, align 8
  %arrayidx220 = getelementptr inbounds double, double* %117, i64 %idxprom219
  %118 = load double, double* %arrayidx220, align 8
  %119 = load double, double* %a, align 8
  %mul221 = fmul double %118, %119
  %120 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %120 to i64
  %121 = load double*, double** %bd_p.addr, align 8
  %arrayidx223 = getelementptr inbounds double, double* %121, i64 %idxprom222
  store double %mul221, double* %arrayidx223, align 8
  %122 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %122 to i64
  %123 = load double*, double** %d_m.addr, align 8
  %arrayidx225 = getelementptr inbounds double, double* %123, i64 %idxprom224
  %124 = load double, double* %arrayidx225, align 8
  %125 = load double, double* %b, align 8
  %mul226 = fmul double %124, %125
  %126 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %126 to i64
  %127 = load double*, double** %bd_m.addr, align 8
  %arrayidx228 = getelementptr inbounds double, double* %127, i64 %idxprom227
  store double %mul226, double* %arrayidx228, align 8
  br label %for.inc.229

for.inc.229:                                      ; preds = %for.body.218
  %128 = load i32, i32* %i, align 4
  %inc230 = add nsw i32 %128, 1
  store i32 %inc230, i32* %i, align 4
  br label %for.cond.216

for.end.231:                                      ; preds = %for.cond.216
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @transfer_pixels(double* %src1, double* %src2, i8* %dest, i32 %jump, i32 %width) #0 {
entry:
  %src1.addr = alloca double*, align 8
  %src2.addr = alloca double*, align 8
  %dest.addr = alloca i8*, align 8
  %jump.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  store double* %src1, double** %src1.addr, align 8
  store double* %src2, double** %src2.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %jump, i32* %jump.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %src1.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %src2.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  %add = fadd double %4, %7
  store double %add, double* %sum, align 8
  %8 = load double, double* %sum, align 8
  %cmp3 = fcmp ogt double %8, 2.550000e+02
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.7

cond.false:                                       ; preds = %for.body
  %9 = load double, double* %sum, align 8
  %cmp4 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %10 = load double, double* %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 0.000000e+00, %cond.true.5 ], [ %10, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  store double %cond8, double* %sum, align 8
  %11 = load double, double* %sum, align 8
  %conv = fptoui double %11 to i8
  %12 = load i8*, i8** %dest.addr, align 8
  store i8 %conv, i8* %12, align 1
  %13 = load i32, i32* %jump.addr, align 4
  %14 = load i8*, i8** %dest.addr, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.7
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
