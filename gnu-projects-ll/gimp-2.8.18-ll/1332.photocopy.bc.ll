; ModuleID = './plug-ins/common/photocopy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.PhotocopyVals = type { double, double, double, double, double }
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
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"mask-radius\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Photocopy mask radius (radius of pixel neighborhood)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sharpness\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Sharpness (detail level) (0.0 - 1.0)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"pct-black\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Percentage of darkened pixels to set to black (0.0 - 1.0)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"pct-white\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Percentage of non-darkened pixels left white (0.0 - 1.0)\00", align 1
@.str.14 = private unnamed_addr constant [1247 x i8] c"Propagates dark values in an image based on each pixel's relative darkness to a neighboring average. The idea behind this filter is to give the look of a photocopied version of the image, with toner transfered based on the relative darkness of a particular region. This is achieved by darkening areas of the image which are measured to be darker than a neighborhood average and setting other pixels to white. In this way, sufficiently large shifts in intensity are darkened to black. The rate at which they are darkened to black is determined by the second pct_black parameter. The mask_radius parameter controls the size of the pixel neighborhood over which the average intensity is computed and then compared to each pixel in the neighborhood to decide whether or not to darken it to black. Large values for mask_radius result in very thick black areas bordering the regions of white and much less detail for black areas everywhere including inside regions of color. Small values result in less toner overall and more detail everywhere. Small values for the pct_black make the blend from the white regions to the black border lines smoother and the toner regions themselves thinner and less noticable; larger values achieve the opposite effect.\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"plug-in-photocopy\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"Simulate color distortion produced by a copy machine\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Spencer Kimball\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Bit Specialists, Inc.\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"2001\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"_Photocopy...\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.PhotocopyVals { double 8.000000e+00, double 8.000000e-01, double 7.500000e-01, double 2.000000e-01, double 2.000000e-01 }, align 8
@.str.25 = private unnamed_addr constant [10 x i8] c"Photocopy\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"photocopy\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"gimp-photocopy\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"_Mask radius:\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"_Sharpness:\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Percent _black:\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Percent _white:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %help_string = alloca i8*, align 8
  store i8* getelementptr inbounds ([1247 x i8], [1247 x i8]* @.str.14, i32 0, i32 0), i8** %help_string, align 8
  %0 = load i8*, i8** %help_string, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0))
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
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %call3) #4
  %call5 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #4
  %call6 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (%struct.PhotocopyVals* @pvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @photocopy_dialog(%struct._GimpDrawable* %8)
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
  store double %10, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 0), align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 4
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_float14 = bitcast %union._GimpParamData* %data13 to double*
  %12 = load double, double* %d_float14, align 8
  store double %12, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 1), align 8
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 5
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_float17 = bitcast %union._GimpParamData* %data16 to double*
  %14 = load double, double* %d_float17, align 8
  store double %14, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 3), align 8
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 6
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_float20 = bitcast %union._GimpParamData* %data19 to double*
  %16 = load double, double* %d_float20, align 8
  store double %16, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 4), align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %do.end
  %call22 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (%struct.PhotocopyVals* @pvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %sw.bb.9, %if.end
  %17 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %17, 3
  br i1 %cmp, label %if.then.23, label %if.end.41

if.then.23:                                       ; preds = %sw.epilog
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id, align 4
  %call24 = call i32 @gimp_drawable_is_rgb(i32 %19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.23
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id26, align 4
  %call27 = call i32 @gimp_drawable_is_gray(i32 %21)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %lor.lhs.false, %if.then.23
  %call30 = call i32 @gimp_progress_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0))
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @photocopy(%struct._GimpDrawable* %22, %struct._GimpPreview* null)
  %23 = load i32, i32* %run_mode, align 4
  %cmp31 = icmp ne i32 %23, 1
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.29
  %call33 = call i32 @gimp_displays_flush()
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.29
  %24 = load i32, i32* %run_mode, align 4
  %cmp35 = icmp eq i32 %24, 0
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.34
  %call37 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (%struct.PhotocopyVals* @pvals to i8*), i32 40)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.34
  br label %if.end.40

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  %25 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %25, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0)) #4
  store i8* %call39, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.end.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %sw.epilog
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %27)
  br label %return

return:                                           ; preds = %if.end.41, %if.then
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
define internal i32 @photocopy_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @photocopy to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
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
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0)) #4
  %40 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 0), align 8
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 0, i8* %call27, i32 100, i32 5, double %40, double 3.000000e+00, double 5.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %scale_data, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.PhotocopyVals* @pvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0)) #4
  %50 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 1), align 8
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %49, i32 0, i32 1, i8* %call33, i32 50, i32 5, double %50, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %scale_data, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call37)
  %59 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0)) #4
  %60 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 3), align 8
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %59, i32 0, i32 2, i8* %call39, i32 50, i32 5, double %60, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call40, %struct._GtkObject** %scale_data, align 8
  %61 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 2)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call43)
  %69 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0)) #4
  %70 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 4), align 8
  %call46 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %69, i32 0, i32 3, i8* %call45, i32 50, i32 5, double %70, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call46, %struct._GtkObject** %scale_data, align 8
  %71 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %74 = bitcast %struct._GtkObject* %73 to i8*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_dialog_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call49)
  %80 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDialog*
  %call51 = call i32 @gimp_dialog_run(%struct._GimpDialog* %80)
  %cmp = icmp eq i32 %call51, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %81)
  %82 = load i32, i32* %run, align 4
  ret i32 %82
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @photocopy(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
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
  %dest1 = alloca i8*, align 8
  %dest2 = alloca i8*, align 8
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
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %terms = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %initial_p1 = alloca [4 x i32], align 16
  %initial_p2 = alloca [4 x i32], align 16
  %initial_m1 = alloca [4 x i32], align 16
  %initial_m2 = alloca [4 x i32], align 16
  %radius = alloca double, align 8
  %val = alloca double, align 8
  %std_dev1 = alloca double, align 8
  %std_dev2 = alloca double, align 8
  %ramp_down = alloca double, align 8
  %ramp_up = alloca double, align 8
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %src_ptr = alloca i8*, align 8
  %dest_ptr = alloca i8*, align 8
  %vpptr1 = alloca double*, align 8
  %vmptr1 = alloca double*, align 8
  %vpptr2 = alloca double*, align 8
  %vmptr2 = alloca double*, align 8
  %vpptr1384 = alloca double*, align 8
  %vmptr1385 = alloca double*, align 8
  %vpptr2386 = alloca double*, align 8
  %vmptr2387 = alloca double*, align 8
  %src_ptr545 = alloca i8*, align 8
  %dest_ptr547 = alloca i8*, align 8
  %blur_ptr = alloca i8*, align 8
  %avg_ptr = alloca i8*, align 8
  %diff = alloca double, align 8
  %mult = alloca double, align 8
  %lightness = alloca double, align 8
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
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %4, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %5 = load i32, i32* %x2, align 4
  %6 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %width, align 4
  %7 = load i32, i32* %y2, align 4
  %8 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %7, %8
  store i32 %sub1, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 3
  %10 = load i32, i32* %bpp, align 4
  store i32 %10, i32* %bytes, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id2, align 4
  %call3 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call3, i32* %has_alpha, align 4
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %13, %14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  %conv = sext i32 %cond to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %17 = bitcast i8* %call4 to double*
  store double* %17, double** %val_p1, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %cmp5 = icmp sgt i32 %18, %19
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %20 = load i32, i32* %width, align 4
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  %21 = load i32, i32* %height, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ %20, %cond.true.7 ], [ %21, %cond.false.8 ]
  %conv11 = sext i32 %cond10 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 8)
  %22 = bitcast i8* %call12 to double*
  store double* %22, double** %val_p2, align 8
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  %cmp13 = icmp sgt i32 %23, %24
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end.9
  %25 = load i32, i32* %width, align 4
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end.9
  %26 = load i32, i32* %height, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i32 [ %25, %cond.true.15 ], [ %26, %cond.false.16 ]
  %conv19 = sext i32 %cond18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 8)
  %27 = bitcast i8* %call20 to double*
  store double* %27, double** %val_m1, align 8
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  %cmp21 = icmp sgt i32 %28, %29
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.17
  %30 = load i32, i32* %width, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.17
  %31 = load i32, i32* %height, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %30, %cond.true.23 ], [ %31, %cond.false.24 ]
  %conv27 = sext i32 %cond26 to i64
  %call28 = call noalias i8* @g_malloc_n(i64 %conv27, i64 8)
  %32 = bitcast i8* %call28 to double*
  store double* %32, double** %val_m2, align 8
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %33, %34
  %conv29 = sext i32 %mul to i64
  %call30 = call noalias i8* @g_malloc0_n(i64 %conv29, i64 1)
  store i8* %call30, i8** %dest1, align 8
  %35 = load i32, i32* %width, align 4
  %36 = load i32, i32* %height, align 4
  %mul31 = mul nsw i32 %35, %36
  %conv32 = sext i32 %mul31 to i64
  %call33 = call noalias i8* @g_malloc0_n(i64 %conv32, i64 1)
  store i8* %call33, i8** %dest2, align 8
  store i32 0, i32* %progress, align 4
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %height, align 4
  %mul34 = mul nsw i32 %37, %38
  %mul35 = mul nsw i32 %mul34, 3
  store i32 %mul35, i32* %max_progress, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %y1, align 4
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 0, i32 0)
  %call36 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  %44 = bitcast i8* %call36 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %44, %struct._GimpPixelRgn** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %cond.end.25
  %45 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %cmp37 = icmp ne %struct._GimpPixelRgn* %45, null
  br i1 %cmp37, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %46 = load i8*, i8** %data, align 8
  store i8* %46, i8** %src_ptr, align 8
  %47 = load i8*, i8** %dest1, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %48 = load i32, i32* %y, align 4
  %49 = load i32, i32* %y1, align 4
  %sub39 = sub nsw i32 %48, %49
  %50 = load i32, i32* %width, align 4
  %mul40 = mul nsw i32 %sub39, %50
  %idx.ext = sext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %x1, align 4
  %sub41 = sub nsw i32 %51, %52
  %idx.ext42 = sext i32 %sub41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext42
  store i8* %add.ptr43, i8** %dest_ptr, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.101, %for.body
  %53 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %54 = load i32, i32* %h, align 4
  %cmp45 = icmp slt i32 %53, %54
  br i1 %cmp45, label %for.body.47, label %for.end.103

for.body.47:                                      ; preds = %for.cond.44
  store i32 0, i32* %col, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %for.body.47
  %55 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %56 = load i32, i32* %w, align 4
  %cmp49 = icmp slt i32 %55, %56
  br i1 %cmp49, label %for.body.51, label %for.end

for.body.51:                                      ; preds = %for.cond.48
  %57 = load i32, i32* %bytes, align 4
  %cmp52 = icmp sgt i32 %57, 2
  br i1 %cmp52, label %if.then.54, label %if.else.71

