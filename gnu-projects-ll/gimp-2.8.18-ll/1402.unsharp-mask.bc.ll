; ModuleID = './plug-ins/common/unsharp-mask.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.UnsharpMaskParams = type { double, double, i32 }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"(unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Drawable to draw on\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Radius of gaussian blur (in pixels > 1.0)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Strength of effect\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Threshold (0-255)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"plug-in-unsharp-mask\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"The most widely useful method for sharpening an image\00", align 1
@.str.14 = private unnamed_addr constant [257 x i8] c"The unsharp mask is a sharpening filter that works by comparing using the difference of the image and a blurred version of the image.  It is commonly used on photographic images, and is provides a much more pleasing result than the standard sharpen filter.\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Winston Chang <winstonc@cs.wisc.edu>\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Winston Chang\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"1999-2009\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"_Unsharp Mask...\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"GRAY*, RGB*\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@unsharp_params = internal global %struct.UnsharpMaskParams { double 5.000000e+00, double 5.000000e-01, i32 0 }, align 8
@.str.23 = private unnamed_addr constant [13 x i8] c"unsharp-mask\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Unsharp Mask\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"gimp-unsharp-mask\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"_Amount:\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"_Threshold:\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Blurring\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Merging\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"unsharp-mask.c\00", align 1
@__func__.box_blur_line = private unnamed_addr constant [14 x i8] c"box_blur_line\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
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
  %2 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %2, align 8
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  %call7 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %8, %call7
  %add = add i32 %div, 1
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  %call8 = call i32 @gimp_tile_height() #6
  %div9 = udiv i32 %10, %call8
  %add10 = add i32 %div9, 1
  %cmp = icmp ugt i32 %add, %add10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 1
  %12 = load i32, i32* %width11, align 4
  %call12 = call i32 @gimp_tile_width() #6
  %div13 = udiv i32 %12, %call12
  %add14 = add i32 %div13, 1
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height15, align 4
  %call16 = call i32 @gimp_tile_height() #6
  %div17 = udiv i32 %14, %call16
  %add18 = add i32 %div17, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add14, %cond.true ], [ %add18, %cond.false ]
  %mul = mul i32 2, %cond
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %cond.end
  %call19 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.UnsharpMaskParams* @unsharp_params to i8*))
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call20 = call i32 @unsharp_mask_dialog(%struct._GimpDrawable* %16)
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %if.end.55

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.21:                                         ; preds = %cond.end
  %17 = load i32, i32* %nparams.addr, align 4
  %cmp22 = icmp ne i32 %17, 6
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %sw.bb.21
  store i32 1, i32* %status, align 4
  br label %if.end.39

if.else:                                          ; preds = %sw.bb.21
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data26 to double*
  %19 = load double, double* %d_float, align 8
  store double %19, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 0), align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_float29 = bitcast %union._GimpParamData* %data28 to double*
  %21 = load double, double* %d_float29, align 8
  store double %21, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 1), align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 5
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %23 = load i32, i32* %d_int3232, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 2), align 4
  %24 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 0), align 8
  %cmp33 = fcmp olt double %24, 0.000000e+00
  br i1 %cmp33, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %25 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 1), align 8
  %cmp35 = fcmp olt double %25, 0.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %lor.lhs.false
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.24
  br label %sw.epilog

sw.bb.40:                                         ; preds = %cond.end
  %call41 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.UnsharpMaskParams* @unsharp_params to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.40, %if.end.39, %if.end
  %26 = load i32, i32* %status, align 4
  %cmp42 = icmp eq i32 %26, 3
  br i1 %cmp42, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %sw.epilog
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 2
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_drawable47 = bitcast %union._GimpParamData* %data46 to i32*
  %28 = load i32, i32* %d_drawable47, align 4
  %call48 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %28)
  store %struct._GimpDrawable* %call48, %struct._GimpDrawable** %drawable, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 0), align 8
  %31 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 1), align 8
  call void @unsharp_mask(%struct._GimpDrawable* %29, double %30, double %31)
  %call49 = call i32 @gimp_displays_flush()
  %32 = load i32, i32* %run_mode, align 4
  %cmp50 = icmp eq i32 %32, 0
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.44
  %call53 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.UnsharpMaskParams* @unsharp_params to i8*), i32 24)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.44
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %33)
  %34 = load i32, i32* %status, align 4
  store i32 %34, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then, %if.end.54, %sw.epilog
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

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @unsharp_mask_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
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
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %26, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %29, i32 6)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #4
  %38 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 0), align 8
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %37, i32 0, i32 0, i8* %call27, i32 120, i32 5, double %38, double 1.000000e-01, double 5.000000e+02, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %adj, align 8
  %39 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %40 = bitcast %struct._GtkObject* %39 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.UnsharpMaskParams* @unsharp_params to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 2)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call31)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)) #4
  %48 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 1), align 8
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %47, i32 0, i32 1, i8* %call33, i32 120, i32 5, double %48, double 0.000000e+00, double 1.000000e+01, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %adj, align 8
  %49 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %50 = bitcast %struct._GtkObject* %49 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 2)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call37)
  %57 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)) #4
  %58 = load i32, i32* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 2), align 4
  %conv = sitofp i32 %58 to double
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %57, i32 0, i32 2, i8* %call39, i32 120, i32 5, double %conv, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call40, %struct._GtkObject** %adj, align 8
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 2)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_dialog_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call43)
  %68 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDialog*
  %call45 = call i32 @gimp_dialog_run(%struct._GimpDialog* %68)
  %cmp = icmp eq i32 %call45, -5
  %conv46 = zext i1 %cmp to i32
  store i32 %conv46, i32* %run, align 4
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %69)
  %70 = load i32, i32* %run, align 4
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal void @unsharp_mask(%struct._GimpDrawable* %drawable, double %radius, double %amount) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %radius.addr = alloca double, align 8
  %amount.addr = alloca double, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %radius, double* %radius.addr, align 8
  store double %amount, double* %amount.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %0, i32 0, i32 0, i32 %2, i32 %4, i32 0, i32 0)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width1, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height2, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %7, i32 %9, i32 1, i32 1)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %11, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 3
  %13 = load i32, i32* %bpp, align 4
  %14 = load double, double* %radius.addr, align 8
  %15 = load double, double* %amount.addr, align 8
  %16 = load i32, i32* %x1, align 4
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %y1, align 4
  %19 = load i32, i32* %y2, align 4
  call void @unsharp_region(%struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn* %destPR, i32 %13, double %14, double %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 1)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %20)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_merge_shadow(i32 %22, i32 1)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id5, align 4
  %25 = load i32, i32* %x1, align 4
  %26 = load i32, i32* %y1, align 4
  %27 = load i32, i32* %x2, align 4
  %28 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %27, %28
  %29 = load i32, i32* %y2, align 4
  %30 = load i32, i32* %y1, align 4
  %sub6 = sub nsw i32 %29, %30
  %call7 = call i32 @gimp_drawable_update(i32 %24, i32 %25, i32 %26, i32 %sub, i32 %sub6)
  ret void
}

declare i32 @gimp_displays_flush() #1

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

