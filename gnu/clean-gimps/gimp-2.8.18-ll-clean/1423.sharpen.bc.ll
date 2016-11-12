; ModuleID = './plug-ins/common/sharpen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SharpenParams = type { i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Percent sharpening (default = 10)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"plug-in-sharpen\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Make image sharper (less powerful than Unsharp Mask)\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"This plug-in selectively performs a convolution filter on an image.\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Michael Sweet <mike@easysw.com>\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Copyright 1997-1998 by Michael Sweet\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"1.4.2 - 3 June 1998\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"_Sharpen...\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@sharpen_params = internal global %struct.SharpenParams { i32 10 }, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"sharpen\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Sharpen\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"gimp-sharpen\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"_Sharpness:\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@neg_lut = internal global [256 x i32] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [43 x i8] c"Programmer stupidity error: img_bpp is %d\0A\00", align 1
@pos_lut = internal global [256 x i32] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [11 x i8] c"Sharpening\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #4
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
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 5
  %8 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %8
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.SharpenParams* @sharpen_params to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @sharpen_dialog(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %11, 4
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.15

if.else:                                          ; preds = %sw.bb.9
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %13 = load i32, i32* %d_int3214, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.SharpenParams, %struct.SharpenParams* @sharpen_params, i32 0, i32 0), align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end
  %call17 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.SharpenParams* @sharpen_params to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %if.end.15, %if.end
  %14 = load i32, i32* %status, align 4
  %cmp18 = icmp eq i32 %14, 3
  br i1 %cmp18, label %if.then.20, label %if.end.39

if.then.20:                                       ; preds = %sw.epilog
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id, align 4
  %call21 = call i32 @gimp_drawable_is_rgb(i32 %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id23, align 4
  %call24 = call i32 @gimp_drawable_is_gray(i32 %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.37

if.then.26:                                       ; preds = %lor.lhs.false, %if.then.20
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @sharpen(%struct._GimpDrawable* %19)
  %20 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp ne i32 %20, 1
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.26
  %call30 = call i32 @gimp_displays_flush()
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.26
  %21 = load i32, i32* %run_mode, align 4
  %cmp32 = icmp eq i32 %21, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %call35 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.SharpenParams* @sharpen_params to i8*), i32 4)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  br label %if.end.38

if.else.37:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.end.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %sw.epilog
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %23)
  br label %return

return:                                           ; preds = %if.end.39, %if.then
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
define internal i32 @sharpen_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %26, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0)) #4
  %35 = load i32, i32* getelementptr inbounds (%struct.SharpenParams, %struct.SharpenParams* @sharpen_params, i32 0, i32 0), align 4
  %conv = sitofp i32 %35 to double
  %call26 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %34, i32 0, i32 0, i8* %call25, i32 100, i32 0, double %conv, double 1.000000e+00, double 9.900000e+01, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call26, %struct._GtkObject** %adj, align 8
  %36 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %37 = bitcast %struct._GtkObject* %36 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.SharpenParams* @sharpen_params to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %39 = bitcast %struct._GtkObject* %38 to i8*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 2)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_dialog_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call29)
  %45 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpDialog*
  %call31 = call i32 @gimp_dialog_run(%struct._GimpDialog* %45)
  %cmp = icmp eq i32 %call31, -5
  %conv32 = zext i1 %cmp to i32
  store i32 %conv32, i32* %run, align 4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %46)
  %47 = load i32, i32* %run, align 4
  ret i32 %47
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal void @sharpen(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dst_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_rows = alloca [4 x i8*], align 16
  %src_ptr = alloca i8*, align 8
  %dst_row = alloca i8*, align 8
  %neg_rows = alloca [4 x i32*], align 16
  %neg_ptr = alloca i32*, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %row = alloca i32, align 4
  %count = alloca i32, align 4
  %width = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %sel_width = alloca i32, align 4
  %sel_height = alloca i32, align 4
  %img_bpp = alloca i32, align 4
  %filter = alloca void (i32, i8*, i8*, i32*, i32*, i32*)*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store void (i32, i8*, i8*, i32*, i32*, i32*)* null, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %sel_width, i32* %sel_height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %y1, align 4
  %3 = load i32, i32* %sel_height, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %y2, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_bpp(i32 %5)
  store i32 %call2, i32* %img_bpp, align 4
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)) #4
  %call4 = call i32 @gimp_progress_init(i8* %call3)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %7 = load i32, i32* %x1, align 4
  %8 = load i32, i32* %y1, align 4
  %9 = load i32, i32* %sel_width, align 4
  %10 = load i32, i32* %sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = load i32, i32* %x1, align 4
  %13 = load i32, i32* %y1, align 4
  %14 = load i32, i32* %sel_width, align 4
  %15 = load i32, i32* %sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_rgn, %struct._GimpDrawable* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 1, i32 1)
  call void @compute_luts()
  %16 = load i32, i32* %sel_width, align 4
  %17 = load i32, i32* %img_bpp, align 4
  %mul = mul nsw i32 %16, %17
  store i32 %mul, i32* %width, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %row, align 4
  %cmp = icmp slt i32 %18, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %width, align 4
  %conv = sext i32 %19 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %20 = load i32, i32* %row, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 %idxprom
  store i8* %call5, i8** %arrayidx, align 8
  %21 = load i32, i32* %width, align 4
  %conv6 = sext i32 %21 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv6, i64 4)
  %22 = bitcast i8* %call7 to i32*
  %23 = load i32, i32* %row, align 4
  %idxprom8 = sext i32 %23 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32*], [4 x i32*]* %neg_rows, i32 0, i64 %idxprom8
  store i32* %22, i32** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %row, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %width, align 4
  %conv10 = sext i32 %25 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 1)
  store i8* %call11, i8** %dst_row, align 8
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 0
  %26 = load i8*, i8** %arrayidx12, align 8
  %27 = load i32, i32* %x1, align 4
  %28 = load i32, i32* %y1, align 4
  %29 = load i32, i32* %sel_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %26, i32 %27, i32 %28, i32 %29)
  %30 = load i32, i32* %width, align 4
  store i32 %30, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 0
  %31 = load i8*, i8** %arrayidx13, align 8
  store i8* %31, i8** %src_ptr, align 8
  %arrayidx14 = getelementptr inbounds [4 x i32*], [4 x i32*]* %neg_rows, i32 0, i64 0
  %32 = load i32*, i32** %arrayidx14, align 8
  store i32* %32, i32** %neg_ptr, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.21, %for.end
  %33 = load i32, i32* %i, align 4
  %cmp16 = icmp sgt i32 %33, 0
  br i1 %cmp16, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.15
  %34 = load i8*, i8** %src_ptr, align 8
  %35 = load i8, i8* %34, align 1
  %idxprom19 = zext i8 %35 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* @neg_lut, i32 0, i64 %idxprom19
  %36 = load i32, i32* %arrayidx20, align 4
  %37 = load i32*, i32** %neg_ptr, align 8
  store i32 %36, i32* %37, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %38 = load i32, i32* %i, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i, align 4
  %39 = load i8*, i8** %src_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %src_ptr, align 8
  %40 = load i32*, i32** %neg_ptr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %incdec.ptr22, i32** %neg_ptr, align 8
  br label %for.cond.15

