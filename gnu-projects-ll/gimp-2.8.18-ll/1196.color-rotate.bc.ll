; ModuleID = './plug-ins/color-rotate/color-rotate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RcmParams = type { i32, i32, i32, i32, %struct._GimpDrawable*, %struct._GimpDrawable*, %struct.ReducedImage*, %struct.RcmCircle*, %struct.RcmCircle*, %struct.RcmGray*, %struct.RcmBna* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.ReducedImage = type { i32, i32, i8*, double*, i8* }
%struct.RcmCircle = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, float*, i32, %struct.RcmAngle*, float }
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
%struct.RcmAngle = type { float, float, i32 }
%struct.RcmGray = type { %struct._GtkWidget*, %struct._GtkWidget*, float, float, float, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct.RcmBna = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@Current = global %struct.RcmParams { i32 1, i32 1, i32 2, i32 6, %struct._GimpDrawable* null, %struct._GimpDrawable* null, %struct.ReducedImage* null, %struct.RcmCircle* null, %struct.RcmCircle* null, %struct.RcmGray* null, %struct.RcmBna* null }, align 8
@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Input image (used for indexed images)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@query.args = private unnamed_addr constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [24 x i8] c"plug-in-rotate-colormap\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Replace a range of colors with another\00", align 1
@.str.8 = private unnamed_addr constant [143 x i8] c"Exchanges two color ranges. Based on code from Pavel Grinfeld (pavel@ml.com). This version written by Sven Anders (anderss@fmi.uni-passau.de).\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"Sven Anders (anderss@fmi.uni-passau.de) and Pavel Grinfeld (pavel@ml.com)\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Sven Anders (anderss@fmi.uni-passau.de)\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"04th April 1999\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"_Rotate Colors...\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"<Image>/Colors/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Rotating the colors\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %args = alloca [3 x %struct._GimpParamDef], align 16
  %0 = bitcast [3 x %struct._GimpParamDef]* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x %struct._GimpParamDef]* @query.args to i8*), i64 72, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* %args, i32 0, i32 0
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* %arraydecay, %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* %call) #2
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #2
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #2
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 2
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_drawable, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %4)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_image, align 4
  %call7 = call i32 @gimp_image_get_selection(i32 %6)
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %call7)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 5), align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_is_rgb(i32 %8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.else.17

if.then:                                          ; preds = %do.end
  %call10 = call i32 @color_rotate_dialog()
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #2
  %call14 = call i32 @gimp_progress_init(i8* %call13)
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %call15 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %10, %call15
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  call void @color_rotate(%struct._GimpDrawable* %11)
  %call16 = call i32 @gimp_displays_flush()
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 4, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.18

if.else.17:                                       ; preds = %do.end
  store i32 0, i32* %status, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %13 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %13, 3
  br i1 %cmp, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %14)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @color_rotate_dialog() #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #4

; Function Attrs: nounwind uwtable
define internal void @color_rotate(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %row = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 3
  %3 = load i32, i32* %bpp, align 4
  store i32 %3, i32* %bytes, align 4
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %4, %5
  %conv = sext i32 %mul to i64
  %call1 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call1, i8** %src_row, align 8
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %bytes, align 4
  %mul2 = mul nsw i32 %6, %7
  %conv3 = sext i32 %mul2 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 1)
  store i8* %call4, i8** %dest_row, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width5, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height6, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %8, i32 0, i32 0, i32 %10, i32 %12, i32 0, i32 0)
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 1
  %15 = load i32, i32* %width7, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 2
  %17 = load i32, i32* %height8, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %13, i32 0, i32 0, i32 %15, i32 %17, i32 1, i32 1)
  %18 = load i32, i32* %y, align 4
  store i32 %18, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %row, align 4
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %height, align 4
  %add = add nsw i32 %20, %21
  %cmp = icmp slt i32 %19, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %src_row, align 8
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %row, align 4
  %25 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %22, i32 %23, i32 %24, i32 %25)
  %26 = load i8*, i8** %src_row, align 8
  %27 = load i8*, i8** %dest_row, align 8
  %28 = load i32, i32* %row, align 4
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %bytes, align 4
  call void @color_rotate_row(i8* %26, i8* %27, i32 %28, i32 %29, i32 %30)
  %31 = load i8*, i8** %dest_row, align 8
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %row, align 4
  %34 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %31, i32 %32, i32 %33, i32 %34)
  %35 = load i32, i32* %row, align 4
  %rem = srem i32 %35, 10
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body
  %36 = load i32, i32* %row, align 4
  %conv13 = sitofp i32 %36 to double
  %37 = load i32, i32* %height, align 4
  %conv14 = sitofp i32 %37 to double
  %div = fdiv double %conv13, %conv14
  %call15 = call i32 @gimp_progress_update(double %div)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %38 = load i32, i32* %row, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call i32 @gimp_progress_update(double 1.000000e+00)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %39)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 0
  %41 = load i32, i32* %drawable_id18, align 4
  %call19 = call i32 @gimp_drawable_merge_shadow(i32 %41, i32 1)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 0
  %43 = load i32, i32* %drawable_id20, align 4
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %y, align 4
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %height, align 4
  %call21 = call i32 @gimp_drawable_update(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %48 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %48)
  %49 = load i8*, i8** %dest_row, align 8
  call void @g_free(i8* %49)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @color_rotate_row(i8* %src_row, i8* %dest_row, i32 %row, i32 %row_width, i32 %bytes) #0 {
