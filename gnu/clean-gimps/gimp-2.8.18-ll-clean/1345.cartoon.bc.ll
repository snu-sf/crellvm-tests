; ModuleID = './plug-ins/common/cartoon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.CartoonVals = type { double, double, double }
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"mask-radius\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Cartoon mask radius (radius of pixel neighborhood)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"pct-black\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Percentage of darkened pixels to set to black (0.0 - 1.0)\00", align 1
@.str.10 = private unnamed_addr constant [1156 x i8] c"Propagates dark values in an image based on each pixel's relative darkness to a neighboring average. The idea behind this filter is to give the look of a black felt pen drawing subsequently shaded with color. This is achieved by darkening areas of the image which are measured to be darker than a neighborhood average. In this way, sufficiently large shifts in intensity are darkened to black. The rate at which they are darkened to black is determined by the second pct_black parameter. The mask_radius parameter controls the size of the pixel neighborhood over which the average intensity is computed and then compared to each pixel in the neighborhood to decide whether or not to darken it to black. Large values for mask_radius result in very thick black areas bordering the shaded regions of color and much less detail for black areas everywhere including inside regions of color. Small values result in more subtle pen strokes and detail everywhere. Small values for the pct_black make the blend from the color regions to the black border lines smoother and the lines themselves thinner and less noticable; larger values achieve the opposite effect.\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"plug-in-cartoon\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Simulate a cartoon by enhancing edges\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Spencer Kimball\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Bit Specialists, Inc.\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"2001\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Ca_rtoon...\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@cvals = internal global %struct.CartoonVals { double 7.000000e+00, double 1.000000e+00, double 2.000000e-01 }, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"Cartoon\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"cartoon\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"gimp-cartoon\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"_Mask radius:\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"_Percent black:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %help_string = alloca i8*, align 8
  store i8* getelementptr inbounds ([1156 x i8], [1156 x i8]* @.str.10, i32 0, i32 0), i8** %help_string, align 8
  %0 = load i8*, i8** %help_string, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0))
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
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call3) #4
  %call5 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #4
  %call6 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.CartoonVals* @cvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @cartoon_dialog(%struct._GimpDrawable* %8)
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
  store double %10, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 0), align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 4
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_float14 = bitcast %union._GimpParamData* %data13 to double*
  %12 = load double, double* %d_float14, align 8
  store double %12, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 2), align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %do.end
  %call16 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.CartoonVals* @cvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.9, %if.end
  %13 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %13, 3
  br i1 %cmp, label %if.then.17, label %if.end.35

if.then.17:                                       ; preds = %sw.epilog
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id, align 4
  %call18 = call i32 @gimp_drawable_is_rgb(i32 %15)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id20, align 4
  %call21 = call i32 @gimp_drawable_is_gray(i32 %17)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %lor.lhs.false, %if.then.17
  %call24 = call i32 @gimp_progress_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @cartoon(%struct._GimpDrawable* %18, %struct._GimpPreview* null)
  %19 = load i32, i32* %run_mode, align 4
  %cmp25 = icmp ne i32 %19, 1
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %call27 = call i32 @gimp_displays_flush()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  %20 = load i32, i32* %run_mode, align 4
  %cmp29 = icmp eq i32 %20, 0
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %call31 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.CartoonVals* @cvals to i8*), i32 24)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  %21 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %21, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0)) #4
  store i8* %call33, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.end.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %sw.epilog
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %23)
  br label %return

return:                                           ; preds = %if.end.35, %if.then
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
define internal i32 @cartoon_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @cartoon to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
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
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #4
  %40 = load double, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 0), align 8
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 0, i8* %call27, i32 100, i32 5, double %40, double 1.000000e+00, double 5.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %scale_data, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.CartoonVals* @cvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)) #4
  %50 = load double, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 2), align 8
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %49, i32 0, i32 1, i8* %call33, i32 50, i32 5, double %50, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %scale_data, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_dialog_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call37)
  %60 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDialog*
  %call39 = call i32 @gimp_dialog_run(%struct._GimpDialog* %60)
  %cmp = icmp eq i32 %call39, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %61)
  %62 = load i32, i32* %run, align 4
  ret i32 %62
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cartoon(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca %struct._GimpPixelRgn*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %dest1 = alloca i8*, align 8
  %dest2 = alloca i8*, align 8
  %src = alloca i8*, align 8
  %src1 = alloca i8*, align 8
  %sp_p1 = alloca i8*, align 8
  %sp_m1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %sp_p2 = alloca i8*, align 8
  %sp_m2 = alloca i8*, align 8
  %n_p1 = alloca [5 x double], align 16
  %n_m1 = alloca [5 x double], align 16
  %n_p2 = alloca [5 x double], align 16
  %n_m2 = alloca [5 x double], align 16
  %d_p1 = alloca [5 x double], align 16
  %d_m1 = alloca [5 x double], align 16
  %d_p2 = alloca [5 x double], align 16
  %d_m2 = alloca [5 x double], align 16
  %bd_p1 = alloca [5 x double], align 16
  %bd_m1 = alloca [5 x double], align 16
  %bd_p2 = alloca [5 x double], align 16
  %bd_m2 = alloca [5 x double], align 16
  %val_p1 = alloca double*, align 8
  %val_m1 = alloca double*, align 8
  %vp1 = alloca double*, align 8
  %vm1 = alloca double*, align 8
  %val_p2 = alloca double*, align 8
  %val_m2 = alloca double*, align 8
  %vp2 = alloca double*, align 8
  %vm2 = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %terms = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %initial_p1 = alloca [4 x i32], align 16
  %initial_p2 = alloca [4 x i32], align 16
  %initial_m1 = alloca [4 x i32], align 16
  %initial_m2 = alloca [4 x i32], align 16
  %radius = alloca double, align 8
  %std_dev1 = alloca double, align 8
  %std_dev2 = alloca double, align 8
  %ramp = alloca double, align 8
  %preview_buffer = alloca i8*, align 8
  %vpptr1 = alloca double*, align 8
  %vmptr1 = alloca double*, align 8
  %vpptr2 = alloca double*, align 8
  %vmptr2 = alloca double*, align 8
  %vpptr1351 = alloca double*, align 8
  %vmptr1352 = alloca double*, align 8
  %vpptr2353 = alloca double*, align 8
  %vmptr2354 = alloca double*, align 8
  %src_ptr = alloca i8*, align 8
  %dest_ptr = alloca i8*, align 8
  %blur_ptr = alloca i8*, align 8
  %avg_ptr = alloca i8*, align 8
  %diff = alloca double, align 8
  %mult = alloca double, align 8
  %lightness = alloca double, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b637 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
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
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %4, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  store i32 %6, i32* %bytes, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_has_alpha(i32 %8)
  store i32 %call5, i32* %has_alpha, align 4
  %9 = load i32, i32* %width, align 4
  %10 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  %11 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %12 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  %13 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %cond, %13
  %conv = sext i32 %mul to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %14 = bitcast i8* %call6 to double*
  store double* %14, double** %val_p1, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  %cmp7 = icmp sgt i32 %15, %16
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  %17 = load i32, i32* %width, align 4
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  %18 = load i32, i32* %height, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ %17, %cond.true.9 ], [ %18, %cond.false.10 ]
  %19 = load i32, i32* %bytes, align 4
  %mul13 = mul nsw i32 %cond12, %19
  %conv14 = sext i32 %mul13 to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv14, i64 8)
  %20 = bitcast i8* %call15 to double*
  store double* %20, double** %val_p2, align 8
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  %cmp16 = icmp sgt i32 %21, %22
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.11
  %23 = load i32, i32* %width, align 4
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.end.11
  %24 = load i32, i32* %height, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ %23, %cond.true.18 ], [ %24, %cond.false.19 ]
  %25 = load i32, i32* %bytes, align 4
  %mul22 = mul nsw i32 %cond21, %25
  %conv23 = sext i32 %mul22 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv23, i64 8)
  %26 = bitcast i8* %call24 to double*
  store double* %26, double** %val_m1, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %cmp25 = icmp sgt i32 %27, %28
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end.20
  %29 = load i32, i32* %width, align 4
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.end.20
  %30 = load i32, i32* %height, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i32 [ %29, %cond.true.27 ], [ %30, %cond.false.28 ]
  %31 = load i32, i32* %bytes, align 4
  %mul31 = mul nsw i32 %cond30, %31
  %conv32 = sext i32 %mul31 to i64
  %call33 = call noalias i8* @g_malloc_n(i64 %conv32, i64 8)
  %32 = bitcast i8* %call33 to double*
  store double* %32, double** %val_m2, align 8
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  %cmp34 = icmp sgt i32 %33, %34
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end.29
  %35 = load i32, i32* %width, align 4
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end.29
  %36 = load i32, i32* %height, align 4
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.36
  %cond39 = phi i32 [ %35, %cond.true.36 ], [ %36, %cond.false.37 ]
  %37 = load i32, i32* %bytes, align 4
  %mul40 = mul nsw i32 %cond39, %37
  %conv41 = sext i32 %mul40 to i64
  %call42 = call noalias i8* @g_malloc_n(i64 %conv41, i64 1)
  store i8* %call42, i8** %src, align 8
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %mul43 = mul nsw i32 %38, %39
  %conv44 = sext i32 %mul43 to i64
  %call45 = call noalias i8* @g_malloc0_n(i64 %conv44, i64 1)
  store i8* %call45, i8** %dest1, align 8
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %height, align 4
  %mul46 = mul nsw i32 %40, %41
  %conv47 = sext i32 %mul46 to i64
  %call48 = call noalias i8* @g_malloc0_n(i64 %conv47, i64 1)
  store i8* %call48, i8** %dest2, align 8
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width49 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width49, align 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height50 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 2
  %46 = load i32, i32* %height50, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %42, i32 0, i32 0, i32 %44, i32 %46, i32 0, i32 0)
  store i32 0, i32* %progress, align 4
  %47 = load i32, i32* %width, align 4
  %48 = load i32, i32* %height, align 4
  %mul51 = mul nsw i32 %47, %48
  %mul52 = mul nsw i32 %mul51, 2
  store i32 %mul52, i32* %max_progress, align 4
  store double 1.000000e+00, double* %radius, align 8
  %49 = load double, double* %radius, align 8
  %call53 = call double @fabs(double %49) #5
  %add = fadd double %call53, 1.000000e+00
  store double %add, double* %radius, align 8
  %50 = load double, double* %radius, align 8
  %51 = load double, double* %radius, align 8
  %mul54 = fmul double %50, %51
  %sub = fsub double -0.000000e+00, %mul54
  %call55 = call double @log(double 0x3F70101010101010) #4
  %mul56 = fmul double 2.000000e+00, %call55
  %div = fdiv double %sub, %mul56
  %call57 = call double @sqrt(double %div) #4
  store double %call57, double* %std_dev1, align 8
  %52 = load double, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 0), align 8
  store double %52, double* %radius, align 8
  %53 = load double, double* %radius, align 8
  %call58 = call double @fabs(double %53) #5
  %add59 = fadd double %call58, 1.000000e+00
  store double %add59, double* %radius, align 8
  %54 = load double, double* %radius, align 8
  %55 = load double, double* %radius, align 8
  %mul60 = fmul double %54, %55
  %sub61 = fsub double -0.000000e+00, %mul60
  %call62 = call double @log(double 0x3F70101010101010) #4
  %mul63 = fmul double 2.000000e+00, %call62
  %div64 = fdiv double %sub61, %mul63
  %call65 = call double @sqrt(double %div64) #4
  store double %call65, double* %std_dev2, align 8
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [5 x double], [5 x double]* %d_p1, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [5 x double], [5 x double]* %d_m1, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [5 x double], [5 x double]* %bd_p1, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [5 x double], [5 x double]* %bd_m1, i32 0, i32 0
  %56 = load double, double* %std_dev1, align 8
  call void @find_constants(double* %arraydecay, double* %arraydecay66, double* %arraydecay67, double* %arraydecay68, double* %arraydecay69, double* %arraydecay70, double %56)
  %arraydecay71 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [5 x double], [5 x double]* %d_p2, i32 0, i32 0
  %arraydecay74 = getelementptr inbounds [5 x double], [5 x double]* %d_m2, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [5 x double], [5 x double]* %bd_p2, i32 0, i32 0
  %arraydecay76 = getelementptr inbounds [5 x double], [5 x double]* %bd_m2, i32 0, i32 0
  %57 = load double, double* %std_dev2, align 8
  call void @find_constants(double* %arraydecay71, double* %arraydecay72, double* %arraydecay73, double* %arraydecay74, double* %arraydecay75, double* %arraydecay76, double %57)
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.302, %cond.end.38
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %width, align 4
  %cmp77 = icmp slt i32 %58, %59
  br i1 %cmp77, label %for.body, label %for.end.304