; Function Attrs: nounwind uwtable
define internal void @preview_update(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %border = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %2)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load i32, i32* %width3, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 2
  %7 = load i32, i32* %height4, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %3, i32 0, i32 0, i32 %5, i32 %7, i32 0, i32 0)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width5, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height6, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %8, i32 0, i32 0, i32 %10, i32 %12, i32 1, i32 1)
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %13, i32* %x, i32* %y)
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %14, i32* %width, i32* %height)
  %15 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 0), align 8
  %mul = fmul double 2.000000e+00, %15
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %border, align 4
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %border, align 4
  %sub = sub nsw i32 %16, %17
  %cmp = icmp sgt i32 0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %border, align 4
  %sub8 = sub nsw i32 %18, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub8, %cond.false ]
  store i32 %cond, i32* %x1, align 4
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %border, align 4
  %sub9 = sub nsw i32 %20, %21
  %cmp10 = icmp sgt i32 0, %sub9
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %border, align 4
  %sub14 = sub nsw i32 %22, %23
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i32 [ 0, %cond.true.12 ], [ %sub14, %cond.false.13 ]
  store i32 %cond16, i32* %y1, align 4
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %width, align 4
  %add17 = add nsw i32 %24, %25
  %26 = load i32, i32* %border, align 4
  %add18 = add nsw i32 %add17, %26
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 1
  %28 = load i32, i32* %width19, align 4
  %cmp20 = icmp ult i32 %add18, %28
  br i1 %cmp20, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %cond.end.15
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %width, align 4
  %add23 = add nsw i32 %29, %30
  %31 = load i32, i32* %border, align 4
  %add24 = add nsw i32 %add23, %31
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end.15
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 1
  %33 = load i32, i32* %width26, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.22
  %cond28 = phi i32 [ %add24, %cond.true.22 ], [ %33, %cond.false.25 ]
  store i32 %cond28, i32* %x2, align 4
  %34 = load i32, i32* %y, align 4
  %35 = load i32, i32* %height, align 4
  %add29 = add nsw i32 %34, %35
  %36 = load i32, i32* %border, align 4
  %add30 = add nsw i32 %add29, %36
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 2
  %38 = load i32, i32* %height31, align 4
  %cmp32 = icmp ult i32 %add30, %38
  br i1 %cmp32, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.end.27
  %39 = load i32, i32* %y, align 4
  %40 = load i32, i32* %height, align 4
  %add35 = add nsw i32 %39, %40
  %41 = load i32, i32* %border, align 4
  %add36 = add nsw i32 %add35, %41
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.end.27
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 2
  %43 = load i32, i32* %height38, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.34
  %cond40 = phi i32 [ %add36, %cond.true.34 ], [ %43, %cond.false.37 ]
  store i32 %cond40, i32* %y2, align 4
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 3
  %45 = load i32, i32* %bpp, align 4
  %46 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 0), align 8
  %47 = load double, double* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 1), align 8
  %48 = load i32, i32* %x1, align 4
  %49 = load i32, i32* %x2, align 4
  %50 = load i32, i32* %y1, align 4
  %51 = load i32, i32* %y2, align 4
  call void @unsharp_region(%struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn* %destPR, i32 %45, double %46, double %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 0)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = load i32, i32* %x, align 4
  %54 = load i32, i32* %y, align 4
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 0, i32 1)
  %57 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %58 = bitcast %struct._GimpPreview* %57 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_drawable_preview_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call41)
  %59 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %59, %struct._GimpPixelRgn* %destPR)
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

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @unsharp_region(%struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn* %destPR, i32 %bpp, double %radius, double %amount, i32 %x1, i32 %x2, i32 %y1, i32 %y2, i32 %show_progress) #0 {
entry:
  %srcPR.addr = alloca %struct._GimpPixelRgn*, align 8
  %destPR.addr = alloca %struct._GimpPixelRgn*, align 8
  %bpp.addr = alloca i32, align 4
  %radius.addr = alloca double, align 8
  %amount.addr = alloca double, align 8
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %show_progress.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cmatrix = alloca double*, align 8
  %cmatrix_length = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %threshold = alloca i32, align 4
  %box_blur = alloca i32, align 4
  %box_width = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %value = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct._GimpPixelRgn* %srcPR, %struct._GimpPixelRgn** %srcPR.addr, align 8
  store %struct._GimpPixelRgn* %destPR, %struct._GimpPixelRgn** %destPR.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store double %radius, double* %radius.addr, align 8
  store double %amount, double* %amount.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %show_progress, i32* %show_progress.addr, align 4
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %width, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %3 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %height, align 4
  store double* null, double** %cmatrix, align 8
  store i32 0, i32* %cmatrix_length, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.UnsharpMaskParams, %struct.UnsharpMaskParams* @unsharp_params, i32 0, i32 2), align 4
  store i32 %4, i32* %threshold, align 4
  store i32 0, i32* %box_width, align 4
  %5 = load i32, i32* %show_progress.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)) #4
  %call2 = call i32 @gimp_progress_init(i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load double, double* %radius.addr, align 8
  %cmp = fcmp olt double %6, 1.000000e+01
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %box_blur, align 4
  %7 = load double, double* %radius.addr, align 8
  %call4 = call i32 @gen_convolve_matrix(double %7, double** %cmatrix)
  store i32 %call4, i32* %cmatrix_length, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end
  store i32 1, i32* %box_blur, align 4
  %8 = load double, double* %radius.addr, align 8
  %mul = fmul double %8, 3.000000e+00
  %call5 = call double @sqrt(double 0x401921FB54442D18) #4
  %mul6 = fmul double %mul, %call5
  %div = fdiv double %mul6, 4.000000e+00
  %add = fadd double %div, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %box_width, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  %9 = load i32, i32* %width, align 4
  %10 = load i32, i32* %height, align 4
  %cmp8 = icmp sgt i32 %9, %10
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %11 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %12 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  %13 = load i32, i32* %bpp.addr, align 4
  %mul10 = mul nsw i32 %cond, %13
  %conv11 = sext i32 %mul10 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 1)
  store i8* %call12, i8** %src, align 8
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %cmp13 = icmp sgt i32 %14, %15
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  %16 = load i32, i32* %width, align 4
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end
  %17 = load i32, i32* %height, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i32 [ %16, %cond.true.15 ], [ %17, %cond.false.16 ]
  %18 = load i32, i32* %bpp.addr, align 4
  %mul19 = mul nsw i32 %cond18, %18
  %conv20 = sext i32 %mul19 to i64
  %call21 = call noalias i8* @g_malloc_n(i64 %conv20, i64 1)
  store i8* %call21, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.17
  %19 = load i32, i32* %row, align 4
  %20 = load i32, i32* %height, align 4
  %cmp22 = icmp slt i32 %19, %20
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %22 = load i8*, i8** %src, align 8
  %23 = load i32, i32* %x1.addr, align 4
  %24 = load i32, i32* %y1.addr, align 4
  %25 = load i32, i32* %row, align 4
  %add24 = add nsw i32 %24, %25
  %26 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %21, i8* %22, i32 %23, i32 %add24, i32 %26)
  %27 = load i32, i32* %box_blur, align 4
  %tobool25 = icmp ne i32 %27, 0
  br i1 %tobool25, label %if.then.26, label %if.else.32

if.then.26:                                       ; preds = %for.body
  %28 = load i32, i32* %box_width, align 4
  %rem = srem i32 %28, 2
  %tobool27 = icmp ne i32 %rem, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.26
  %29 = load i32, i32* %box_width, align 4
  %30 = load i8*, i8** %src, align 8
  %31 = load i8*, i8** %dest, align 8
  %32 = load i32, i32* %width, align 4
  %33 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %29, i32 0, i8* %30, i8* %31, i32 %32, i32 %33)
  %34 = load i32, i32* %box_width, align 4
  %35 = load i8*, i8** %dest, align 8
  %36 = load i8*, i8** %src, align 8
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %34, i32 0, i8* %35, i8* %36, i32 %37, i32 %38)
  %39 = load i32, i32* %box_width, align 4
  %40 = load i8*, i8** %src, align 8
  %41 = load i8*, i8** %dest, align 8
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %39, i32 0, i8* %40, i8* %41, i32 %42, i32 %43)
  br label %if.end.31

if.else.29:                                       ; preds = %if.then.26
  %44 = load i32, i32* %box_width, align 4
  %45 = load i8*, i8** %src, align 8
  %46 = load i8*, i8** %dest, align 8
  %47 = load i32, i32* %width, align 4
  %48 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %44, i32 -1, i8* %45, i8* %46, i32 %47, i32 %48)
  %49 = load i32, i32* %box_width, align 4
  %50 = load i8*, i8** %dest, align 8
  %51 = load i8*, i8** %src, align 8
  %52 = load i32, i32* %width, align 4
  %53 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %49, i32 1, i8* %50, i8* %51, i32 %52, i32 %53)
  %54 = load i32, i32* %box_width, align 4
  %add30 = add nsw i32 %54, 1
  %55 = load i8*, i8** %src, align 8
  %56 = load i8*, i8** %dest, align 8
  %57 = load i32, i32* %width, align 4
  %58 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %add30, i32 0, i8* %55, i8* %56, i32 %57, i32 %58)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.33

