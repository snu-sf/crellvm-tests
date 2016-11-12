; ModuleID = './plug-ins/common/whirl-pinch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.whirl_pinch_vals_t = type { double, double, double }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"whirl\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Whirl angle (degrees)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pinch\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Pinch amount\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.11 = private unnamed_addr constant [99 x i8] c"Radius (1.0 is the largest circle that fits in the image, and 2.0 goes all the way to the corners)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"plug-in-whirl-pinch\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Distort an image by whirling and pinching\00", align 1
@.str.14 = private unnamed_addr constant [316 x i8] c"Distorts the image by whirling and pinching, which are two common center-based, circular distortions.  Whirling is like projecting the image onto the surface of water in a toilet and flushing.  Pinching is similar to projecting the image onto an elastic surface and pressing or pulling on the center of the surface.\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Federico Mena Quintero and Scott Goehring\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"May 1997, 2.09\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"W_hirl and Pinch...\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@img_bpp = internal global i32 0, align 4
@img_has_alpha = internal global i32 0, align 4
@sel_x1 = internal global i32 0, align 4
@sel_y1 = internal global i32 0, align 4
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"Region affected by plug-in is empty\00", align 1
@sel_x2 = internal global i32 0, align 4
@sel_y2 = internal global i32 0, align 4
@cen_x = internal global double 0.000000e+00, align 8
@cen_y = internal global double 0.000000e+00, align 8
@scale_x = internal global double 0.000000e+00, align 8
@scale_y = internal global double 0.000000e+00, align 8
@radius = internal global double 0.000000e+00, align 8
@wpvals = internal global %struct.whirl_pinch_vals_t { double 9.000000e+01, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"whirl-pinch\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Whirl and Pinch\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"gimp-whirl-pinch\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"_Whirl angle:\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"_Pinch amount:\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@radius2 = internal global double 0.000000e+00, align 8
@.str.33 = private unnamed_addr constant [22 x i8] c"Whirling and pinching\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([316 x i8], [316 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %xhsiz = alloca double, align 8
  %yhsiz = alloca double, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_bpp(i32 %8)
  store i32 %call7, i32* @img_bpp, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_has_alpha(i32 %10)
  store i32 %call9, i32* @img_has_alpha, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_mask_intersect(i32 %12, i32* @sel_x1, i32* @sel_y1, i32* @sel_width, i32* @sel_height)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call12)
  br label %return

if.end:                                           ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 5
  %14 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %14
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %15 = load i32, i32* @sel_x1, align 4
  %16 = load i32, i32* @sel_width, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* @sel_x2, align 4
  %17 = load i32, i32* @sel_y1, align 4
  %18 = load i32, i32* @sel_height, align 4
  %add13 = add nsw i32 %17, %18
  store i32 %add13, i32* @sel_y2, align 4
  %19 = load i32, i32* @sel_x1, align 4
  %20 = load i32, i32* @sel_x2, align 4
  %add14 = add nsw i32 %19, %20
  %sub = sub nsw i32 %add14, 1
  %conv15 = sitofp i32 %sub to double
  %div = fdiv double %conv15, 2.000000e+00
  store double %div, double* @cen_x, align 8
  %21 = load i32, i32* @sel_y1, align 4
  %22 = load i32, i32* @sel_y2, align 4
  %add16 = add nsw i32 %21, %22
  %sub17 = sub nsw i32 %add16, 1
  %conv18 = sitofp i32 %sub17 to double
  %div19 = fdiv double %conv18, 2.000000e+00
  store double %div19, double* @cen_y, align 8
  %23 = load i32, i32* @sel_width, align 4
  %sub20 = sub nsw i32 %23, 1
  %conv21 = sitofp i32 %sub20 to double
  %div22 = fdiv double %conv21, 2.000000e+00
  store double %div22, double* %xhsiz, align 8
  %24 = load i32, i32* @sel_height, align 4
  %sub23 = sub nsw i32 %24, 1
  %conv24 = sitofp i32 %sub23 to double
  %div25 = fdiv double %conv24, 2.000000e+00
  store double %div25, double* %yhsiz, align 8
  %25 = load double, double* %xhsiz, align 8
  %26 = load double, double* %yhsiz, align 8
  %cmp = fcmp olt double %25, %26
  br i1 %cmp, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end
  %27 = load double, double* %yhsiz, align 8
  %28 = load double, double* %xhsiz, align 8
  %div28 = fdiv double %27, %28
  store double %div28, double* @scale_x, align 8
  store double 1.000000e+00, double* @scale_y, align 8
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %29 = load double, double* %xhsiz, align 8
  %30 = load double, double* %yhsiz, align 8
  %cmp29 = fcmp ogt double %29, %30
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else
  store double 1.000000e+00, double* @scale_x, align 8
  %31 = load double, double* %xhsiz, align 8
  %32 = load double, double* %yhsiz, align 8
  %div32 = fdiv double %31, %32
  store double %div32, double* @scale_y, align 8
  br label %if.end.34