if.then.54:                                       ; preds = %for.body.51
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %bytes, align 4
  %mul55 = mul nsw i32 %58, %59
  %add = add nsw i32 %mul55, 0
  %idxprom = sext i32 %add to i64
  %60 = load i8*, i8** %src_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 %idxprom
  %61 = load i8, i8* %arrayidx, align 1
  %conv56 = zext i8 %61 to i32
  %62 = load i32, i32* %col, align 4
  %63 = load i32, i32* %bytes, align 4
  %mul57 = mul nsw i32 %62, %63
  %add58 = add nsw i32 %mul57, 1
  %idxprom59 = sext i32 %add58 to i64
  %64 = load i8*, i8** %src_ptr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %64, i64 %idxprom59
  %65 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %65 to i32
  %66 = load i32, i32* %col, align 4
  %67 = load i32, i32* %bytes, align 4
  %mul62 = mul nsw i32 %66, %67
  %add63 = add nsw i32 %mul62, 2
  %idxprom64 = sext i32 %add63 to i64
  %68 = load i8*, i8** %src_ptr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %68, i64 %idxprom64
  %69 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %69 to i32
  %call67 = call i32 @gimp_rgb_to_l_int(i32 %conv56, i32 %conv61, i32 %conv66)
  %conv68 = trunc i32 %call67 to i8
  %70 = load i32, i32* %col, align 4
  %idxprom69 = sext i32 %70 to i64
  %71 = load i8*, i8** %dest_ptr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %71, i64 %idxprom69
  store i8 %conv68, i8* %arrayidx70, align 1
  br label %if.end.77

if.else.71:                                       ; preds = %for.body.51
  %72 = load i32, i32* %col, align 4
  %73 = load i32, i32* %bytes, align 4
  %mul72 = mul nsw i32 %72, %73
  %idxprom73 = sext i32 %mul72 to i64
  %74 = load i8*, i8** %src_ptr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %74, i64 %idxprom73
  %75 = load i8, i8* %arrayidx74, align 1
  %76 = load i32, i32* %col, align 4
  %idxprom75 = sext i32 %76 to i64
  %77 = load i8*, i8** %dest_ptr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %77, i64 %idxprom75
  store i8 %75, i8* %arrayidx76, align 1
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.71, %if.then.54
  %78 = load i32, i32* %col, align 4
  %idxprom78 = sext i32 %78 to i64
  %79 = load i8*, i8** %dest_ptr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %79, i64 %idxprom78
  %80 = load i8, i8* %arrayidx79, align 1
  %conv80 = uitofp i8 %80 to double
  %call81 = call double @pow(double %conv80, double 1.000000e+00) #4
  store double %call81, double* %val, align 8
  %81 = load double, double* %val, align 8
  %cmp82 = fcmp ogt double %81, 2.550000e+02
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %if.end.77
  br label %cond.end.92

cond.false.85:                                    ; preds = %if.end.77
  %82 = load double, double* %val, align 8
  %cmp86 = fcmp olt double %82, 0.000000e+00
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.false.85
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.false.85
  %83 = load double, double* %val, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.88
  %cond91 = phi double [ 0.000000e+00, %cond.true.88 ], [ %83, %cond.false.89 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.84
  %cond93 = phi double [ 2.550000e+02, %cond.true.84 ], [ %cond91, %cond.end.90 ]
  %conv94 = fptoui double %cond93 to i8
  %84 = load i32, i32* %col, align 4
  %idxprom95 = sext i32 %84 to i64
  %85 = load i8*, i8** %dest_ptr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %85, i64 %idxprom95
  store i8 %conv94, i8* %arrayidx96, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.92
  %86 = load i32, i32* %col, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.48

for.end:                                          ; preds = %for.cond.48
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %87 = load i32, i32* %rowstride, align 4
  %88 = load i8*, i8** %src_ptr, align 8
  %idx.ext97 = sext i32 %87 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %88, i64 %idx.ext97
  store i8* %add.ptr98, i8** %src_ptr, align 8
  %89 = load i32, i32* %width, align 4
  %90 = load i8*, i8** %dest_ptr, align 8
  %idx.ext99 = sext i32 %89 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %90, i64 %idx.ext99
  store i8* %add.ptr100, i8** %dest_ptr, align 8
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end
  %91 = load i32, i32* %row, align 4
  %inc102 = add nsw i32 %91, 1
  store i32 %inc102, i32* %row, align 4
  br label %for.cond.44

for.end.103:                                      ; preds = %for.cond.44
  %92 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool104 = icmp ne %struct._GimpPreview* %92, null
  br i1 %tobool104, label %if.end.113, label %if.then.105

if.then.105:                                      ; preds = %for.end.103
  %w106 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %93 = load i32, i32* %w106, align 4
  %h107 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %94 = load i32, i32* %h107, align 4
  %mul108 = mul nsw i32 %93, %94
  %95 = load i32, i32* %progress, align 4
  %add109 = add nsw i32 %95, %mul108
  store i32 %add109, i32* %progress, align 4
  %96 = load i32, i32* %progress, align 4
  %conv110 = sitofp i32 %96 to double
  %97 = load i32, i32* %max_progress, align 4
  %conv111 = sitofp i32 %97 to double
  %div = fdiv double %conv110, %conv111
  %call112 = call i32 @gimp_progress_update(double %div)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.105, %for.end.103
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %98 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %99 = bitcast %struct._GimpPixelRgn* %98 to i8*
  %call115 = call i8* @gimp_pixel_rgns_process(i8* %99)
  %100 = bitcast i8* %call115 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %100, %struct._GimpPixelRgn** %pr, align 8
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  %101 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 1), align 8
  %sub117 = fsub double 1.000000e+00, %101
  %mul118 = fmul double 1.000000e+01, %sub117
  %cmp119 = fcmp ogt double 1.000000e+00, %mul118
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %for.end.116
  br label %cond.end.125

cond.false.122:                                   ; preds = %for.end.116
  %102 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 1), align 8
  %sub123 = fsub double 1.000000e+00, %102
  %mul124 = fmul double 1.000000e+01, %sub123
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.121
  %cond126 = phi double [ 1.000000e+00, %cond.true.121 ], [ %mul124, %cond.false.122 ]
  store double %cond126, double* %radius, align 8
  %103 = load double, double* %radius, align 8
  %call127 = call double @fabs(double %103) #5
  %add128 = fadd double %call127, 1.000000e+00
  store double %add128, double* %radius, align 8
  %104 = load double, double* %radius, align 8
  %105 = load double, double* %radius, align 8
  %mul129 = fmul double %104, %105
  %sub130 = fsub double -0.000000e+00, %mul129
  %call131 = call double @log(double 0x3F70101010101010) #4
  %mul132 = fmul double 2.000000e+00, %call131
  %div133 = fdiv double %sub130, %mul132
  %call134 = call double @sqrt(double %div133) #4
  store double %call134, double* %std_dev1, align 8
  %106 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 0), align 8
  %call135 = call double @fabs(double %106) #5
  %add136 = fadd double %call135, 1.000000e+00
  store double %add136, double* %radius, align 8
  %107 = load double, double* %radius, align 8
  %108 = load double, double* %radius, align 8
  %mul137 = fmul double %107, %108
  %sub138 = fsub double -0.000000e+00, %mul137
  %call139 = call double @log(double 0x3F70101010101010) #4
  %mul140 = fmul double 2.000000e+00, %call139
  %div141 = fdiv double %sub138, %mul140
  %call142 = call double @sqrt(double %div141) #4
  store double %call142, double* %std_dev2, align 8
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i32 0
  %arraydecay143 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i32 0
  %arraydecay144 = getelementptr inbounds [5 x double], [5 x double]* %d_p1, i32 0, i32 0
  %arraydecay145 = getelementptr inbounds [5 x double], [5 x double]* %d_m1, i32 0, i32 0
  %arraydecay146 = getelementptr inbounds [5 x double], [5 x double]* %bd_p1, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [5 x double], [5 x double]* %bd_m1, i32 0, i32 0
  %109 = load double, double* %std_dev1, align 8
  call void @find_constants(double* %arraydecay, double* %arraydecay143, double* %arraydecay144, double* %arraydecay145, double* %arraydecay146, double* %arraydecay147, double %109)
  %arraydecay148 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i32 0
  %arraydecay149 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i32 0
  %arraydecay150 = getelementptr inbounds [5 x double], [5 x double]* %d_p2, i32 0, i32 0
  %arraydecay151 = getelementptr inbounds [5 x double], [5 x double]* %d_m2, i32 0, i32 0
  %arraydecay152 = getelementptr inbounds [5 x double], [5 x double]* %bd_p2, i32 0, i32 0
  %arraydecay153 = getelementptr inbounds [5 x double], [5 x double]* %bd_m2, i32 0, i32 0
  %110 = load double, double* %std_dev2, align 8
  call void @find_constants(double* %arraydecay148, double* %arraydecay149, double* %arraydecay150, double* %arraydecay151, double* %arraydecay152, double* %arraydecay153, double %110)
  store i32 0, i32* %col, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.335, %cond.end.125
  %111 = load i32, i32* %col, align 4
  %112 = load i32, i32* %width, align 4
  %cmp155 = icmp slt i32 %111, %112
  br i1 %cmp155, label %for.body.157, label %for.end.337

for.body.157:                                     ; preds = %for.cond.154
  %113 = load double*, double** %val_p1, align 8
  %114 = bitcast double* %113 to i8*
  %115 = load i32, i32* %height, align 4
  %conv158 = sext i32 %115 to i64
  %mul159 = mul i64 %conv158, 8
  call void @llvm.memset.p0i8.i64(i8* %114, i8 0, i64 %mul159, i32 8, i1 false)
  %116 = load double*, double** %val_p2, align 8
  %117 = bitcast double* %116 to i8*
  %118 = load i32, i32* %height, align 4
  %conv160 = sext i32 %118 to i64
  %mul161 = mul i64 %conv160, 8
  call void @llvm.memset.p0i8.i64(i8* %117, i8 0, i64 %mul161, i32 8, i1 false)
  %119 = load double*, double** %val_m1, align 8
  %120 = bitcast double* %119 to i8*
  %121 = load i32, i32* %height, align 4
  %conv162 = sext i32 %121 to i64
  %mul163 = mul i64 %conv162, 8
  call void @llvm.memset.p0i8.i64(i8* %120, i8 0, i64 %mul163, i32 8, i1 false)
  %122 = load double*, double** %val_m2, align 8
  %123 = bitcast double* %122 to i8*
  %124 = load i32, i32* %height, align 4
  %conv164 = sext i32 %124 to i64
  %mul165 = mul i64 %conv164, 8
  call void @llvm.memset.p0i8.i64(i8* %123, i8 0, i64 %mul165, i32 8, i1 false)
  %125 = load i8*, i8** %dest1, align 8
  %126 = load i32, i32* %col, align 4
  %idx.ext166 = sext i32 %126 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %125, i64 %idx.ext166
  store i8* %add.ptr167, i8** %src1, align 8
  %127 = load i8*, i8** %src1, align 8
  store i8* %127, i8** %sp_p1, align 8
  %128 = load i8*, i8** %src1, align 8
  %129 = load i32, i32* %height, align 4
  %sub168 = sub nsw i32 %129, 1
  %130 = load i32, i32* %width, align 4
  %mul169 = mul nsw i32 %sub168, %130
  %idx.ext170 = sext i32 %mul169 to i64
  %add.ptr171 = getelementptr inbounds i8, i8* %128, i64 %idx.ext170
  store i8* %add.ptr171, i8** %sp_m1, align 8
  %131 = load double*, double** %val_p1, align 8
  store double* %131, double** %vp1, align 8
  %132 = load double*, double** %val_p2, align 8
  store double* %132, double** %vp2, align 8
  %133 = load double*, double** %val_m1, align 8
  %134 = load i32, i32* %height, align 4
  %sub172 = sub nsw i32 %134, 1
  %idx.ext173 = sext i32 %sub172 to i64
  %add.ptr174 = getelementptr inbounds double, double* %133, i64 %idx.ext173
  store double* %add.ptr174, double** %vm1, align 8
  %135 = load double*, double** %val_m2, align 8
  %136 = load i32, i32* %height, align 4
  %sub175 = sub nsw i32 %136, 1
  %idx.ext176 = sext i32 %sub175 to i64
  %add.ptr177 = getelementptr inbounds double, double* %135, i64 %idx.ext176
  store double* %add.ptr177, double** %vm2, align 8
  %137 = load i8*, i8** %sp_p1, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %137, i64 0
  %138 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %138 to i32
  %arrayidx180 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 0
  store i32 %conv179, i32* %arrayidx180, align 4
  %139 = load i8*, i8** %sp_m1, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %139, i64 0
  %140 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %140 to i32
  %arrayidx183 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 0
  store i32 %conv182, i32* %arrayidx183, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.316, %for.body.157
  %141 = load i32, i32* %row, align 4
  %142 = load i32, i32* %height, align 4
  %cmp185 = icmp slt i32 %141, %142
  br i1 %cmp185, label %for.body.187, label %for.end.318