for.end.23:                                       ; preds = %for.cond.15
  store i32 1, i32* %row, align 4
  store i32 1, i32* %count, align 4
  %41 = load i32, i32* %img_bpp, align 4
  switch i32 %41, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %for.end.23
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @gray_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.end.23
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @graya_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %for.end.23
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @rgb_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.end.23
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @rgba_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.23, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb
  %42 = load i32, i32* %y1, align 4
  store i32 %42, i32* %y, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.109, %sw.epilog
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %y2, align 4
  %cmp28 = icmp slt i32 %43, %44
  br i1 %cmp28, label %for.body.30, label %for.end.111

for.body.30:                                      ; preds = %for.cond.27
  %45 = load i32, i32* %y, align 4
  %add31 = add nsw i32 %45, 1
  %46 = load i32, i32* %y2, align 4
  %cmp32 = icmp slt i32 %add31, %46
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %for.body.30
  %47 = load i32, i32* %count, align 4
  %cmp35 = icmp sge i32 %47, 3
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.34
  %48 = load i32, i32* %count, align 4
  %dec38 = add nsw i32 %48, -1
  store i32 %dec38, i32* %count, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.34
  %49 = load i32, i32* %row, align 4
  %idxprom40 = sext i32 %49 to i64
  %arrayidx41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 %idxprom40
  %50 = load i8*, i8** %arrayidx41, align 8
  %51 = load i32, i32* %x1, align 4
  %52 = load i32, i32* %y, align 4
  %add42 = add nsw i32 %52, 1
  %53 = load i32, i32* %sel_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %50, i32 %51, i32 %add42, i32 %53)
  %54 = load i32, i32* %width, align 4
  store i32 %54, i32* %i, align 4
  %55 = load i32, i32* %row, align 4
  %idxprom43 = sext i32 %55 to i64
  %arrayidx44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 %idxprom43
  %56 = load i8*, i8** %arrayidx44, align 8
  store i8* %56, i8** %src_ptr, align 8
  %57 = load i32, i32* %row, align 4
  %idxprom45 = sext i32 %57 to i64
  %arrayidx46 = getelementptr inbounds [4 x i32*], [4 x i32*]* %neg_rows, i32 0, i64 %idxprom45
  %58 = load i32*, i32** %arrayidx46, align 8
  store i32* %58, i32** %neg_ptr, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.53, %if.end.39
  %59 = load i32, i32* %i, align 4
  %cmp48 = icmp sgt i32 %59, 0
  br i1 %cmp48, label %for.body.50, label %for.end.57

for.body.50:                                      ; preds = %for.cond.47
  %60 = load i8*, i8** %src_ptr, align 8
  %61 = load i8, i8* %60, align 1
  %idxprom51 = zext i8 %61 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @neg_lut, i32 0, i64 %idxprom51
  %62 = load i32, i32* %arrayidx52, align 4
  %63 = load i32*, i32** %neg_ptr, align 8
  store i32 %62, i32* %63, align 4
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.50
  %64 = load i32, i32* %i, align 4
  %dec54 = add nsw i32 %64, -1
  store i32 %dec54, i32* %i, align 4
  %65 = load i8*, i8** %src_ptr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr55, i8** %src_ptr, align 8
  %66 = load i32*, i32** %neg_ptr, align 8
  %incdec.ptr56 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %incdec.ptr56, i32** %neg_ptr, align 8
  br label %for.cond.47

for.end.57:                                       ; preds = %for.cond.47
  %67 = load i32, i32* %count, align 4
  %inc58 = add nsw i32 %67, 1
  store i32 %inc58, i32* %count, align 4
  %68 = load i32, i32* %row, align 4
  %add59 = add nsw i32 %68, 1
  %and = and i32 %add59, 3
  store i32 %and, i32* %row, align 4
  br label %if.end.61

if.else:                                          ; preds = %for.body.30
  %69 = load i32, i32* %count, align 4
  %dec60 = add nsw i32 %69, -1
  store i32 %dec60, i32* %count, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %for.end.57
  %70 = load i32, i32* %count, align 4
  %cmp62 = icmp eq i32 %70, 3
  br i1 %cmp62, label %if.then.64, label %if.else.85

if.then.64:                                       ; preds = %if.end.61
  %71 = load void (i32, i8*, i8*, i32*, i32*, i32*)*, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  %72 = load i32, i32* %sel_width, align 4
  %73 = load i32, i32* %row, align 4
  %add65 = add nsw i32 %73, 2
  %and66 = and i32 %add65, 3
  %idxprom67 = sext i32 %and66 to i64
  %arrayidx68 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 %idxprom67
  %74 = load i8*, i8** %arrayidx68, align 8
  %75 = load i8*, i8** %dst_row, align 8
  %76 = load i32, i32* %row, align 4
  %add69 = add nsw i32 %76, 1
  %and70 = and i32 %add69, 3
  %idxprom71 = sext i32 %and70 to i64
  %arrayidx72 = getelementptr inbounds [4 x i32*], [4 x i32*]* %neg_rows, i32 0, i64 %idxprom71
  %77 = load i32*, i32** %arrayidx72, align 8
  %78 = load i32, i32* %img_bpp, align 4
  %idx.ext = sext i32 %78 to i64
  %add.ptr = getelementptr inbounds i32, i32* %77, i64 %idx.ext
  %79 = load i32, i32* %row, align 4
  %add73 = add nsw i32 %79, 2
  %and74 = and i32 %add73, 3
  %idxprom75 = sext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [4 x i32*], [4 x i32*]* %neg_rows, i32 0, i64 %idxprom75
  %80 = load i32*, i32** %arrayidx76, align 8
  %81 = load i32, i32* %img_bpp, align 4
  %idx.ext77 = sext i32 %81 to i64
  %add.ptr78 = getelementptr inbounds i32, i32* %80, i64 %idx.ext77
  %82 = load i32, i32* %row, align 4
  %add79 = add nsw i32 %82, 3
  %and80 = and i32 %add79, 3
  %idxprom81 = sext i32 %and80 to i64
  %arrayidx82 = getelementptr inbounds [4 x i32*], [4 x i32*]* %neg_rows, i32 0, i64 %idxprom81
  %83 = load i32*, i32** %arrayidx82, align 8
  %84 = load i32, i32* %img_bpp, align 4
  %idx.ext83 = sext i32 %84 to i64
  %add.ptr84 = getelementptr inbounds i32, i32* %83, i64 %idx.ext83
  call void %71(i32 %72, i8* %74, i8* %75, i32* %add.ptr, i32* %add.ptr78, i32* %add.ptr84)
  %85 = load i8*, i8** %dst_row, align 8
  %86 = load i32, i32* %x1, align 4
  %87 = load i32, i32* %y, align 4
  %88 = load i32, i32* %sel_width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dst_rgn, i8* %85, i32 %86, i32 %87, i32 %88)
  br label %if.end.99