if.else.32:                                       ; preds = %for.body
  %59 = load double*, double** %cmatrix, align 8
  %60 = load i32, i32* %cmatrix_length, align 4
  %61 = load i8*, i8** %src, align 8
  %62 = load i8*, i8** %dest, align 8
  %63 = load i32, i32* %width, align 4
  %64 = load i32, i32* %bpp.addr, align 4
  call void @gaussian_blur_line(double* %59, i32 %60, i8* %61, i8* %62, i32 %63, i32 %64)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.end.31
  %65 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %destPR.addr, align 8
  %66 = load i8*, i8** %dest, align 8
  %67 = load i32, i32* %x1.addr, align 4
  %68 = load i32, i32* %y1.addr, align 4
  %69 = load i32, i32* %row, align 4
  %add34 = add nsw i32 %68, %69
  %70 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %65, i8* %66, i32 %67, i32 %add34, i32 %70)
  %71 = load i32, i32* %show_progress.addr, align 4
  %tobool35 = icmp ne i32 %71, 0
  br i1 %tobool35, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.33
  %72 = load i32, i32* %row, align 4
  %rem36 = srem i32 %72, 64
  %cmp37 = icmp eq i32 %rem36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %land.lhs.true
  %73 = load i32, i32* %row, align 4
  %conv40 = sitofp i32 %73 to double
  %74 = load i32, i32* %height, align 4
  %mul41 = mul nsw i32 3, %74
  %conv42 = sitofp i32 %mul41 to double
  %div43 = fdiv double %conv40, %conv42
  %call44 = call i32 @gimp_progress_update(double %div43)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %land.lhs.true, %if.end.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %75 = load i32, i32* %row, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.75, %for.end
  %76 = load i32, i32* %col, align 4
  %77 = load i32, i32* %width, align 4
  %cmp47 = icmp slt i32 %76, %77
  br i1 %cmp47, label %for.body.49, label %for.end.77

for.body.49:                                      ; preds = %for.cond.46
  %78 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %destPR.addr, align 8
  %79 = load i8*, i8** %src, align 8
  %80 = load i32, i32* %x1.addr, align 4
  %81 = load i32, i32* %col, align 4
  %add50 = add nsw i32 %80, %81
  %82 = load i32, i32* %y1.addr, align 4
  %83 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %78, i8* %79, i32 %add50, i32 %82, i32 %83)
  %84 = load i32, i32* %box_blur, align 4
  %tobool51 = icmp ne i32 %84, 0
  br i1 %tobool51, label %if.then.52, label %if.else.59

if.then.52:                                       ; preds = %for.body.49
  %85 = load i32, i32* %box_width, align 4
  %rem53 = srem i32 %85, 2
  %tobool54 = icmp ne i32 %rem53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.52
  %86 = load i32, i32* %box_width, align 4
  %87 = load i8*, i8** %src, align 8
  %88 = load i8*, i8** %dest, align 8
  %89 = load i32, i32* %height, align 4
  %90 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %86, i32 0, i8* %87, i8* %88, i32 %89, i32 %90)
  %91 = load i32, i32* %box_width, align 4
  %92 = load i8*, i8** %dest, align 8
  %93 = load i8*, i8** %src, align 8
  %94 = load i32, i32* %height, align 4
  %95 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %91, i32 0, i8* %92, i8* %93, i32 %94, i32 %95)
  %96 = load i32, i32* %box_width, align 4
  %97 = load i8*, i8** %src, align 8
  %98 = load i8*, i8** %dest, align 8
  %99 = load i32, i32* %height, align 4
  %100 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %96, i32 0, i8* %97, i8* %98, i32 %99, i32 %100)
  br label %if.end.58

if.else.56:                                       ; preds = %if.then.52
  %101 = load i32, i32* %box_width, align 4
  %102 = load i8*, i8** %src, align 8
  %103 = load i8*, i8** %dest, align 8
  %104 = load i32, i32* %height, align 4
  %105 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %101, i32 -1, i8* %102, i8* %103, i32 %104, i32 %105)
  %106 = load i32, i32* %box_width, align 4
  %107 = load i8*, i8** %dest, align 8
  %108 = load i8*, i8** %src, align 8
  %109 = load i32, i32* %height, align 4
  %110 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %106, i32 1, i8* %107, i8* %108, i32 %109, i32 %110)
  %111 = load i32, i32* %box_width, align 4
  %add57 = add nsw i32 %111, 1
  %112 = load i8*, i8** %src, align 8
  %113 = load i8*, i8** %dest, align 8
  %114 = load i32, i32* %height, align 4
  %115 = load i32, i32* %bpp.addr, align 4
  call void @box_blur_line(i32 %add57, i32 0, i8* %112, i8* %113, i32 %114, i32 %115)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.60

if.else.59:                                       ; preds = %for.body.49
  %116 = load double*, double** %cmatrix, align 8
  %117 = load i32, i32* %cmatrix_length, align 4
  %118 = load i8*, i8** %src, align 8
  %119 = load i8*, i8** %dest, align 8
  %120 = load i32, i32* %height, align 4
  %121 = load i32, i32* %bpp.addr, align 4
  call void @gaussian_blur_line(double* %116, i32 %117, i8* %118, i8* %119, i32 %120, i32 %121)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.end.58
  %122 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %destPR.addr, align 8
  %123 = load i8*, i8** %dest, align 8
  %124 = load i32, i32* %x1.addr, align 4
  %125 = load i32, i32* %col, align 4
  %add61 = add nsw i32 %124, %125
  %126 = load i32, i32* %y1.addr, align 4
  %127 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %122, i8* %123, i32 %add61, i32 %126, i32 %127)
  %128 = load i32, i32* %show_progress.addr, align 4
  %tobool62 = icmp ne i32 %128, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.74

land.lhs.true.63:                                 ; preds = %if.end.60
  %129 = load i32, i32* %col, align 4
  %rem64 = srem i32 %129, 64
  %cmp65 = icmp eq i32 %rem64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %land.lhs.true.63
  %130 = load i32, i32* %col, align 4
  %conv68 = sitofp i32 %130 to double
  %131 = load i32, i32* %width, align 4
  %mul69 = mul nsw i32 3, %131
  %conv70 = sitofp i32 %mul69 to double
  %div71 = fdiv double %conv68, %conv70
  %add72 = fadd double %div71, 3.300000e-01
  %call73 = call i32 @gimp_progress_update(double %add72)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %land.lhs.true.63, %if.end.60
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %132 = load i32, i32* %col, align 4
  %inc76 = add nsw i32 %132, 1
  store i32 %inc76, i32* %col, align 4
  br label %for.cond.46

for.end.77:                                       ; preds = %for.cond.46
  %133 = load i32, i32* %show_progress.addr, align 4
  %tobool78 = icmp ne i32 %133, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %for.end.77
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #4
  %call81 = call i32 @gimp_progress_set_text(i8* %call80)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %for.end.77
  store i32 0, i32* %row, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.146, %if.end.82
  %134 = load i32, i32* %row, align 4
  %135 = load i32, i32* %height, align 4
  %cmp84 = icmp slt i32 %134, %135
  br i1 %cmp84, label %for.body.86, label %for.end.148

for.body.86:                                      ; preds = %for.cond.83
  %136 = load i8*, i8** %src, align 8
  store i8* %136, i8** %s, align 8
  %137 = load i8*, i8** %dest, align 8
  store i8* %137, i8** %d, align 8
  %138 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %srcPR.addr, align 8
  %139 = load i8*, i8** %src, align 8
  %140 = load i32, i32* %x1.addr, align 4
  %141 = load i32, i32* %y1.addr, align 4
  %142 = load i32, i32* %row, align 4
  %add87 = add nsw i32 %141, %142
  %143 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %138, i8* %139, i32 %140, i32 %add87, i32 %143)
  %144 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %destPR.addr, align 8
  %145 = load i8*, i8** %dest, align 8
  %146 = load i32, i32* %x1.addr, align 4
  %147 = load i32, i32* %y1.addr, align 4
  %148 = load i32, i32* %row, align 4
  %add88 = add nsw i32 %147, %148
  %149 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %144, i8* %145, i32 %146, i32 %add88, i32 %149)
  store i32 0, i32* %u, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.129, %for.body.86
  %150 = load i32, i32* %u, align 4
  %151 = load i32, i32* %width, align 4
  %cmp90 = icmp slt i32 %150, %151
  br i1 %cmp90, label %for.body.92, label %for.end.131

for.body.92:                                      ; preds = %for.cond.89
  store i32 0, i32* %v, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.126, %for.body.92
  %152 = load i32, i32* %v, align 4
  %153 = load i32, i32* %bpp.addr, align 4
  %cmp94 = icmp slt i32 %152, %153
  br i1 %cmp94, label %for.body.96, label %for.end.128