for.body.187:                                     ; preds = %for.cond.184
  %143 = load i32, i32* %row, align 4
  %cmp188 = icmp slt i32 %143, 4
  br i1 %cmp188, label %cond.true.190, label %cond.false.191

cond.true.190:                                    ; preds = %for.body.187
  %144 = load i32, i32* %row, align 4
  br label %cond.end.192

cond.false.191:                                   ; preds = %for.body.187
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.191, %cond.true.190
  %cond193 = phi i32 [ %144, %cond.true.190 ], [ 4, %cond.false.191 ]
  store i32 %cond193, i32* %terms, align 4
  %145 = load double*, double** %vp1, align 8
  store double* %145, double** %vpptr1, align 8
  %146 = load double*, double** %vm1, align 8
  store double* %146, double** %vmptr1, align 8
  %147 = load double*, double** %vp2, align 8
  store double* %147, double** %vpptr2, align 8
  %148 = load double*, double** %vm2, align 8
  store double* %148, double** %vmptr2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.262, %cond.end.192
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* %terms, align 4
  %cmp195 = icmp sle i32 %149, %150
  br i1 %cmp195, label %for.body.197, label %for.end.264

for.body.197:                                     ; preds = %for.cond.194
  %151 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %151 to i64
  %arrayidx199 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom198
  %152 = load double, double* %arrayidx199, align 8
  %153 = load i32, i32* %i, align 4
  %sub200 = sub nsw i32 0, %153
  %154 = load i32, i32* %width, align 4
  %mul201 = mul nsw i32 %sub200, %154
  %idxprom202 = sext i32 %mul201 to i64
  %155 = load i8*, i8** %sp_p1, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %155, i64 %idxprom202
  %156 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %156 to i32
  %conv205 = sitofp i32 %conv204 to double
  %mul206 = fmul double %152, %conv205
  %157 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %157 to i64
  %arrayidx208 = getelementptr inbounds [5 x double], [5 x double]* %d_p1, i32 0, i64 %idxprom207
  %158 = load double, double* %arrayidx208, align 8
  %159 = load i32, i32* %i, align 4
  %sub209 = sub nsw i32 0, %159
  %idxprom210 = sext i32 %sub209 to i64
  %160 = load double*, double** %vp1, align 8
  %arrayidx211 = getelementptr inbounds double, double* %160, i64 %idxprom210
  %161 = load double, double* %arrayidx211, align 8
  %mul212 = fmul double %158, %161
  %sub213 = fsub double %mul206, %mul212
  %162 = load double*, double** %vpptr1, align 8
  %163 = load double, double* %162, align 8
  %add214 = fadd double %163, %sub213
  store double %add214, double* %162, align 8
  %164 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %164 to i64
  %arrayidx216 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom215
  %165 = load double, double* %arrayidx216, align 8
  %166 = load i32, i32* %i, align 4
  %167 = load i32, i32* %width, align 4
  %mul217 = mul nsw i32 %166, %167
  %idxprom218 = sext i32 %mul217 to i64
  %168 = load i8*, i8** %sp_m1, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %168, i64 %idxprom218
  %169 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %169 to i32
  %conv221 = sitofp i32 %conv220 to double
  %mul222 = fmul double %165, %conv221
  %170 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %170 to i64
  %arrayidx224 = getelementptr inbounds [5 x double], [5 x double]* %d_m1, i32 0, i64 %idxprom223
  %171 = load double, double* %arrayidx224, align 8
  %172 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %172 to i64
  %173 = load double*, double** %vm1, align 8
  %arrayidx226 = getelementptr inbounds double, double* %173, i64 %idxprom225
  %174 = load double, double* %arrayidx226, align 8
  %mul227 = fmul double %171, %174
  %sub228 = fsub double %mul222, %mul227
  %175 = load double*, double** %vmptr1, align 8
  %176 = load double, double* %175, align 8
  %add229 = fadd double %176, %sub228
  store double %add229, double* %175, align 8
  %177 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %177 to i64
  %arrayidx231 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom230
  %178 = load double, double* %arrayidx231, align 8
  %179 = load i32, i32* %i, align 4
  %sub232 = sub nsw i32 0, %179
  %180 = load i32, i32* %width, align 4
  %mul233 = mul nsw i32 %sub232, %180
  %idxprom234 = sext i32 %mul233 to i64
  %181 = load i8*, i8** %sp_p1, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %181, i64 %idxprom234
  %182 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %182 to i32
  %conv237 = sitofp i32 %conv236 to double
  %mul238 = fmul double %178, %conv237
  %183 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %183 to i64
  %arrayidx240 = getelementptr inbounds [5 x double], [5 x double]* %d_p2, i32 0, i64 %idxprom239
  %184 = load double, double* %arrayidx240, align 8
  %185 = load i32, i32* %i, align 4
  %sub241 = sub nsw i32 0, %185
  %idxprom242 = sext i32 %sub241 to i64
  %186 = load double*, double** %vp2, align 8
  %arrayidx243 = getelementptr inbounds double, double* %186, i64 %idxprom242
  %187 = load double, double* %arrayidx243, align 8
  %mul244 = fmul double %184, %187
  %sub245 = fsub double %mul238, %mul244
  %188 = load double*, double** %vpptr2, align 8
  %189 = load double, double* %188, align 8
  %add246 = fadd double %189, %sub245
  store double %add246, double* %188, align 8
  %190 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %190 to i64
  %arrayidx248 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom247
  %191 = load double, double* %arrayidx248, align 8
  %192 = load i32, i32* %i, align 4
  %193 = load i32, i32* %width, align 4
  %mul249 = mul nsw i32 %192, %193
  %idxprom250 = sext i32 %mul249 to i64
  %194 = load i8*, i8** %sp_m1, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %194, i64 %idxprom250
  %195 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %195 to i32
  %conv253 = sitofp i32 %conv252 to double
  %mul254 = fmul double %191, %conv253
  %196 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %196 to i64
  %arrayidx256 = getelementptr inbounds [5 x double], [5 x double]* %d_m2, i32 0, i64 %idxprom255
  %197 = load double, double* %arrayidx256, align 8
  %198 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %198 to i64
  %199 = load double*, double** %vm2, align 8
  %arrayidx258 = getelementptr inbounds double, double* %199, i64 %idxprom257
  %200 = load double, double* %arrayidx258, align 8
  %mul259 = fmul double %197, %200
  %sub260 = fsub double %mul254, %mul259
  %201 = load double*, double** %vmptr2, align 8
  %202 = load double, double* %201, align 8
  %add261 = fadd double %202, %sub260
  store double %add261, double* %201, align 8
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.body.197
  %203 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %203, 1
  store i32 %inc263, i32* %i, align 4
  br label %for.cond.194

for.end.264:                                      ; preds = %for.cond.194
  %204 = load i32, i32* %i, align 4
  store i32 %204, i32* %j, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.305, %for.end.264
  %205 = load i32, i32* %j, align 4
  %cmp266 = icmp sle i32 %205, 4
  br i1 %cmp266, label %for.body.268, label %for.end.307

for.body.268:                                     ; preds = %for.cond.265
  %206 = load i32, i32* %j, align 4
  %idxprom269 = sext i32 %206 to i64
  %arrayidx270 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom269
  %207 = load double, double* %arrayidx270, align 8
  %208 = load i32, i32* %j, align 4
  %idxprom271 = sext i32 %208 to i64
  %arrayidx272 = getelementptr inbounds [5 x double], [5 x double]* %bd_p1, i32 0, i64 %idxprom271
  %209 = load double, double* %arrayidx272, align 8
  %sub273 = fsub double %207, %209
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 0
  %210 = load i32, i32* %arrayidx274, align 4
  %conv275 = sitofp i32 %210 to double
  %mul276 = fmul double %sub273, %conv275
  %211 = load double*, double** %vpptr1, align 8
  %212 = load double, double* %211, align 8
  %add277 = fadd double %212, %mul276
  store double %add277, double* %211, align 8
  %213 = load i32, i32* %j, align 4
  %idxprom278 = sext i32 %213 to i64
  %arrayidx279 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom278
  %214 = load double, double* %arrayidx279, align 8
  %215 = load i32, i32* %j, align 4
  %idxprom280 = sext i32 %215 to i64
  %arrayidx281 = getelementptr inbounds [5 x double], [5 x double]* %bd_m1, i32 0, i64 %idxprom280
  %216 = load double, double* %arrayidx281, align 8
  %sub282 = fsub double %214, %216
  %arrayidx283 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 0
  %217 = load i32, i32* %arrayidx283, align 4
  %conv284 = sitofp i32 %217 to double
  %mul285 = fmul double %sub282, %conv284
  %218 = load double*, double** %vmptr1, align 8
  %219 = load double, double* %218, align 8
  %add286 = fadd double %219, %mul285
  store double %add286, double* %218, align 8
  %220 = load i32, i32* %j, align 4
  %idxprom287 = sext i32 %220 to i64
  %arrayidx288 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom287
  %221 = load double, double* %arrayidx288, align 8
  %222 = load i32, i32* %j, align 4
  %idxprom289 = sext i32 %222 to i64
  %arrayidx290 = getelementptr inbounds [5 x double], [5 x double]* %bd_p2, i32 0, i64 %idxprom289
  %223 = load double, double* %arrayidx290, align 8
  %sub291 = fsub double %221, %223
  %arrayidx292 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 0
  %224 = load i32, i32* %arrayidx292, align 4
  %conv293 = sitofp i32 %224 to double
  %mul294 = fmul double %sub291, %conv293
  %225 = load double*, double** %vpptr2, align 8
  %226 = load double, double* %225, align 8
  %add295 = fadd double %226, %mul294
  store double %add295, double* %225, align 8
  %227 = load i32, i32* %j, align 4
  %idxprom296 = sext i32 %227 to i64
  %arrayidx297 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom296
  %228 = load double, double* %arrayidx297, align 8
  %229 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %229 to i64
  %arrayidx299 = getelementptr inbounds [5 x double], [5 x double]* %bd_m2, i32 0, i64 %idxprom298
  %230 = load double, double* %arrayidx299, align 8
  %sub300 = fsub double %228, %230
  %arrayidx301 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 0
  %231 = load i32, i32* %arrayidx301, align 4
  %conv302 = sitofp i32 %231 to double
  %mul303 = fmul double %sub300, %conv302
  %232 = load double*, double** %vmptr2, align 8
  %233 = load double, double* %232, align 8
  %add304 = fadd double %233, %mul303
  store double %add304, double* %232, align 8
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.268
  %234 = load i32, i32* %j, align 4
  %inc306 = add nsw i32 %234, 1
  store i32 %inc306, i32* %j, align 4
  br label %for.cond.265