if.else.85:                                       ; preds = %if.end.61
  %89 = load i32, i32* %count, align 4
  %cmp86 = icmp eq i32 %89, 2
  br i1 %cmp86, label %if.then.88, label %if.end.98

if.then.88:                                       ; preds = %if.else.85
  %90 = load i32, i32* %y, align 4
  %91 = load i32, i32* %y1, align 4
  %cmp89 = icmp eq i32 %90, %91
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.then.88
  %arrayidx92 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 0
  %92 = load i8*, i8** %arrayidx92, align 8
  %93 = load i32, i32* %x1, align 4
  %94 = load i32, i32* %y, align 4
  %95 = load i32, i32* %sel_width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dst_rgn, i8* %92, i32 %93, i32 %94, i32 %95)
  br label %if.end.97

if.else.93:                                       ; preds = %if.then.88
  %96 = load i32, i32* %sel_height, align 4
  %sub = sub nsw i32 %96, 1
  %and94 = and i32 %sub, 3
  %idxprom95 = sext i32 %and94 to i64
  %arrayidx96 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 %idxprom95
  %97 = load i8*, i8** %arrayidx96, align 8
  %98 = load i32, i32* %x1, align 4
  %99 = load i32, i32* %y, align 4
  %100 = load i32, i32* %sel_width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dst_rgn, i8* %97, i32 %98, i32 %99, i32 %100)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.93, %if.then.91
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.else.85
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.64
  %101 = load i32, i32* %y, align 4
  %and100 = and i32 %101, 15
  %cmp101 = icmp eq i32 %and100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.end.99
  %102 = load i32, i32* %y, align 4
  %103 = load i32, i32* %y1, align 4
  %sub104 = sub nsw i32 %102, %103
  %conv105 = sitofp i32 %sub104 to double
  %104 = load i32, i32* %sel_height, align 4
  %conv106 = sitofp i32 %104 to double
  %div = fdiv double %conv105, %conv106
  %call107 = call i32 @gimp_progress_update(double %div)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %if.end.99
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %105 = load i32, i32* %y, align 4
  %inc110 = add nsw i32 %105, 1
  store i32 %inc110, i32* %y, align 4
  br label %for.cond.27

for.end.111:                                      ; preds = %for.cond.27
  store i32 0, i32* %row, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.120, %for.end.111
  %106 = load i32, i32* %row, align 4
  %cmp113 = icmp slt i32 %106, 4
  br i1 %cmp113, label %for.body.115, label %for.end.122

for.body.115:                                     ; preds = %for.cond.112
  %107 = load i32, i32* %row, align 4
  %idxprom116 = sext i32 %107 to i64
  %arrayidx117 = getelementptr inbounds [4 x i8*], [4 x i8*]* %src_rows, i32 0, i64 %idxprom116
  %108 = load i8*, i8** %arrayidx117, align 8
  call void @g_free(i8* %108)
  %109 = load i32, i32* %row, align 4
  %idxprom118 = sext i32 %109 to i64
  %arrayidx119 = getelementptr inbounds [4 x i32*], [4 x i32*]* %neg_rows, i32 0, i64 %idxprom118
  %110 = load i32*, i32** %arrayidx119, align 8
  %111 = bitcast i32* %110 to i8*
  call void @g_free(i8* %111)
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.115
  %112 = load i32, i32* %row, align 4
  %inc121 = add nsw i32 %112, 1
  store i32 %inc121, i32* %row, align 4
  br label %for.cond.112