for.body.96:                                      ; preds = %for.cond.93
  %154 = load i8*, i8** %s, align 8
  %155 = load i8, i8* %154, align 1
  %conv97 = zext i8 %155 to i32
  %156 = load i8*, i8** %d, align 8
  %157 = load i8, i8* %156, align 1
  %conv98 = zext i8 %157 to i32
  %sub99 = sub nsw i32 %conv97, %conv98
  store i32 %sub99, i32* %diff, align 4
  %158 = load i32, i32* %diff, align 4
  %mul100 = mul nsw i32 2, %158
  %call101 = call i32 @abs(i32 %mul100) #6
  %159 = load i32, i32* %threshold, align 4
  %cmp102 = icmp slt i32 %call101, %159
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.body.96
  store i32 0, i32* %diff, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %for.body.96
  %160 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %161 = load i8, i8* %160, align 1
  %conv106 = zext i8 %161 to i32
  %conv107 = sitofp i32 %conv106 to double
  %162 = load double, double* %amount.addr, align 8
  %163 = load i32, i32* %diff, align 4
  %conv108 = sitofp i32 %163 to double
  %mul109 = fmul double %162, %conv108
  %add110 = fadd double %conv107, %mul109
  %conv111 = fptosi double %add110 to i32
  store i32 %conv111, i32* %value, align 4
  %164 = load i32, i32* %value, align 4
  %cmp112 = icmp sgt i32 %164, 255
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %if.end.105
  br label %cond.end.122

cond.false.115:                                   ; preds = %if.end.105
  %165 = load i32, i32* %value, align 4
  %cmp116 = icmp slt i32 %165, 0
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %cond.false.115
  br label %cond.end.120

cond.false.119:                                   ; preds = %cond.false.115
  %166 = load i32, i32* %value, align 4
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.118
  %cond121 = phi i32 [ 0, %cond.true.118 ], [ %166, %cond.false.119 ]
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.end.120, %cond.true.114
  %cond123 = phi i32 [ 255, %cond.true.114 ], [ %cond121, %cond.end.120 ]
  %conv124 = trunc i32 %cond123 to i8
  %167 = load i8*, i8** %d, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr125, i8** %d, align 8
  store i8 %conv124, i8* %167, align 1
  br label %for.inc.126

for.inc.126:                                      ; preds = %cond.end.122
  %168 = load i32, i32* %v, align 4
  %inc127 = add nsw i32 %168, 1
  store i32 %inc127, i32* %v, align 4
  br label %for.cond.93

for.end.128:                                      ; preds = %for.cond.93
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %169 = load i32, i32* %u, align 4
  %inc130 = add nsw i32 %169, 1
  store i32 %inc130, i32* %u, align 4
  br label %for.cond.89

for.end.131:                                      ; preds = %for.cond.89
  %170 = load i32, i32* %show_progress.addr, align 4
  %tobool132 = icmp ne i32 %170, 0
  br i1 %tobool132, label %land.lhs.true.133, label %if.end.144

land.lhs.true.133:                                ; preds = %for.end.131
  %171 = load i32, i32* %row, align 4
  %rem134 = srem i32 %171, 64
  %cmp135 = icmp eq i32 %rem134, 0
  br i1 %cmp135, label %if.then.137, label %if.end.144

if.then.137:                                      ; preds = %land.lhs.true.133
  %172 = load i32, i32* %row, align 4
  %conv138 = sitofp i32 %172 to double
  %173 = load i32, i32* %height, align 4
  %mul139 = mul nsw i32 3, %173
  %conv140 = sitofp i32 %mul139 to double
  %div141 = fdiv double %conv138, %conv140
  %add142 = fadd double %div141, 6.700000e-01
  %call143 = call i32 @gimp_progress_update(double %add142)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.137, %land.lhs.true.133, %for.end.131
  %174 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %destPR.addr, align 8
  %175 = load i8*, i8** %dest, align 8
  %176 = load i32, i32* %x1.addr, align 4
  %177 = load i32, i32* %y1.addr, align 4
  %178 = load i32, i32* %row, align 4
  %add145 = add nsw i32 %177, %178
  %179 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %174, i8* %175, i32 %176, i32 %add145, i32 %179)
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.144
  %180 = load i32, i32* %row, align 4
  %inc147 = add nsw i32 %180, 1
  store i32 %inc147, i32* %row, align 4
  br label %for.cond.83

for.end.148:                                      ; preds = %for.cond.83
  %181 = load i32, i32* %show_progress.addr, align 4
  %tobool149 = icmp ne i32 %181, 0
  br i1 %tobool149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %for.end.148
  %call151 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %for.end.148
  %182 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %182)
  %183 = load i8*, i8** %src, align 8
  call void @g_free(i8* %183)
  %184 = load double*, double** %cmatrix, align 8
  %185 = bitcast double* %184 to i8*
  call void @g_free(i8* %185)
  ret void
}

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gen_convolve_matrix(double %radius, double** %cmatrix_p) #0 {
entry:
  %radius.addr = alloca double, align 8
  %cmatrix_p.addr = alloca double**, align 8
  %cmatrix = alloca double*, align 8
  %std_dev = alloca double, align 8
  %sum = alloca double, align 8
  %matrix_length = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %base_x = alloca double, align 8
  %r = alloca double, align 8
  store double %radius, double* %radius.addr, align 8
  store double** %cmatrix_p, double*** %cmatrix_p.addr, align 8
  %0 = load double, double* %radius.addr, align 8
  %call = call double @fabs(double %0) #6
  %add = fadd double %call, 1.000000e+00
  store double %add, double* %radius.addr, align 8
  %1 = load double, double* %radius.addr, align 8
  store double %1, double* %std_dev, align 8
  %2 = load double, double* %std_dev, align 8
  %mul = fmul double %2, 2.000000e+00
  store double %mul, double* %radius.addr, align 8
  %3 = load double, double* %radius.addr, align 8
  %sub = fsub double %3, 5.000000e-01
  %call1 = call double @ceil(double %sub) #6
  %mul2 = fmul double 2.000000e+00, %call1
  %add3 = fadd double %mul2, 1.000000e+00
  %conv = fptosi double %add3 to i32
  store i32 %conv, i32* %matrix_length, align 4
  %4 = load i32, i32* %matrix_length, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %matrix_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %matrix_length, align 4
  %conv5 = sext i32 %5 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv5, i64 8)
  %6 = bitcast i8* %call6 to double*
  %7 = load double**, double*** %cmatrix_p.addr, align 8
  store double* %6, double** %7, align 8
  %8 = load double**, double*** %cmatrix_p.addr, align 8
  %9 = load double*, double** %8, align 8
  store double* %9, double** %cmatrix, align 8
  %10 = load i32, i32* %matrix_length, align 4
  %div = sdiv i32 %10, 2
  %add7 = add nsw i32 %div, 1
  store i32 %add7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %matrix_length, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %matrix_length, align 4
  %div10 = sdiv i32 %14, 2
  %sub11 = sub nsw i32 %13, %div10
  %conv12 = sitofp i32 %sub11 to double
  %sub13 = fsub double %conv12, 5.000000e-01
  store double %sub13, double* %base_x, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4
  %cmp15 = icmp sle i32 %15, 50
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %16 = load double, double* %base_x, align 8
  %17 = load i32, i32* %j, align 4
  %conv18 = sitofp i32 %17 to double
  %mul19 = fmul double 2.000000e-02, %conv18
  %add20 = fadd double %16, %mul19
  store double %add20, double* %r, align 8
  %18 = load double, double* %r, align 8
  %19 = load double, double* %radius.addr, align 8
  %cmp21 = fcmp ole double %18, %19
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %for.body.17
  %20 = load double, double* %r, align 8
  %21 = load double, double* %r, align 8
  %mul24 = fmul double %20, %21
  %sub25 = fsub double -0.000000e+00, %mul24
  %22 = load double, double* %std_dev, align 8
  %23 = load double, double* %std_dev, align 8
  %mul26 = fmul double %22, %23
  %mul27 = fmul double 2.000000e+00, %mul26
  %div28 = fdiv double %sub25, %mul27
  %call29 = call double @exp(double %div28) #4
  %24 = load double, double* %sum, align 8
  %add30 = fadd double %24, %call29
  store double %add30, double* %sum, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.23, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %26 = load double, double* %sum, align 8
  %div32 = fdiv double %26, 5.000000e+01
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load double*, double** %cmatrix, align 8
  %arrayidx = getelementptr inbounds double, double* %28, i64 %idxprom
  store double %div32, double* %arrayidx, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %29 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.47, %for.end.35
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %matrix_length, align 4
  %div37 = sdiv i32 %31, 2
  %cmp38 = icmp sle i32 %30, %div37
  br i1 %cmp38, label %for.body.40, label %for.end.49

for.body.40:                                      ; preds = %for.cond.36
  %32 = load i32, i32* %matrix_length, align 4
  %sub41 = sub nsw i32 %32, 1
  %33 = load i32, i32* %i, align 4
  %sub42 = sub nsw i32 %sub41, %33
  %idxprom43 = sext i32 %sub42 to i64
  %34 = load double*, double** %cmatrix, align 8
  %arrayidx44 = getelementptr inbounds double, double* %34, i64 %idxprom43
  %35 = load double, double* %arrayidx44, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load double*, double** %cmatrix, align 8
  %arrayidx46 = getelementptr inbounds double, double* %37, i64 %idxprom45
  store double %35, double* %arrayidx46, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.40
  %38 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %38, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.36