for.end.307:                                      ; preds = %for.cond.265
  %235 = load i32, i32* %width, align 4
  %236 = load i8*, i8** %sp_p1, align 8
  %idx.ext308 = sext i32 %235 to i64
  %add.ptr309 = getelementptr inbounds i8, i8* %236, i64 %idx.ext308
  store i8* %add.ptr309, i8** %sp_p1, align 8
  %237 = load i32, i32* %width, align 4
  %238 = load i8*, i8** %sp_m1, align 8
  %idx.ext310 = sext i32 %237 to i64
  %idx.neg = sub i64 0, %idx.ext310
  %add.ptr311 = getelementptr inbounds i8, i8* %238, i64 %idx.neg
  store i8* %add.ptr311, i8** %sp_m1, align 8
  %239 = load double*, double** %vp1, align 8
  %add.ptr312 = getelementptr inbounds double, double* %239, i64 1
  store double* %add.ptr312, double** %vp1, align 8
  %240 = load double*, double** %vp2, align 8
  %add.ptr313 = getelementptr inbounds double, double* %240, i64 1
  store double* %add.ptr313, double** %vp2, align 8
  %241 = load double*, double** %vm1, align 8
  %add.ptr314 = getelementptr inbounds double, double* %241, i64 -1
  store double* %add.ptr314, double** %vm1, align 8
  %242 = load double*, double** %vm2, align 8
  %add.ptr315 = getelementptr inbounds double, double* %242, i64 -1
  store double* %add.ptr315, double** %vm2, align 8
  br label %for.inc.316

for.inc.316:                                      ; preds = %for.end.307
  %243 = load i32, i32* %row, align 4
  %inc317 = add nsw i32 %243, 1
  store i32 %inc317, i32* %row, align 4
  br label %for.cond.184

for.end.318:                                      ; preds = %for.cond.184
  %244 = load double*, double** %val_p1, align 8
  %245 = load double*, double** %val_m1, align 8
  %246 = load i8*, i8** %dest1, align 8
  %247 = load i32, i32* %col, align 4
  %idx.ext319 = sext i32 %247 to i64
  %add.ptr320 = getelementptr inbounds i8, i8* %246, i64 %idx.ext319
  %248 = load i32, i32* %width, align 4
  %249 = load i32, i32* %height, align 4
  call void @transfer_pixels(double* %244, double* %245, i8* %add.ptr320, i32 %248, i32 %249)
  %250 = load double*, double** %val_p2, align 8
  %251 = load double*, double** %val_m2, align 8
  %252 = load i8*, i8** %dest2, align 8
  %253 = load i32, i32* %col, align 4
  %idx.ext321 = sext i32 %253 to i64
  %add.ptr322 = getelementptr inbounds i8, i8* %252, i64 %idx.ext321
  %254 = load i32, i32* %width, align 4
  %255 = load i32, i32* %height, align 4
  call void @transfer_pixels(double* %250, double* %251, i8* %add.ptr322, i32 %254, i32 %255)
  %256 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool323 = icmp ne %struct._GimpPreview* %256, null
  br i1 %tobool323, label %if.end.334, label %if.then.324

if.then.324:                                      ; preds = %for.end.318
  %257 = load i32, i32* %height, align 4
  %258 = load i32, i32* %progress, align 4
  %add325 = add nsw i32 %258, %257
  store i32 %add325, i32* %progress, align 4
  %259 = load i32, i32* %col, align 4
  %rem = srem i32 %259, 5
  %cmp326 = icmp eq i32 %rem, 0
  br i1 %cmp326, label %if.then.328, label %if.end.333

if.then.328:                                      ; preds = %if.then.324
  %260 = load i32, i32* %progress, align 4
  %conv329 = sitofp i32 %260 to double
  %261 = load i32, i32* %max_progress, align 4
  %conv330 = sitofp i32 %261 to double
  %div331 = fdiv double %conv329, %conv330
  %call332 = call i32 @gimp_progress_update(double %div331)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.328, %if.then.324
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %for.end.318
  br label %for.inc.335

for.inc.335:                                      ; preds = %if.end.334
  %262 = load i32, i32* %col, align 4
  %inc336 = add nsw i32 %262, 1
  store i32 %inc336, i32* %col, align 4
  br label %for.cond.154

for.end.337:                                      ; preds = %for.cond.154
  store i32 0, i32* %row, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.533, %for.end.337
  %263 = load i32, i32* %row, align 4
  %264 = load i32, i32* %height, align 4
  %cmp339 = icmp slt i32 %263, %264
  br i1 %cmp339, label %for.body.341, label %for.end.535

for.body.341:                                     ; preds = %for.cond.338
  %265 = load double*, double** %val_p1, align 8
  %266 = bitcast double* %265 to i8*
  %267 = load i32, i32* %width, align 4
  %conv342 = sext i32 %267 to i64
  %mul343 = mul i64 %conv342, 8
  call void @llvm.memset.p0i8.i64(i8* %266, i8 0, i64 %mul343, i32 8, i1 false)
  %268 = load double*, double** %val_p2, align 8
  %269 = bitcast double* %268 to i8*
  %270 = load i32, i32* %width, align 4
  %conv344 = sext i32 %270 to i64
  %mul345 = mul i64 %conv344, 8
  call void @llvm.memset.p0i8.i64(i8* %269, i8 0, i64 %mul345, i32 8, i1 false)
  %271 = load double*, double** %val_m1, align 8
  %272 = bitcast double* %271 to i8*
  %273 = load i32, i32* %width, align 4
  %conv346 = sext i32 %273 to i64
  %mul347 = mul i64 %conv346, 8
  call void @llvm.memset.p0i8.i64(i8* %272, i8 0, i64 %mul347, i32 8, i1 false)
  %274 = load double*, double** %val_m2, align 8
  %275 = bitcast double* %274 to i8*
  %276 = load i32, i32* %width, align 4
  %conv348 = sext i32 %276 to i64
  %mul349 = mul i64 %conv348, 8
  call void @llvm.memset.p0i8.i64(i8* %275, i8 0, i64 %mul349, i32 8, i1 false)
  %277 = load i8*, i8** %dest1, align 8
  %278 = load i32, i32* %row, align 4
  %279 = load i32, i32* %width, align 4
  %mul350 = mul nsw i32 %278, %279
  %idx.ext351 = sext i32 %mul350 to i64
  %add.ptr352 = getelementptr inbounds i8, i8* %277, i64 %idx.ext351
  store i8* %add.ptr352, i8** %src1, align 8
  %280 = load i8*, i8** %dest2, align 8
  %281 = load i32, i32* %row, align 4
  %282 = load i32, i32* %width, align 4
  %mul353 = mul nsw i32 %281, %282
  %idx.ext354 = sext i32 %mul353 to i64
  %add.ptr355 = getelementptr inbounds i8, i8* %280, i64 %idx.ext354
  store i8* %add.ptr355, i8** %src2, align 8
  %283 = load i8*, i8** %src1, align 8
  store i8* %283, i8** %sp_p1, align 8
  %284 = load i8*, i8** %src2, align 8
  store i8* %284, i8** %sp_p2, align 8
  %285 = load i8*, i8** %src1, align 8
  %286 = load i32, i32* %width, align 4
  %idx.ext356 = sext i32 %286 to i64
  %add.ptr357 = getelementptr inbounds i8, i8* %285, i64 %idx.ext356
  %add.ptr358 = getelementptr inbounds i8, i8* %add.ptr357, i64 -1
  store i8* %add.ptr358, i8** %sp_m1, align 8
  %287 = load i8*, i8** %src2, align 8
  %288 = load i32, i32* %width, align 4
  %idx.ext359 = sext i32 %288 to i64
  %add.ptr360 = getelementptr inbounds i8, i8* %287, i64 %idx.ext359
  %add.ptr361 = getelementptr inbounds i8, i8* %add.ptr360, i64 -1
  store i8* %add.ptr361, i8** %sp_m2, align 8
  %289 = load double*, double** %val_p1, align 8
  store double* %289, double** %vp1, align 8
  %290 = load double*, double** %val_p2, align 8
  store double* %290, double** %vp2, align 8
  %291 = load double*, double** %val_m1, align 8
  %292 = load i32, i32* %width, align 4
  %idx.ext362 = sext i32 %292 to i64
  %add.ptr363 = getelementptr inbounds double, double* %291, i64 %idx.ext362
  %add.ptr364 = getelementptr inbounds double, double* %add.ptr363, i64 -1
  store double* %add.ptr364, double** %vm1, align 8
  %293 = load double*, double** %val_m2, align 8
  %294 = load i32, i32* %width, align 4
  %idx.ext365 = sext i32 %294 to i64
  %add.ptr366 = getelementptr inbounds double, double* %293, i64 %idx.ext365
  %add.ptr367 = getelementptr inbounds double, double* %add.ptr366, i64 -1
  store double* %add.ptr367, double** %vm2, align 8
  %295 = load i8*, i8** %sp_p1, align 8
  %arrayidx368 = getelementptr inbounds i8, i8* %295, i64 0
  %296 = load i8, i8* %arrayidx368, align 1
  %conv369 = zext i8 %296 to i32
  %arrayidx370 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 0
  store i32 %conv369, i32* %arrayidx370, align 4
  %297 = load i8*, i8** %sp_p2, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %297, i64 0
  %298 = load i8, i8* %arrayidx371, align 1
  %conv372 = zext i8 %298 to i32
  %arrayidx373 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p2, i32 0, i64 0
  store i32 %conv372, i32* %arrayidx373, align 4
  %299 = load i8*, i8** %sp_m1, align 8
  %arrayidx374 = getelementptr inbounds i8, i8* %299, i64 0
  %300 = load i8, i8* %arrayidx374, align 1
  %conv375 = zext i8 %300 to i32
  %arrayidx376 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 0
  store i32 %conv375, i32* %arrayidx376, align 4
  %301 = load i8*, i8** %sp_m2, align 8
  %arrayidx377 = getelementptr inbounds i8, i8* %301, i64 0
  %302 = load i8, i8* %arrayidx377, align 1
  %conv378 = zext i8 %302 to i32
  %arrayidx379 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m2, i32 0, i64 0
  store i32 %conv378, i32* %arrayidx379, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.511, %for.body.341
  %303 = load i32, i32* %col, align 4
  %304 = load i32, i32* %width, align 4
  %cmp381 = icmp slt i32 %303, %304
  br i1 %cmp381, label %for.body.383, label %for.end.513

for.body.383:                                     ; preds = %for.cond.380
  %305 = load i32, i32* %col, align 4
  %cmp388 = icmp slt i32 %305, 4
  br i1 %cmp388, label %cond.true.390, label %cond.false.391

cond.true.390:                                    ; preds = %for.body.383
  %306 = load i32, i32* %col, align 4
  br label %cond.end.392

cond.false.391:                                   ; preds = %for.body.383
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.false.391, %cond.true.390
  %cond393 = phi i32 [ %306, %cond.true.390 ], [ 4, %cond.false.391 ]
  store i32 %cond393, i32* %terms, align 4
  %307 = load double*, double** %vp1, align 8
  store double* %307, double** %vpptr1384, align 8
  %308 = load double*, double** %vm1, align 8
  store double* %308, double** %vmptr1385, align 8
  %309 = load double*, double** %vp2, align 8
  store double* %309, double** %vpptr2386, align 8
  %310 = load double*, double** %vm2, align 8
  store double* %310, double** %vmptr2387, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.394