for.body:                                         ; preds = %for.cond
  %60 = load double*, double** %val_p1, align 8
  %61 = bitcast double* %60 to i8*
  %62 = load i32, i32* %height, align 4
  %63 = load i32, i32* %bytes, align 4
  %mul79 = mul nsw i32 %62, %63
  %conv80 = sext i32 %mul79 to i64
  %mul81 = mul i64 %conv80, 8
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 %mul81, i32 8, i1 false)
  %64 = load double*, double** %val_p2, align 8
  %65 = bitcast double* %64 to i8*
  %66 = load i32, i32* %height, align 4
  %67 = load i32, i32* %bytes, align 4
  %mul82 = mul nsw i32 %66, %67
  %conv83 = sext i32 %mul82 to i64
  %mul84 = mul i64 %conv83, 8
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 %mul84, i32 8, i1 false)
  %68 = load double*, double** %val_m1, align 8
  %69 = bitcast double* %68 to i8*
  %70 = load i32, i32* %height, align 4
  %71 = load i32, i32* %bytes, align 4
  %mul85 = mul nsw i32 %70, %71
  %conv86 = sext i32 %mul85 to i64
  %mul87 = mul i64 %conv86, 8
  call void @llvm.memset.p0i8.i64(i8* %69, i8 0, i64 %mul87, i32 8, i1 false)
  %72 = load double*, double** %val_m2, align 8
  %73 = bitcast double* %72 to i8*
  %74 = load i32, i32* %height, align 4
  %75 = load i32, i32* %bytes, align 4
  %mul88 = mul nsw i32 %74, %75
  %conv89 = sext i32 %mul88 to i64
  %mul90 = mul i64 %conv89, 8
  call void @llvm.memset.p0i8.i64(i8* %73, i8 0, i64 %mul90, i32 8, i1 false)
  %76 = load i8*, i8** %src, align 8
  %77 = load i32, i32* %col, align 4
  %78 = load i32, i32* %x, align 4
  %add91 = add nsw i32 %77, %78
  %79 = load i32, i32* %y, align 4
  %80 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %src_rgn, i8* %76, i32 %add91, i32 %79, i32 %80)
  %81 = load i8*, i8** %src, align 8
  store i8* %81, i8** %src1, align 8
  %82 = load i8*, i8** %src1, align 8
  store i8* %82, i8** %sp_p1, align 8
  %83 = load i8*, i8** %src1, align 8
  %84 = load i32, i32* %height, align 4
  %sub92 = sub nsw i32 %84, 1
  %85 = load i32, i32* %bytes, align 4
  %mul93 = mul nsw i32 %sub92, %85
  %idx.ext = sext i32 %mul93 to i64
  %add.ptr = getelementptr inbounds i8, i8* %83, i64 %idx.ext
  store i8* %add.ptr, i8** %sp_m1, align 8
  %86 = load double*, double** %val_p1, align 8
  store double* %86, double** %vp1, align 8
  %87 = load double*, double** %val_p2, align 8
  store double* %87, double** %vp2, align 8
  %88 = load double*, double** %val_m1, align 8
  %89 = load i32, i32* %height, align 4
  %sub94 = sub nsw i32 %89, 1
  %90 = load i32, i32* %bytes, align 4
  %mul95 = mul nsw i32 %sub94, %90
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds double, double* %88, i64 %idx.ext96
  store double* %add.ptr97, double** %vm1, align 8
  %91 = load double*, double** %val_m2, align 8
  %92 = load i32, i32* %height, align 4
  %sub98 = sub nsw i32 %92, 1
  %93 = load i32, i32* %bytes, align 4
  %mul99 = mul nsw i32 %sub98, %93
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds double, double* %91, i64 %idx.ext100
  store double* %add.ptr101, double** %vm2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc, %for.body
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %bytes, align 4
  %cmp103 = icmp slt i32 %94, %95
  br i1 %cmp103, label %for.body.105, label %for.end

for.body.105:                                     ; preds = %for.cond.102
  %96 = load i32, i32* %i, align 4
  %idxprom = sext i32 %96 to i64
  %97 = load i8*, i8** %sp_p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %97, i64 %idxprom
  %98 = load i8, i8* %arrayidx, align 1
  %conv106 = zext i8 %98 to i32
  %99 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %99 to i64
  %arrayidx108 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 %idxprom107
  store i32 %conv106, i32* %arrayidx108, align 4
  %100 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %100 to i64
  %101 = load i8*, i8** %sp_m1, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %101, i64 %idxprom109
  %102 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %102 to i32
  %103 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %103 to i64
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 %idxprom112
  store i32 %conv111, i32* %arrayidx113, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.105
  %104 = load i32, i32* %i, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.102

for.end:                                          ; preds = %for.cond.102
  store i32 0, i32* %row, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.283, %for.end
  %105 = load i32, i32* %row, align 4
  %106 = load i32, i32* %height, align 4
  %cmp115 = icmp slt i32 %105, %106
  br i1 %cmp115, label %for.body.117, label %for.end.285

for.body.117:                                     ; preds = %for.cond.114
  %107 = load i32, i32* %row, align 4
  %cmp118 = icmp slt i32 %107, 4
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %for.body.117
  %108 = load i32, i32* %row, align 4
  br label %cond.end.122

cond.false.121:                                   ; preds = %for.body.117
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi i32 [ %108, %cond.true.120 ], [ 4, %cond.false.121 ]
  store i32 %cond123, i32* %terms, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.266, %cond.end.122
  %109 = load i32, i32* %b, align 4
  %110 = load i32, i32* %bytes, align 4
  %cmp125 = icmp slt i32 %109, %110
  br i1 %cmp125, label %for.body.127, label %for.end.268

for.body.127:                                     ; preds = %for.cond.124
  %111 = load double*, double** %vp1, align 8
  %112 = load i32, i32* %b, align 4
  %idx.ext128 = sext i32 %112 to i64
  %add.ptr129 = getelementptr inbounds double, double* %111, i64 %idx.ext128
  store double* %add.ptr129, double** %vpptr1, align 8
  %113 = load double*, double** %vm1, align 8
  %114 = load i32, i32* %b, align 4
  %idx.ext130 = sext i32 %114 to i64
  %add.ptr131 = getelementptr inbounds double, double* %113, i64 %idx.ext130
  store double* %add.ptr131, double** %vmptr1, align 8
  %115 = load double*, double** %vp2, align 8
  %116 = load i32, i32* %b, align 4
  %idx.ext132 = sext i32 %116 to i64
  %add.ptr133 = getelementptr inbounds double, double* %115, i64 %idx.ext132
  store double* %add.ptr133, double** %vpptr2, align 8
  %117 = load double*, double** %vm2, align 8
  %118 = load i32, i32* %b, align 4
  %idx.ext134 = sext i32 %118 to i64
  %add.ptr135 = getelementptr inbounds double, double* %117, i64 %idx.ext134
  store double* %add.ptr135, double** %vmptr2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.216, %for.body.127
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %terms, align 4
  %cmp137 = icmp sle i32 %119, %120
  br i1 %cmp137, label %for.body.139, label %for.end.218