for.end.49:                                       ; preds = %for.cond.36
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.67, %for.end.49
  %39 = load i32, i32* %j, align 4
  %cmp51 = icmp sle i32 %39, 50
  br i1 %cmp51, label %for.body.53, label %for.end.69

for.body.53:                                      ; preds = %for.cond.50
  %40 = load i32, i32* %j, align 4
  %conv54 = sitofp i32 %40 to double
  %mul55 = fmul double 2.000000e-02, %conv54
  %add56 = fadd double -5.000000e-01, %mul55
  %41 = load i32, i32* %j, align 4
  %conv57 = sitofp i32 %41 to double
  %mul58 = fmul double 2.000000e-02, %conv57
  %add59 = fadd double -5.000000e-01, %mul58
  %mul60 = fmul double %add56, %add59
  %sub61 = fsub double -0.000000e+00, %mul60
  %42 = load double, double* %std_dev, align 8
  %43 = load double, double* %std_dev, align 8
  %mul62 = fmul double %42, %43
  %mul63 = fmul double 2.000000e+00, %mul62
  %div64 = fdiv double %sub61, %mul63
  %call65 = call double @exp(double %div64) #4
  %44 = load double, double* %sum, align 8
  %add66 = fadd double %44, %call65
  store double %add66, double* %sum, align 8
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.53
  %45 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %45, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.50

for.end.69:                                       ; preds = %for.cond.50
  %46 = load double, double* %sum, align 8
  %div70 = fdiv double %46, 5.100000e+01
  %47 = load i32, i32* %matrix_length, align 4
  %div71 = sdiv i32 %47, 2
  %idxprom72 = sext i32 %div71 to i64
  %48 = load double*, double** %cmatrix, align 8
  %arrayidx73 = getelementptr inbounds double, double* %48, i64 %idxprom72
  store double %div70, double* %arrayidx73, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.81, %for.end.69
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %matrix_length, align 4
  %cmp75 = icmp slt i32 %49, %50
  br i1 %cmp75, label %for.body.77, label %for.end.83

for.body.77:                                      ; preds = %for.cond.74
  %51 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %51 to i64
  %52 = load double*, double** %cmatrix, align 8
  %arrayidx79 = getelementptr inbounds double, double* %52, i64 %idxprom78
  %53 = load double, double* %arrayidx79, align 8
  %54 = load double, double* %sum, align 8
  %add80 = fadd double %54, %53
  store double %add80, double* %sum, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.77
  %55 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %55, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.74

for.end.83:                                       ; preds = %for.cond.74
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.93, %for.end.83
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %matrix_length, align 4
  %cmp85 = icmp slt i32 %56, %57
  br i1 %cmp85, label %for.body.87, label %for.end.95

for.body.87:                                      ; preds = %for.cond.84
  %58 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %58 to i64
  %59 = load double*, double** %cmatrix, align 8
  %arrayidx89 = getelementptr inbounds double, double* %59, i64 %idxprom88
  %60 = load double, double* %arrayidx89, align 8
  %61 = load double, double* %sum, align 8
  %div90 = fdiv double %60, %61
  %62 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %62 to i64
  %63 = load double*, double** %cmatrix, align 8
  %arrayidx92 = getelementptr inbounds double, double* %63, i64 %idxprom91
  store double %div90, double* %arrayidx92, align 8
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.87
  %64 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %64, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.84

for.end.95:                                       ; preds = %for.cond.84
  %65 = load i32, i32* %matrix_length, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @box_blur_line(i32 %box_width, i32 %even_offset, i8* %src, i8* %dest, i32 %len, i32 %bpp) #0 {
entry:
  %box_width.addr = alloca i32, align 4
  %even_offset.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %lead = alloca i32, align 4
  %output = alloca i32, align 4
  %trail = alloca i32, align 4
  %saved_stack = alloca i8*
  %coverage = alloca i32, align 4
  store i32 %box_width, i32* %box_width.addr, align 4
  store i32 %even_offset, i32* %even_offset.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %bpp.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  store i32 0, i32* %lead, align 4
  %3 = load i32, i32* %box_width.addr, align 4
  %rem = srem i32 %3, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %lead, align 4
  %5 = load i32, i32* %box_width.addr, align 4
  %sub = sub nsw i32 %5, 1
  %div = sdiv i32 %sub, 2
  %sub1 = sub nsw i32 %4, %div
  store i32 %sub1, i32* %output, align 4
  %6 = load i32, i32* %lead, align 4
  %7 = load i32, i32* %box_width.addr, align 4
  %sub2 = sub nsw i32 %6, %7
  store i32 %sub2, i32* %trail, align 4
  br label %if.end.15

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %even_offset.addr, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.3, label %if.else.7

if.then.3:                                        ; preds = %if.else
  %9 = load i32, i32* %lead, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %box_width.addr, align 4
  %div4 = sdiv i32 %10, 2
  %sub5 = sub nsw i32 %add, %div4
  store i32 %sub5, i32* %output, align 4
  %11 = load i32, i32* %lead, align 4
  %12 = load i32, i32* %box_width.addr, align 4
  %sub6 = sub nsw i32 %11, %12
  store i32 %sub6, i32* %trail, align 4
  br label %if.end.14

if.else.7:                                        ; preds = %if.else
  %13 = load i32, i32* %even_offset.addr, align 4
  %cmp8 = icmp eq i32 %13, -1
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else.7
  %14 = load i32, i32* %lead, align 4
  %15 = load i32, i32* %box_width.addr, align 4
  %div10 = sdiv i32 %15, 2
  %sub11 = sub nsw i32 %14, %div10
  store i32 %sub11, i32* %output, align 4
  %16 = load i32, i32* %lead, align 4
  %17 = load i32, i32* %box_width.addr, align 4
  %sub12 = sub nsw i32 %16, %17
  store i32 %sub12, i32* %trail, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else.7
  br label %do.body

do.body:                                          ; preds = %if.else.13
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 299, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.box_blur_line, i32 0, i32 0), i8* null) #7
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %bpp.addr, align 4
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.158, %for.end
  %22 = load i32, i32* %output, align 4
  %23 = load i32, i32* %len.addr, align 4
  %cmp17 = icmp slt i32 %22, %23
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* %lead, align 4
  %25 = load i32, i32* %len.addr, align 4
  %cmp18 = icmp slt i32 %24, %25
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %26 = load i32, i32* %lead, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %27 = load i32, i32* %len.addr, align 4
  %sub19 = sub nsw i32 %27, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %sub19, %cond.false ]
  %28 = load i32, i32* %trail, align 4
  %cmp20 = icmp sge i32 %28, 0
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %29 = load i32, i32* %trail, align 4
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %29, %cond.true.21 ], [ -1, %cond.false.22 ]
  %sub25 = sub nsw i32 %cond, %cond24
  store i32 %sub25, i32* %coverage, align 4
  %30 = load i32, i32* %lead, align 4
  %31 = load i32, i32* %len.addr, align 4
  %cmp26 = icmp slt i32 %30, %31
  br i1 %cmp26, label %if.then.27, label %if.else.106

if.then.27:                                       ; preds = %cond.end.23
  %32 = load i32, i32* %trail, align 4
  %cmp28 = icmp sge i32 %32, 0
  br i1 %cmp28, label %if.then.29, label %if.else.59

if.then.29:                                       ; preds = %if.then.27
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.56, %if.then.29
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %bpp.addr, align 4
  %cmp31 = icmp slt i32 %33, %34
  br i1 %cmp31, label %for.body.32, label %for.end.58