if.else.33:                                       ; preds = %if.else
  store double 1.000000e+00, double* @scale_x, align 8
  store double 1.000000e+00, double* @scale_y, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.27
  %33 = load double, double* %xhsiz, align 8
  %34 = load double, double* %yhsiz, align 8
  %cmp36 = fcmp ogt double %33, %34
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.35
  %35 = load double, double* %xhsiz, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.35
  %36 = load double, double* %yhsiz, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %35, %cond.true ], [ %36, %cond.false ]
  store double %cond, double* @radius, align 8
  %37 = load i32, i32* %run_mode, align 4
  switch i32 %37, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.43
    i32 2, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %cond.end
  %call38 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.whirl_pinch_vals_t* @wpvals to i8*))
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call39 = call i32 @whirl_pinch_dialog(%struct._GimpDrawable* %38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb
  br label %return

if.end.42:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.43:                                         ; preds = %cond.end
  %39 = load i32, i32* %nparams.addr, align 4
  %cmp44 = icmp ne i32 %39, 6
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %sw.bb.43
  store i32 1, i32* %status, align 4
  br label %if.end.56

if.else.47:                                       ; preds = %sw.bb.43
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 3
  %data49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx48, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data49 to double*
  %41 = load double, double* %d_float, align 8
  store double %41, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 0), align 8
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 4
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_float52 = bitcast %union._GimpParamData* %data51 to double*
  %43 = load double, double* %d_float52, align 8
  store double %43, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 1), align 8
  %44 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 5
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_float55 = bitcast %union._GimpParamData* %data54 to double*
  %45 = load double, double* %d_float55, align 8
  store double %45, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 2), align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.47, %if.then.46
  br label %sw.epilog

sw.bb.57:                                         ; preds = %cond.end
  %call58 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.whirl_pinch_vals_t* @wpvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.57, %if.end.56, %if.end.42
  %46 = load i32, i32* %status, align 4
  %cmp59 = icmp eq i32 %46, 3
  br i1 %cmp59, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %sw.epilog
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 0
  %48 = load i32, i32* %drawable_id61, align 4
  %call62 = call i32 @gimp_drawable_is_rgb(i32 %48)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id64, align 4
  %call65 = call i32 @gimp_drawable_is_gray(i32 %50)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.78

if.then.67:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @whirl_pinch(%struct._GimpDrawable* %51)
  %52 = load i32, i32* %run_mode, align 4
  %cmp68 = icmp ne i32 %52, 1
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.67
  %call71 = call i32 @gimp_displays_flush()
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.then.67
  %53 = load i32, i32* %run_mode, align 4
  %cmp73 = icmp eq i32 %53, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.72
  %call76 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.whirl_pinch_vals_t* @wpvals to i8*), i32 24)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.72
  br label %if.end.83

if.else.78:                                       ; preds = %lor.lhs.false, %sw.epilog
  %54 = load i32, i32* %status, align 4
  %cmp79 = icmp eq i32 %54, 3
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.78
  store i32 0, i32* %status, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.else.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.77
  %55 = load i32, i32* %status, align 4
  store i32 %55, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %56)
  br label %return

return:                                           ; preds = %if.end.83, %if.then.41, %if.then
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

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @whirl_pinch_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @dialog_update_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
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
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0)) #4
  %40 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 0), align 8
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 0, i8* %call27, i32 200, i32 7, double %40, double -7.200000e+02, double 7.200000e+02, double 1.000000e+00, double 1.500000e+01, i32 2, i32 0, double -3.600000e+03, double 3.600000e+03, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %adj, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.whirl_pinch_vals_t* @wpvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #4
  %50 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 1), align 8
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %49, i32 0, i32 1, i8* %call33, i32 200, i32 7, double %50, double -1.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %adj, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call37)
  %59 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)) #4
  %60 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 2), align 8
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %59, i32 0, i32 2, i8* %call39, i32 200, i32 7, double %60, double 0.000000e+00, double 2.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call40, %struct._GtkObject** %adj, align 8
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 2)
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