for.body.139:                                     ; preds = %for.cond.136
  %121 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %121 to i64
  %arrayidx141 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom140
  %122 = load double, double* %arrayidx141, align 8
  %123 = load i32, i32* %i, align 4
  %sub142 = sub nsw i32 0, %123
  %124 = load i32, i32* %bytes, align 4
  %mul143 = mul nsw i32 %sub142, %124
  %125 = load i32, i32* %b, align 4
  %add144 = add nsw i32 %mul143, %125
  %idxprom145 = sext i32 %add144 to i64
  %126 = load i8*, i8** %sp_p1, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %126, i64 %idxprom145
  %127 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %127 to i32
  %conv148 = sitofp i32 %conv147 to double
  %mul149 = fmul double %122, %conv148
  %128 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %128 to i64
  %arrayidx151 = getelementptr inbounds [5 x double], [5 x double]* %d_p1, i32 0, i64 %idxprom150
  %129 = load double, double* %arrayidx151, align 8
  %130 = load i32, i32* %i, align 4
  %sub152 = sub nsw i32 0, %130
  %131 = load i32, i32* %bytes, align 4
  %mul153 = mul nsw i32 %sub152, %131
  %132 = load i32, i32* %b, align 4
  %add154 = add nsw i32 %mul153, %132
  %idxprom155 = sext i32 %add154 to i64
  %133 = load double*, double** %vp1, align 8
  %arrayidx156 = getelementptr inbounds double, double* %133, i64 %idxprom155
  %134 = load double, double* %arrayidx156, align 8
  %mul157 = fmul double %129, %134
  %sub158 = fsub double %mul149, %mul157
  %135 = load double*, double** %vpptr1, align 8
  %136 = load double, double* %135, align 8
  %add159 = fadd double %136, %sub158
  store double %add159, double* %135, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %137 to i64
  %arrayidx161 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom160
  %138 = load double, double* %arrayidx161, align 8
  %139 = load i32, i32* %i, align 4
  %140 = load i32, i32* %bytes, align 4
  %mul162 = mul nsw i32 %139, %140
  %141 = load i32, i32* %b, align 4
  %add163 = add nsw i32 %mul162, %141
  %idxprom164 = sext i32 %add163 to i64
  %142 = load i8*, i8** %sp_m1, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %142, i64 %idxprom164
  %143 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %143 to i32
  %conv167 = sitofp i32 %conv166 to double
  %mul168 = fmul double %138, %conv167
  %144 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %144 to i64
  %arrayidx170 = getelementptr inbounds [5 x double], [5 x double]* %d_m1, i32 0, i64 %idxprom169
  %145 = load double, double* %arrayidx170, align 8
  %146 = load i32, i32* %i, align 4
  %147 = load i32, i32* %bytes, align 4
  %mul171 = mul nsw i32 %146, %147
  %148 = load i32, i32* %b, align 4
  %add172 = add nsw i32 %mul171, %148
  %idxprom173 = sext i32 %add172 to i64
  %149 = load double*, double** %vm1, align 8
  %arrayidx174 = getelementptr inbounds double, double* %149, i64 %idxprom173
  %150 = load double, double* %arrayidx174, align 8
  %mul175 = fmul double %145, %150
  %sub176 = fsub double %mul168, %mul175
  %151 = load double*, double** %vmptr1, align 8
  %152 = load double, double* %151, align 8
  %add177 = fadd double %152, %sub176
  store double %add177, double* %151, align 8
  %153 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %153 to i64
  %arrayidx179 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom178
  %154 = load double, double* %arrayidx179, align 8
  %155 = load i32, i32* %i, align 4
  %sub180 = sub nsw i32 0, %155
  %156 = load i32, i32* %bytes, align 4
  %mul181 = mul nsw i32 %sub180, %156
  %157 = load i32, i32* %b, align 4
  %add182 = add nsw i32 %mul181, %157
  %idxprom183 = sext i32 %add182 to i64
  %158 = load i8*, i8** %sp_p1, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %158, i64 %idxprom183
  %159 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %159 to i32
  %conv186 = sitofp i32 %conv185 to double
  %mul187 = fmul double %154, %conv186
  %160 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %160 to i64
  %arrayidx189 = getelementptr inbounds [5 x double], [5 x double]* %d_p2, i32 0, i64 %idxprom188
  %161 = load double, double* %arrayidx189, align 8
  %162 = load i32, i32* %i, align 4
  %sub190 = sub nsw i32 0, %162
  %163 = load i32, i32* %bytes, align 4
  %mul191 = mul nsw i32 %sub190, %163
  %164 = load i32, i32* %b, align 4
  %add192 = add nsw i32 %mul191, %164
  %idxprom193 = sext i32 %add192 to i64
  %165 = load double*, double** %vp2, align 8
  %arrayidx194 = getelementptr inbounds double, double* %165, i64 %idxprom193
  %166 = load double, double* %arrayidx194, align 8
  %mul195 = fmul double %161, %166
  %sub196 = fsub double %mul187, %mul195
  %167 = load double*, double** %vpptr2, align 8
  %168 = load double, double* %167, align 8
  %add197 = fadd double %168, %sub196
  store double %add197, double* %167, align 8
  %169 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %169 to i64
  %arrayidx199 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom198
  %170 = load double, double* %arrayidx199, align 8
  %171 = load i32, i32* %i, align 4
  %172 = load i32, i32* %bytes, align 4
  %mul200 = mul nsw i32 %171, %172
  %173 = load i32, i32* %b, align 4
  %add201 = add nsw i32 %mul200, %173
  %idxprom202 = sext i32 %add201 to i64
  %174 = load i8*, i8** %sp_m1, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %174, i64 %idxprom202
  %175 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %175 to i32
  %conv205 = sitofp i32 %conv204 to double
  %mul206 = fmul double %170, %conv205
  %176 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %176 to i64
  %arrayidx208 = getelementptr inbounds [5 x double], [5 x double]* %d_m2, i32 0, i64 %idxprom207
  %177 = load double, double* %arrayidx208, align 8
  %178 = load i32, i32* %i, align 4
  %179 = load i32, i32* %bytes, align 4
  %mul209 = mul nsw i32 %178, %179
  %180 = load i32, i32* %b, align 4
  %add210 = add nsw i32 %mul209, %180
  %idxprom211 = sext i32 %add210 to i64
  %181 = load double*, double** %vm2, align 8
  %arrayidx212 = getelementptr inbounds double, double* %181, i64 %idxprom211
  %182 = load double, double* %arrayidx212, align 8
  %mul213 = fmul double %177, %182
  %sub214 = fsub double %mul206, %mul213
  %183 = load double*, double** %vmptr2, align 8
  %184 = load double, double* %183, align 8
  %add215 = fadd double %184, %sub214
  store double %add215, double* %183, align 8
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.139
  %185 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %185, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.136

for.end.218:                                      ; preds = %for.cond.136
  %186 = load i32, i32* %i, align 4
  store i32 %186, i32* %j, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.263, %for.end.218
  %187 = load i32, i32* %j, align 4
  %cmp220 = icmp sle i32 %187, 4
  br i1 %cmp220, label %for.body.222, label %for.end.265

for.body.222:                                     ; preds = %for.cond.219
  %188 = load i32, i32* %j, align 4
  %idxprom223 = sext i32 %188 to i64
  %arrayidx224 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom223
  %189 = load double, double* %arrayidx224, align 8
  %190 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %190 to i64
  %arrayidx226 = getelementptr inbounds [5 x double], [5 x double]* %bd_p1, i32 0, i64 %idxprom225
  %191 = load double, double* %arrayidx226, align 8
  %sub227 = fsub double %189, %191
  %192 = load i32, i32* %b, align 4
  %idxprom228 = sext i32 %192 to i64
  %arrayidx229 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 %idxprom228
  %193 = load i32, i32* %arrayidx229, align 4
  %conv230 = sitofp i32 %193 to double
  %mul231 = fmul double %sub227, %conv230
  %194 = load double*, double** %vpptr1, align 8
  %195 = load double, double* %194, align 8
  %add232 = fadd double %195, %mul231
  store double %add232, double* %194, align 8
  %196 = load i32, i32* %j, align 4
  %idxprom233 = sext i32 %196 to i64
  %arrayidx234 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom233
  %197 = load double, double* %arrayidx234, align 8
  %198 = load i32, i32* %j, align 4
  %idxprom235 = sext i32 %198 to i64
  %arrayidx236 = getelementptr inbounds [5 x double], [5 x double]* %bd_m1, i32 0, i64 %idxprom235
  %199 = load double, double* %arrayidx236, align 8
  %sub237 = fsub double %197, %199
  %200 = load i32, i32* %b, align 4
  %idxprom238 = sext i32 %200 to i64
  %arrayidx239 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 %idxprom238
  %201 = load i32, i32* %arrayidx239, align 4
  %conv240 = sitofp i32 %201 to double
  %mul241 = fmul double %sub237, %conv240
  %202 = load double*, double** %vmptr1, align 8
  %203 = load double, double* %202, align 8
  %add242 = fadd double %203, %mul241
  store double %add242, double* %202, align 8
  %204 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %204 to i64
  %arrayidx244 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom243
  %205 = load double, double* %arrayidx244, align 8
  %206 = load i32, i32* %j, align 4
  %idxprom245 = sext i32 %206 to i64
  %arrayidx246 = getelementptr inbounds [5 x double], [5 x double]* %bd_p2, i32 0, i64 %idxprom245
  %207 = load double, double* %arrayidx246, align 8
  %sub247 = fsub double %205, %207
  %208 = load i32, i32* %b, align 4
  %idxprom248 = sext i32 %208 to i64
  %arrayidx249 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 %idxprom248
  %209 = load i32, i32* %arrayidx249, align 4
  %conv250 = sitofp i32 %209 to double
  %mul251 = fmul double %sub247, %conv250
  %210 = load double*, double** %vpptr2, align 8
  %211 = load double, double* %210, align 8
  %add252 = fadd double %211, %mul251
  store double %add252, double* %210, align 8
  %212 = load i32, i32* %j, align 4
  %idxprom253 = sext i32 %212 to i64
  %arrayidx254 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom253
  %213 = load double, double* %arrayidx254, align 8
  %214 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %214 to i64
  %arrayidx256 = getelementptr inbounds [5 x double], [5 x double]* %bd_m2, i32 0, i64 %idxprom255
  %215 = load double, double* %arrayidx256, align 8
  %sub257 = fsub double %213, %215
  %216 = load i32, i32* %b, align 4
  %idxprom258 = sext i32 %216 to i64
  %arrayidx259 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 %idxprom258
  %217 = load i32, i32* %arrayidx259, align 4
  %conv260 = sitofp i32 %217 to double
  %mul261 = fmul double %sub257, %conv260
  %218 = load double*, double** %vmptr2, align 8
  %219 = load double, double* %218, align 8
  %add262 = fadd double %219, %mul261
  store double %add262, double* %218, align 8
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.body.222
  %220 = load i32, i32* %j, align 4
  %inc264 = add nsw i32 %220, 1
  store i32 %inc264, i32* %j, align 4
  br label %for.cond.219

for.end.265:                                      ; preds = %for.cond.219
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.end.265
  %221 = load i32, i32* %b, align 4
  %inc267 = add nsw i32 %221, 1
  store i32 %inc267, i32* %b, align 4
  br label %for.cond.124

for.end.268:                                      ; preds = %for.cond.124
  %222 = load i32, i32* %bytes, align 4
  %223 = load i8*, i8** %sp_p1, align 8
  %idx.ext269 = sext i32 %222 to i64
  %add.ptr270 = getelementptr inbounds i8, i8* %223, i64 %idx.ext269
  store i8* %add.ptr270, i8** %sp_p1, align 8
  %224 = load i32, i32* %bytes, align 4
  %225 = load i8*, i8** %sp_m1, align 8
  %idx.ext271 = sext i32 %224 to i64
  %idx.neg = sub i64 0, %idx.ext271
  %add.ptr272 = getelementptr inbounds i8, i8* %225, i64 %idx.neg
  store i8* %add.ptr272, i8** %sp_m1, align 8
  %226 = load i32, i32* %bytes, align 4
  %227 = load double*, double** %vp1, align 8
  %idx.ext273 = sext i32 %226 to i64
  %add.ptr274 = getelementptr inbounds double, double* %227, i64 %idx.ext273
  store double* %add.ptr274, double** %vp1, align 8
  %228 = load i32, i32* %bytes, align 4
  %229 = load double*, double** %vp2, align 8
  %idx.ext275 = sext i32 %228 to i64
  %add.ptr276 = getelementptr inbounds double, double* %229, i64 %idx.ext275
  store double* %add.ptr276, double** %vp2, align 8
  %230 = load i32, i32* %bytes, align 4
  %231 = load double*, double** %vm1, align 8
  %idx.ext277 = sext i32 %230 to i64
  %idx.neg278 = sub i64 0, %idx.ext277
  %add.ptr279 = getelementptr inbounds double, double* %231, i64 %idx.neg278
  store double* %add.ptr279, double** %vm1, align 8
  %232 = load i32, i32* %bytes, align 4
  %233 = load double*, double** %vm2, align 8
  %idx.ext280 = sext i32 %232 to i64
  %idx.neg281 = sub i64 0, %idx.ext280
  %add.ptr282 = getelementptr inbounds double, double* %233, i64 %idx.neg281
  store double* %add.ptr282, double** %vm2, align 8
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.end.268
  %234 = load i32, i32* %row, align 4
  %inc284 = add nsw i32 %234, 1
  store i32 %inc284, i32* %row, align 4
  br label %for.cond.114