for.body.32:                                      ; preds = %for.cond.30
  %35 = load i32, i32* %bpp.addr, align 4
  %36 = load i32, i32* %lead, align 4
  %mul = mul nsw i32 %35, %36
  %37 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %mul, %37
  %idxprom34 = sext i32 %add33 to i64
  %38 = load i8*, i8** %src.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %38, i64 %idxprom34
  %39 = load i8, i8* %arrayidx35, align 1
  %conv = zext i8 %39 to i32
  %40 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %40 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %vla, i64 %idxprom36
  %41 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %41, %conv
  store i32 %add38, i32* %arrayidx37, align 4
  %42 = load i32, i32* %bpp.addr, align 4
  %43 = load i32, i32* %trail, align 4
  %mul39 = mul nsw i32 %42, %43
  %44 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %mul39, %44
  %idxprom41 = sext i32 %add40 to i64
  %45 = load i8*, i8** %src.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  %46 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %46 to i32
  %47 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %vla, i64 %idxprom44
  %48 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %48, %conv43
  store i32 %sub46, i32* %arrayidx45, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %49 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %vla, i64 %idxprom47
  %50 = load i32, i32* %arrayidx48, align 4
  %51 = load i32, i32* %coverage, align 4
  %shr = lshr i32 %51, 1
  %add49 = add i32 %50, %shr
  %52 = load i32, i32* %coverage, align 4
  %div50 = udiv i32 %add49, %52
  %conv51 = trunc i32 %div50 to i8
  %53 = load i32, i32* %bpp.addr, align 4
  %54 = load i32, i32* %output, align 4
  %mul52 = mul nsw i32 %53, %54
  %55 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %mul52, %55
  %idxprom54 = sext i32 %add53 to i64
  %56 = load i8*, i8** %dest.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %56, i64 %idxprom54
  store i8 %conv51, i8* %arrayidx55, align 1
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.32
  %57 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %57, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.30

for.end.58:                                       ; preds = %for.cond.30
  br label %if.end.105

if.else.59:                                       ; preds = %if.then.27
  %58 = load i32, i32* %output, align 4
  %cmp60 = icmp sge i32 %58, 0
  br i1 %cmp60, label %if.then.62, label %if.else.88

if.then.62:                                       ; preds = %if.else.59
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.85, %if.then.62
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %bpp.addr, align 4
  %cmp64 = icmp slt i32 %59, %60
  br i1 %cmp64, label %for.body.66, label %for.end.87

for.body.66:                                      ; preds = %for.cond.63
  %61 = load i32, i32* %bpp.addr, align 4
  %62 = load i32, i32* %lead, align 4
  %mul67 = mul nsw i32 %61, %62
  %63 = load i32, i32* %i, align 4
  %add68 = add nsw i32 %mul67, %63
  %idxprom69 = sext i32 %add68 to i64
  %64 = load i8*, i8** %src.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %64, i64 %idxprom69
  %65 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %65 to i32
  %66 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %66 to i64
  %arrayidx73 = getelementptr inbounds i32, i32* %vla, i64 %idxprom72
  %67 = load i32, i32* %arrayidx73, align 4
  %add74 = add nsw i32 %67, %conv71
  store i32 %add74, i32* %arrayidx73, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %68 to i64
  %arrayidx76 = getelementptr inbounds i32, i32* %vla, i64 %idxprom75
  %69 = load i32, i32* %arrayidx76, align 4
  %70 = load i32, i32* %coverage, align 4
  %shr77 = lshr i32 %70, 1
  %add78 = add i32 %69, %shr77
  %71 = load i32, i32* %coverage, align 4
  %div79 = udiv i32 %add78, %71
  %conv80 = trunc i32 %div79 to i8
  %72 = load i32, i32* %bpp.addr, align 4
  %73 = load i32, i32* %output, align 4
  %mul81 = mul nsw i32 %72, %73
  %74 = load i32, i32* %i, align 4
  %add82 = add nsw i32 %mul81, %74
  %idxprom83 = sext i32 %add82 to i64
  %75 = load i8*, i8** %dest.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %75, i64 %idxprom83
  store i8 %conv80, i8* %arrayidx84, align 1
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.66
  %76 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %76, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.63

for.end.87:                                       ; preds = %for.cond.63
  br label %if.end.104

if.else.88:                                       ; preds = %if.else.59
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.101, %if.else.88
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %bpp.addr, align 4
  %cmp90 = icmp slt i32 %77, %78
  br i1 %cmp90, label %for.body.92, label %for.end.103

for.body.92:                                      ; preds = %for.cond.89
  %79 = load i32, i32* %bpp.addr, align 4
  %80 = load i32, i32* %lead, align 4
  %mul93 = mul nsw i32 %79, %80
  %81 = load i32, i32* %i, align 4
  %add94 = add nsw i32 %mul93, %81
  %idxprom95 = sext i32 %add94 to i64
  %82 = load i8*, i8** %src.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %82, i64 %idxprom95
  %83 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %83 to i32
  %84 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %84 to i64
  %arrayidx99 = getelementptr inbounds i32, i32* %vla, i64 %idxprom98
  %85 = load i32, i32* %arrayidx99, align 4
  %add100 = add nsw i32 %85, %conv97
  store i32 %add100, i32* %arrayidx99, align 4
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.92
  %86 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %86, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.89

for.end.103:                                      ; preds = %for.cond.89
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %for.end.87
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %for.end.58
  br label %if.end.158

if.else.106:                                      ; preds = %cond.end.23
  %87 = load i32, i32* %trail, align 4
  %cmp107 = icmp sge i32 %87, 0
  br i1 %cmp107, label %if.then.109, label %if.else.135

if.then.109:                                      ; preds = %if.else.106
  store i32 0, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.132, %if.then.109
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %bpp.addr, align 4
  %cmp111 = icmp slt i32 %88, %89
  br i1 %cmp111, label %for.body.113, label %for.end.134

for.body.113:                                     ; preds = %for.cond.110
  %90 = load i32, i32* %bpp.addr, align 4
  %91 = load i32, i32* %trail, align 4
  %mul114 = mul nsw i32 %90, %91
  %92 = load i32, i32* %i, align 4
  %add115 = add nsw i32 %mul114, %92
  %idxprom116 = sext i32 %add115 to i64
  %93 = load i8*, i8** %src.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %93, i64 %idxprom116
  %94 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %94 to i32
  %95 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %95 to i64
  %arrayidx120 = getelementptr inbounds i32, i32* %vla, i64 %idxprom119
  %96 = load i32, i32* %arrayidx120, align 4
  %sub121 = sub nsw i32 %96, %conv118
  store i32 %sub121, i32* %arrayidx120, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %97 to i64
  %arrayidx123 = getelementptr inbounds i32, i32* %vla, i64 %idxprom122
  %98 = load i32, i32* %arrayidx123, align 4
  %99 = load i32, i32* %coverage, align 4
  %shr124 = lshr i32 %99, 1
  %add125 = add i32 %98, %shr124
  %100 = load i32, i32* %coverage, align 4
  %div126 = udiv i32 %add125, %100
  %conv127 = trunc i32 %div126 to i8
  %101 = load i32, i32* %bpp.addr, align 4
  %102 = load i32, i32* %output, align 4
  %mul128 = mul nsw i32 %101, %102
  %103 = load i32, i32* %i, align 4
  %add129 = add nsw i32 %mul128, %103
  %idxprom130 = sext i32 %add129 to i64
  %104 = load i8*, i8** %dest.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %104, i64 %idxprom130
  store i8 %conv127, i8* %arrayidx131, align 1
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.113
  %105 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %105, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.110

for.end.134:                                      ; preds = %for.cond.110
  br label %if.end.157

if.else.135:                                      ; preds = %if.else.106
  %106 = load i32, i32* %output, align 4
  %cmp136 = icmp sge i32 %106, 0
  br i1 %cmp136, label %if.then.138, label %if.end.156

if.then.138:                                      ; preds = %if.else.135
  store i32 0, i32* %i, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.153, %if.then.138
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %bpp.addr, align 4
  %cmp140 = icmp slt i32 %107, %108
  br i1 %cmp140, label %for.body.142, label %for.end.155

for.body.142:                                     ; preds = %for.cond.139
  %109 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %109 to i64
  %arrayidx144 = getelementptr inbounds i32, i32* %vla, i64 %idxprom143
  %110 = load i32, i32* %arrayidx144, align 4
  %111 = load i32, i32* %coverage, align 4
  %shr145 = lshr i32 %111, 1
  %add146 = add i32 %110, %shr145
  %112 = load i32, i32* %coverage, align 4
  %div147 = udiv i32 %add146, %112
  %conv148 = trunc i32 %div147 to i8
  %113 = load i32, i32* %bpp.addr, align 4
  %114 = load i32, i32* %output, align 4
  %mul149 = mul nsw i32 %113, %114
  %115 = load i32, i32* %i, align 4
  %add150 = add nsw i32 %mul149, %115
  %idxprom151 = sext i32 %add150 to i64
  %116 = load i8*, i8** %dest.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %116, i64 %idxprom151
  store i8 %conv148, i8* %arrayidx152, align 1
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.142
  %117 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %117, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.139

for.end.155:                                      ; preds = %for.cond.139
  br label %if.end.156