for.cond.394:                                     ; preds = %for.inc.458, %cond.end.392
  %311 = load i32, i32* %i, align 4
  %312 = load i32, i32* %terms, align 4
  %cmp395 = icmp sle i32 %311, %312
  br i1 %cmp395, label %for.body.397, label %for.end.460

for.body.397:                                     ; preds = %for.cond.394
  %313 = load i32, i32* %i, align 4
  %idxprom398 = sext i32 %313 to i64
  %arrayidx399 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom398
  %314 = load double, double* %arrayidx399, align 8
  %315 = load i32, i32* %i, align 4
  %sub400 = sub nsw i32 0, %315
  %idxprom401 = sext i32 %sub400 to i64
  %316 = load i8*, i8** %sp_p1, align 8
  %arrayidx402 = getelementptr inbounds i8, i8* %316, i64 %idxprom401
  %317 = load i8, i8* %arrayidx402, align 1
  %conv403 = zext i8 %317 to i32
  %conv404 = sitofp i32 %conv403 to double
  %mul405 = fmul double %314, %conv404
  %318 = load i32, i32* %i, align 4
  %idxprom406 = sext i32 %318 to i64
  %arrayidx407 = getelementptr inbounds [5 x double], [5 x double]* %d_p1, i32 0, i64 %idxprom406
  %319 = load double, double* %arrayidx407, align 8
  %320 = load i32, i32* %i, align 4
  %sub408 = sub nsw i32 0, %320
  %idxprom409 = sext i32 %sub408 to i64
  %321 = load double*, double** %vp1, align 8
  %arrayidx410 = getelementptr inbounds double, double* %321, i64 %idxprom409
  %322 = load double, double* %arrayidx410, align 8
  %mul411 = fmul double %319, %322
  %sub412 = fsub double %mul405, %mul411
  %323 = load double*, double** %vpptr1384, align 8
  %324 = load double, double* %323, align 8
  %add413 = fadd double %324, %sub412
  store double %add413, double* %323, align 8
  %325 = load i32, i32* %i, align 4
  %idxprom414 = sext i32 %325 to i64
  %arrayidx415 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom414
  %326 = load double, double* %arrayidx415, align 8
  %327 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %327 to i64
  %328 = load i8*, i8** %sp_m1, align 8
  %arrayidx417 = getelementptr inbounds i8, i8* %328, i64 %idxprom416
  %329 = load i8, i8* %arrayidx417, align 1
  %conv418 = zext i8 %329 to i32
  %conv419 = sitofp i32 %conv418 to double
  %mul420 = fmul double %326, %conv419
  %330 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %330 to i64
  %arrayidx422 = getelementptr inbounds [5 x double], [5 x double]* %d_m1, i32 0, i64 %idxprom421
  %331 = load double, double* %arrayidx422, align 8
  %332 = load i32, i32* %i, align 4
  %idxprom423 = sext i32 %332 to i64
  %333 = load double*, double** %vm1, align 8
  %arrayidx424 = getelementptr inbounds double, double* %333, i64 %idxprom423
  %334 = load double, double* %arrayidx424, align 8
  %mul425 = fmul double %331, %334
  %sub426 = fsub double %mul420, %mul425
  %335 = load double*, double** %vmptr1385, align 8
  %336 = load double, double* %335, align 8
  %add427 = fadd double %336, %sub426
  store double %add427, double* %335, align 8
  %337 = load i32, i32* %i, align 4
  %idxprom428 = sext i32 %337 to i64
  %arrayidx429 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom428
  %338 = load double, double* %arrayidx429, align 8
  %339 = load i32, i32* %i, align 4
  %sub430 = sub nsw i32 0, %339
  %idxprom431 = sext i32 %sub430 to i64
  %340 = load i8*, i8** %sp_p2, align 8
  %arrayidx432 = getelementptr inbounds i8, i8* %340, i64 %idxprom431
  %341 = load i8, i8* %arrayidx432, align 1
  %conv433 = zext i8 %341 to i32
  %conv434 = sitofp i32 %conv433 to double
  %mul435 = fmul double %338, %conv434
  %342 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %342 to i64
  %arrayidx437 = getelementptr inbounds [5 x double], [5 x double]* %d_p2, i32 0, i64 %idxprom436
  %343 = load double, double* %arrayidx437, align 8
  %344 = load i32, i32* %i, align 4
  %sub438 = sub nsw i32 0, %344
  %idxprom439 = sext i32 %sub438 to i64
  %345 = load double*, double** %vp2, align 8
  %arrayidx440 = getelementptr inbounds double, double* %345, i64 %idxprom439
  %346 = load double, double* %arrayidx440, align 8
  %mul441 = fmul double %343, %346
  %sub442 = fsub double %mul435, %mul441
  %347 = load double*, double** %vpptr2386, align 8
  %348 = load double, double* %347, align 8
  %add443 = fadd double %348, %sub442
  store double %add443, double* %347, align 8
  %349 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %349 to i64
  %arrayidx445 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom444
  %350 = load double, double* %arrayidx445, align 8
  %351 = load i32, i32* %i, align 4
  %idxprom446 = sext i32 %351 to i64
  %352 = load i8*, i8** %sp_m2, align 8
  %arrayidx447 = getelementptr inbounds i8, i8* %352, i64 %idxprom446
  %353 = load i8, i8* %arrayidx447, align 1
  %conv448 = zext i8 %353 to i32
  %conv449 = sitofp i32 %conv448 to double
  %mul450 = fmul double %350, %conv449
  %354 = load i32, i32* %i, align 4
  %idxprom451 = sext i32 %354 to i64
  %arrayidx452 = getelementptr inbounds [5 x double], [5 x double]* %d_m2, i32 0, i64 %idxprom451
  %355 = load double, double* %arrayidx452, align 8
  %356 = load i32, i32* %i, align 4
  %idxprom453 = sext i32 %356 to i64
  %357 = load double*, double** %vm2, align 8
  %arrayidx454 = getelementptr inbounds double, double* %357, i64 %idxprom453
  %358 = load double, double* %arrayidx454, align 8
  %mul455 = fmul double %355, %358
  %sub456 = fsub double %mul450, %mul455
  %359 = load double*, double** %vmptr2387, align 8
  %360 = load double, double* %359, align 8
  %add457 = fadd double %360, %sub456
  store double %add457, double* %359, align 8
  br label %for.inc.458

for.inc.458:                                      ; preds = %for.body.397
  %361 = load i32, i32* %i, align 4
  %inc459 = add nsw i32 %361, 1
  store i32 %inc459, i32* %i, align 4
  br label %for.cond.394

for.end.460:                                      ; preds = %for.cond.394
  %362 = load i32, i32* %i, align 4
  store i32 %362, i32* %j, align 4
  br label %for.cond.461

for.cond.461:                                     ; preds = %for.inc.501, %for.end.460
  %363 = load i32, i32* %j, align 4
  %cmp462 = icmp sle i32 %363, 4
  br i1 %cmp462, label %for.body.464, label %for.end.503

for.body.464:                                     ; preds = %for.cond.461
  %364 = load i32, i32* %j, align 4
  %idxprom465 = sext i32 %364 to i64
  %arrayidx466 = getelementptr inbounds [5 x double], [5 x double]* %n_p1, i32 0, i64 %idxprom465
  %365 = load double, double* %arrayidx466, align 8
  %366 = load i32, i32* %j, align 4
  %idxprom467 = sext i32 %366 to i64
  %arrayidx468 = getelementptr inbounds [5 x double], [5 x double]* %bd_p1, i32 0, i64 %idxprom467
  %367 = load double, double* %arrayidx468, align 8
  %sub469 = fsub double %365, %367
  %arrayidx470 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p1, i32 0, i64 0
  %368 = load i32, i32* %arrayidx470, align 4
  %conv471 = sitofp i32 %368 to double
  %mul472 = fmul double %sub469, %conv471
  %369 = load double*, double** %vpptr1384, align 8
  %370 = load double, double* %369, align 8
  %add473 = fadd double %370, %mul472
  store double %add473, double* %369, align 8
  %371 = load i32, i32* %j, align 4
  %idxprom474 = sext i32 %371 to i64
  %arrayidx475 = getelementptr inbounds [5 x double], [5 x double]* %n_m1, i32 0, i64 %idxprom474
  %372 = load double, double* %arrayidx475, align 8
  %373 = load i32, i32* %j, align 4
  %idxprom476 = sext i32 %373 to i64
  %arrayidx477 = getelementptr inbounds [5 x double], [5 x double]* %bd_m1, i32 0, i64 %idxprom476
  %374 = load double, double* %arrayidx477, align 8
  %sub478 = fsub double %372, %374
  %arrayidx479 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m1, i32 0, i64 0
  %375 = load i32, i32* %arrayidx479, align 4
  %conv480 = sitofp i32 %375 to double
  %mul481 = fmul double %sub478, %conv480
  %376 = load double*, double** %vmptr1385, align 8
  %377 = load double, double* %376, align 8
  %add482 = fadd double %377, %mul481
  store double %add482, double* %376, align 8
  %378 = load i32, i32* %j, align 4
  %idxprom483 = sext i32 %378 to i64
  %arrayidx484 = getelementptr inbounds [5 x double], [5 x double]* %n_p2, i32 0, i64 %idxprom483
  %379 = load double, double* %arrayidx484, align 8
  %380 = load i32, i32* %j, align 4
  %idxprom485 = sext i32 %380 to i64
  %arrayidx486 = getelementptr inbounds [5 x double], [5 x double]* %bd_p2, i32 0, i64 %idxprom485
  %381 = load double, double* %arrayidx486, align 8
  %sub487 = fsub double %379, %381
  %arrayidx488 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p2, i32 0, i64 0
  %382 = load i32, i32* %arrayidx488, align 4
  %conv489 = sitofp i32 %382 to double
  %mul490 = fmul double %sub487, %conv489
  %383 = load double*, double** %vpptr2386, align 8
  %384 = load double, double* %383, align 8
  %add491 = fadd double %384, %mul490
  store double %add491, double* %383, align 8
  %385 = load i32, i32* %j, align 4
  %idxprom492 = sext i32 %385 to i64
  %arrayidx493 = getelementptr inbounds [5 x double], [5 x double]* %n_m2, i32 0, i64 %idxprom492
  %386 = load double, double* %arrayidx493, align 8
  %387 = load i32, i32* %j, align 4
  %idxprom494 = sext i32 %387 to i64
  %arrayidx495 = getelementptr inbounds [5 x double], [5 x double]* %bd_m2, i32 0, i64 %idxprom494
  %388 = load double, double* %arrayidx495, align 8
  %sub496 = fsub double %386, %388
  %arrayidx497 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m2, i32 0, i64 0
  %389 = load i32, i32* %arrayidx497, align 4
  %conv498 = sitofp i32 %389 to double
  %mul499 = fmul double %sub496, %conv498
  %390 = load double*, double** %vmptr2387, align 8
  %391 = load double, double* %390, align 8
  %add500 = fadd double %391, %mul499
  store double %add500, double* %390, align 8
  br label %for.inc.501

for.inc.501:                                      ; preds = %for.body.464
  %392 = load i32, i32* %j, align 4
  %inc502 = add nsw i32 %392, 1
  store i32 %inc502, i32* %j, align 4
  br label %for.cond.461