; Function Attrs: nounwind uwtable
define internal void @whirl_pinch(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %top_row = alloca i8*, align 8
  %bot_row = alloca i8*, align 8
  %top_p = alloca i8*, align 8
  %bot_p = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %pixel = alloca i8**, align 8
  %whirl = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %i = alloca i32, align 4
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %pfb = alloca %struct._GimpPixelFetcher*, align 8
  %background = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load i32, i32* @img_bpp, align 4
  %1 = load i32, i32* @sel_width, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %top_row, align 8
  %2 = load i32, i32* @img_bpp, align 4
  %3 = load i32, i32* @sel_width, align 4
  %mul1 = mul nsw i32 %2, %3
  %conv2 = sext i32 %mul1 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv2, i64 1)
  store i8* %call3, i8** %bot_row, align 8
  %call4 = call noalias i8* @g_malloc_n(i64 4, i64 8)
  %4 = bitcast i8* %call4 to i8**
  store i8** %4, i8*** %pixel, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call noalias i8* @g_malloc_n(i64 4, i64 1)
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %pixel, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  store i8* %call6, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = load i32, i32* @sel_x1, align 4
  %11 = load i32, i32* @sel_y1, align 4
  %12 = load i32, i32* @sel_width, align 4
  %13 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 1, i32 1)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call7 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %14, i32 0)
  store %struct._GimpPixelFetcher* %call7, %struct._GimpPixelFetcher** %pft, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call8 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %15, i32 0)
  store %struct._GimpPixelFetcher* %call8, %struct._GimpPixelFetcher** %pfb, align 8
  %call9 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %16 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %16, %struct._GimpRGB* %background)
  %17 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %17, %struct._GimpRGB* %background)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_has_alpha(i32 %19)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %20 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %20, i32 3)
  %21 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %21, i32 3)
  br label %if.end

if.else:                                          ; preds = %for.end
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %22, i32 4)
  %23 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %23, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %progress, align 4
  %24 = load i32, i32* @sel_width, align 4
  %25 = load i32, i32* @sel_height, align 4
  %mul11 = mul nsw i32 %24, %25
  store i32 %mul11, i32* %max_progress, align 4
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0)) #4
  %call13 = call i32 @gimp_progress_init(i8* %call12)
  %26 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 0), align 8
  %mul14 = fmul double %26, 0x400921FB54442D18
  %div = fdiv double %mul14, 1.800000e+02
  store double %div, double* %whirl, align 8
  %27 = load double, double* @radius, align 8
  %28 = load double, double* @radius, align 8
  %mul15 = fmul double %27, %28
  %29 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 2), align 8
  %mul16 = fmul double %mul15, %29
  store double %mul16, double* @radius2, align 8
  %30 = load i32, i32* @sel_y1, align 4
  store i32 %30, i32* %row, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.143, %if.end
  %31 = load i32, i32* %row, align 4
  %32 = load i32, i32* @sel_y1, align 4
  %33 = load i32, i32* @sel_y2, align 4
  %add = add nsw i32 %32, %33
  %div18 = sdiv i32 %add, 2
  %cmp19 = icmp sle i32 %31, %div18
  br i1 %cmp19, label %for.body.21, label %for.end.145

for.body.21:                                      ; preds = %for.cond.17
  %34 = load i8*, i8** %top_row, align 8
  store i8* %34, i8** %top_p, align 8
  %35 = load i8*, i8** %bot_row, align 8
  %36 = load i32, i32* @img_bpp, align 4
  %37 = load i32, i32* @sel_width, align 4
  %sub = sub nsw i32 %37, 1
  %mul22 = mul nsw i32 %36, %sub
  %idx.ext = sext i32 %mul22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr, i8** %bot_p, align 8
  %38 = load i32, i32* @sel_x1, align 4
  store i32 %38, i32* %col, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.131, %for.body.21
  %39 = load i32, i32* %col, align 4
  %40 = load i32, i32* @sel_x2, align 4
  %cmp24 = icmp slt i32 %39, %40
  br i1 %cmp24, label %for.body.26, label %for.end.133

for.body.26:                                      ; preds = %for.cond.23
  %41 = load i32, i32* %col, align 4
  %conv27 = sitofp i32 %41 to double
  %42 = load i32, i32* %row, align 4
  %conv28 = sitofp i32 %42 to double
  %43 = load double, double* %whirl, align 8
  %44 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 1), align 8
  %call29 = call i32 @calc_undistorted_coords(double %conv27, double %conv28, double %43, double %44, double* %cx, double* %cy)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.96

if.then.31:                                       ; preds = %for.body.26
  %45 = load double, double* %cx, align 8
  %cmp32 = fcmp oge double %45, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.then.31
  %46 = load double, double* %cx, align 8
  %conv35 = fptosi double %46 to i32
  store i32 %conv35, i32* %ix, align 4
  br label %if.end.41

if.else.36:                                       ; preds = %if.then.31
  %47 = load double, double* %cx, align 8
  %sub37 = fsub double -0.000000e+00, %47
  %conv38 = fptosi double %sub37 to i32
  %add39 = add nsw i32 %conv38, 1
  %sub40 = sub nsw i32 0, %add39
  store i32 %sub40, i32* %ix, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.36, %if.then.34
  %48 = load double, double* %cy, align 8
  %cmp42 = fcmp oge double %48, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.41
  %49 = load double, double* %cy, align 8
  %conv45 = fptosi double %49 to i32
  store i32 %conv45, i32* %iy, align 4
  br label %if.end.51