if.end.156:                                       ; preds = %for.end.155, %if.else.135
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %for.end.134
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.105
  %118 = load i32, i32* %lead, align 4
  %inc159 = add nsw i32 %118, 1
  store i32 %inc159, i32* %lead, align 4
  %119 = load i32, i32* %output, align 4
  %inc160 = add nsw i32 %119, 1
  store i32 %inc160, i32* %output, align 4
  %120 = load i32, i32* %trail, align 4
  %inc161 = add nsw i32 %120, 1
  store i32 %inc161, i32* %trail, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %121 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %121)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gaussian_blur_line(double* %cmatrix, i32 %cmatrix_length, i8* %src, i8* %dest, i32 %len, i32 %bpp) #0 {
entry:
  %cmatrix.addr = alloca double*, align 8
  %cmatrix_length.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %src_p = alloca i8*, align 8
  %src_p1 = alloca i8*, align 8
  %cmatrix_middle = alloca i32, align 4
  %row = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %scale = alloca double, align 8
  %sum = alloca double, align 8
  %scale48 = alloca double, align 8
  %sum64 = alloca double, align 8
  %sum106 = alloca double, align 8
  %scale137 = alloca double, align 8
  %sum158 = alloca double, align 8
  store double* %cmatrix, double** %cmatrix.addr, align 8
  store i32 %cmatrix_length, i32* %cmatrix_length.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %cmatrix_length.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %cmatrix_middle, align 4
  %1 = load i32, i32* %cmatrix_length.addr, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %if.then
  %3 = load i32, i32* %row, align 4
  %4 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %scale, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %len.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %cmatrix_middle, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, i32* %row, align 4
  %sub = sub nsw i32 %add, %9
  %cmp5 = icmp sge i32 %sub, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.4
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %cmatrix_middle, align 4
  %add6 = add nsw i32 %10, %11
  %12 = load i32, i32* %row, align 4
  %sub7 = sub nsw i32 %add6, %12
  %13 = load i32, i32* %cmatrix_length.addr, align 4
  %cmp8 = icmp slt i32 %sub7, %13
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %j, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load double*, double** %cmatrix.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %15, i64 %idxprom
  %16 = load double, double* %arrayidx, align 8
  %17 = load double, double* %scale, align 8
  %add10 = fadd double %17, %16
  store double %add10, double* %scale, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %19 = load i8*, i8** %src.addr, align 8
  store i8* %19, i8** %src_p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.38, %for.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %bpp.addr, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %for.body.13, label %for.end.40

for.body.13:                                      ; preds = %for.cond.11
  store double 0.000000e+00, double* %sum, align 8
  %22 = load i8*, i8** %src_p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %src_p, align 8
  store i8* %22, i8** %src_p1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.30, %for.body.13
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %len.addr, align 4
  %cmp15 = icmp slt i32 %23, %24
  br i1 %cmp15, label %for.body.16, label %for.end.32

for.body.16:                                      ; preds = %for.cond.14
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %cmatrix_middle, align 4
  %add17 = add nsw i32 %25, %26
  %27 = load i32, i32* %row, align 4
  %sub18 = sub nsw i32 %add17, %27
  %cmp19 = icmp sge i32 %sub18, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %for.body.16
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %cmatrix_middle, align 4
  %add21 = add nsw i32 %28, %29
  %30 = load i32, i32* %row, align 4
  %sub22 = sub nsw i32 %add21, %30
  %31 = load i32, i32* %cmatrix_length.addr, align 4
  %cmp23 = icmp slt i32 %sub22, %31
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %land.lhs.true.20
  %32 = load i8*, i8** %src_p1, align 8
  %33 = load i8, i8* %32, align 1
  %conv = zext i8 %33 to i32
  %conv25 = sitofp i32 %conv to double
  %34 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %34 to i64
  %35 = load double*, double** %cmatrix.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %35, i64 %idxprom26
  %36 = load double, double* %arrayidx27, align 8
  %mul = fmul double %conv25, %36
  %37 = load double, double* %sum, align 8
  %add28 = fadd double %37, %mul
  store double %add28, double* %sum, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %land.lhs.true.20, %for.body.16
  %38 = load i32, i32* %bpp.addr, align 4
  %39 = load i8*, i8** %src_p1, align 8
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %src_p1, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %40 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %40, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond.14

for.end.32:                                       ; preds = %for.cond.14
  %41 = load double, double* %sum, align 8
  %42 = load double, double* %scale, align 8
  %div33 = fdiv double %41, %42
  %add34 = fadd double %div33, 5.000000e-01
  %conv35 = fptosi double %add34 to i32
  %conv36 = trunc i32 %conv35 to i8
  %43 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr37, i8** %dest.addr, align 8
  store i8 %conv36, i8* %43, align 1
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.32
  %44 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %44, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.11

for.end.40:                                       ; preds = %for.cond.11
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %45 = load i32, i32* %row, align 4
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, i32* %row, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  br label %if.end.188

if.else:                                          ; preds = %entry
  store i32 0, i32* %row, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.90, %if.else
  %46 = load i32, i32* %row, align 4
  %47 = load i32, i32* %cmatrix_middle, align 4
  %cmp45 = icmp slt i32 %46, %47
  br i1 %cmp45, label %for.body.47, label %for.end.92

for.body.47:                                      ; preds = %for.cond.44
  store double 0.000000e+00, double* %scale48, align 8
  %48 = load i32, i32* %cmatrix_middle, align 4
  %49 = load i32, i32* %row, align 4
  %sub49 = sub nsw i32 %48, %49
  store i32 %sub49, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.57, %for.body.47
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %cmatrix_length.addr, align 4
  %cmp51 = icmp slt i32 %50, %51
  br i1 %cmp51, label %for.body.53, label %for.end.59

for.body.53:                                      ; preds = %for.cond.50
  %52 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %52 to i64
  %53 = load double*, double** %cmatrix.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %53, i64 %idxprom54
  %54 = load double, double* %arrayidx55, align 8
  %55 = load double, double* %scale48, align 8
  %add56 = fadd double %55, %54
  store double %add56, double* %scale48, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.53
  %56 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %56, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond.50

for.end.59:                                       ; preds = %for.cond.50
  %57 = load i8*, i8** %src.addr, align 8
  store i8* %57, i8** %src_p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.87, %for.end.59
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %bpp.addr, align 4
  %cmp61 = icmp slt i32 %58, %59
  br i1 %cmp61, label %for.body.63, label %for.end.89

for.body.63:                                      ; preds = %for.cond.60
  store double 0.000000e+00, double* %sum64, align 8
  %60 = load i8*, i8** %src_p, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr65, i8** %src_p, align 8
  store i8* %60, i8** %src_p1, align 8
  %61 = load i32, i32* %cmatrix_middle, align 4
  %62 = load i32, i32* %row, align 4
  %sub66 = sub nsw i32 %61, %62
  store i32 %sub66, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.79, %for.body.63
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %cmatrix_length.addr, align 4
  %cmp68 = icmp slt i32 %63, %64
  br i1 %cmp68, label %for.body.70, label %for.end.81

for.body.70:                                      ; preds = %for.cond.67
  %65 = load i8*, i8** %src_p1, align 8
  %66 = load i8, i8* %65, align 1
  %conv71 = zext i8 %66 to i32
  %conv72 = sitofp i32 %conv71 to double
  %67 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %67 to i64
  %68 = load double*, double** %cmatrix.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %68, i64 %idxprom73
  %69 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %conv72, %69
  %70 = load double, double* %sum64, align 8
  %add76 = fadd double %70, %mul75
  store double %add76, double* %sum64, align 8
  %71 = load i32, i32* %bpp.addr, align 4
  %72 = load i8*, i8** %src_p1, align 8
  %idx.ext77 = sext i32 %71 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %72, i64 %idx.ext77
  store i8* %add.ptr78, i8** %src_p1, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.70
  %73 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %73, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond.67

for.end.81:                                       ; preds = %for.cond.67
  %74 = load double, double* %sum64, align 8
  %75 = load double, double* %scale48, align 8
  %div82 = fdiv double %74, %75
  %add83 = fadd double %div82, 5.000000e-01
  %conv84 = fptosi double %add83 to i32
  %conv85 = trunc i32 %conv84 to i8
  %76 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr86, i8** %dest.addr, align 8
  store i8 %conv85, i8* %76, align 1
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.81
  %77 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %77, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.60

for.end.89:                                       ; preds = %for.cond.60
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end.89
  %78 = load i32, i32* %row, align 4
  %inc91 = add nsw i32 %78, 1
  store i32 %inc91, i32* %row, align 4
  br label %for.cond.44