for.end.503:                                      ; preds = %for.cond.461
  %393 = load i8*, i8** %sp_p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %incdec.ptr, i8** %sp_p1, align 8
  %394 = load i8*, i8** %sp_p2, align 8
  %incdec.ptr504 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %incdec.ptr504, i8** %sp_p2, align 8
  %395 = load i8*, i8** %sp_m1, align 8
  %incdec.ptr505 = getelementptr inbounds i8, i8* %395, i32 -1
  store i8* %incdec.ptr505, i8** %sp_m1, align 8
  %396 = load i8*, i8** %sp_m2, align 8
  %incdec.ptr506 = getelementptr inbounds i8, i8* %396, i32 -1
  store i8* %incdec.ptr506, i8** %sp_m2, align 8
  %397 = load double*, double** %vp1, align 8
  %incdec.ptr507 = getelementptr inbounds double, double* %397, i32 1
  store double* %incdec.ptr507, double** %vp1, align 8
  %398 = load double*, double** %vp2, align 8
  %incdec.ptr508 = getelementptr inbounds double, double* %398, i32 1
  store double* %incdec.ptr508, double** %vp2, align 8
  %399 = load double*, double** %vm1, align 8
  %incdec.ptr509 = getelementptr inbounds double, double* %399, i32 -1
  store double* %incdec.ptr509, double** %vm1, align 8
  %400 = load double*, double** %vm2, align 8
  %incdec.ptr510 = getelementptr inbounds double, double* %400, i32 -1
  store double* %incdec.ptr510, double** %vm2, align 8
  br label %for.inc.511

for.inc.511:                                      ; preds = %for.end.503
  %401 = load i32, i32* %col, align 4
  %inc512 = add nsw i32 %401, 1
  store i32 %inc512, i32* %col, align 4
  br label %for.cond.380

for.end.513:                                      ; preds = %for.cond.380
  %402 = load double*, double** %val_p1, align 8
  %403 = load double*, double** %val_m1, align 8
  %404 = load i8*, i8** %dest1, align 8
  %405 = load i32, i32* %row, align 4
  %406 = load i32, i32* %width, align 4
  %mul514 = mul nsw i32 %405, %406
  %idx.ext515 = sext i32 %mul514 to i64
  %add.ptr516 = getelementptr inbounds i8, i8* %404, i64 %idx.ext515
  %407 = load i32, i32* %width, align 4
  call void @transfer_pixels(double* %402, double* %403, i8* %add.ptr516, i32 1, i32 %407)
  %408 = load double*, double** %val_p2, align 8
  %409 = load double*, double** %val_m2, align 8
  %410 = load i8*, i8** %dest2, align 8
  %411 = load i32, i32* %row, align 4
  %412 = load i32, i32* %width, align 4
  %mul517 = mul nsw i32 %411, %412
  %idx.ext518 = sext i32 %mul517 to i64
  %add.ptr519 = getelementptr inbounds i8, i8* %410, i64 %idx.ext518
  %413 = load i32, i32* %width, align 4
  call void @transfer_pixels(double* %408, double* %409, i8* %add.ptr519, i32 1, i32 %413)
  %414 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool520 = icmp ne %struct._GimpPreview* %414, null
  br i1 %tobool520, label %if.end.532, label %if.then.521

if.then.521:                                      ; preds = %for.end.513
  %415 = load i32, i32* %width, align 4
  %416 = load i32, i32* %progress, align 4
  %add522 = add nsw i32 %416, %415
  store i32 %add522, i32* %progress, align 4
  %417 = load i32, i32* %row, align 4
  %rem523 = srem i32 %417, 5
  %cmp524 = icmp eq i32 %rem523, 0
  br i1 %cmp524, label %if.then.526, label %if.end.531

if.then.526:                                      ; preds = %if.then.521
  %418 = load i32, i32* %progress, align 4
  %conv527 = sitofp i32 %418 to double
  %419 = load i32, i32* %max_progress, align 4
  %conv528 = sitofp i32 %419 to double
  %div529 = fdiv double %conv527, %conv528
  %call530 = call i32 @gimp_progress_update(double %div529)
  br label %if.end.531

if.end.531:                                       ; preds = %if.then.526, %if.then.521
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.531, %for.end.513
  br label %for.inc.533

for.inc.533:                                      ; preds = %if.end.532
  %420 = load i32, i32* %row, align 4
  %inc534 = add nsw i32 %420, 1
  store i32 %inc534, i32* %row, align 4
  br label %for.cond.338

for.end.535:                                      ; preds = %for.cond.338
  %421 = load i8*, i8** %dest1, align 8
  %422 = load i8*, i8** %dest2, align 8
  %423 = load i32, i32* %width, align 4
  %424 = load i32, i32* %height, align 4
  %mul536 = mul nsw i32 %423, %424
  %425 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 3), align 8
  %call537 = call double @compute_ramp(i8* %421, i8* %422, i32 %mul536, double %425, i32 1)
  store double %call537, double* %ramp_down, align 8
  %426 = load i8*, i8** %dest1, align 8
  %427 = load i8*, i8** %dest2, align 8
  %428 = load i32, i32* %width, align 4
  %429 = load i32, i32* %height, align 4
  %mul538 = mul nsw i32 %428, %429
  %430 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 4), align 8
  %sub539 = fsub double 1.000000e+00, %430
  %call540 = call double @compute_ramp(i8* %426, i8* %427, i32 %mul538, double %sub539, i32 0)
  store double %call540, double* %ramp_up, align 8
  %431 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %432 = load i32, i32* %x1, align 4
  %433 = load i32, i32* %y1, align 4
  %434 = load i32, i32* %width, align 4
  %435 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %431, i32 %432, i32 %433, i32 %434, i32 %435, i32 0, i32 0)
  %436 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %437 = load i32, i32* %x1, align 4
  %438 = load i32, i32* %y1, align 4
  %439 = load i32, i32* %width, align 4
  %440 = load i32, i32* %height, align 4
  %441 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp541 = icmp eq %struct._GimpPreview* %441, null
  %conv542 = zext i1 %cmp541 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %436, i32 %437, i32 %438, i32 %439, i32 %440, i32 %conv542, i32 1)
  %call543 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  %442 = bitcast i8* %call543 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %442, %struct._GimpPixelRgn** %pr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.750, %for.end.535
  %443 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %tobool544 = icmp ne %struct._GimpPixelRgn* %443, null
  br i1 %tobool544, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %data546 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %444 = load i8*, i8** %data546, align 8
  store i8* %444, i8** %src_ptr545, align 8
  %data548 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %445 = load i8*, i8** %data548, align 8
  store i8* %445, i8** %dest_ptr547, align 8
  %446 = load i8*, i8** %dest1, align 8
  %y549 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %447 = load i32, i32* %y549, align 4
  %448 = load i32, i32* %y1, align 4
  %sub550 = sub nsw i32 %447, %448
  %449 = load i32, i32* %width, align 4
  %mul551 = mul nsw i32 %sub550, %449
  %idx.ext552 = sext i32 %mul551 to i64
  %add.ptr553 = getelementptr inbounds i8, i8* %446, i64 %idx.ext552
  %x554 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %450 = load i32, i32* %x554, align 4
  %451 = load i32, i32* %x1, align 4
  %sub555 = sub nsw i32 %450, %451
  %idx.ext556 = sext i32 %sub555 to i64
  %add.ptr557 = getelementptr inbounds i8, i8* %add.ptr553, i64 %idx.ext556
  store i8* %add.ptr557, i8** %blur_ptr, align 8
  %452 = load i8*, i8** %dest2, align 8
  %y558 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %453 = load i32, i32* %y558, align 4
  %454 = load i32, i32* %y1, align 4
  %sub559 = sub nsw i32 %453, %454
  %455 = load i32, i32* %width, align 4
  %mul560 = mul nsw i32 %sub559, %455
  %idx.ext561 = sext i32 %mul560 to i64
  %add.ptr562 = getelementptr inbounds i8, i8* %452, i64 %idx.ext561
  %x563 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %456 = load i32, i32* %x563, align 4
  %457 = load i32, i32* %x1, align 4
  %sub564 = sub nsw i32 %456, %457
  %idx.ext565 = sext i32 %sub564 to i64
  %add.ptr566 = getelementptr inbounds i8, i8* %add.ptr562, i64 %idx.ext565
  store i8* %add.ptr566, i8** %avg_ptr, align 8
  store double 0.000000e+00, double* %lightness, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.567

for.cond.567:                                     ; preds = %for.inc.734, %while.body
  %458 = load i32, i32* %row, align 4
  %h568 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %459 = load i32, i32* %h568, align 4
  %cmp569 = icmp slt i32 %458, %459
  br i1 %cmp569, label %for.body.571, label %for.end.736

for.body.571:                                     ; preds = %for.cond.567
  store i32 0, i32* %col, align 4
  br label %for.cond.572

for.cond.572:                                     ; preds = %for.inc.721, %for.body.571
  %460 = load i32, i32* %col, align 4
  %w573 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %461 = load i32, i32* %w573, align 4
  %cmp574 = icmp slt i32 %460, %461
  br i1 %cmp574, label %for.body.576, label %for.end.723

for.body.576:                                     ; preds = %for.cond.572
  %462 = load i32, i32* %col, align 4
  %idxprom577 = sext i32 %462 to i64
  %463 = load i8*, i8** %avg_ptr, align 8
  %arrayidx578 = getelementptr inbounds i8, i8* %463, i64 %idxprom577
  %464 = load i8, i8* %arrayidx578, align 1
  %conv579 = zext i8 %464 to i32
  %cmp580 = icmp sgt i32 %conv579, 2
  br i1 %cmp580, label %if.then.582, label %if.else.671

if.then.582:                                      ; preds = %for.body.576
  %465 = load i32, i32* %col, align 4
  %idxprom583 = sext i32 %465 to i64
  %466 = load i8*, i8** %blur_ptr, align 8
  %arrayidx584 = getelementptr inbounds i8, i8* %466, i64 %idxprom583
  %467 = load i8, i8* %arrayidx584, align 1
  %conv585 = uitofp i8 %467 to double
  %468 = load i32, i32* %col, align 4
  %idxprom586 = sext i32 %468 to i64
  %469 = load i8*, i8** %avg_ptr, align 8
  %arrayidx587 = getelementptr inbounds i8, i8* %469, i64 %idxprom586
  %470 = load i8, i8* %arrayidx587, align 1
  %conv588 = uitofp i8 %470 to double
  %div589 = fdiv double %conv585, %conv588
  store double %div589, double* %diff, align 8
  %471 = load double, double* %diff, align 8
  %472 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %cmp590 = fcmp olt double %471, %472
  br i1 %cmp590, label %if.then.592, label %if.else.635

if.then.592:                                      ; preds = %if.then.582
  %473 = load double, double* %ramp_down, align 8
  %cmp593 = fcmp oeq double %473, 0.000000e+00
  br i1 %cmp593, label %if.then.595, label %if.else.596

if.then.595:                                      ; preds = %if.then.592
  store double 0.000000e+00, double* %mult, align 8
  br label %if.end.607

if.else.596:                                      ; preds = %if.then.592
  %474 = load double, double* %ramp_down, align 8
  %475 = load double, double* %ramp_down, align 8
  %476 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %477 = load double, double* %diff, align 8
  %sub597 = fsub double %476, %477
  %cmp598 = fcmp olt double %475, %sub597
  br i1 %cmp598, label %cond.true.600, label %cond.false.601

cond.true.600:                                    ; preds = %if.else.596
  %478 = load double, double* %ramp_down, align 8
  br label %cond.end.603

cond.false.601:                                   ; preds = %if.else.596
  %479 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %480 = load double, double* %diff, align 8
  %sub602 = fsub double %479, %480
  br label %cond.end.603