if.else.46:                                       ; preds = %if.end.41
  %50 = load double, double* %cy, align 8
  %sub47 = fsub double -0.000000e+00, %50
  %conv48 = fptosi double %sub47 to i32
  %add49 = add nsw i32 %conv48, 1
  %sub50 = sub nsw i32 0, %add49
  store i32 %sub50, i32* %iy, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.46, %if.then.44
  %51 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %52 = load i32, i32* %ix, align 4
  %53 = load i32, i32* %iy, align 4
  %54 = load i8**, i8*** %pixel, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %54, i64 0
  %55 = load i8*, i8** %arrayidx52, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %51, i32 %52, i32 %53, i8* %55)
  %56 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %57 = load i32, i32* %ix, align 4
  %add53 = add nsw i32 %57, 1
  %58 = load i32, i32* %iy, align 4
  %59 = load i8**, i8*** %pixel, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %59, i64 1
  %60 = load i8*, i8** %arrayidx54, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %56, i32 %add53, i32 %58, i8* %60)
  %61 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %62 = load i32, i32* %ix, align 4
  %63 = load i32, i32* %iy, align 4
  %add55 = add nsw i32 %63, 1
  %64 = load i8**, i8*** %pixel, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %64, i64 2
  %65 = load i8*, i8** %arrayidx56, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %61, i32 %62, i32 %add55, i8* %65)
  %66 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %67 = load i32, i32* %ix, align 4
  %add57 = add nsw i32 %67, 1
  %68 = load i32, i32* %iy, align 4
  %add58 = add nsw i32 %68, 1
  %69 = load i8**, i8*** %pixel, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %69, i64 3
  %70 = load i8*, i8** %arrayidx59, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %66, i32 %add57, i32 %add58, i8* %70)
  %71 = load i8*, i8** %top_p, align 8
  %72 = load double, double* %cx, align 8
  %73 = load double, double* %cy, align 8
  %74 = load i32, i32* @img_bpp, align 4
  %75 = load i32, i32* @img_has_alpha, align 4
  %76 = load i8**, i8*** %pixel, align 8
  call void @gimp_bilinear_pixels_8(i8* %71, double %72, double %73, i32 %74, i32 %75, i8** %76)
  %77 = load i32, i32* @img_bpp, align 4
  %78 = load i8*, i8** %top_p, align 8
  %idx.ext60 = sext i32 %77 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %78, i64 %idx.ext60
  store i8* %add.ptr61, i8** %top_p, align 8
  %79 = load double, double* @cen_x, align 8
  %80 = load double, double* @cen_x, align 8
  %81 = load double, double* %cx, align 8
  %sub62 = fsub double %80, %81
  %add63 = fadd double %79, %sub62
  store double %add63, double* %cx, align 8
  %82 = load double, double* @cen_y, align 8
  %83 = load double, double* @cen_y, align 8
  %84 = load double, double* %cy, align 8
  %sub64 = fsub double %83, %84
  %add65 = fadd double %82, %sub64
  store double %add65, double* %cy, align 8
  %85 = load double, double* %cx, align 8
  %cmp66 = fcmp oge double %85, 0.000000e+00
  br i1 %cmp66, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.end.51
  %86 = load double, double* %cx, align 8
  %conv69 = fptosi double %86 to i32
  store i32 %conv69, i32* %ix, align 4
  br label %if.end.75

if.else.70:                                       ; preds = %if.end.51
  %87 = load double, double* %cx, align 8
  %sub71 = fsub double -0.000000e+00, %87
  %conv72 = fptosi double %sub71 to i32
  %add73 = add nsw i32 %conv72, 1
  %sub74 = sub nsw i32 0, %add73
  store i32 %sub74, i32* %ix, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.70, %if.then.68
  %88 = load double, double* %cy, align 8
  %cmp76 = fcmp oge double %88, 0.000000e+00
  br i1 %cmp76, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.end.75
  %89 = load double, double* %cy, align 8
  %conv79 = fptosi double %89 to i32
  store i32 %conv79, i32* %iy, align 4
  br label %if.end.85