for.end.92:                                       ; preds = %for.cond.44
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.130, %for.end.92
  %79 = load i32, i32* %row, align 4
  %80 = load i32, i32* %len.addr, align 4
  %81 = load i32, i32* %cmatrix_middle, align 4
  %sub94 = sub nsw i32 %80, %81
  %cmp95 = icmp slt i32 %79, %sub94
  br i1 %cmp95, label %for.body.97, label %for.end.132

for.body.97:                                      ; preds = %for.cond.93
  %82 = load i8*, i8** %src.addr, align 8
  %83 = load i32, i32* %row, align 4
  %84 = load i32, i32* %cmatrix_middle, align 4
  %sub98 = sub nsw i32 %83, %84
  %85 = load i32, i32* %bpp.addr, align 4
  %mul99 = mul nsw i32 %sub98, %85
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %82, i64 %idx.ext100
  store i8* %add.ptr101, i8** %src_p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.127, %for.body.97
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %bpp.addr, align 4
  %cmp103 = icmp slt i32 %86, %87
  br i1 %cmp103, label %for.body.105, label %for.end.129

for.body.105:                                     ; preds = %for.cond.102
  store double 0.000000e+00, double* %sum106, align 8
  %88 = load i8*, i8** %src_p, align 8
  store i8* %88, i8** %src_p1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.119, %for.body.105
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %cmatrix_length.addr, align 4
  %cmp108 = icmp slt i32 %89, %90
  br i1 %cmp108, label %for.body.110, label %for.end.121

for.body.110:                                     ; preds = %for.cond.107
  %91 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %91 to i64
  %92 = load double*, double** %cmatrix.addr, align 8
  %arrayidx112 = getelementptr inbounds double, double* %92, i64 %idxprom111
  %93 = load double, double* %arrayidx112, align 8
  %94 = load i8*, i8** %src_p1, align 8
  %95 = load i8, i8* %94, align 1
  %conv113 = zext i8 %95 to i32
  %conv114 = sitofp i32 %conv113 to double
  %mul115 = fmul double %93, %conv114
  %96 = load double, double* %sum106, align 8
  %add116 = fadd double %96, %mul115
  store double %add116, double* %sum106, align 8
  %97 = load i32, i32* %bpp.addr, align 4
  %98 = load i8*, i8** %src_p1, align 8
  %idx.ext117 = sext i32 %97 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %98, i64 %idx.ext117
  store i8* %add.ptr118, i8** %src_p1, align 8
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.110
  %99 = load i32, i32* %j, align 4
  %inc120 = add nsw i32 %99, 1
  store i32 %inc120, i32* %j, align 4
  br label %for.cond.107

for.end.121:                                      ; preds = %for.cond.107
  %100 = load i8*, i8** %src_p, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr122, i8** %src_p, align 8
  %101 = load double, double* %sum106, align 8
  %add123 = fadd double %101, 5.000000e-01
  %conv124 = fptosi double %add123 to i32
  %conv125 = trunc i32 %conv124 to i8
  %102 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr126, i8** %dest.addr, align 8
  store i8 %conv125, i8* %102, align 1
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.121
  %103 = load i32, i32* %i, align 4
  %inc128 = add nsw i32 %103, 1
  store i32 %inc128, i32* %i, align 4
  br label %for.cond.102

for.end.129:                                      ; preds = %for.cond.102
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end.129
  %104 = load i32, i32* %row, align 4
  %inc131 = add nsw i32 %104, 1
  store i32 %inc131, i32* %row, align 4
  br label %for.cond.93

for.end.132:                                      ; preds = %for.cond.93
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.185, %for.end.132
  %105 = load i32, i32* %row, align 4
  %106 = load i32, i32* %len.addr, align 4
  %cmp134 = icmp slt i32 %105, %106
  br i1 %cmp134, label %for.body.136, label %for.end.187

for.body.136:                                     ; preds = %for.cond.133
  store double 0.000000e+00, double* %scale137, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.147, %for.body.136
  %107 = load i32, i32* %j, align 4
  %108 = load i32, i32* %len.addr, align 4
  %109 = load i32, i32* %row, align 4
  %sub139 = sub nsw i32 %108, %109
  %110 = load i32, i32* %cmatrix_middle, align 4
  %add140 = add nsw i32 %sub139, %110
  %cmp141 = icmp slt i32 %107, %add140
  br i1 %cmp141, label %for.body.143, label %for.end.149

for.body.143:                                     ; preds = %for.cond.138
  %111 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %111 to i64
  %112 = load double*, double** %cmatrix.addr, align 8
  %arrayidx145 = getelementptr inbounds double, double* %112, i64 %idxprom144
  %113 = load double, double* %arrayidx145, align 8
  %114 = load double, double* %scale137, align 8
  %add146 = fadd double %114, %113
  store double %add146, double* %scale137, align 8
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.143
  %115 = load i32, i32* %j, align 4
  %inc148 = add nsw i32 %115, 1
  store i32 %inc148, i32* %j, align 4
  br label %for.cond.138

for.end.149:                                      ; preds = %for.cond.138
  %116 = load i8*, i8** %src.addr, align 8
  %117 = load i32, i32* %row, align 4
  %118 = load i32, i32* %cmatrix_middle, align 4
  %sub150 = sub nsw i32 %117, %118
  %119 = load i32, i32* %bpp.addr, align 4
  %mul151 = mul nsw i32 %sub150, %119
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds i8, i8* %116, i64 %idx.ext152
  store i8* %add.ptr153, i8** %src_p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.182, %for.end.149
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* %bpp.addr, align 4
  %cmp155 = icmp slt i32 %120, %121
  br i1 %cmp155, label %for.body.157, label %for.end.184

for.body.157:                                     ; preds = %for.cond.154
  store double 0.000000e+00, double* %sum158, align 8
  %122 = load i8*, i8** %src_p, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr159, i8** %src_p, align 8
  store i8* %122, i8** %src_p1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.174, %for.body.157
  %123 = load i32, i32* %j, align 4
  %124 = load i32, i32* %len.addr, align 4
  %125 = load i32, i32* %row, align 4
  %sub161 = sub nsw i32 %124, %125
  %126 = load i32, i32* %cmatrix_middle, align 4
  %add162 = add nsw i32 %sub161, %126
  %cmp163 = icmp slt i32 %123, %add162
  br i1 %cmp163, label %for.body.165, label %for.end.176

for.body.165:                                     ; preds = %for.cond.160
  %127 = load i8*, i8** %src_p1, align 8
  %128 = load i8, i8* %127, align 1
  %conv166 = zext i8 %128 to i32
  %conv167 = sitofp i32 %conv166 to double
  %129 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %129 to i64
  %130 = load double*, double** %cmatrix.addr, align 8
  %arrayidx169 = getelementptr inbounds double, double* %130, i64 %idxprom168
  %131 = load double, double* %arrayidx169, align 8
  %mul170 = fmul double %conv167, %131
  %132 = load double, double* %sum158, align 8
  %add171 = fadd double %132, %mul170
  store double %add171, double* %sum158, align 8
  %133 = load i32, i32* %bpp.addr, align 4
  %134 = load i8*, i8** %src_p1, align 8
  %idx.ext172 = sext i32 %133 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %134, i64 %idx.ext172
  store i8* %add.ptr173, i8** %src_p1, align 8
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.165
  %135 = load i32, i32* %j, align 4
  %inc175 = add nsw i32 %135, 1
  store i32 %inc175, i32* %j, align 4
  br label %for.cond.160

for.end.176:                                      ; preds = %for.cond.160
  %136 = load double, double* %sum158, align 8
  %137 = load double, double* %scale137, align 8
  %div177 = fdiv double %136, %137
  %add178 = fadd double %div177, 5.000000e-01
  %conv179 = fptosi double %add178 to i32
  %conv180 = trunc i32 %conv179 to i8
  %138 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr181 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr181, i8** %dest.addr, align 8
  store i8 %conv180, i8* %138, align 1
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.176
  %139 = load i32, i32* %i, align 4
  %inc183 = add nsw i32 %139, 1
  store i32 %inc183, i32* %i, align 4
  br label %for.cond.154

for.end.184:                                      ; preds = %for.cond.154
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184
  %140 = load i32, i32* %row, align 4
  %inc186 = add nsw i32 %140, 1
  store i32 %inc186, i32* %row, align 4
  br label %for.cond.133

for.end.187:                                      ; preds = %for.cond.133
  br label %if.end.188

if.end.188:                                       ; preds = %for.end.187, %for.end.43
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_set_text(i8*) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