entry:
  %src_row.addr = alloca i8*, align 8
  %dest_row.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %row_width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %col = alloca i32, align 4
  %bytenum = alloca i32, align 4
  %H = alloca double, align 8
  %S = alloca double, align 8
  %V = alloca double, align 8
  %rgb = alloca [3 x i8], align 1
  %skip = alloca i32, align 4
  store i8* %src_row, i8** %src_row.addr, align 8
  store i8* %dest_row, i8** %dest_row.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %row_width, i32* %row_width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.82, %entry
  %0 = load i32, i32* %col, align 4
  %1 = load i32, i32* %row_width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.84

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %skip, align 4
  %2 = load i32, i32* %col, align 4
  %3 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %4 = load i8*, i8** %src_row.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 0
  store i8 %5, i8* %arrayidx1, align 1
  %6 = load i32, i32* %col, align 4
  %7 = load i32, i32* %bytes.addr, align 4
  %mul2 = mul nsw i32 %6, %7
  %add3 = add nsw i32 %mul2, 1
  %idxprom4 = sext i32 %add3 to i64
  %8 = load i8*, i8** %src_row.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 1
  store i8 %9, i8* %arrayidx6, align 1
  %10 = load i32, i32* %col, align 4
  %11 = load i32, i32* %bytes.addr, align 4
  %mul7 = mul nsw i32 %10, %11
  %add8 = add nsw i32 %mul7, 2
  %idxprom9 = sext i32 %add8 to i64
  %12 = load i8*, i8** %src_row.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom9
  %13 = load i8, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 2
  store i8 %13, i8* %arrayidx11, align 1
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i32 0
  call void @gimp_rgb_to_hsv4(i8* %arraydecay, double* %H, double* %S, double* %V)
  %14 = load double, double* %S, align 8
  %conv = fptrunc double %14 to float
  %call = call i32 @rcm_is_gray(float %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3), align 4
  %cmp12 = icmp eq i32 %15, 5
  br i1 %cmp12, label %if.then.14, label %if.else.22

if.then.14:                                       ; preds = %if.then
  %16 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %16, i32 0, i32 3
  %17 = load float, float* %hue, align 4
  %18 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %18, i32 0, i32 19
  %19 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %call15 = call float @rcm_angle_inside_slice(float %17, %struct.RcmAngle* %19)
  %cmp16 = fcmp ole float %call15, 1.000000e+00
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.14
  %20 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue19 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %20, i32 0, i32 3
  %21 = load float, float* %hue19, align 4
  %conv20 = fpext float %21 to double
  %div = fdiv double %conv20, 0x401921FB54442D18
  store double %div, double* %H, align 8
  %22 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %satur = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %22, i32 0, i32 4
  %23 = load float, float* %satur, align 4
  %conv21 = fpext float %23 to double
  store double %conv21, double* %S, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.14
  store i32 1, i32* %skip, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.29