for.end.122:                                      ; preds = %for.cond.112
  %113 = load i8*, i8** %dst_row, align 8
  call void @g_free(i8* %113)
  %call123 = call i32 @gimp_progress_update(double 1.000000e+00)
  %114 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %114)
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id124 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %115, i32 0, i32 0
  %116 = load i32, i32* %drawable_id124, align 4
  %call125 = call i32 @gimp_drawable_merge_shadow(i32 %116, i32 1)
  %117 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id126 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %117, i32 0, i32 0
  %118 = load i32, i32* %drawable_id126, align 4
  %119 = load i32, i32* %x1, align 4
  %120 = load i32, i32* %y1, align 4
  %121 = load i32, i32* %sel_width, align 4
  %122 = load i32, i32* %sel_height, align 4
  %call127 = call i32 @gimp_drawable_update(i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  br label %return

return:                                           ; preds = %for.end.122, %if.then
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
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_ptr = alloca i8*, align 8
  %dst_ptr = alloca i8*, align 8
  %neg_ptr = alloca i32*, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %preview_width = alloca i32, align 4
  %preview_height = alloca i32, align 4
  %preview_src = alloca i8*, align 8
  %preview_dst = alloca i8*, align 8
  %preview_neg = alloca i32*, align 8
  %img_bpp = alloca i32, align 4
  %filter = alloca void (i32, i8*, i8*, i32*, i32*, i32*)*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store void (i32, i8*, i8*, i32*, i32*, i32*)* null, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  call void @compute_luts()
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %0, i32* %x1, i32* %y1)
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %1, i32* %preview_width, i32* %preview_height)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %3 = bitcast %struct._GimpPreview* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %4)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_drawable_bpp(i32 %6)
  store i32 %call3, i32* %img_bpp, align 4
  %7 = load i32, i32* %preview_width, align 4
  %8 = load i32, i32* %preview_height, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %img_bpp, align 4
  %mul4 = mul nsw i32 %mul, %9
  %conv = sext i32 %mul4 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %preview_src, align 8
  %10 = load i32, i32* %preview_width, align 4
  %11 = load i32, i32* %preview_height, align 4
  %mul6 = mul nsw i32 %10, %11
  %12 = load i32, i32* %img_bpp, align 4
  %mul7 = mul nsw i32 %mul6, %12
  %conv8 = sext i32 %mul7 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv8, i64 4)
  %13 = bitcast i8* %call9 to i32*
  store i32* %13, i32** %preview_neg, align 8
  %14 = load i32, i32* %preview_width, align 4
  %15 = load i32, i32* %preview_height, align 4
  %mul10 = mul nsw i32 %14, %15
  %16 = load i32, i32* %img_bpp, align 4
  %mul11 = mul nsw i32 %mul10, %16
  %conv12 = sext i32 %mul11 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  store i8* %call13, i8** %preview_dst, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = load i32, i32* %x1, align 4
  %19 = load i32, i32* %y1, align 4
  %20 = load i32, i32* %preview_width, align 4
  %21 = load i32, i32* %preview_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 0, i32 0)
  %22 = load i32, i32* %preview_width, align 4
  %23 = load i32, i32* %img_bpp, align 4
  %mul14 = mul nsw i32 %22, %23
  store i32 %mul14, i32* %width, align 4
  %24 = load i8*, i8** %preview_src, align 8
  %25 = load i32, i32* %x1, align 4
  %26 = load i32, i32* %y1, align 4
  %27 = load i32, i32* %preview_width, align 4
  %28 = load i32, i32* %preview_height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %preview_height, align 4
  %mul15 = mul nsw i32 %29, %30
  store i32 %mul15, i32* %i, align 4
  %31 = load i8*, i8** %preview_src, align 8
  store i8* %31, i8** %src_ptr, align 8
  %32 = load i32*, i32** %preview_neg, align 8
  store i32* %32, i32** %neg_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %33 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %33, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %src_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %src_ptr, align 8
  %35 = load i8, i8* %34, align 1
  %idxprom = zext i8 %35 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @neg_lut, i32 0, i64 %idxprom
  %36 = load i32, i32* %arrayidx, align 4
  %37 = load i32*, i32** %neg_ptr, align 8
  %incdec.ptr17 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr17, i32** %neg_ptr, align 8
  store i32 %36, i32* %37, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %img_bpp, align 4
  switch i32 %39, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.18
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %for.end
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @gray_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.end
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @graya_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.end
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @rgb_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.end
  store void (i32, i8*, i8*, i32*, i32*, i32*)* @rgba_filter, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %40 = load i32, i32* %img_bpp, align 4
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i32 %40)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb
  %41 = load i8*, i8** %preview_dst, align 8
  %42 = load i8*, i8** %preview_src, align 8
  %43 = load i32, i32* %width, align 4
  %conv21 = sext i32 %43 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 %conv21, i32 1, i1 false)
  %44 = load i8*, i8** %preview_dst, align 8
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %preview_height, align 4
  %sub = sub nsw i32 %46, 1
  %mul22 = mul nsw i32 %45, %sub
  %idx.ext = sext i32 %mul22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %47 = load i8*, i8** %preview_src, align 8
  %48 = load i32, i32* %width, align 4
  %49 = load i32, i32* %preview_height, align 4
  %sub23 = sub nsw i32 %49, 1
  %mul24 = mul nsw i32 %48, %sub23
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %47, i64 %idx.ext25
  %50 = load i32, i32* %width, align 4
  %conv27 = sext i32 %50 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr26, i64 %conv27, i32 1, i1 false)
  %51 = load i32, i32* %preview_height, align 4
  %sub28 = sub nsw i32 %51, 2
  store i32 %sub28, i32* %y, align 4
  %52 = load i8*, i8** %preview_src, align 8
  %53 = load i32, i32* %width, align 4
  %idx.ext29 = sext i32 %53 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %52, i64 %idx.ext29
  store i8* %add.ptr30, i8** %src_ptr, align 8
  %54 = load i32*, i32** %preview_neg, align 8
  %55 = load i32, i32* %width, align 4
  %idx.ext31 = sext i32 %55 to i64
  %add.ptr32 = getelementptr inbounds i32, i32* %54, i64 %idx.ext31
  %56 = load i32, i32* %img_bpp, align 4
  %idx.ext33 = sext i32 %56 to i64
  %add.ptr34 = getelementptr inbounds i32, i32* %add.ptr32, i64 %idx.ext33
  store i32* %add.ptr34, i32** %neg_ptr, align 8
  %57 = load i8*, i8** %preview_dst, align 8
  %58 = load i32, i32* %width, align 4
  %idx.ext35 = sext i32 %58 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %57, i64 %idx.ext35
  store i8* %add.ptr36, i8** %dst_ptr, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.45, %sw.epilog
  %59 = load i32, i32* %y, align 4
  %cmp38 = icmp sgt i32 %59, 0
  br i1 %cmp38, label %for.body.40, label %for.end.53

for.body.40:                                      ; preds = %for.cond.37
  %60 = load void (i32, i8*, i8*, i32*, i32*, i32*)*, void (i32, i8*, i8*, i32*, i32*, i32*)** %filter, align 8
  %61 = load i32, i32* %preview_width, align 4
  %62 = load i8*, i8** %src_ptr, align 8
  %63 = load i8*, i8** %dst_ptr, align 8
  %64 = load i32*, i32** %neg_ptr, align 8
  %65 = load i32, i32* %width, align 4
  %idx.ext41 = sext i32 %65 to i64
  %idx.neg = sub i64 0, %idx.ext41
  %add.ptr42 = getelementptr inbounds i32, i32* %64, i64 %idx.neg
  %66 = load i32*, i32** %neg_ptr, align 8
  %67 = load i32*, i32** %neg_ptr, align 8
  %68 = load i32, i32* %width, align 4
  %idx.ext43 = sext i32 %68 to i64
  %add.ptr44 = getelementptr inbounds i32, i32* %67, i64 %idx.ext43
  call void %60(i32 %61, i8* %62, i8* %63, i32* %add.ptr42, i32* %66, i32* %add.ptr44)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.40
  %69 = load i32, i32* %y, align 4
  %dec46 = add nsw i32 %69, -1
  store i32 %dec46, i32* %y, align 4
  %70 = load i32, i32* %width, align 4
  %71 = load i8*, i8** %src_ptr, align 8
  %idx.ext47 = sext i32 %70 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %71, i64 %idx.ext47
  store i8* %add.ptr48, i8** %src_ptr, align 8
  %72 = load i32, i32* %width, align 4
  %73 = load i32*, i32** %neg_ptr, align 8
  %idx.ext49 = sext i32 %72 to i64
  %add.ptr50 = getelementptr inbounds i32, i32* %73, i64 %idx.ext49
  store i32* %add.ptr50, i32** %neg_ptr, align 8
  %74 = load i32, i32* %width, align 4
  %75 = load i8*, i8** %dst_ptr, align 8
  %idx.ext51 = sext i32 %74 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %75, i64 %idx.ext51
  store i8* %add.ptr52, i8** %dst_ptr, align 8
  br label %for.cond.37