for.end.285:                                      ; preds = %for.cond.114
  %235 = load double*, double** %val_p1, align 8
  %236 = load double*, double** %val_m1, align 8
  %237 = load i8*, i8** %dest1, align 8
  %238 = load i32, i32* %col, align 4
  %idx.ext286 = sext i32 %238 to i64
  %add.ptr287 = getelementptr inbounds i8, i8* %237, i64 %idx.ext286
  %239 = load i32, i32* %width, align 4
  %240 = load i32, i32* %bytes, align 4
  %241 = load i32, i32* %height, align 4
  call void @transfer_pixels(double* %235, double* %236, i8* %add.ptr287, i32 %239, i32 %240, i32 %241)
  %242 = load double*, double** %val_p2, align 8
  %243 = load double*, double** %val_m2, align 8
  %244 = load i8*, i8** %dest2, align 8
  %245 = load i32, i32* %col, align 4
  %idx.ext288 = sext i32 %245 to i64
  %add.ptr289 = getelementptr inbounds i8, i8* %244, i64 %idx.ext288
  %246 = load i32, i32* %width, align 4
  %247 = load i32, i32* %bytes, align 4
  %248 = load i32, i32* %height, align 4
  call void @transfer_pixels(double* %242, double* %243, i8* %add.ptr289, i32 %246, i32 %247, i32 %248)
  %249 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool290 = icmp ne %struct._GimpPreview* %249, null
  br i1 %tobool290, label %if.end.301, label %if.then.291

if.then.291:                                      ; preds = %for.end.285
  %250 = load i32, i32* %height, align 4
  %251 = load i32, i32* %progress, align 4
  %add292 = add nsw i32 %251, %250
  store i32 %add292, i32* %progress, align 4
  %252 = load i32, i32* %col, align 4
  %rem = srem i32 %252, 5
  %cmp293 = icmp eq i32 %rem, 0
  br i1 %cmp293, label %if.then.295, label %if.end.300

if.then.295:                                      ; preds = %if.then.291
  %253 = load i32, i32* %progress, align 4
  %conv296 = sitofp i32 %253 to double
  %254 = load i32, i32* %max_progress, align 4
  %conv297 = sitofp i32 %254 to double
  %div298 = fdiv double %conv296, %conv297
  %call299 = call i32 @gimp_progress_update(double %div298)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.295, %if.then.291
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %for.end.285
  br label %for.inc.302

for.inc.302:                                      ; preds = %if.end.301
  %255 = load i32, i32* %col, align 4
  %inc303 = add nsw i32 %255, 1
  store i32 %inc303, i32* %col, align 4
  br label %for.cond

for.end.304:                                      ; preds = %for.cond
  store i32 0, i32* %row, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.500, %for.end.304
  %256 = load i32, i32* %row, align 4
  %257 = load i32, i32* %height, align 4
  %cmp306 = icmp slt i32 %256, %257
  br i1 %cmp306, label %for.body.308, label %for.end.502

for.body.308:                                     ; preds = %for.cond.305
  %258 = load double*, double** %val_p1, align 8
  %259 = bitcast double* %258 to i8*
  %260 = load i32, i32* %width, align 4
  %conv309 = sext i32 %260 to i64
  %mul310 = mul i64 %conv309, 8
  call void @llvm.memset.p0i8.i64(i8* %259, i8 0, i64 %mul310, i32 8, i1 false)
  %261 = load double*, double** %val_p2, align 8
  %262 = bitcast double* %261 to i8*
  %263 = load i32, i32* %width, align 4
  %conv311 = sext i32 %263 to i64
  %mul312 = mul i64 %conv311, 8
  call void @llvm.memset.p0i8.i64(i8* %262, i8 0, i64 %mul312, i32 8, i1 false)
  %264 = load double*, double** %val_m1, align 8
  %265 = bitcast double* %264 to i8*
  %266 = load i32, i32* %width, align 4
  %conv313 = sext i32 %266 to i64
  %mul314 = mul i64 %conv313, 8
  call void @llvm.memset.p0i8.i64(i8* %265, i8 0, i64 %mul314, i32 8, i1 false)
  %267 = load double*, double** %val_m2, align 8
  %268 = bitcast double* %267 to i8*
  %269 = load i32, i32* %width, align 4
  %conv315 = sext i32 %269 to i64
  %mul316 = mul i64 %conv315, 8
  call void @llvm.memset.p0i8.i64(i8* %268, i8 0, i64 %mul316, i32 8, i1 false)
  %270 = load i8*, i8** %dest1, align 8
  %271 = load i32, i32* %row, align 4
  %272 = load i32, i32* %width, align 4
  %mul317 = mul nsw i32 %271, %272
  %idx.ext318 = sext i32 %mul317 to i64
  %add.ptr319 = getelementptr inbounds i8, i8* %270, i64 %idx.ext318
  store i8* %add.ptr319, i8** %src1, align 8
  %273 = load i8*, i8** %dest2, align 8
  %274 = load i32, i32* %row, align 4
  %275 = load i32, i32* %width, align 4
  %mul320 = mul nsw i32 %274, %275
  %idx.ext321 = sext i32 %mul320 to i64
  %add.ptr322 = getelementptr inbounds i8, i8* %273, i64 %idx.ext321
  store i8* %add.ptr322, i8** %src2, align 8
  %276 = load i8*, i8** %src1, align 8
  store i8* %276, i8** %sp_p1, align 8
  %277 = load i8*, i8** %src2, align 8
  store i8* %277, i8** %sp_p2, align 8
  %278 = load i8*, i8** %src1, align 8
  %279 = load i32, i32* %width, align 4
  %idx.ext323 = sext i32 %279 to i64
  %add.ptr324 = getelementptr inbounds i8, i8* %278, i64 %idx.ext323
  %add.ptr325 = getelementptr inbounds i8, i8* %add.ptr324, i64 -1
  store i8* %add.ptr325, i8** %sp_m1, align 8
  %280 = load i8*, i8** %src2, align 8
  %281 = load i32, i32* %width, align 4
  %idx.ext326 = sext i32 %281 to i64
  %add.ptr327 = getelementptr inbounds i8, i8* %280, i64 %idx.ext326
  %add.ptr328 = getelementptr inbounds i8, i8* %add.ptr327, i64 -1
  store i8* %add.ptr328, i8** %sp_m2, align 8
  %282 = load double*, double** %val_p1, align 8
  store double* %282, double** %vp1, align 8
  %283 = load double*, double** %val_p2, align 8
  store double* %283, double** %vp2, align 8
  %284 = load double*, double** %val_m1, align 8
  %285 = load i32, i32* %width, align 4
  %idx.ext329 = sext i32 %285 to i64
  %add.ptr330 = getelementptr inbounds double, double* %284, i64 %idx.ext329
  %add.ptr331 = getelementptr inbounds double, double* %add.ptr330, i64 -1
  store double* %add.ptr331, double** %vm1, align 8
  %286 = load double*, double** %val_m2, align 8
  %287 = load i32, i32* %width, align 4
  %idx.ext332 = sext i32 %287 to i64
  %add.ptr333 = getelementptr inbounds double, double* %286, i64 %idx.ext332
  %add.ptr334 = getelementptr inbounds double, double* %add.ptr333, i64 -1
  store double* %add.ptr334, double** %vm2, align 8
  %288 = load i8*, i8** %sp_p1, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %288, i64 0
  %289 = load i8, i8* %arrayidx335, align 1
  %conv336 = zext i8 %289 to i32
  %arrayidx337 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 0
  store i32 %conv336, i32* %arrayidx337, align 4
  %290 = load i8*, i8** %sp_p2, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %290, i64 0
  %291 = load i8, i8* %arrayidx338, align 1
  %conv339 = zext i8 %291 to i32
  %arrayidx340 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p2, i32 0, i64 0
  store i32 %conv339, i32* %arrayidx340, align 4
  %292 = load i8*, i8** %sp_m1, align 8
  %arrayidx341 = getelementptr inbounds i8, i8* %292, i64 0
  %293 = load i8, i8* %arrayidx341, align 1
  %conv342 = zext i8 %293 to i32
  %arrayidx343 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 0
  store i32 %conv342, i32* %arrayidx343, align 4
  %294 = load i8*, i8** %sp_m2, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %294, i64 0
  %295 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %295 to i32
  %arrayidx346 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m2, i32 0, i64 0
  store i32 %conv345, i32* %arrayidx346, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.478, %for.body.308
  %296 = load i32, i32* %col, align 4
  %297 = load i32, i32* %width, align 4
  %cmp348 = icmp slt i32 %296, %297
  br i1 %cmp348, label %for.body.350, label %for.end.480

for.body.350:                                     ; preds = %for.cond.347
  %298 = load i32, i32* %col, align 4
  %cmp355 = icmp slt i32 %298, 4
  br i1 %cmp355, label %cond.true.357, label %cond.false.358

cond.true.357:                                    ; preds = %for.body.350
  %299 = load i32, i32* %col, align 4
  br label %cond.end.359

cond.false.358:                                   ; preds = %for.body.350
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.358, %cond.true.357
  %cond360 = phi i32 [ %299, %cond.true.357 ], [ 4, %cond.false.358 ]
  store i32 %cond360, i32* %terms, align 4
  %300 = load double*, double** %vp1, align 8
  store double* %300, double** %vpptr1351, align 8
  %301 = load double*, double** %vm1, align 8
  store double* %301, double** %vmptr1352, align 8
  %302 = load double*, double** %vp2, align 8
  store double* %302, double** %vpptr2353, align 8
  %303 = load double*, double** %vm2, align 8
  store double* %303, double** %vmptr2354, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.361

for.cond.361:                                     ; preds = %for.inc.425, %cond.end.359
  %304 = load i32, i32* %i, align 4
  %305 = load i32, i32* %terms, align 4
  %cmp362 = icmp sle i32 %304, %305
  br i1 %cmp362, label %for.body.364, label %for.end.427