if.else.80:                                       ; preds = %if.end.75
  %90 = load double, double* %cy, align 8
  %sub81 = fsub double -0.000000e+00, %90
  %conv82 = fptosi double %sub81 to i32
  %add83 = add nsw i32 %conv82, 1
  %sub84 = sub nsw i32 0, %add83
  store i32 %sub84, i32* %iy, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.80, %if.then.78
  %91 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  %92 = load i32, i32* %ix, align 4
  %93 = load i32, i32* %iy, align 4
  %94 = load i8**, i8*** %pixel, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %94, i64 0
  %95 = load i8*, i8** %arrayidx86, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %91, i32 %92, i32 %93, i8* %95)
  %96 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  %97 = load i32, i32* %ix, align 4
  %add87 = add nsw i32 %97, 1
  %98 = load i32, i32* %iy, align 4
  %99 = load i8**, i8*** %pixel, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %99, i64 1
  %100 = load i8*, i8** %arrayidx88, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %96, i32 %add87, i32 %98, i8* %100)
  %101 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  %102 = load i32, i32* %ix, align 4
  %103 = load i32, i32* %iy, align 4
  %add89 = add nsw i32 %103, 1
  %104 = load i8**, i8*** %pixel, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %104, i64 2
  %105 = load i8*, i8** %arrayidx90, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %101, i32 %102, i32 %add89, i8* %105)
  %106 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  %107 = load i32, i32* %ix, align 4
  %add91 = add nsw i32 %107, 1
  %108 = load i32, i32* %iy, align 4
  %add92 = add nsw i32 %108, 1
  %109 = load i8**, i8*** %pixel, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %109, i64 3
  %110 = load i8*, i8** %arrayidx93, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %106, i32 %add91, i32 %add92, i8* %110)
  %111 = load i8*, i8** %bot_p, align 8
  %112 = load double, double* %cx, align 8
  %113 = load double, double* %cy, align 8
  %114 = load i32, i32* @img_bpp, align 4
  %115 = load i32, i32* @img_has_alpha, align 4
  %116 = load i8**, i8*** %pixel, align 8
  call void @gimp_bilinear_pixels_8(i8* %111, double %112, double %113, i32 %114, i32 %115, i8** %116)
  %117 = load i32, i32* @img_bpp, align 4
  %118 = load i8*, i8** %bot_p, align 8
  %idx.ext94 = sext i32 %117 to i64
  %idx.neg = sub i64 0, %idx.ext94
  %add.ptr95 = getelementptr inbounds i8, i8* %118, i64 %idx.neg
  store i8* %add.ptr95, i8** %bot_p, align 8
  br label %if.end.130

if.else.96:                                       ; preds = %for.body.26
  %119 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %120 = load i32, i32* %col, align 4
  %121 = load i32, i32* %row, align 4
  %122 = load i8**, i8*** %pixel, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %122, i64 0
  %123 = load i8*, i8** %arrayidx97, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %119, i32 %120, i32 %121, i8* %123)
  store i32 0, i32* %i, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.105, %if.else.96
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* @img_bpp, align 4
  %cmp99 = icmp slt i32 %124, %125
  br i1 %cmp99, label %for.body.101, label %for.end.107

for.body.101:                                     ; preds = %for.cond.98
  %126 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %126 to i64
  %127 = load i8**, i8*** %pixel, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %127, i64 0
  %128 = load i8*, i8** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %128, i64 %idxprom102
  %129 = load i8, i8* %arrayidx104, align 1
  %130 = load i8*, i8** %top_p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr, i8** %top_p, align 8
  store i8 %129, i8* %130, align 1
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.101
  %131 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %131, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.98

for.end.107:                                      ; preds = %for.cond.98
  %132 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  %133 = load i32, i32* @sel_x2, align 4
  %sub108 = sub nsw i32 %133, 1
  %134 = load i32, i32* %col, align 4
  %135 = load i32, i32* @sel_x1, align 4
  %sub109 = sub nsw i32 %134, %135
  %sub110 = sub nsw i32 %sub108, %sub109
  %136 = load i32, i32* @sel_y2, align 4
  %sub111 = sub nsw i32 %136, 1
  %137 = load i32, i32* %row, align 4
  %138 = load i32, i32* @sel_y1, align 4
  %sub112 = sub nsw i32 %137, %138
  %sub113 = sub nsw i32 %sub111, %sub112
  %139 = load i8**, i8*** %pixel, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %139, i64 0
  %140 = load i8*, i8** %arrayidx114, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %132, i32 %sub110, i32 %sub113, i8* %140)
  store i32 0, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.123, %for.end.107
  %141 = load i32, i32* %i, align 4
  %142 = load i32, i32* @img_bpp, align 4
  %cmp116 = icmp slt i32 %141, %142
  br i1 %cmp116, label %for.body.118, label %for.end.125

for.body.118:                                     ; preds = %for.cond.115
  %143 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %143 to i64
  %144 = load i8**, i8*** %pixel, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %144, i64 0
  %145 = load i8*, i8** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %145, i64 %idxprom119
  %146 = load i8, i8* %arrayidx121, align 1
  %147 = load i8*, i8** %bot_p, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr122, i8** %bot_p, align 8
  store i8 %146, i8* %147, align 1
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.118
  %148 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %148, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.115