if.else.22:                                       ; preds = %if.then
  store i32 1, i32* %skip, align 4
  %arraydecay23 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i32 0
  %24 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue24 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %24, i32 0, i32 3
  %25 = load float, float* %hue24, align 4
  %conv25 = fpext float %25 to double
  %div26 = fdiv double %conv25, 0x401921FB54442D18
  %26 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %satur27 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %26, i32 0, i32 4
  %27 = load float, float* %satur27, align 4
  %conv28 = fpext float %27 to double
  %28 = load double, double* %V, align 8
  call void @gimp_hsv_to_rgb4(i8* %arraydecay23, double %div26, double %conv28, double %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.22, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.body
  %29 = load i32, i32* %skip, align 4
  %tobool31 = icmp ne i32 %29, 0
  br i1 %tobool31, label %if.end.50, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %30 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle33 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %30, i32 0, i32 19
  %31 = load %struct.RcmAngle*, %struct.RcmAngle** %angle33, align 8
  %call34 = call float @rcm_left_end(%struct.RcmAngle* %31)
  %32 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle35 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %32, i32 0, i32 19
  %33 = load %struct.RcmAngle*, %struct.RcmAngle** %angle35, align 8
  %call36 = call float @rcm_right_end(%struct.RcmAngle* %33)
  %34 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle37 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %34, i32 0, i32 19
  %35 = load %struct.RcmAngle*, %struct.RcmAngle** %angle37, align 8
  %call38 = call float @rcm_left_end(%struct.RcmAngle* %35)
  %36 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle39 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %36, i32 0, i32 19
  %37 = load %struct.RcmAngle*, %struct.RcmAngle** %angle39, align 8
  %call40 = call float @rcm_right_end(%struct.RcmAngle* %37)
  %38 = load double, double* %H, align 8
  %mul41 = fmul double %38, 0x401921FB54442D18
  %conv42 = fptrunc double %mul41 to float
  %call43 = call float @rcm_linear(float %call34, float %call36, float %call38, float %call40, float %conv42)
  %conv44 = fpext float %call43 to double
  store double %conv44, double* %H, align 8
  %39 = load double, double* %H, align 8
  %conv45 = fptrunc double %39 to float
  %call46 = call float @angle_mod_2PI(float %conv45)
  %conv47 = fpext float %call46 to double
  %div48 = fdiv double %conv47, 0x401921FB54442D18
  store double %div48, double* %H, align 8
  %arraydecay49 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i32 0
  %40 = load double, double* %H, align 8
  %41 = load double, double* %S, align 8
  %42 = load double, double* %V, align 8
  call void @gimp_hsv_to_rgb4(i8* %arraydecay49, double %40, double %41, double %42)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.32, %if.end.30
  %arrayidx51 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 0
  %43 = load i8, i8* %arrayidx51, align 1
  %44 = load i32, i32* %col, align 4
  %45 = load i32, i32* %bytes.addr, align 4
  %mul52 = mul nsw i32 %44, %45
  %add53 = add nsw i32 %mul52, 0
  %idxprom54 = sext i32 %add53 to i64
  %46 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %46, i64 %idxprom54
  store i8 %43, i8* %arrayidx55, align 1
  %arrayidx56 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 1
  %47 = load i8, i8* %arrayidx56, align 1
  %48 = load i32, i32* %col, align 4
  %49 = load i32, i32* %bytes.addr, align 4
  %mul57 = mul nsw i32 %48, %49
  %add58 = add nsw i32 %mul57, 1
  %idxprom59 = sext i32 %add58 to i64
  %50 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %50, i64 %idxprom59
  store i8 %47, i8* %arrayidx60, align 1
  %arrayidx61 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb, i32 0, i64 2
  %51 = load i8, i8* %arrayidx61, align 1
  %52 = load i32, i32* %col, align 4
  %53 = load i32, i32* %bytes.addr, align 4
  %mul62 = mul nsw i32 %52, %53
  %add63 = add nsw i32 %mul62, 2
  %idxprom64 = sext i32 %add63 to i64
  %54 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %54, i64 %idxprom64
  store i8 %51, i8* %arrayidx65, align 1
  %55 = load i32, i32* %bytes.addr, align 4
  %cmp66 = icmp sgt i32 %55, 3
  br i1 %cmp66, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %if.end.50
  store i32 3, i32* %bytenum, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %if.then.68
  %56 = load i32, i32* %bytenum, align 4
  %57 = load i32, i32* %bytes.addr, align 4
  %cmp70 = icmp slt i32 %56, %57
  br i1 %cmp70, label %for.body.72, label %for.end

for.body.72:                                      ; preds = %for.cond.69
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %bytes.addr, align 4
  %mul73 = mul nsw i32 %58, %59
  %60 = load i32, i32* %bytenum, align 4
  %add74 = add nsw i32 %mul73, %60
  %idxprom75 = sext i32 %add74 to i64
  %61 = load i8*, i8** %src_row.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %61, i64 %idxprom75
  %62 = load i8, i8* %arrayidx76, align 1
  %63 = load i32, i32* %col, align 4
  %64 = load i32, i32* %bytes.addr, align 4
  %mul77 = mul nsw i32 %63, %64
  %65 = load i32, i32* %bytenum, align 4
  %add78 = add nsw i32 %mul77, %65
  %idxprom79 = sext i32 %add78 to i64
  %66 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %66, i64 %idxprom79
  store i8 %62, i8* %arrayidx80, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.72
  %67 = load i32, i32* %bytenum, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %bytenum, align 4
  br label %for.cond.69

for.end:                                          ; preds = %for.cond.69
  br label %if.end.81

if.end.81:                                        ; preds = %for.end, %if.end.50
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %68 = load i32, i32* %col, align 4
  %inc83 = add nsw i32 %68, 1
  store i32 %inc83, i32* %col, align 4
  br label %for.cond

for.end.84:                                       ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_rgb_to_hsv4(i8*, double*, double*, double*) #1

declare i32 @rcm_is_gray(float) #1

declare float @rcm_angle_inside_slice(float, %struct.RcmAngle*) #1

declare void @gimp_hsv_to_rgb4(i8*, double, double, double) #1

declare float @rcm_linear(float, float, float, float, float) #1

declare float @rcm_left_end(%struct.RcmAngle*) #1

declare float @rcm_right_end(%struct.RcmAngle*) #1

declare float @angle_mod_2PI(float) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