for.body.364:                                     ; preds = %for.cond.361
  %306 = load i32, i32* %i, align 4
  %idxprom365 = sext i32 %306 to i64
  %arrayidx366 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom365
  %307 = load double, double* %arrayidx366, align 8
  %308 = load i32, i32* %i, align 4
  %sub367 = sub nsw i32 0, %308
  %idxprom368 = sext i32 %sub367 to i64
  %309 = load i8*, i8** %sp_p1, align 8
  %arrayidx369 = getelementptr inbounds i8, i8* %309, i64 %idxprom368
  %310 = load i8, i8* %arrayidx369, align 1
  %conv370 = zext i8 %310 to i32
  %conv371 = sitofp i32 %conv370 to double
  %mul372 = fmul double %307, %conv371
  %311 = load i32, i32* %i, align 4
  %idxprom373 = sext i32 %311 to i64
  %arrayidx374 = getelementptr inbounds [5 x double], [5 x double]* %d_p1, i32 0, i64 %idxprom373
  %312 = load double, double* %arrayidx374, align 8
  %313 = load i32, i32* %i, align 4
  %sub375 = sub nsw i32 0, %313
  %idxprom376 = sext i32 %sub375 to i64
  %314 = load double*, double** %vp1, align 8
  %arrayidx377 = getelementptr inbounds double, double* %314, i64 %idxprom376
  %315 = load double, double* %arrayidx377, align 8
  %mul378 = fmul double %312, %315
  %sub379 = fsub double %mul372, %mul378
  %316 = load double*, double** %vpptr1351, align 8
  %317 = load double, double* %316, align 8
  %add380 = fadd double %317, %sub379
  store double %add380, double* %316, align 8
  %318 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %318 to i64
  %arrayidx382 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom381
  %319 = load double, double* %arrayidx382, align 8
  %320 = load i32, i32* %i, align 4
  %idxprom383 = sext i32 %320 to i64
  %321 = load i8*, i8** %sp_m1, align 8
  %arrayidx384 = getelementptr inbounds i8, i8* %321, i64 %idxprom383
  %322 = load i8, i8* %arrayidx384, align 1
  %conv385 = zext i8 %322 to i32
  %conv386 = sitofp i32 %conv385 to double
  %mul387 = fmul double %319, %conv386
  %323 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %323 to i64
  %arrayidx389 = getelementptr inbounds [5 x double], [5 x double]* %d_m1, i32 0, i64 %idxprom388
  %324 = load double, double* %arrayidx389, align 8
  %325 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %325 to i64
  %326 = load double*, double** %vm1, align 8
  %arrayidx391 = getelementptr inbounds double, double* %326, i64 %idxprom390
  %327 = load double, double* %arrayidx391, align 8
  %mul392 = fmul double %324, %327
  %sub393 = fsub double %mul387, %mul392
  %328 = load double*, double** %vmptr1352, align 8
  %329 = load double, double* %328, align 8
  %add394 = fadd double %329, %sub393
  store double %add394, double* %328, align 8
  %330 = load i32, i32* %i, align 4
  %idxprom395 = sext i32 %330 to i64
  %arrayidx396 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom395
  %331 = load double, double* %arrayidx396, align 8
  %332 = load i32, i32* %i, align 4
  %sub397 = sub nsw i32 0, %332
  %idxprom398 = sext i32 %sub397 to i64
  %333 = load i8*, i8** %sp_p2, align 8
  %arrayidx399 = getelementptr inbounds i8, i8* %333, i64 %idxprom398
  %334 = load i8, i8* %arrayidx399, align 1
  %conv400 = zext i8 %334 to i32
  %conv401 = sitofp i32 %conv400 to double
  %mul402 = fmul double %331, %conv401
  %335 = load i32, i32* %i, align 4
  %idxprom403 = sext i32 %335 to i64
  %arrayidx404 = getelementptr inbounds [5 x double], [5 x double]* %d_p2, i32 0, i64 %idxprom403
  %336 = load double, double* %arrayidx404, align 8
  %337 = load i32, i32* %i, align 4
  %sub405 = sub nsw i32 0, %337
  %idxprom406 = sext i32 %sub405 to i64
  %338 = load double*, double** %vp2, align 8
  %arrayidx407 = getelementptr inbounds double, double* %338, i64 %idxprom406
  %339 = load double, double* %arrayidx407, align 8
  %mul408 = fmul double %336, %339
  %sub409 = fsub double %mul402, %mul408
  %340 = load double*, double** %vpptr2353, align 8
  %341 = load double, double* %340, align 8
  %add410 = fadd double %341, %sub409
  store double %add410, double* %340, align 8
  %342 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %342 to i64
  %arrayidx412 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom411
  %343 = load double, double* %arrayidx412, align 8
  %344 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %344 to i64
  %345 = load i8*, i8** %sp_m2, align 8
  %arrayidx414 = getelementptr inbounds i8, i8* %345, i64 %idxprom413
  %346 = load i8, i8* %arrayidx414, align 1
  %conv415 = zext i8 %346 to i32
  %conv416 = sitofp i32 %conv415 to double
  %mul417 = fmul double %343, %conv416
  %347 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %347 to i64
  %arrayidx419 = getelementptr inbounds [5 x double], [5 x double]* %d_m2, i32 0, i64 %idxprom418
  %348 = load double, double* %arrayidx419, align 8
  %349 = load i32, i32* %i, align 4
  %idxprom420 = sext i32 %349 to i64
  %350 = load double*, double** %vm2, align 8
  %arrayidx421 = getelementptr inbounds double, double* %350, i64 %idxprom420
  %351 = load double, double* %arrayidx421, align 8
  %mul422 = fmul double %348, %351
  %sub423 = fsub double %mul417, %mul422
  %352 = load double*, double** %vmptr2354, align 8
  %353 = load double, double* %352, align 8
  %add424 = fadd double %353, %sub423
  store double %add424, double* %352, align 8
  br label %for.inc.425

for.inc.425:                                      ; preds = %for.body.364
  %354 = load i32, i32* %i, align 4
  %inc426 = add nsw i32 %354, 1
  store i32 %inc426, i32* %i, align 4
  br label %for.cond.361

for.end.427:                                      ; preds = %for.cond.361
  %355 = load i32, i32* %i, align 4
  store i32 %355, i32* %j, align 4
  br label %for.cond.428

for.cond.428:                                     ; preds = %for.inc.468, %for.end.427
  %356 = load i32, i32* %j, align 4
  %cmp429 = icmp sle i32 %356, 4
  br i1 %cmp429, label %for.body.431, label %for.end.470

for.body.431:                                     ; preds = %for.cond.428
  %357 = load i32, i32* %j, align 4
  %idxprom432 = sext i32 %357 to i64
  %arrayidx433 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom432
  %358 = load double, double* %arrayidx433, align 8
  %359 = load i32, i32* %j, align 4
  %idxprom434 = sext i32 %359 to i64
  %arrayidx435 = getelementptr inbounds [5 x double], [5 x double]* %bd_p1, i32 0, i64 %idxprom434
  %360 = load double, double* %arrayidx435, align 8
  %sub436 = fsub double %358, %360
  %arrayidx437 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 0
  %361 = load i32, i32* %arrayidx437, align 4
  %conv438 = sitofp i32 %361 to double
  %mul439 = fmul double %sub436, %conv438
  %362 = load double*, double** %vpptr1351, align 8
  %363 = load double, double* %362, align 8
  %add440 = fadd double %363, %mul439
  store double %add440, double* %362, align 8
  %364 = load i32, i32* %j, align 4
  %idxprom441 = sext i32 %364 to i64
  %arrayidx442 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom441
  %365 = load double, double* %arrayidx442, align 8
  %366 = load i32, i32* %j, align 4
  %idxprom443 = sext i32 %366 to i64
  %arrayidx444 = getelementptr inbounds [5 x double], [5 x double]* %bd_m1, i32 0, i64 %idxprom443
  %367 = load double, double* %arrayidx444, align 8
  %sub445 = fsub double %365, %367
  %arrayidx446 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 0
  %368 = load i32, i32* %arrayidx446, align 4
  %conv447 = sitofp i32 %368 to double
  %mul448 = fmul double %sub445, %conv447
  %369 = load double*, double** %vmptr1352, align 8
  %370 = load double, double* %369, align 8
  %add449 = fadd double %370, %mul448
  store double %add449, double* %369, align 8
  %371 = load i32, i32* %j, align 4
  %idxprom450 = sext i32 %371 to i64
  %arrayidx451 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom450
  %372 = load double, double* %arrayidx451, align 8
  %373 = load i32, i32* %j, align 4
  %idxprom452 = sext i32 %373 to i64
  %arrayidx453 = getelementptr inbounds [5 x double], [5 x double]* %bd_p2, i32 0, i64 %idxprom452
  %374 = load double, double* %arrayidx453, align 8
  %sub454 = fsub double %372, %374
  %arrayidx455 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p2, i32 0, i64 0
  %375 = load i32, i32* %arrayidx455, align 4
  %conv456 = sitofp i32 %375 to double
  %mul457 = fmul double %sub454, %conv456
  %376 = load double*, double** %vpptr2353, align 8
  %377 = load double, double* %376, align 8
  %add458 = fadd double %377, %mul457
  store double %add458, double* %376, align 8
  %378 = load i32, i32* %j, align 4
  %idxprom459 = sext i32 %378 to i64
  %arrayidx460 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom459
  %379 = load double, double* %arrayidx460, align 8
  %380 = load i32, i32* %j, align 4
  %idxprom461 = sext i32 %380 to i64
  %arrayidx462 = getelementptr inbounds [5 x double], [5 x double]* %bd_m2, i32 0, i64 %idxprom461
  %381 = load double, double* %arrayidx462, align 8
  %sub463 = fsub double %379, %381
  %arrayidx464 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m2, i32 0, i64 0
  %382 = load i32, i32* %arrayidx464, align 4
  %conv465 = sitofp i32 %382 to double
  %mul466 = fmul double %sub463, %conv465
  %383 = load double*, double** %vmptr2354, align 8
  %384 = load double, double* %383, align 8
  %add467 = fadd double %384, %mul466
  store double %add467, double* %383, align 8
  br label %for.inc.468

for.inc.468:                                      ; preds = %for.body.431
  %385 = load i32, i32* %j, align 4
  %inc469 = add nsw i32 %385, 1
  store i32 %inc469, i32* %j, align 4
  br label %for.cond.428

for.end.470:                                      ; preds = %for.cond.428
  %386 = load i8*, i8** %sp_p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %incdec.ptr, i8** %sp_p1, align 8
  %387 = load i8*, i8** %sp_p2, align 8
  %incdec.ptr471 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %incdec.ptr471, i8** %sp_p2, align 8
  %388 = load i8*, i8** %sp_m1, align 8
  %incdec.ptr472 = getelementptr inbounds i8, i8* %388, i32 -1
  store i8* %incdec.ptr472, i8** %sp_m1, align 8
  %389 = load i8*, i8** %sp_m2, align 8
  %incdec.ptr473 = getelementptr inbounds i8, i8* %389, i32 -1
  store i8* %incdec.ptr473, i8** %sp_m2, align 8
  %390 = load double*, double** %vp1, align 8
  %incdec.ptr474 = getelementptr inbounds double, double* %390, i32 1
  store double* %incdec.ptr474, double** %vp1, align 8
  %391 = load double*, double** %vp2, align 8
  %incdec.ptr475 = getelementptr inbounds double, double* %391, i32 1
  store double* %incdec.ptr475, double** %vp2, align 8
  %392 = load double*, double** %vm1, align 8
  %incdec.ptr476 = getelementptr inbounds double, double* %392, i32 -1
  store double* %incdec.ptr476, double** %vm1, align 8
  %393 = load double*, double** %vm2, align 8
  %incdec.ptr477 = getelementptr inbounds double, double* %393, i32 -1
  store double* %incdec.ptr477, double** %vm2, align 8
  br label %for.inc.478

for.inc.478:                                      ; preds = %for.end.470
  %394 = load i32, i32* %col, align 4
  %inc479 = add nsw i32 %394, 1
  store i32 %inc479, i32* %col, align 4
  br label %for.cond.347

for.end.480:                                      ; preds = %for.cond.347
  %395 = load double*, double** %val_p1, align 8
  %396 = load double*, double** %val_m1, align 8
  %397 = load i8*, i8** %dest1, align 8
  %398 = load i32, i32* %row, align 4
  %399 = load i32, i32* %width, align 4
  %mul481 = mul nsw i32 %398, %399
  %idx.ext482 = sext i32 %mul481 to i64
  %add.ptr483 = getelementptr inbounds i8, i8* %397, i64 %idx.ext482
  %400 = load i32, i32* %width, align 4
  call void @transfer_pixels(double* %395, double* %396, i8* %add.ptr483, i32 1, i32 1, i32 %400)
  %401 = load double*, double** %val_p2, align 8
  %402 = load double*, double** %val_m2, align 8
  %403 = load i8*, i8** %dest2, align 8
  %404 = load i32, i32* %row, align 4
  %405 = load i32, i32* %width, align 4
  %mul484 = mul nsw i32 %404, %405
  %idx.ext485 = sext i32 %mul484 to i64
  %add.ptr486 = getelementptr inbounds i8, i8* %403, i64 %idx.ext485
  %406 = load i32, i32* %width, align 4
  call void @transfer_pixels(double* %401, double* %402, i8* %add.ptr486, i32 1, i32 1, i32 %406)
  %407 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool487 = icmp ne %struct._GimpPreview* %407, null
  br i1 %tobool487, label %if.end.499, label %if.then.488