for.end.125:                                      ; preds = %for.cond.115
  %149 = load i32, i32* @img_bpp, align 4
  %mul126 = mul nsw i32 2, %149
  %150 = load i8*, i8** %bot_p, align 8
  %idx.ext127 = sext i32 %mul126 to i64
  %idx.neg128 = sub i64 0, %idx.ext127
  %add.ptr129 = getelementptr inbounds i8, i8* %150, i64 %idx.neg128
  store i8* %add.ptr129, i8** %bot_p, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.125, %if.end.85
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %151 = load i32, i32* %col, align 4
  %inc132 = add nsw i32 %151, 1
  store i32 %inc132, i32* %col, align 4
  br label %for.cond.23

for.end.133:                                      ; preds = %for.cond.23
  %152 = load i8*, i8** %top_row, align 8
  %153 = load i32, i32* @sel_x1, align 4
  %154 = load i32, i32* %row, align 4
  %155 = load i32, i32* @sel_width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_rgn, i8* %152, i32 %153, i32 %154, i32 %155)
  %156 = load i8*, i8** %bot_row, align 8
  %157 = load i32, i32* @sel_x1, align 4
  %158 = load i32, i32* @sel_y2, align 4
  %sub134 = sub nsw i32 %158, 1
  %159 = load i32, i32* %row, align 4
  %160 = load i32, i32* @sel_y1, align 4
  %sub135 = sub nsw i32 %159, %160
  %sub136 = sub nsw i32 %sub134, %sub135
  %161 = load i32, i32* @sel_width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_rgn, i8* %156, i32 %157, i32 %sub136, i32 %161)
  %162 = load i32, i32* @sel_width, align 4
  %mul137 = mul nsw i32 %162, 2
  %163 = load i32, i32* %progress, align 4
  %add138 = add nsw i32 %163, %mul137
  store i32 %add138, i32* %progress, align 4
  %164 = load i32, i32* %progress, align 4
  %conv139 = sitofp i32 %164 to double
  %165 = load i32, i32* %max_progress, align 4
  %conv140 = sitofp i32 %165 to double
  %div141 = fdiv double %conv139, %conv140
  %call142 = call i32 @gimp_progress_update(double %div141)
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.133
  %166 = load i32, i32* %row, align 4
  %inc144 = add nsw i32 %166, 1
  store i32 %inc144, i32* %row, align 4
  br label %for.cond.17

for.end.145:                                      ; preds = %for.cond.17
  %call146 = call i32 @gimp_progress_update(double 1.000000e+00)
  %167 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %167)
  %168 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pfb, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %168)
  store i32 0, i32* %i, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.153, %for.end.145
  %169 = load i32, i32* %i, align 4
  %cmp148 = icmp slt i32 %169, 4
  br i1 %cmp148, label %for.body.150, label %for.end.155

for.body.150:                                     ; preds = %for.cond.147
  %170 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %170 to i64
  %171 = load i8**, i8*** %pixel, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %171, i64 %idxprom151
  %172 = load i8*, i8** %arrayidx152, align 8
  call void @g_free(i8* %172)
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.150
  %173 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %173, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.147

for.end.155:                                      ; preds = %for.cond.147
  %174 = load i8**, i8*** %pixel, align 8
  %175 = bitcast i8** %174 to i8*
  call void @g_free(i8* %175)
  %176 = load i8*, i8** %top_row, align 8
  call void @g_free(i8* %176)
  %177 = load i8*, i8** %bot_row, align 8
  call void @g_free(i8* %177)
  %178 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %178)
  %179 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id156 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %179, i32 0, i32 0
  %180 = load i32, i32* %drawable_id156, align 4
  %call157 = call i32 @gimp_drawable_merge_shadow(i32 %180, i32 1)
  %181 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id158 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %181, i32 0, i32 0
  %182 = load i32, i32* %drawable_id158, align 4
  %183 = load i32, i32* @sel_x1, align 4
  %184 = load i32, i32* @sel_y1, align 4
  %185 = load i32, i32* @sel_width, align 4
  %186 = load i32, i32* @sel_height, align 4
  %call159 = call i32 @gimp_drawable_update(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

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

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_preview(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %background = alloca %struct._GimpRGB, align 8
  %dest = alloca i8*, align 8
  %j = alloca i32, align 4
  %bpp = alloca i32, align 4
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %in_pixels = alloca [4 x [4 x i8]], align 16
  %in_values = alloca [4 x i8*], align 16
  %whirl = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 0), align 8
  %mul = fmul double %0, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  store double %div, double* %whirl, align 8
  %1 = load double, double* @radius, align 8
  %2 = load double, double* @radius, align 8
  %mul1 = fmul double %1, %2
  %3 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 2), align 8
  %mul2 = fmul double %mul1, %3
  store double %mul2, double* @radius2, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %in_values, i32 0, i64 %idxprom3
  store i8* %arraydecay, i8** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %8, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call5 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  %9 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %9, %struct._GimpRGB* %background)
  %10 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %10, i32 2)
  %11 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %12 = bitcast %struct._GimpPreview* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_zoom_preview_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpZoomPreview*
  %call8 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %13, i32* %width, i32* %height, i32* %bpp)
  store i8* %call8, i8** %dest, align 8
  %14 = load i8*, i8** %dest, align 8
  store i8* %14, i8** %pixel, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.40, %for.end
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %height, align 4
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %for.body.11, label %for.end.42

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %x, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.37, %for.body.11
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* %width, align 4
  %cmp13 = icmp slt i32 %17, %18
  br i1 %cmp13, label %for.body.14, label %for.end.39