cond.end.603:                                     ; preds = %cond.false.601, %cond.true.600
  %cond604 = phi double [ %478, %cond.true.600 ], [ %sub602, %cond.false.601 ]
  %sub605 = fsub double %474, %cond604
  %481 = load double, double* %ramp_down, align 8
  %div606 = fdiv double %sub605, %481
  store double %div606, double* %mult, align 8
  br label %if.end.607

if.end.607:                                       ; preds = %cond.end.603, %if.then.595
  %482 = load i32, i32* %col, align 4
  %idxprom608 = sext i32 %482 to i64
  %483 = load i8*, i8** %blur_ptr, align 8
  %arrayidx609 = getelementptr inbounds i8, i8* %483, i64 %idxprom608
  %484 = load i8, i8* %arrayidx609, align 1
  %conv610 = zext i8 %484 to i32
  %conv611 = sitofp i32 %conv610 to double
  %485 = load double, double* %mult, align 8
  %mul612 = fmul double %conv611, %485
  %cmp613 = fcmp ogt double %mul612, 2.550000e+02
  br i1 %cmp613, label %cond.true.615, label %cond.false.616

cond.true.615:                                    ; preds = %if.end.607
  br label %cond.end.633

cond.false.616:                                   ; preds = %if.end.607
  %486 = load i32, i32* %col, align 4
  %idxprom617 = sext i32 %486 to i64
  %487 = load i8*, i8** %blur_ptr, align 8
  %arrayidx618 = getelementptr inbounds i8, i8* %487, i64 %idxprom617
  %488 = load i8, i8* %arrayidx618, align 1
  %conv619 = zext i8 %488 to i32
  %conv620 = sitofp i32 %conv619 to double
  %489 = load double, double* %mult, align 8
  %mul621 = fmul double %conv620, %489
  %cmp622 = fcmp olt double %mul621, 0.000000e+00
  br i1 %cmp622, label %cond.true.624, label %cond.false.625

cond.true.624:                                    ; preds = %cond.false.616
  br label %cond.end.631

cond.false.625:                                   ; preds = %cond.false.616
  %490 = load i32, i32* %col, align 4
  %idxprom626 = sext i32 %490 to i64
  %491 = load i8*, i8** %blur_ptr, align 8
  %arrayidx627 = getelementptr inbounds i8, i8* %491, i64 %idxprom626
  %492 = load i8, i8* %arrayidx627, align 1
  %conv628 = zext i8 %492 to i32
  %conv629 = sitofp i32 %conv628 to double
  %493 = load double, double* %mult, align 8
  %mul630 = fmul double %conv629, %493
  br label %cond.end.631

cond.end.631:                                     ; preds = %cond.false.625, %cond.true.624
  %cond632 = phi double [ 0.000000e+00, %cond.true.624 ], [ %mul630, %cond.false.625 ]
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.end.631, %cond.true.615
  %cond634 = phi double [ 2.550000e+02, %cond.true.615 ], [ %cond632, %cond.end.631 ]
  store double %cond634, double* %lightness, align 8
  br label %if.end.670

if.else.635:                                      ; preds = %if.then.582
  %494 = load double, double* %ramp_up, align 8
  %cmp636 = fcmp oeq double %494, 0.000000e+00
  br i1 %cmp636, label %if.then.638, label %if.else.639

if.then.638:                                      ; preds = %if.else.635
  store double 1.000000e+00, double* %mult, align 8
  br label %if.end.649

if.else.639:                                      ; preds = %if.else.635
  %495 = load double, double* %ramp_up, align 8
  %496 = load double, double* %diff, align 8
  %497 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %sub640 = fsub double %496, %497
  %cmp641 = fcmp olt double %495, %sub640
  br i1 %cmp641, label %cond.true.643, label %cond.false.644

cond.true.643:                                    ; preds = %if.else.639
  %498 = load double, double* %ramp_up, align 8
  br label %cond.end.646

cond.false.644:                                   ; preds = %if.else.639
  %499 = load double, double* %diff, align 8
  %500 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %sub645 = fsub double %499, %500
  br label %cond.end.646

cond.end.646:                                     ; preds = %cond.false.644, %cond.true.643
  %cond647 = phi double [ %498, %cond.true.643 ], [ %sub645, %cond.false.644 ]
  %501 = load double, double* %ramp_up, align 8
  %div648 = fdiv double %cond647, %501
  store double %div648, double* %mult, align 8
  br label %if.end.649

if.end.649:                                       ; preds = %cond.end.646, %if.then.638
  %502 = load double, double* %mult, align 8
  %sub650 = fsub double 1.000000e+00, %502
  %503 = load i32, i32* %col, align 4
  %idxprom651 = sext i32 %503 to i64
  %504 = load i8*, i8** %blur_ptr, align 8
  %arrayidx652 = getelementptr inbounds i8, i8* %504, i64 %idxprom651
  %505 = load i8, i8* %arrayidx652, align 1
  %conv653 = zext i8 %505 to i32
  %sub654 = sub nsw i32 255, %conv653
  %conv655 = sitofp i32 %sub654 to double
  %mul656 = fmul double %sub650, %conv655
  %sub657 = fsub double 2.550000e+02, %mul656
  store double %sub657, double* %lightness, align 8
  %506 = load double, double* %lightness, align 8
  %cmp658 = fcmp ogt double %506, 2.550000e+02
  br i1 %cmp658, label %cond.true.660, label %cond.false.661

cond.true.660:                                    ; preds = %if.end.649
  br label %cond.end.668

cond.false.661:                                   ; preds = %if.end.649
  %507 = load double, double* %lightness, align 8
  %cmp662 = fcmp olt double %507, 0.000000e+00
  br i1 %cmp662, label %cond.true.664, label %cond.false.665

cond.true.664:                                    ; preds = %cond.false.661
  br label %cond.end.666

cond.false.665:                                   ; preds = %cond.false.661
  %508 = load double, double* %lightness, align 8
  br label %cond.end.666

cond.end.666:                                     ; preds = %cond.false.665, %cond.true.664
  %cond667 = phi double [ 0.000000e+00, %cond.true.664 ], [ %508, %cond.false.665 ]
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.end.666, %cond.true.660
  %cond669 = phi double [ 2.550000e+02, %cond.true.660 ], [ %cond667, %cond.end.666 ]
  store double %cond669, double* %lightness, align 8
  br label %if.end.670

if.end.670:                                       ; preds = %cond.end.668, %cond.end.633
  br label %if.end.672

if.else.671:                                      ; preds = %for.body.576
  store double 0.000000e+00, double* %lightness, align 8
  br label %if.end.672

if.end.672:                                       ; preds = %if.else.671, %if.end.670
  %509 = load i32, i32* %bytes, align 4
  %cmp673 = icmp slt i32 %509, 3
  br i1 %cmp673, label %if.then.675, label %if.else.692

if.then.675:                                      ; preds = %if.end.672
  %510 = load double, double* %lightness, align 8
  %conv676 = fptoui double %510 to i8
  %511 = load i32, i32* %col, align 4
  %512 = load i32, i32* %bytes, align 4
  %mul677 = mul nsw i32 %511, %512
  %idxprom678 = sext i32 %mul677 to i64
  %513 = load i8*, i8** %dest_ptr547, align 8
  %arrayidx679 = getelementptr inbounds i8, i8* %513, i64 %idxprom678
  store i8 %conv676, i8* %arrayidx679, align 1
  %514 = load i32, i32* %has_alpha, align 4
  %tobool680 = icmp ne i32 %514, 0
  br i1 %tobool680, label %if.then.681, label %if.end.691

if.then.681:                                      ; preds = %if.then.675
  %515 = load i32, i32* %col, align 4
  %bpp682 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %516 = load i32, i32* %bpp682, align 4
  %mul683 = mul nsw i32 %515, %516
  %add684 = add nsw i32 %mul683, 1
  %idxprom685 = sext i32 %add684 to i64
  %517 = load i8*, i8** %src_ptr545, align 8
  %arrayidx686 = getelementptr inbounds i8, i8* %517, i64 %idxprom685
  %518 = load i8, i8* %arrayidx686, align 1
  %519 = load i32, i32* %col, align 4
  %520 = load i32, i32* %bytes, align 4
  %mul687 = mul nsw i32 %519, %520
  %add688 = add nsw i32 %mul687, 1
  %idxprom689 = sext i32 %add688 to i64
  %521 = load i8*, i8** %dest_ptr547, align 8
  %arrayidx690 = getelementptr inbounds i8, i8* %521, i64 %idxprom689
  store i8 %518, i8* %arrayidx690, align 1
  br label %if.end.691

if.end.691:                                       ; preds = %if.then.681, %if.then.675
  br label %if.end.720

if.else.692:                                      ; preds = %if.end.672
  %522 = load double, double* %lightness, align 8
  %conv693 = fptoui double %522 to i8
  %523 = load i32, i32* %col, align 4
  %524 = load i32, i32* %bytes, align 4
  %mul694 = mul nsw i32 %523, %524
  %add695 = add nsw i32 %mul694, 0
  %idxprom696 = sext i32 %add695 to i64
  %525 = load i8*, i8** %dest_ptr547, align 8
  %arrayidx697 = getelementptr inbounds i8, i8* %525, i64 %idxprom696
  store i8 %conv693, i8* %arrayidx697, align 1
  %526 = load double, double* %lightness, align 8
  %conv698 = fptoui double %526 to i8
  %527 = load i32, i32* %col, align 4
  %528 = load i32, i32* %bytes, align 4
  %mul699 = mul nsw i32 %527, %528
  %add700 = add nsw i32 %mul699, 1
  %idxprom701 = sext i32 %add700 to i64
  %529 = load i8*, i8** %dest_ptr547, align 8
  %arrayidx702 = getelementptr inbounds i8, i8* %529, i64 %idxprom701
  store i8 %conv698, i8* %arrayidx702, align 1
  %530 = load double, double* %lightness, align 8
  %conv703 = fptoui double %530 to i8
  %531 = load i32, i32* %col, align 4
  %532 = load i32, i32* %bytes, align 4
  %mul704 = mul nsw i32 %531, %532
  %add705 = add nsw i32 %mul704, 2
  %idxprom706 = sext i32 %add705 to i64
  %533 = load i8*, i8** %dest_ptr547, align 8
  %arrayidx707 = getelementptr inbounds i8, i8* %533, i64 %idxprom706
  store i8 %conv703, i8* %arrayidx707, align 1
  %534 = load i32, i32* %has_alpha, align 4
  %tobool708 = icmp ne i32 %534, 0
  br i1 %tobool708, label %if.then.709, label %if.end.719

if.then.709:                                      ; preds = %if.else.692
  %535 = load i32, i32* %col, align 4
  %bpp710 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %536 = load i32, i32* %bpp710, align 4
  %mul711 = mul nsw i32 %535, %536
  %add712 = add nsw i32 %mul711, 3
  %idxprom713 = sext i32 %add712 to i64
  %537 = load i8*, i8** %src_ptr545, align 8
  %arrayidx714 = getelementptr inbounds i8, i8* %537, i64 %idxprom713
  %538 = load i8, i8* %arrayidx714, align 1
  %539 = load i32, i32* %col, align 4
  %540 = load i32, i32* %bytes, align 4
  %mul715 = mul nsw i32 %539, %540
  %add716 = add nsw i32 %mul715, 3
  %idxprom717 = sext i32 %add716 to i64
  %541 = load i8*, i8** %dest_ptr547, align 8
  %arrayidx718 = getelementptr inbounds i8, i8* %541, i64 %idxprom717
  store i8 %538, i8* %arrayidx718, align 1
  br label %if.end.719