if.then.488:                                      ; preds = %for.end.480
  %408 = load i32, i32* %width, align 4
  %409 = load i32, i32* %progress, align 4
  %add489 = add nsw i32 %409, %408
  store i32 %add489, i32* %progress, align 4
  %410 = load i32, i32* %row, align 4
  %rem490 = srem i32 %410, 5
  %cmp491 = icmp eq i32 %rem490, 0
  br i1 %cmp491, label %if.then.493, label %if.end.498

if.then.493:                                      ; preds = %if.then.488
  %411 = load i32, i32* %progress, align 4
  %conv494 = sitofp i32 %411 to double
  %412 = load i32, i32* %max_progress, align 4
  %conv495 = sitofp i32 %412 to double
  %div496 = fdiv double %conv494, %conv495
  %call497 = call i32 @gimp_progress_update(double %div496)
  br label %if.end.498

if.end.498:                                       ; preds = %if.then.493, %if.then.488
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %for.end.480
  br label %for.inc.500

for.inc.500:                                      ; preds = %if.end.499
  %413 = load i32, i32* %row, align 4
  %inc501 = add nsw i32 %413, 1
  store i32 %inc501, i32* %row, align 4
  br label %for.cond.305

for.end.502:                                      ; preds = %for.cond.305
  %414 = load i8*, i8** %dest1, align 8
  %415 = load i8*, i8** %dest2, align 8
  %416 = load i32, i32* %width, align 4
  %417 = load i32, i32* %height, align 4
  %mul503 = mul nsw i32 %416, %417
  %418 = load double, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 2), align 8
  %call504 = call double @compute_ramp(i8* %414, i8* %415, i32 %mul503, double %418)
  store double %call504, double* %ramp, align 8
  %419 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %420 = load i32, i32* %x, align 4
  %421 = load i32, i32* %y, align 4
  %422 = load i32, i32* %width, align 4
  %423 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %419, i32 %420, i32 %421, i32 %422, i32 %423, i32 0, i32 0)
  %424 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool505 = icmp ne %struct._GimpPreview* %424, null
  br i1 %tobool505, label %if.then.506, label %if.else.512

if.then.506:                                      ; preds = %for.end.502
  %call507 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  %425 = bitcast i8* %call507 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %425, %struct._GimpPixelRgn** %pr, align 8
  %426 = load i32, i32* %width, align 4
  %427 = load i32, i32* %height, align 4
  %mul508 = mul nsw i32 %426, %427
  %428 = load i32, i32* %bytes, align 4
  %mul509 = mul nsw i32 %mul508, %428
  %conv510 = sext i32 %mul509 to i64
  %call511 = call noalias i8* @g_malloc_n(i64 %conv510, i64 1)
  store i8* %call511, i8** %preview_buffer, align 8
  br label %if.end.514

if.else.512:                                      ; preds = %for.end.502
  %429 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %430 = load i32, i32* %x, align 4
  %431 = load i32, i32* %y, align 4
  %432 = load i32, i32* %width, align 4
  %433 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %429, i32 %430, i32 %431, i32 %432, i32 %433, i32 1, i32 1)
  %call513 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  %434 = bitcast i8* %call513 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %434, %struct._GimpPixelRgn** %pr, align 8
  br label %if.end.514

if.end.514:                                       ; preds = %if.else.512, %if.then.506
  br label %while.cond

while.cond:                                       ; preds = %if.end.717, %if.end.514
  %435 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %tobool515 = icmp ne %struct._GimpPixelRgn* %435, null
  br i1 %tobool515, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %436 = load i8*, i8** %data, align 8
  store i8* %436, i8** %src_ptr, align 8
  %437 = load i8*, i8** %dest1, align 8
  %y516 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %438 = load i32, i32* %y516, align 4
  %439 = load i32, i32* %y, align 4
  %sub517 = sub nsw i32 %438, %439
  %440 = load i32, i32* %width, align 4
  %mul518 = mul nsw i32 %sub517, %440
  %idx.ext519 = sext i32 %mul518 to i64
  %add.ptr520 = getelementptr inbounds i8, i8* %437, i64 %idx.ext519
  %x521 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %441 = load i32, i32* %x521, align 4
  %442 = load i32, i32* %x, align 4
  %sub522 = sub nsw i32 %441, %442
  %idx.ext523 = sext i32 %sub522 to i64
  %add.ptr524 = getelementptr inbounds i8, i8* %add.ptr520, i64 %idx.ext523
  store i8* %add.ptr524, i8** %blur_ptr, align 8
  %443 = load i8*, i8** %dest2, align 8
  %y525 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %444 = load i32, i32* %y525, align 4
  %445 = load i32, i32* %y, align 4
  %sub526 = sub nsw i32 %444, %445
  %446 = load i32, i32* %width, align 4
  %mul527 = mul nsw i32 %sub526, %446
  %idx.ext528 = sext i32 %mul527 to i64
  %add.ptr529 = getelementptr inbounds i8, i8* %443, i64 %idx.ext528
  %x530 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %447 = load i32, i32* %x530, align 4
  %448 = load i32, i32* %x, align 4
  %sub531 = sub nsw i32 %447, %448
  %idx.ext532 = sext i32 %sub531 to i64
  %add.ptr533 = getelementptr inbounds i8, i8* %add.ptr529, i64 %idx.ext532
  store i8* %add.ptr533, i8** %avg_ptr, align 8
  store double 0.000000e+00, double* %mult, align 8
  %449 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool534 = icmp ne %struct._GimpPreview* %449, null
  br i1 %tobool534, label %if.then.535, label %if.else.545

if.then.535:                                      ; preds = %while.body
  %450 = load i8*, i8** %preview_buffer, align 8
  %y536 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %451 = load i32, i32* %y536, align 4
  %452 = load i32, i32* %y, align 4
  %sub537 = sub nsw i32 %451, %452
  %453 = load i32, i32* %width, align 4
  %mul538 = mul nsw i32 %sub537, %453
  %x539 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %454 = load i32, i32* %x539, align 4
  %455 = load i32, i32* %x, align 4
  %sub540 = sub nsw i32 %454, %455
  %add541 = add nsw i32 %mul538, %sub540
  %456 = load i32, i32* %bytes, align 4
  %mul542 = mul nsw i32 %add541, %456
  %idx.ext543 = sext i32 %mul542 to i64
  %add.ptr544 = getelementptr inbounds i8, i8* %450, i64 %idx.ext543
  store i8* %add.ptr544, i8** %dest_ptr, align 8
  br label %if.end.547

if.else.545:                                      ; preds = %while.body
  %data546 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %457 = load i8*, i8** %data546, align 8
  store i8* %457, i8** %dest_ptr, align 8
  br label %if.end.547

if.end.547:                                       ; preds = %if.else.545, %if.then.535
  store i32 0, i32* %row, align 4
  br label %for.cond.548

for.cond.548:                                     ; preds = %for.inc.704, %if.end.547
  %458 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %459 = load i32, i32* %h, align 4
  %cmp549 = icmp slt i32 %458, %459
  br i1 %cmp549, label %for.body.551, label %for.end.706

for.body.551:                                     ; preds = %for.cond.548
  store i32 0, i32* %col, align 4
  br label %for.cond.552

for.cond.552:                                     ; preds = %for.inc.685, %for.body.551
  %460 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %461 = load i32, i32* %w, align 4
  %cmp553 = icmp slt i32 %460, %461
  br i1 %cmp553, label %for.body.555, label %for.end.687

for.body.555:                                     ; preds = %for.cond.552
  %462 = load i32, i32* %col, align 4
  %idxprom556 = sext i32 %462 to i64
  %463 = load i8*, i8** %avg_ptr, align 8
  %arrayidx557 = getelementptr inbounds i8, i8* %463, i64 %idxprom556
  %464 = load i8, i8* %arrayidx557, align 1
  %conv558 = zext i8 %464 to i32
  %cmp559 = icmp ne i32 %conv558, 0
  br i1 %cmp559, label %if.then.561, label %if.end.589

if.then.561:                                      ; preds = %for.body.555
  %465 = load i32, i32* %col, align 4
  %idxprom562 = sext i32 %465 to i64
  %466 = load i8*, i8** %blur_ptr, align 8
  %arrayidx563 = getelementptr inbounds i8, i8* %466, i64 %idxprom562
  %467 = load i8, i8* %arrayidx563, align 1
  %conv564 = uitofp i8 %467 to double
  %468 = load i32, i32* %col, align 4
  %idxprom565 = sext i32 %468 to i64
  %469 = load i8*, i8** %avg_ptr, align 8
  %arrayidx566 = getelementptr inbounds i8, i8* %469, i64 %idxprom565
  %470 = load i8, i8* %arrayidx566, align 1
  %conv567 = uitofp i8 %470 to double
  %div568 = fdiv double %conv564, %conv567
  store double %div568, double* %diff, align 8
  %471 = load double, double* %diff, align 8
  %472 = load double, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 1), align 8
  %cmp569 = fcmp olt double %471, %472
  br i1 %cmp569, label %if.then.571, label %if.else.587

if.then.571:                                      ; preds = %if.then.561
  %473 = load double, double* %ramp, align 8
  %cmp572 = fcmp oeq double %473, 0.000000e+00
  br i1 %cmp572, label %if.then.574, label %if.else.575

if.then.574:                                      ; preds = %if.then.571
  store double 0.000000e+00, double* %mult, align 8
  br label %if.end.586

if.else.575:                                      ; preds = %if.then.571
  %474 = load double, double* %ramp, align 8
  %475 = load double, double* %ramp, align 8
  %476 = load double, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 1), align 8
  %477 = load double, double* %diff, align 8
  %sub576 = fsub double %476, %477
  %cmp577 = fcmp olt double %475, %sub576
  br i1 %cmp577, label %cond.true.579, label %cond.false.580

cond.true.579:                                    ; preds = %if.else.575
  %478 = load double, double* %ramp, align 8
  br label %cond.end.582

cond.false.580:                                   ; preds = %if.else.575
  %479 = load double, double* getelementptr inbounds (%struct.CartoonVals, %struct.CartoonVals* @cvals, i32 0, i32 1), align 8
  %480 = load double, double* %diff, align 8
  %sub581 = fsub double %479, %480
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.580, %cond.true.579
  %cond583 = phi double [ %478, %cond.true.579 ], [ %sub581, %cond.false.580 ]
  %sub584 = fsub double %474, %cond583
  %481 = load double, double* %ramp, align 8
  %div585 = fdiv double %sub584, %481
  store double %div585, double* %mult, align 8
  br label %if.end.586

if.end.586:                                       ; preds = %cond.end.582, %if.then.574
  br label %if.end.588