for.end.53:                                       ; preds = %for.cond.37
  %76 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %77 = load i8*, i8** %preview_dst, align 8
  %78 = load i32, i32* %preview_width, align 4
  %79 = load i32, i32* %img_bpp, align 4
  %mul54 = mul nsw i32 %78, %79
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %76, i8* %77, i32 %mul54)
  %80 = load i8*, i8** %preview_src, align 8
  call void @g_free(i8* %80)
  %81 = load i32*, i32** %preview_neg, align 8
  %82 = bitcast i32* %81 to i8*
  call void @g_free(i8* %82)
  %83 = load i8*, i8** %preview_dst, align 8
  call void @g_free(i8* %83)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @compute_luts() #0 {
entry:
  %i = alloca i32, align 4
  %fact = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.SharpenParams, %struct.SharpenParams* @sharpen_params, i32 0, i32 0), align 4
  %sub = sub nsw i32 100, %0
  store i32 %sub, i32* %fact, align 4
  %1 = load i32, i32* %fact, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %fact, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 256
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 800, %3
  %4 = load i32, i32* %fact, align 4
  %div = sdiv i32 %mul, %4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom
  store i32 %div, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 4, %7
  %8 = load i32, i32* %i, align 4
  %shl = shl i32 %8, 3
  %sub4 = sub nsw i32 %add, %shl
  %shr = ashr i32 %sub4, 3
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* @neg_lut, i32 0, i64 %idxprom5
  store i32 %shr, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare i32 @gimp_drawable_bpp(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gray_filter(i32 %width, i8* %src, i8* %dst, i32* %neg0, i32* %neg1, i32* %neg2) #0 {
entry:
  %width.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %neg0.addr = alloca i32*, align 8
  %neg1.addr = alloca i32*, align 8
  %neg2.addr = alloca i32*, align 8
  %pixel = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %neg0, i32** %neg0.addr, align 8
  store i32* %neg1, i32** %neg1.addr, align 8
  store i32* %neg2, i32** %neg2.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %dst.addr, align 8
  store i8 %1, i8* %2, align 1
  %3 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %3, 2
  store i32 %sub, i32* %width.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.23, %entry
  %4 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %src.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %src.addr, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %neg0.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 -1
  %9 = load i32, i32* %arrayidx3, align 4
  %sub4 = sub nsw i32 %7, %9
  %10 = load i32*, i32** %neg0.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %sub4, %11
  %12 = load i32*, i32** %neg0.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx7, align 4
  %sub8 = sub nsw i32 %sub6, %13
  %14 = load i32*, i32** %neg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 -1
  %15 = load i32, i32* %arrayidx9, align 4
  %sub10 = sub nsw i32 %sub8, %15
  %16 = load i32*, i32** %neg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 1
  %17 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %sub10, %17
  %18 = load i32*, i32** %neg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 -1
  %19 = load i32, i32* %arrayidx13, align 4
  %sub14 = sub nsw i32 %sub12, %19
  %20 = load i32*, i32** %neg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 %sub14, %21
  %22 = load i32*, i32** %neg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %22, i64 1
  %23 = load i32, i32* %arrayidx17, align 4
  %sub18 = sub nsw i32 %sub16, %23
  store i32 %sub18, i32* %pixel, align 4
  %24 = load i32, i32* %pixel, align 4
  %add = add nsw i32 %24, 4
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %pixel, align 4
  %25 = load i32, i32* %pixel, align 4
  %cmp19 = icmp sgt i32 %25, 255
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end.23

cond.false:                                       ; preds = %while.body
  %26 = load i32, i32* %pixel, align 4
  %cmp20 = icmp slt i32 %26, 0
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false
  br label %cond.end

cond.false.22:                                    ; preds = %cond.false
  %27 = load i32, i32* %pixel, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.22, %cond.true.21
  %cond = phi i32 [ 0, %cond.true.21 ], [ %27, %cond.false.22 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end, %cond.true
  %cond24 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond24 to i8
  %28 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr25, i8** %dst.addr, align 8
  store i8 %conv, i8* %28, align 1
  %29 = load i32*, i32** %neg0.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr26, i32** %neg0.addr, align 8
  %30 = load i32*, i32** %neg1.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %incdec.ptr27, i32** %neg1.addr, align 8
  %31 = load i32*, i32** %neg2.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr28, i32** %neg2.addr, align 8
  %32 = load i32, i32* %width.addr, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %width.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i8*, i8** %src.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr29, i8** %src.addr, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr30, i8** %dst.addr, align 8
  store i8 %34, i8* %35, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @graya_filter(i32 %width, i8* %src, i8* %dst, i32* %neg0, i32* %neg1, i32* %neg2) #0 {
entry:
  %width.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %neg0.addr = alloca i32*, align 8
  %neg1.addr = alloca i32*, align 8
  %neg2.addr = alloca i32*, align 8
  %pixel = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %neg0, i32** %neg0.addr, align 8
  store i32* %neg1, i32** %neg1.addr, align 8
  store i32* %neg2, i32** %neg2.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %dst.addr, align 8
  store i8 %1, i8* %2, align 1
  %3 = load i8*, i8** %src.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %src.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %dst.addr, align 8
  store i8 %4, i8* %5, align 1
  %6 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %6, 2
  store i32 %sub, i32* %width.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.25, %entry
  %7 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %src.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %src.addr, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32*, i32** %neg0.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 -2
  %12 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %10, %12
  %13 = load i32*, i32** %neg0.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx7, align 4
  %sub8 = sub nsw i32 %sub6, %14
  %15 = load i32*, i32** %neg0.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 2
  %16 = load i32, i32* %arrayidx9, align 4
  %sub10 = sub nsw i32 %sub8, %16
  %17 = load i32*, i32** %neg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 -2
  %18 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %sub10, %18
  %19 = load i32*, i32** %neg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 2
  %20 = load i32, i32* %arrayidx13, align 4
  %sub14 = sub nsw i32 %sub12, %20
  %21 = load i32*, i32** %neg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 -2
  %22 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 %sub14, %22
  %23 = load i32*, i32** %neg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx17, align 4
  %sub18 = sub nsw i32 %sub16, %24
  %25 = load i32*, i32** %neg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx19, align 4
  %sub20 = sub nsw i32 %sub18, %26
  store i32 %sub20, i32* %pixel, align 4
  %27 = load i32, i32* %pixel, align 4
  %add = add nsw i32 %27, 4
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %pixel, align 4
  %28 = load i32, i32* %pixel, align 4
  %cmp21 = icmp sgt i32 %28, 255
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end.25

cond.false:                                       ; preds = %while.body
  %29 = load i32, i32* %pixel, align 4
  %cmp22 = icmp slt i32 %29, 0
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false
  br label %cond.end

cond.false.24:                                    ; preds = %cond.false
  %30 = load i32, i32* %pixel, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.24, %cond.true.23
  %cond = phi i32 [ 0, %cond.true.23 ], [ %30, %cond.false.24 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end, %cond.true
  %cond26 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond26 to i8
  %31 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr27, i8** %dst.addr, align 8
  store i8 %conv, i8* %31, align 1
  %32 = load i8*, i8** %src.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr28, i8** %src.addr, align 8
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr29, i8** %dst.addr, align 8
  store i8 %33, i8* %34, align 1
  %35 = load i32*, i32** %neg0.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %add.ptr, i32** %neg0.addr, align 8
  %36 = load i32*, i32** %neg1.addr, align 8
  %add.ptr30 = getelementptr inbounds i32, i32* %36, i64 2
  store i32* %add.ptr30, i32** %neg1.addr, align 8
  %37 = load i32*, i32** %neg2.addr, align 8
  %add.ptr31 = getelementptr inbounds i32, i32* %37, i64 2
  store i32* %add.ptr31, i32** %neg2.addr, align 8
  %38 = load i32, i32* %width.addr, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %width.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i8*, i8** %src.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr32, i8** %src.addr, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr33, i8** %dst.addr, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %src.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr34, i8** %src.addr, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr35, i8** %dst.addr, align 8
  store i8 %43, i8* %44, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_filter(i32 %width, i8* %src, i8* %dst, i32* %neg0, i32* %neg1, i32* %neg2) #0 {
entry:
  %width.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %neg0.addr = alloca i32*, align 8
  %neg1.addr = alloca i32*, align 8
  %neg2.addr = alloca i32*, align 8
  %pixel = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %neg0, i32** %neg0.addr, align 8
  store i32* %neg1, i32** %neg1.addr, align 8
  store i32* %neg2, i32** %neg2.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %dst.addr, align 8
  store i8 %1, i8* %2, align 1
  %3 = load i8*, i8** %src.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %src.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %dst.addr, align 8
  store i8 %4, i8* %5, align 1
  %6 = load i8*, i8** %src.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %src.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr5, i8** %dst.addr, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %9, 2
  store i32 %sub, i32* %width.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.96, %entry
  %10 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %src.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %src.addr, align 8
  %12 = load i8, i8* %11, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %14 = load i32*, i32** %neg0.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 -3
  %15 = load i32, i32* %arrayidx7, align 4
  %sub8 = sub nsw i32 %13, %15
  %16 = load i32*, i32** %neg0.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx9, align 4
  %sub10 = sub nsw i32 %sub8, %17
  %18 = load i32*, i32** %neg0.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 3
  %19 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %sub10, %19
  %20 = load i32*, i32** %neg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 -3
  %21 = load i32, i32* %arrayidx13, align 4
  %sub14 = sub nsw i32 %sub12, %21
  %22 = load i32*, i32** %neg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 3
  %23 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 %sub14, %23
  %24 = load i32*, i32** %neg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 -3
  %25 = load i32, i32* %arrayidx17, align 4
  %sub18 = sub nsw i32 %sub16, %25
  %26 = load i32*, i32** %neg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx19, align 4
  %sub20 = sub nsw i32 %sub18, %27
  %28 = load i32*, i32** %neg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 3
  %29 = load i32, i32* %arrayidx21, align 4
  %sub22 = sub nsw i32 %sub20, %29
  store i32 %sub22, i32* %pixel, align 4
  %30 = load i32, i32* %pixel, align 4
  %add = add nsw i32 %30, 4
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %pixel, align 4
  %31 = load i32, i32* %pixel, align 4
  %cmp23 = icmp sgt i32 %31, 255
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end.27

cond.false:                                       ; preds = %while.body
  %32 = load i32, i32* %pixel, align 4
  %cmp24 = icmp slt i32 %32, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %33 = load i32, i32* %pixel, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.25
  %cond = phi i32 [ 0, %cond.true.25 ], [ %33, %cond.false.26 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond28 to i8
  %34 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr29, i8** %dst.addr, align 8
  store i8 %conv, i8* %34, align 1
  %35 = load i8*, i8** %src.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr30, i8** %src.addr, align 8
  %36 = load i8, i8* %35, align 1
  %idxprom31 = zext i8 %36 to i64
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom31
  %37 = load i32, i32* %arrayidx32, align 4
  %38 = load i32*, i32** %neg0.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %38, i64 -2
  %39 = load i32, i32* %arrayidx33, align 4
  %sub34 = sub nsw i32 %37, %39
  %40 = load i32*, i32** %neg0.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %40, i64 1
  %41 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %sub34, %41
  %42 = load i32*, i32** %neg0.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %42, i64 4
  %43 = load i32, i32* %arrayidx37, align 4
  %sub38 = sub nsw i32 %sub36, %43
  %44 = load i32*, i32** %neg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %44, i64 -2
  %45 = load i32, i32* %arrayidx39, align 4
  %sub40 = sub nsw i32 %sub38, %45
  %46 = load i32*, i32** %neg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %46, i64 4
  %47 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %sub40, %47
  %48 = load i32*, i32** %neg2.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %48, i64 -2
  %49 = load i32, i32* %arrayidx43, align 4
  %sub44 = sub nsw i32 %sub42, %49
  %50 = load i32*, i32** %neg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %50, i64 1
  %51 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %sub44, %51
  %52 = load i32*, i32** %neg2.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %52, i64 4
  %53 = load i32, i32* %arrayidx47, align 4
  %sub48 = sub nsw i32 %sub46, %53
  store i32 %sub48, i32* %pixel, align 4
  %54 = load i32, i32* %pixel, align 4
  %add49 = add nsw i32 %54, 4
  %shr50 = ashr i32 %add49, 3
  store i32 %shr50, i32* %pixel, align 4
  %55 = load i32, i32* %pixel, align 4
  %cmp51 = icmp sgt i32 %55, 255
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.27
  br label %cond.end.61

cond.false.54:                                    ; preds = %cond.end.27
  %56 = load i32, i32* %pixel, align 4
  %cmp55 = icmp slt i32 %56, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.54
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.false.54
  %57 = load i32, i32* %pixel, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi i32 [ 0, %cond.true.57 ], [ %57, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.53
  %cond62 = phi i32 [ 255, %cond.true.53 ], [ %cond60, %cond.end.59 ]
  %conv63 = trunc i32 %cond62 to i8
  %58 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr64, i8** %dst.addr, align 8
  store i8 %conv63, i8* %58, align 1
  %59 = load i8*, i8** %src.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr65, i8** %src.addr, align 8
  %60 = load i8, i8* %59, align 1
  %idxprom66 = zext i8 %60 to i64
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom66
  %61 = load i32, i32* %arrayidx67, align 4
  %62 = load i32*, i32** %neg0.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %62, i64 -1
  %63 = load i32, i32* %arrayidx68, align 4
  %sub69 = sub nsw i32 %61, %63
  %64 = load i32*, i32** %neg0.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %64, i64 2
  %65 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %sub69, %65
  %66 = load i32*, i32** %neg0.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %66, i64 5
  %67 = load i32, i32* %arrayidx72, align 4
  %sub73 = sub nsw i32 %sub71, %67
  %68 = load i32*, i32** %neg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %68, i64 -1
  %69 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %sub73, %69
  %70 = load i32*, i32** %neg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %70, i64 5
  %71 = load i32, i32* %arrayidx76, align 4
  %sub77 = sub nsw i32 %sub75, %71
  %72 = load i32*, i32** %neg2.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %72, i64 -1
  %73 = load i32, i32* %arrayidx78, align 4
  %sub79 = sub nsw i32 %sub77, %73
  %74 = load i32*, i32** %neg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %74, i64 2
  %75 = load i32, i32* %arrayidx80, align 4
  %sub81 = sub nsw i32 %sub79, %75
  %76 = load i32*, i32** %neg2.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %76, i64 5
  %77 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %sub81, %77
  store i32 %sub83, i32* %pixel, align 4
  %78 = load i32, i32* %pixel, align 4
  %add84 = add nsw i32 %78, 4
  %shr85 = ashr i32 %add84, 3
  store i32 %shr85, i32* %pixel, align 4
  %79 = load i32, i32* %pixel, align 4
  %cmp86 = icmp sgt i32 %79, 255
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.61
  br label %cond.end.96

cond.false.89:                                    ; preds = %cond.end.61
  %80 = load i32, i32* %pixel, align 4
  %cmp90 = icmp slt i32 %80, 0
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.false.89
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.false.89
  %81 = load i32, i32* %pixel, align 4
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.92
  %cond95 = phi i32 [ 0, %cond.true.92 ], [ %81, %cond.false.93 ]
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.94, %cond.true.88
  %cond97 = phi i32 [ 255, %cond.true.88 ], [ %cond95, %cond.end.94 ]
  %conv98 = trunc i32 %cond97 to i8
  %82 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr99, i8** %dst.addr, align 8
  store i8 %conv98, i8* %82, align 1
  %83 = load i32*, i32** %neg0.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %83, i64 3
  store i32* %add.ptr, i32** %neg0.addr, align 8
  %84 = load i32*, i32** %neg1.addr, align 8
  %add.ptr100 = getelementptr inbounds i32, i32* %84, i64 3
  store i32* %add.ptr100, i32** %neg1.addr, align 8
  %85 = load i32*, i32** %neg2.addr, align 8
  %add.ptr101 = getelementptr inbounds i32, i32* %85, i64 3
  store i32* %add.ptr101, i32** %neg2.addr, align 8
  %86 = load i32, i32* %width.addr, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %width.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %87 = load i8*, i8** %src.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr102, i8** %src.addr, align 8
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr103, i8** %dst.addr, align 8
  store i8 %88, i8* %89, align 1
  %90 = load i8*, i8** %src.addr, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr104, i8** %src.addr, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr105, i8** %dst.addr, align 8
  store i8 %91, i8* %92, align 1
  %93 = load i8*, i8** %src.addr, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr106, i8** %src.addr, align 8
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr107, i8** %dst.addr, align 8
  store i8 %94, i8* %95, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgba_filter(i32 %width, i8* %src, i8* %dst, i32* %neg0, i32* %neg1, i32* %neg2) #0 {
entry:
  %width.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %neg0.addr = alloca i32*, align 8
  %neg1.addr = alloca i32*, align 8
  %neg2.addr = alloca i32*, align 8
  %pixel = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %neg0, i32** %neg0.addr, align 8
  store i32* %neg1, i32** %neg1.addr, align 8
  store i32* %neg2, i32** %neg2.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %dst.addr, align 8
  store i8 %1, i8* %2, align 1
  %3 = load i8*, i8** %src.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %src.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %dst.addr, align 8
  store i8 %4, i8* %5, align 1
  %6 = load i8*, i8** %src.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %src.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr5, i8** %dst.addr, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i8*, i8** %src.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %src.addr, align 8
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %dst.addr, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %12, 2
  store i32 %sub, i32* %width.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.98, %entry
  %13 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %src.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr8, i8** %src.addr, align 8
  %15 = load i8, i8* %14, align 1
  %idxprom = zext i8 %15 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %17 = load i32*, i32** %neg0.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 -4
  %18 = load i32, i32* %arrayidx9, align 4
  %sub10 = sub nsw i32 %16, %18
  %19 = load i32*, i32** %neg0.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %sub10, %20
  %21 = load i32*, i32** %neg0.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 4
  %22 = load i32, i32* %arrayidx13, align 4
  %sub14 = sub nsw i32 %sub12, %22
  %23 = load i32*, i32** %neg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 -4
  %24 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 %sub14, %24
  %25 = load i32*, i32** %neg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 4
  %26 = load i32, i32* %arrayidx17, align 4
  %sub18 = sub nsw i32 %sub16, %26
  %27 = load i32*, i32** %neg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 -4
  %28 = load i32, i32* %arrayidx19, align 4
  %sub20 = sub nsw i32 %sub18, %28
  %29 = load i32*, i32** %neg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx21, align 4
  %sub22 = sub nsw i32 %sub20, %30
  %31 = load i32*, i32** %neg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %31, i64 4
  %32 = load i32, i32* %arrayidx23, align 4
  %sub24 = sub nsw i32 %sub22, %32
  store i32 %sub24, i32* %pixel, align 4
  %33 = load i32, i32* %pixel, align 4
  %add = add nsw i32 %33, 4
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %pixel, align 4
  %34 = load i32, i32* %pixel, align 4
  %cmp25 = icmp sgt i32 %34, 255
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end.29

cond.false:                                       ; preds = %while.body
  %35 = load i32, i32* %pixel, align 4
  %cmp26 = icmp slt i32 %35, 0
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false
  br label %cond.end

cond.false.28:                                    ; preds = %cond.false
  %36 = load i32, i32* %pixel, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond = phi i32 [ 0, %cond.true.27 ], [ %36, %cond.false.28 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true
  %cond30 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond30 to i8
  %37 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr31, i8** %dst.addr, align 8
  store i8 %conv, i8* %37, align 1
  %38 = load i8*, i8** %src.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr32, i8** %src.addr, align 8
  %39 = load i8, i8* %38, align 1
  %idxprom33 = zext i8 %39 to i64
  %arrayidx34 = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  %41 = load i32*, i32** %neg0.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %41, i64 -3
  %42 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %40, %42
  %43 = load i32*, i32** %neg0.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %43, i64 1
  %44 = load i32, i32* %arrayidx37, align 4
  %sub38 = sub nsw i32 %sub36, %44
  %45 = load i32*, i32** %neg0.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %45, i64 5
  %46 = load i32, i32* %arrayidx39, align 4
  %sub40 = sub nsw i32 %sub38, %46
  %47 = load i32*, i32** %neg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %47, i64 -3
  %48 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %sub40, %48
  %49 = load i32*, i32** %neg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %49, i64 5
  %50 = load i32, i32* %arrayidx43, align 4
  %sub44 = sub nsw i32 %sub42, %50
  %51 = load i32*, i32** %neg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 -3
  %52 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %sub44, %52
  %53 = load i32*, i32** %neg2.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %53, i64 1
  %54 = load i32, i32* %arrayidx47, align 4
  %sub48 = sub nsw i32 %sub46, %54
  %55 = load i32*, i32** %neg2.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 5
  %56 = load i32, i32* %arrayidx49, align 4
  %sub50 = sub nsw i32 %sub48, %56
  store i32 %sub50, i32* %pixel, align 4
  %57 = load i32, i32* %pixel, align 4
  %add51 = add nsw i32 %57, 4
  %shr52 = ashr i32 %add51, 3
  store i32 %shr52, i32* %pixel, align 4
  %58 = load i32, i32* %pixel, align 4
  %cmp53 = icmp sgt i32 %58, 255
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.29
  br label %cond.end.63

cond.false.56:                                    ; preds = %cond.end.29
  %59 = load i32, i32* %pixel, align 4
  %cmp57 = icmp slt i32 %59, 0
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.56
  br label %cond.end.61

cond.false.60:                                    ; preds = %cond.false.56
  %60 = load i32, i32* %pixel, align 4
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.59
  %cond62 = phi i32 [ 0, %cond.true.59 ], [ %60, %cond.false.60 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.55
  %cond64 = phi i32 [ 255, %cond.true.55 ], [ %cond62, %cond.end.61 ]
  %conv65 = trunc i32 %cond64 to i8
  %61 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr66, i8** %dst.addr, align 8
  store i8 %conv65, i8* %61, align 1
  %62 = load i8*, i8** %src.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr67, i8** %src.addr, align 8
  %63 = load i8, i8* %62, align 1
  %idxprom68 = zext i8 %63 to i64
  %arrayidx69 = getelementptr inbounds [256 x i32], [256 x i32]* @pos_lut, i32 0, i64 %idxprom68
  %64 = load i32, i32* %arrayidx69, align 4
  %65 = load i32*, i32** %neg0.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %65, i64 -2
  %66 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %64, %66
  %67 = load i32*, i32** %neg0.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %67, i64 2
  %68 = load i32, i32* %arrayidx72, align 4
  %sub73 = sub nsw i32 %sub71, %68
  %69 = load i32*, i32** %neg0.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %69, i64 6
  %70 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %sub73, %70
  %71 = load i32*, i32** %neg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %71, i64 -2
  %72 = load i32, i32* %arrayidx76, align 4
  %sub77 = sub nsw i32 %sub75, %72
  %73 = load i32*, i32** %neg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %73, i64 6
  %74 = load i32, i32* %arrayidx78, align 4
  %sub79 = sub nsw i32 %sub77, %74
  %75 = load i32*, i32** %neg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %75, i64 -2
  %76 = load i32, i32* %arrayidx80, align 4
  %sub81 = sub nsw i32 %sub79, %76
  %77 = load i32*, i32** %neg2.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %77, i64 2
  %78 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %sub81, %78
  %79 = load i32*, i32** %neg2.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %79, i64 6
  %80 = load i32, i32* %arrayidx84, align 4
  %sub85 = sub nsw i32 %sub83, %80
  store i32 %sub85, i32* %pixel, align 4
  %81 = load i32, i32* %pixel, align 4
  %add86 = add nsw i32 %81, 4
  %shr87 = ashr i32 %add86, 3
  store i32 %shr87, i32* %pixel, align 4
  %82 = load i32, i32* %pixel, align 4
  %cmp88 = icmp sgt i32 %82, 255
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.63
  br label %cond.end.98

cond.false.91:                                    ; preds = %cond.end.63
  %83 = load i32, i32* %pixel, align 4
  %cmp92 = icmp slt i32 %83, 0
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.false.91
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.false.91
  %84 = load i32, i32* %pixel, align 4
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi i32 [ 0, %cond.true.94 ], [ %84, %cond.false.95 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.90
  %cond99 = phi i32 [ 255, %cond.true.90 ], [ %cond97, %cond.end.96 ]
  %conv100 = trunc i32 %cond99 to i8
  %85 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr101, i8** %dst.addr, align 8
  store i8 %conv100, i8* %85, align 1
  %86 = load i8*, i8** %src.addr, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr102, i8** %src.addr, align 8
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr103, i8** %dst.addr, align 8
  store i8 %87, i8* %88, align 1
  %89 = load i32*, i32** %neg0.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %89, i64 4
  store i32* %add.ptr, i32** %neg0.addr, align 8
  %90 = load i32*, i32** %neg1.addr, align 8
  %add.ptr104 = getelementptr inbounds i32, i32* %90, i64 4
  store i32* %add.ptr104, i32** %neg1.addr, align 8
  %91 = load i32*, i32** %neg2.addr, align 8
  %add.ptr105 = getelementptr inbounds i32, i32* %91, i64 4
  store i32* %add.ptr105, i32** %neg2.addr, align 8
  %92 = load i32, i32* %width.addr, align 4
  %dec = add nsw i32 %92, -1
  store i32 %dec, i32* %width.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %93 = load i8*, i8** %src.addr, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr106, i8** %src.addr, align 8
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr107, i8** %dst.addr, align 8
  store i8 %94, i8* %95, align 1
  %96 = load i8*, i8** %src.addr, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr108, i8** %src.addr, align 8
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr109, i8** %dst.addr, align 8
  store i8 %97, i8* %98, align 1
  %99 = load i8*, i8** %src.addr, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr110, i8** %src.addr, align 8
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr111, i8** %dst.addr, align 8
  store i8 %100, i8* %101, align 1
  %102 = load i8*, i8** %src.addr, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr112, i8** %src.addr, align 8
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr113, i8** %dst.addr, align 8
  store i8 %103, i8* %104, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

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