for.body.14:                                      ; preds = %for.cond.12
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %y, align 4
  call void @gimp_preview_untransform(%struct._GimpPreview* %19, i32 %20, i32 %21, i32* %sx, i32* %sy)
  %22 = load i32, i32* %sx, align 4
  %conv = sitofp i32 %22 to double
  %23 = load i32, i32* %sy, align 4
  %conv15 = sitofp i32 %23 to double
  %24 = load double, double* %whirl, align 8
  %25 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 1), align 8
  %call16 = call i32 @calc_undistorted_coords(double %conv, double %conv15, double %24, double %25, double* %cx, double* %cy)
  %26 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %27 = load double, double* %cx, align 8
  %conv17 = fptosi double %27 to i32
  %28 = load double, double* %cy, align 8
  %conv18 = fptosi double %28 to i32
  %arrayidx19 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 0
  %arraydecay20 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx19, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %26, i32 %conv17, i32 %conv18, i8* %arraydecay20)
  %29 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %30 = load double, double* %cx, align 8
  %add = fadd double %30, 1.000000e+00
  %conv21 = fptosi double %add to i32
  %31 = load double, double* %cy, align 8
  %conv22 = fptosi double %31 to i32
  %arrayidx23 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 1
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx23, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %29, i32 %conv21, i32 %conv22, i8* %arraydecay24)
  %32 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %33 = load double, double* %cx, align 8
  %conv25 = fptosi double %33 to i32
  %34 = load double, double* %cy, align 8
  %add26 = fadd double %34, 1.000000e+00
  %conv27 = fptosi double %add26 to i32
  %arrayidx28 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 2
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx28, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %32, i32 %conv25, i32 %conv27, i8* %arraydecay29)
  %35 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %36 = load double, double* %cx, align 8
  %add30 = fadd double %36, 1.000000e+00
  %conv31 = fptosi double %add30 to i32
  %37 = load double, double* %cy, align 8
  %add32 = fadd double %37, 1.000000e+00
  %conv33 = fptosi double %add32 to i32
  %arrayidx34 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 3
  %arraydecay35 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx34, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %35, i32 %conv31, i32 %conv33, i8* %arraydecay35)
  %38 = load i8*, i8** %pixel, align 8
  %39 = load double, double* %cx, align 8
  %40 = load double, double* %cy, align 8
  %41 = load i32, i32* %bpp, align 4
  %42 = load i32, i32* @img_has_alpha, align 4
  %arraydecay36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %in_values, i32 0, i32 0
  call void @gimp_bilinear_pixels_8(i8* %38, double %39, double %40, i32 %41, i32 %42, i8** %arraydecay36)
  %43 = load i32, i32* %bpp, align 4
  %44 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.14
  %45 = load i32, i32* %x, align 4
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, i32* %x, align 4
  br label %for.cond.12

for.end.39:                                       ; preds = %for.cond.12
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %46 = load i32, i32* %y, align 4
  %inc41 = add nsw i32 %46, 1
  store i32 %inc41, i32* %y, align 4
  br label %for.cond.9