if.else.587:                                      ; preds = %if.then.561
  store double 1.000000e+00, double* %mult, align 8
  br label %if.end.588

if.end.588:                                       ; preds = %if.else.587, %if.end.586
  br label %if.end.589

if.end.589:                                       ; preds = %if.end.588, %for.body.555
  %482 = load i32, i32* %col, align 4
  %idxprom590 = sext i32 %482 to i64
  %483 = load i8*, i8** %blur_ptr, align 8
  %arrayidx591 = getelementptr inbounds i8, i8* %483, i64 %idxprom590
  %484 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %484 to i32
  %conv593 = sitofp i32 %conv592 to double
  %485 = load double, double* %mult, align 8
  %mul594 = fmul double %conv593, %485
  %cmp595 = fcmp ogt double %mul594, 2.550000e+02
  br i1 %cmp595, label %cond.true.597, label %cond.false.598

cond.true.597:                                    ; preds = %if.end.589
  br label %cond.end.615

cond.false.598:                                   ; preds = %if.end.589
  %486 = load i32, i32* %col, align 4
  %idxprom599 = sext i32 %486 to i64
  %487 = load i8*, i8** %blur_ptr, align 8
  %arrayidx600 = getelementptr inbounds i8, i8* %487, i64 %idxprom599
  %488 = load i8, i8* %arrayidx600, align 1
  %conv601 = zext i8 %488 to i32
  %conv602 = sitofp i32 %conv601 to double
  %489 = load double, double* %mult, align 8
  %mul603 = fmul double %conv602, %489
  %cmp604 = fcmp olt double %mul603, 0.000000e+00
  br i1 %cmp604, label %cond.true.606, label %cond.false.607

cond.true.606:                                    ; preds = %cond.false.598
  br label %cond.end.613

cond.false.607:                                   ; preds = %cond.false.598
  %490 = load i32, i32* %col, align 4
  %idxprom608 = sext i32 %490 to i64
  %491 = load i8*, i8** %blur_ptr, align 8
  %arrayidx609 = getelementptr inbounds i8, i8* %491, i64 %idxprom608
  %492 = load i8, i8* %arrayidx609, align 1
  %conv610 = zext i8 %492 to i32
  %conv611 = sitofp i32 %conv610 to double
  %493 = load double, double* %mult, align 8
  %mul612 = fmul double %conv611, %493
  br label %cond.end.613

cond.end.613:                                     ; preds = %cond.false.607, %cond.true.606
  %cond614 = phi double [ 0.000000e+00, %cond.true.606 ], [ %mul612, %cond.false.607 ]
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.end.613, %cond.true.597
  %cond616 = phi double [ 2.550000e+02, %cond.true.597 ], [ %cond614, %cond.end.613 ]
  store double %cond616, double* %lightness, align 8
  %494 = load i32, i32* %bytes, align 4
  %cmp617 = icmp slt i32 %494, 3
  br i1 %cmp617, label %if.then.619, label %if.else.636

if.then.619:                                      ; preds = %cond.end.615
  %495 = load double, double* %lightness, align 8
  %conv620 = fptoui double %495 to i8
  %496 = load i32, i32* %col, align 4
  %497 = load i32, i32* %bytes, align 4
  %mul621 = mul nsw i32 %496, %497
  %idxprom622 = sext i32 %mul621 to i64
  %498 = load i8*, i8** %dest_ptr, align 8
  %arrayidx623 = getelementptr inbounds i8, i8* %498, i64 %idxprom622
  store i8 %conv620, i8* %arrayidx623, align 1
  %499 = load i32, i32* %has_alpha, align 4
  %tobool624 = icmp ne i32 %499, 0
  br i1 %tobool624, label %if.then.625, label %if.end.635

if.then.625:                                      ; preds = %if.then.619
  %500 = load i32, i32* %col, align 4
  %bpp626 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %501 = load i32, i32* %bpp626, align 4
  %mul627 = mul nsw i32 %500, %501
  %add628 = add nsw i32 %mul627, 1
  %idxprom629 = sext i32 %add628 to i64
  %502 = load i8*, i8** %src_ptr, align 8
  %arrayidx630 = getelementptr inbounds i8, i8* %502, i64 %idxprom629
  %503 = load i8, i8* %arrayidx630, align 1
  %504 = load i32, i32* %col, align 4
  %505 = load i32, i32* %bytes, align 4
  %mul631 = mul nsw i32 %504, %505
  %add632 = add nsw i32 %mul631, 1
  %idxprom633 = sext i32 %add632 to i64
  %506 = load i8*, i8** %dest_ptr, align 8
  %arrayidx634 = getelementptr inbounds i8, i8* %506, i64 %idxprom633
  store i8 %503, i8* %arrayidx634, align 1
  br label %if.end.635

if.end.635:                                       ; preds = %if.then.625, %if.then.619
  br label %if.end.684

if.else.636:                                      ; preds = %cond.end.615
  %507 = load i32, i32* %col, align 4
  %bpp638 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %508 = load i32, i32* %bpp638, align 4
  %mul639 = mul nsw i32 %507, %508
  %add640 = add nsw i32 %mul639, 0
  %idxprom641 = sext i32 %add640 to i64
  %509 = load i8*, i8** %src_ptr, align 8
  %arrayidx642 = getelementptr inbounds i8, i8* %509, i64 %idxprom641
  %510 = load i8, i8* %arrayidx642, align 1
  %conv643 = zext i8 %510 to i32
  store i32 %conv643, i32* %r, align 4
  %511 = load i32, i32* %col, align 4
  %bpp644 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %512 = load i32, i32* %bpp644, align 4
  %mul645 = mul nsw i32 %511, %512
  %add646 = add nsw i32 %mul645, 1
  %idxprom647 = sext i32 %add646 to i64
  %513 = load i8*, i8** %src_ptr, align 8
  %arrayidx648 = getelementptr inbounds i8, i8* %513, i64 %idxprom647
  %514 = load i8, i8* %arrayidx648, align 1
  %conv649 = zext i8 %514 to i32
  store i32 %conv649, i32* %g, align 4
  %515 = load i32, i32* %col, align 4
  %bpp650 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %516 = load i32, i32* %bpp650, align 4
  %mul651 = mul nsw i32 %515, %516
  %add652 = add nsw i32 %mul651, 2
  %idxprom653 = sext i32 %add652 to i64
  %517 = load i8*, i8** %src_ptr, align 8
  %arrayidx654 = getelementptr inbounds i8, i8* %517, i64 %idxprom653
  %518 = load i8, i8* %arrayidx654, align 1
  %conv655 = zext i8 %518 to i32
  store i32 %conv655, i32* %b637, align 4
  call void @gimp_rgb_to_hsl_int(i32* %r, i32* %g, i32* %b637)
  %519 = load double, double* %lightness, align 8
  %conv656 = fptosi double %519 to i32
  store i32 %conv656, i32* %b637, align 4
  call void @gimp_hsl_to_rgb_int(i32* %r, i32* %g, i32* %b637)
  %520 = load i32, i32* %r, align 4
  %conv657 = trunc i32 %520 to i8
  %521 = load i32, i32* %col, align 4
  %522 = load i32, i32* %bytes, align 4
  %mul658 = mul nsw i32 %521, %522
  %add659 = add nsw i32 %mul658, 0
  %idxprom660 = sext i32 %add659 to i64
  %523 = load i8*, i8** %dest_ptr, align 8
  %arrayidx661 = getelementptr inbounds i8, i8* %523, i64 %idxprom660
  store i8 %conv657, i8* %arrayidx661, align 1
  %524 = load i32, i32* %g, align 4
  %conv662 = trunc i32 %524 to i8
  %525 = load i32, i32* %col, align 4
  %526 = load i32, i32* %bytes, align 4
  %mul663 = mul nsw i32 %525, %526
  %add664 = add nsw i32 %mul663, 1
  %idxprom665 = sext i32 %add664 to i64
  %527 = load i8*, i8** %dest_ptr, align 8
  %arrayidx666 = getelementptr inbounds i8, i8* %527, i64 %idxprom665
  store i8 %conv662, i8* %arrayidx666, align 1
  %528 = load i32, i32* %b637, align 4
  %conv667 = trunc i32 %528 to i8
  %529 = load i32, i32* %col, align 4
  %530 = load i32, i32* %bytes, align 4
  %mul668 = mul nsw i32 %529, %530
  %add669 = add nsw i32 %mul668, 2
  %idxprom670 = sext i32 %add669 to i64
  %531 = load i8*, i8** %dest_ptr, align 8
  %arrayidx671 = getelementptr inbounds i8, i8* %531, i64 %idxprom670
  store i8 %conv667, i8* %arrayidx671, align 1
  %532 = load i32, i32* %has_alpha, align 4
  %tobool672 = icmp ne i32 %532, 0
  br i1 %tobool672, label %if.then.673, label %if.end.683

if.then.673:                                      ; preds = %if.else.636
  %533 = load i32, i32* %col, align 4
  %bpp674 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %534 = load i32, i32* %bpp674, align 4
  %mul675 = mul nsw i32 %533, %534
  %add676 = add nsw i32 %mul675, 3
  %idxprom677 = sext i32 %add676 to i64
  %535 = load i8*, i8** %src_ptr, align 8
  %arrayidx678 = getelementptr inbounds i8, i8* %535, i64 %idxprom677
  %536 = load i8, i8* %arrayidx678, align 1
  %537 = load i32, i32* %col, align 4
  %538 = load i32, i32* %bytes, align 4
  %mul679 = mul nsw i32 %537, %538
  %add680 = add nsw i32 %mul679, 3
  %idxprom681 = sext i32 %add680 to i64
  %539 = load i8*, i8** %dest_ptr, align 8
  %arrayidx682 = getelementptr inbounds i8, i8* %539, i64 %idxprom681
  store i8 %536, i8* %arrayidx682, align 1
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.673, %if.else.636
  br label %if.end.684

if.end.684:                                       ; preds = %if.end.683, %if.end.635
  br label %for.inc.685

for.inc.685:                                      ; preds = %if.end.684
  %540 = load i32, i32* %col, align 4
  %inc686 = add nsw i32 %540, 1
  store i32 %inc686, i32* %col, align 4
  br label %for.cond.552

for.end.687:                                      ; preds = %for.cond.552
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %541 = load i32, i32* %rowstride, align 4
  %542 = load i8*, i8** %src_ptr, align 8
  %idx.ext688 = sext i32 %541 to i64
  %add.ptr689 = getelementptr inbounds i8, i8* %542, i64 %idx.ext688
  store i8* %add.ptr689, i8** %src_ptr, align 8
  %543 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool690 = icmp ne %struct._GimpPreview* %543, null
  br i1 %tobool690, label %if.then.691, label %if.else.695

if.then.691:                                      ; preds = %for.end.687
  %544 = load i32, i32* %width, align 4
  %545 = load i32, i32* %bytes, align 4
  %mul692 = mul nsw i32 %544, %545
  %546 = load i8*, i8** %dest_ptr, align 8
  %idx.ext693 = sext i32 %mul692 to i64
  %add.ptr694 = getelementptr inbounds i8, i8* %546, i64 %idx.ext693
  store i8* %add.ptr694, i8** %dest_ptr, align 8
  br label %if.end.699