if.end.719:                                       ; preds = %if.then.709, %if.else.692
  br label %if.end.720

if.end.720:                                       ; preds = %if.end.719, %if.end.691
  br label %for.inc.721

for.inc.721:                                      ; preds = %if.end.720
  %542 = load i32, i32* %col, align 4
  %inc722 = add nsw i32 %542, 1
  store i32 %inc722, i32* %col, align 4
  br label %for.cond.572

for.end.723:                                      ; preds = %for.cond.572
  %rowstride724 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %543 = load i32, i32* %rowstride724, align 4
  %544 = load i8*, i8** %src_ptr545, align 8
  %idx.ext725 = sext i32 %543 to i64
  %add.ptr726 = getelementptr inbounds i8, i8* %544, i64 %idx.ext725
  store i8* %add.ptr726, i8** %src_ptr545, align 8
  %rowstride727 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %545 = load i32, i32* %rowstride727, align 4
  %546 = load i8*, i8** %dest_ptr547, align 8
  %idx.ext728 = sext i32 %545 to i64
  %add.ptr729 = getelementptr inbounds i8, i8* %546, i64 %idx.ext728
  store i8* %add.ptr729, i8** %dest_ptr547, align 8
  %547 = load i32, i32* %width, align 4
  %548 = load i8*, i8** %blur_ptr, align 8
  %idx.ext730 = sext i32 %547 to i64
  %add.ptr731 = getelementptr inbounds i8, i8* %548, i64 %idx.ext730
  store i8* %add.ptr731, i8** %blur_ptr, align 8
  %549 = load i32, i32* %width, align 4
  %550 = load i8*, i8** %avg_ptr, align 8
  %idx.ext732 = sext i32 %549 to i64
  %add.ptr733 = getelementptr inbounds i8, i8* %550, i64 %idx.ext732
  store i8* %add.ptr733, i8** %avg_ptr, align 8
  br label %for.inc.734

for.inc.734:                                      ; preds = %for.end.723
  %551 = load i32, i32* %row, align 4
  %inc735 = add nsw i32 %551, 1
  store i32 %inc735, i32* %row, align 4
  br label %for.cond.567

for.end.736:                                      ; preds = %for.cond.567
  %552 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool737 = icmp ne %struct._GimpPreview* %552, null
  br i1 %tobool737, label %if.then.738, label %if.else.741

if.then.738:                                      ; preds = %for.end.736
  %553 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %554 = bitcast %struct._GimpPreview* %553 to %struct._GTypeInstance*
  %call739 = call i64 @gimp_drawable_preview_get_type() #5
  %call740 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %554, i64 %call739)
  %555 = bitcast %struct._GTypeInstance* %call740 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %555, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.750

if.else.741:                                      ; preds = %for.end.736
  %w742 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %556 = load i32, i32* %w742, align 4
  %h743 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %557 = load i32, i32* %h743, align 4
  %mul744 = mul nsw i32 %556, %557
  %558 = load i32, i32* %progress, align 4
  %add745 = add nsw i32 %558, %mul744
  store i32 %add745, i32* %progress, align 4
  %559 = load i32, i32* %progress, align 4
  %conv746 = sitofp i32 %559 to double
  %560 = load i32, i32* %max_progress, align 4
  %conv747 = sitofp i32 %560 to double
  %div748 = fdiv double %conv746, %conv747
  %call749 = call i32 @gimp_progress_update(double %div748)
  br label %if.end.750

if.end.750:                                       ; preds = %if.else.741, %if.then.738
  %561 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %562 = bitcast %struct._GimpPixelRgn* %561 to i8*
  %call751 = call i8* @gimp_pixel_rgns_process(i8* %562)
  %563 = bitcast i8* %call751 to %struct._GimpPixelRgn*
  store %struct._GimpPixelRgn* %563, %struct._GimpPixelRgn** %pr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %564 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool752 = icmp ne %struct._GimpPreview* %564, null
  br i1 %tobool752, label %if.end.759, label %if.then.753

if.then.753:                                      ; preds = %while.end
  %call754 = call i32 @gimp_progress_update(double 1.000000e+00)
  %565 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %565)
  %566 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id755 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %566, i32 0, i32 0
  %567 = load i32, i32* %drawable_id755, align 4
  %call756 = call i32 @gimp_drawable_merge_shadow(i32 %567, i32 1)
  %568 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id757 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %568, i32 0, i32 0
  %569 = load i32, i32* %drawable_id757, align 4
  %570 = load i32, i32* %x1, align 4
  %571 = load i32, i32* %y1, align 4
  %572 = load i32, i32* %width, align 4
  %573 = load i32, i32* %height, align 4
  %call758 = call i32 @gimp_drawable_update(i32 %569, i32 %570, i32 %571, i32 %572, i32 %573)
  br label %if.end.759

if.end.759:                                       ; preds = %if.then.753, %while.end
  %574 = load double*, double** %val_p1, align 8
  %575 = bitcast double* %574 to i8*
  call void @g_free(i8* %575)
  %576 = load double*, double** %val_p2, align 8
  %577 = bitcast double* %576 to i8*
  call void @g_free(i8* %577)
  %578 = load double*, double** %val_m1, align 8
  %579 = bitcast double* %578 to i8*
  call void @g_free(i8* %579)
  %580 = load double*, double** %val_m2, align 8
  %581 = bitcast double* %580 to i8*
  call void @g_free(i8* %581)
  %582 = load i8*, i8** %dest1, align 8
  call void @g_free(i8* %582)
  %583 = load i8*, i8** %dest2, align 8
  call void @g_free(i8* %583)
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
declare double @pow(double, double) #2

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
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store double 2.550000e+02, double* %sum, align 8
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %9 = load double, double* %sum, align 8
  %cmp4 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store double 0.000000e+00, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %10 = load double, double* %sum, align 8
  %conv = fptoui double %10 to i8
  %11 = load i8*, i8** %dest.addr, align 8
  store i8 %conv, i8* %11, align 1
  %12 = load i32, i32* %jump.addr, align 4
  %13 = load i8*, i8** %dest.addr, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @compute_ramp(i8* %dest1, i8* %dest2, i32 %length, double %pct, i32 %under_threshold) #0 {
entry:
  %retval = alloca double, align 8
  %dest1.addr = alloca i8*, align 8
  %dest2.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %pct.addr = alloca double, align 8
  %under_threshold.addr = alloca i32, align 4
  %hist = alloca [2000 x i32], align 16
  %diff = alloca double, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i8* %dest1, i8** %dest1.addr, align 8
  store i8* %dest2, i8** %dest2.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store double %pct, double* %pct.addr, align 8
  store i32 %under_threshold, i32* %under_threshold.addr, align 4
  %0 = bitcast [2000 x i32]* %hist to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8000, i32 16, i1 false)
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
  br i1 %cmp1, label %if.then, label %if.end.24

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %dest1.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = uitofp i8 %6 to double
  %7 = load i8*, i8** %dest2.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = uitofp i8 %8 to double
  %div = fdiv double %conv3, %conv4
  store double %div, double* %diff, align 8
  %9 = load i32, i32* %under_threshold.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %10 = load double, double* %diff, align 8
  %11 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %cmp6 = fcmp olt double %10, %11
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  %12 = load double, double* %diff, align 8
  %mul = fmul double %12, 1.000000e+03
  %conv9 = fptosi double %mul to i32
  %idxprom = sext i32 %conv9 to i64
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %hist, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %13, 1
  store i32 %add, i32* %arrayidx, align 4
  %14 = load i32, i32* %count, align 4
  %add10 = add nsw i32 %14, 1
  store i32 %add10, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.5
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %15 = load double, double* %diff, align 8
  %16 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %cmp11 = fcmp oge double %15, %16
  br i1 %cmp11, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.else
  %17 = load double, double* %diff, align 8
  %cmp13 = fcmp olt double %17, 2.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %land.lhs.true
  %18 = load double, double* %diff, align 8
  %mul16 = fmul double %18, 1.000000e+03
  %conv17 = fptosi double %mul16 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %arrayidx19 = getelementptr inbounds [2000 x i32], [2000 x i32]* %hist, i32 0, i64 %idxprom18
  %19 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %19, 1
  store i32 %add20, i32* %arrayidx19, align 4
  %20 = load i32, i32* %count, align 4
  %add21 = add nsw i32 %20, 1
  store i32 %add21, i32* %count, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %land.lhs.true, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %for.body
  %21 = load i8*, i8** %dest1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %dest1.addr, align 8
  %22 = load i8*, i8** %dest2.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr25, i8** %dest2.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load double, double* %pct.addr, align 8
  %cmp26 = fcmp oeq double %24, 0.000000e+00
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %25 = load i32, i32* %count, align 4
  %cmp28 = icmp eq i32 %25, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %lor.lhs.false, %for.end
  %26 = load i32, i32* %under_threshold.addr, align 4
  %tobool31 = icmp ne i32 %26, 0
  %cond = select i1 %tobool31, double 1.000000e+00, double 0.000000e+00
  store double %cond, double* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.55, %if.end.32
  %27 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %27, 2000
  br i1 %cmp34, label %for.body.36, label %for.end.57

for.body.36:                                      ; preds = %for.cond.33
  %28 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [2000 x i32], [2000 x i32]* %hist, i32 0, i64 %idxprom37
  %29 = load i32, i32* %arrayidx38, align 4
  %30 = load i32, i32* %sum, align 4
  %add39 = add nsw i32 %30, %29
  store i32 %add39, i32* %sum, align 4
  %31 = load i32, i32* %sum, align 4
  %conv40 = sitofp i32 %31 to double
  %32 = load i32, i32* %count, align 4
  %conv41 = sitofp i32 %32 to double
  %div42 = fdiv double %conv40, %conv41
  %33 = load double, double* %pct.addr, align 8
  %cmp43 = fcmp ogt double %div42, %33
  br i1 %cmp43, label %if.then.45, label %if.end.54

if.then.45:                                       ; preds = %for.body.36
  %34 = load i32, i32* %under_threshold.addr, align 4
  %tobool46 = icmp ne i32 %34, 0
  br i1 %tobool46, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %if.then.45
  %35 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %36 = load i32, i32* %i, align 4
  %conv48 = sitofp i32 %36 to double
  %div49 = fdiv double %conv48, 1.000000e+03
  %sub = fsub double %35, %div49
  store double %sub, double* %retval
  br label %return

if.else.50:                                       ; preds = %if.then.45
  %37 = load i32, i32* %i, align 4
  %conv51 = sitofp i32 %37 to double
  %div52 = fdiv double %conv51, 1.000000e+03
  %38 = load double, double* getelementptr inbounds (%struct.PhotocopyVals, %struct.PhotocopyVals* @pvals, i32 0, i32 2), align 8
  %sub53 = fsub double %div52, %38
  store double %sub53, double* %retval
  br label %return

if.end.54:                                        ; preds = %for.body.36
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %39 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.33

for.end.57:                                       ; preds = %for.cond.33
  %40 = load i32, i32* %under_threshold.addr, align 4
  %tobool58 = icmp ne i32 %40, 0
  %cond59 = select i1 %tobool58, double 0.000000e+00, double 1.000000e+00
  store double %cond59, double* %retval
  br label %return

return:                                           ; preds = %for.end.57, %if.else.50, %if.then.47, %if.then.30
  %41 = load double, double* %retval
  ret double %41
}

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @exp(double) #2

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