for.end.42:                                       ; preds = %for.cond.9
  %47 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %47)
  %48 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %49 = load i8*, i8** %dest, align 8
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %bpp, align 4
  %mul43 = mul nsw i32 %50, %51
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %48, i8* %49, i32 %mul43)
  %52 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %52)
  ret void
}

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

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher*, %struct._GimpRGB*) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare void @gimp_preview_untransform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @calc_undistorted_coords(double %wx, double %wy, double %whirl, double %pinch, double* %x, double* %y) #0 {
entry:
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %whirl.addr = alloca double, align 8
  %pinch.addr = alloca double, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %d = alloca double, align 8
  %factor = alloca double, align 8
  %dist = alloca double, align 8
  %ang = alloca double, align 8
  %sina = alloca double, align 8
  %cosa = alloca double, align 8
  %inside = alloca i32, align 4
  store double %wx, double* %wx.addr, align 8
  store double %wy, double* %wy.addr, align 8
  store double %whirl, double* %whirl.addr, align 8
  store double %pinch, double* %pinch.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  %0 = load double, double* %wx.addr, align 8
  %1 = load double, double* @cen_x, align 8
  %sub = fsub double %0, %1
  %2 = load double, double* @scale_x, align 8
  %mul = fmul double %sub, %2
  store double %mul, double* %dx, align 8
  %3 = load double, double* %wy.addr, align 8
  %4 = load double, double* @cen_y, align 8
  %sub1 = fsub double %3, %4
  %5 = load double, double* @scale_y, align 8
  %mul2 = fmul double %sub1, %5
  store double %mul2, double* %dy, align 8
  %6 = load double, double* %dx, align 8
  %7 = load double, double* %dx, align 8
  %mul3 = fmul double %6, %7
  %8 = load double, double* %dy, align 8
  %9 = load double, double* %dy, align 8
  %mul4 = fmul double %8, %9
  %add = fadd double %mul3, %mul4
  store double %add, double* %d, align 8
  %10 = load double, double* %d, align 8
  %11 = load double, double* @radius2, align 8
  %cmp = fcmp olt double %10, %11
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %inside, align 4
  %12 = load i32, i32* %inside, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load double, double* %d, align 8
  %14 = load double, double* getelementptr inbounds (%struct.whirl_pinch_vals_t, %struct.whirl_pinch_vals_t* @wpvals, i32 0, i32 2), align 8
  %div = fdiv double %13, %14
  %call = call double @sqrt(double %div) #4
  %15 = load double, double* @radius, align 8
  %div5 = fdiv double %call, %15
  store double %div5, double* %dist, align 8
  %16 = load double, double* %dist, align 8
  %mul6 = fmul double 0x3FF921FB54442D18, %16
  %call7 = call double @sin(double %mul6) #4
  %17 = load double, double* %pinch.addr, align 8
  %sub8 = fsub double -0.000000e+00, %17
  %call9 = call double @pow(double %call7, double %sub8) #4
  store double %call9, double* %factor, align 8
  %18 = load double, double* %factor, align 8
  %19 = load double, double* %dx, align 8
  %mul10 = fmul double %19, %18
  store double %mul10, double* %dx, align 8
  %20 = load double, double* %factor, align 8
  %21 = load double, double* %dy, align 8
  %mul11 = fmul double %21, %20
  store double %mul11, double* %dy, align 8
  %22 = load double, double* %dist, align 8
  %sub12 = fsub double 1.000000e+00, %22
  store double %sub12, double* %factor, align 8
  %23 = load double, double* %whirl.addr, align 8
  %24 = load double, double* %factor, align 8
  %mul13 = fmul double %23, %24
  %25 = load double, double* %factor, align 8
  %mul14 = fmul double %mul13, %25
  store double %mul14, double* %ang, align 8
  %26 = load double, double* %ang, align 8
  %call15 = call double @sin(double %26) #4
  store double %call15, double* %sina, align 8
  %27 = load double, double* %ang, align 8
  %call16 = call double @cos(double %27) #4
  store double %call16, double* %cosa, align 8
  %28 = load double, double* %cosa, align 8
  %29 = load double, double* %dx, align 8
  %mul17 = fmul double %28, %29
  %30 = load double, double* %sina, align 8
  %31 = load double, double* %dy, align 8
  %mul18 = fmul double %30, %31
  %sub19 = fsub double %mul17, %mul18
  %32 = load double, double* @scale_x, align 8
  %div20 = fdiv double %sub19, %32
  %33 = load double, double* @cen_x, align 8
  %add21 = fadd double %div20, %33
  %34 = load double*, double** %x.addr, align 8
  store double %add21, double* %34, align 8
  %35 = load double, double* %sina, align 8
  %36 = load double, double* %dx, align 8
  %mul22 = fmul double %35, %36
  %37 = load double, double* %cosa, align 8
  %38 = load double, double* %dy, align 8
  %mul23 = fmul double %37, %38
  %add24 = fadd double %mul22, %mul23
  %39 = load double, double* @scale_y, align 8
  %div25 = fdiv double %add24, %39
  %40 = load double, double* @cen_y, align 8
  %add26 = fadd double %div25, %40
  %41 = load double*, double** %y.addr, align 8
  store double %add26, double* %41, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %42 = load double, double* %wx.addr, align 8
  %43 = load double*, double** %x.addr, align 8
  store double %42, double* %43, align 8
  %44 = load double, double* %wy.addr, align 8
  %45 = load double*, double** %y.addr, align 8
  store double %44, double* %45, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %46 = load i32, i32* %inside, align 4
  ret i32 %46
}

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare void @gimp_bilinear_pixels_8(i8*, double, double, i32, i32, i8**) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