if.else.695:                                      ; preds = %for.end.687
  %rowstride696 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %547 = load i32, i32* %rowstride696, align 4
  %548 = load i8*, i8** %dest_ptr, align 8
  %idx.ext697 = sext i32 %547 to i64
  %add.ptr698 = getelementptr inbounds i8, i8* %548, i64 %idx.ext697
  store i8* %add.ptr698, i8** %dest_ptr, align 8
  br label %if.end.699

if.end.699:                                       ; preds = %if.else.695, %if.then.691
  %549 = load i32, i32* %width, align 4
  %550 = load i8*, i8** %blur_ptr, align 8
  %idx.ext700 = sext i32 %549 to i64
  %add.ptr701 = getelementptr inbounds i8, i8* %550, i64 %idx.ext700
  store i8* %add.ptr701, i8** %blur_ptr, align 8
  %551 = load i32, i32* %width, align 4
  %552 = load i8*, i8** %avg_ptr, align 8
  %idx.ext702 = sext i32 %551 to i64
  %add.ptr703 = getelementptr inbounds i8, i8* %552, i64 %idx.ext702
  store i8* %add.ptr703, i8** %avg_ptr, align 8
  br label %for.inc.704

for.inc.704:                                      ; preds = %if.end.699
  %553 = load i32, i32* %row, align 4
  %inc705 = add nsw i32 %553, 1
  store i32 %inc705, i32* %row, align 4
  br label %for.cond.548

for.end.706:                                      ; preds = %for.cond.548
  %554 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool707 = icmp ne %struct._GimpPreview* %554, null
  br i1 %tobool707, label %if.end.717, label %if.then.708

if.then.708:                                      ; preds = %for.end.706
  %w709 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %555 = load i32, i32* %w709, align 4
  %h710 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %556 = load i32, i32* %h710, align 4
  %mul711 = mul nsw i32 %555, %556
  %557 = load i32, i32* %progress, align 4
  %add712 = add nsw i32 %557, %mul711
  store i32 %add712, i32* %progress, align 4
  %558 = load i32, i32* %progress, align 4
  %conv713 = sitofp i32 %558 to double
  %559 = load i32, i32* %max_progress, align 4
  %conv714 = sitofp i32 %559 to double
  %div715 = fdiv double %conv713, %conv714
  %call716 = call i32 @gimp_progress_update(double %div715)
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.708, %for.end.706
  %560 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %561 = bitcast %struct._GimpPixelRgn* %560 to i8*
  %call718 = call i8* @gimp_pixel_rgns_process(i8* %561)
  %562 = bitcast i8* %call718 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %562, %struct._GimpPixelRgn** %pr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %563 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool719 = icmp ne %struct._GimpPreview* %563, null
  br i1 %tobool719, label %if.then.720, label %if.else.722

if.then.720:                                      ; preds = %while.end
  %564 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %565 = load i8*, i8** %preview_buffer, align 8
  %566 = load i32, i32* %width, align 4
  %567 = load i32, i32* %bytes, align 4
  %mul721 = mul nsw i32 %566, %567
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %564, i8* %565, i32 %mul721)
  %568 = load i8*, i8** %preview_buffer, align 8
  call void @g_free(i8* %568)
  br label %if.end.728

if.else.722:                                      ; preds = %while.end
  %call723 = call i32 @gimp_progress_update(double 1.000000e+00)
  %569 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %569)
  %570 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id724 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %570, i32 0, i32 0
  %571 = load i32, i32* %drawable_id724, align 4
  %call725 = call i32 @gimp_drawable_merge_shadow(i32 %571, i32 1)
  %572 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id726 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %572, i32 0, i32 0
  %573 = load i32, i32* %drawable_id726, align 4
  %574 = load i32, i32* %x, align 4
  %575 = load i32, i32* %y, align 4
  %576 = load i32, i32* %width, align 4
  %577 = load i32, i32* %height, align 4
  %call727 = call i32 @gimp_drawable_update(i32 %573, i32 %574, i32 %575, i32 %576, i32 %577)
  br label %if.end.728

if.end.728:                                       ; preds = %if.else.722, %if.then.720
  %578 = load double*, double** %val_p1, align 8
  %579 = bitcast double* %578 to i8*
  call void @g_free(i8* %579)
  %580 = load double*, double** %val_p2, align 8
  %581 = bitcast double* %580 to i8*
  call void @g_free(i8* %581)
  %582 = load double*, double** %val_m1, align 8
  %583 = bitcast double* %582 to i8*
  call void @g_free(i8* %583)
  %584 = load double*, double** %val_m2, align 8
  %585 = bitcast double* %584 to i8*
  call void @g_free(i8* %585)
  %586 = load i8*, i8** %src, align 8
  call void @g_free(i8* %586)
  %587 = load i8*, i8** %dest1, align 8
  call void @g_free(i8* %587)
  %588 = load i8*, i8** %dest2, align 8
  call void @g_free(i8* %588)
  br label %return

return:                                           ; preds = %if.end.728, %if.then.2
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

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

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

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @transfer_pixels(double* %src1, double* %src2, i8* %dest, i32 %jump, i32 %bytes, i32 %width) #0 {
entry:
  %src1.addr = alloca double*, align 8
  %src2.addr = alloca double*, align 8
  %dest.addr = alloca i8*, align 8
  %jump.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %sum = alloca [4 x double], align 16
  store double* %src1, double** %src1.addr, align 8
  store double* %src2, double** %src2.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %jump, i32* %jump.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %b, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* %bytes.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %b, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %src1.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %b, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load double*, double** %src2.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom4
  %9 = load double, double* %arrayidx5, align 8
  %add = fadd double %6, %9
  %10 = load i32, i32* %b, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 %idxprom6
  store double %add, double* %arrayidx7, align 8
  %11 = load i32, i32* %b, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 %idxprom8
  %12 = load double, double* %arrayidx9, align 8
  %cmp10 = fcmp ogt double %12, 2.550000e+02
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %13 = load i32, i32* %b, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 %idxprom11
  store double 2.550000e+02, double* %arrayidx12, align 8
  br label %if.end.19

if.else:                                          ; preds = %for.body.3
  %14 = load i32, i32* %b, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 %idxprom13
  %15 = load double, double* %arrayidx14, align 8
  %cmp15 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else
  %16 = load i32, i32* %b, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 %idxprom17
  store double 0.000000e+00, double* %arrayidx18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %17 = load i32, i32* %b, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %18 = load i32, i32* %bytes.addr, align 4
  %cmp20 = icmp sgt i32 %18, 2
  br i1 %cmp20, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %for.end
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 0
  %19 = load double, double* %arrayidx22, align 8
  %conv = fptosi double %19 to i32
  %arrayidx23 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 1
  %20 = load double, double* %arrayidx23, align 8
  %conv24 = fptosi double %20 to i32
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 2
  %21 = load double, double* %arrayidx25, align 8
  %conv26 = fptosi double %21 to i32
  %call = call i32 @gimp_rgb_to_l_int(i32 %conv, i32 %conv24, i32 %conv26)
  %conv27 = trunc i32 %call to i8
  %22 = load i8*, i8** %dest.addr, align 8
  store i8 %conv27, i8* %22, align 1
  br label %if.end.31

if.else.28:                                       ; preds = %for.end
  %arrayidx29 = getelementptr inbounds [4 x double], [4 x double]* %sum, i32 0, i64 0
  %23 = load double, double* %arrayidx29, align 8
  %conv30 = fptoui double %23 to i8
  %24 = load i8*, i8** %dest.addr, align 8
  store i8 %conv30, i8* %24, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.21
  %25 = load i32, i32* %bytes.addr, align 4
  %26 = load double*, double** %src1.addr, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds double, double* %26, i64 %idx.ext
  store double* %add.ptr, double** %src1.addr, align 8
  %27 = load i32, i32* %bytes.addr, align 4
  %28 = load double*, double** %src2.addr, align 8
  %idx.ext32 = sext i32 %27 to i64
  %add.ptr33 = getelementptr inbounds double, double* %28, i64 %idx.ext32
  store double* %add.ptr33, double** %src2.addr, align 8
  %29 = load i32, i32* %jump.addr, align 4
  %30 = load i8*, i8** %dest.addr, align 8
  %idx.ext34 = sext i32 %29 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %30, i64 %idx.ext34
  store i8* %add.ptr35, i8** %dest.addr, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.31
  %31 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal double @compute_ramp(i8* %dest1, i8* %dest2, i32 %length, double %pct_black) #0 {
entry:
  %retval = alloca double, align 8
  %dest1.addr = alloca i8*, align 8
  %dest2.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %pct_black.addr = alloca double, align 8
  %hist = alloca [100 x i32], align 16
  %diff = alloca double, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i8* %dest1, i8** %dest1.addr, align 8
  store i8* %dest2, i8** %dest2.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store double %pct_black, double* %pct_black.addr, align 8
  %0 = bitcast [100 x i32]* %hist to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 400, i32 16, i1 false)
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %dest2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %dest1.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = uitofp i8 %6 to double
  %7 = load i8*, i8** %dest2.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = uitofp i8 %8 to double
  %div = fdiv double %conv3, %conv4
  store double %div, double* %diff, align 8
  %9 = load double, double* %diff, align 8
  %cmp5 = fcmp olt double %9, 1.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %10 = load double, double* %diff, align 8
  %mul = fmul double %10, 1.000000e+02
  %conv8 = fptosi double %mul to i32
  %idxprom = sext i32 %conv8 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %hist, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %arrayidx, align 4
  %12 = load i32, i32* %count, align 4
  %add9 = add nsw i32 %12, 1
  store i32 %add9, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %for.body
  %13 = load i8*, i8** %dest1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %dest1.addr, align 8
  %14 = load i8*, i8** %dest2.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %dest2.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load double, double* %pct_black.addr, align 8
  %cmp12 = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load i32, i32* %count, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %for.end
  store double 1.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.34, %if.end.17
  %18 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %18, 100
  br i1 %cmp19, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.18
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], [100 x i32]* %hist, i32 0, i64 %idxprom22
  %20 = load i32, i32* %arrayidx23, align 4
  %21 = load i32, i32* %sum, align 4
  %add24 = add nsw i32 %21, %20
  store i32 %add24, i32* %sum, align 4
  %22 = load i32, i32* %sum, align 4
  %conv25 = sitofp i32 %22 to double
  %23 = load i32, i32* %count, align 4
  %conv26 = sitofp i32 %23 to double
  %div27 = fdiv double %conv25, %conv26
  %24 = load double, double* %pct_black.addr, align 8
  %cmp28 = fcmp ogt double %div27, %24
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %for.body.21
  %25 = load i32, i32* %i, align 4
  %conv31 = sitofp i32 %25 to double
  %div32 = fdiv double %conv31, 1.000000e+02
  %sub = fsub double 1.000000e+00, %div32
  store double %sub, double* %retval
  br label %return

if.end.33:                                        ; preds = %for.body.21
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %26 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.18

for.end.36:                                       ; preds = %for.cond.18
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %for.end.36, %if.then.30, %if.then.16
  %27 = load double, double* %retval
  ret double %27
}

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare void @gimp_rgb_to_hsl_int(i32*, i32*, i32*) #1

declare void @gimp_hsl_to_rgb_int(i32*, i32*, i32*) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_rgb_to_l_int(i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
