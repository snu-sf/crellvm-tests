; ModuleID = './plug-ins/common/color-cube-analyze.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@query.return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"num-colors\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Number of colors in the image\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"plug-in-ccanalyze\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Analyze the set of colors in the image\00", align 1
@.str.10 = private unnamed_addr constant [103 x i8] c"Analyze colorcube and print some information about the current image (also displays a color-histogram)\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"robert@experimental.net\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"June 20th, 1997\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Colorcube A_nalysis...\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"<Image>/Colors/Info\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@imageID = internal global i32 0, align 4
@hist_red = internal global [256 x double] zeroinitializer, align 16
@hist_green = internal global [256 x double] zeroinitializer, align 16
@hist_blue = internal global [256 x double] zeroinitializer, align 16
@uniques = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"Colorcube Analysis\00", align 1
@width = internal global i32 0, align 4
@height = internal global i32 0, align 4
@bpp = internal global i32 0, align 4
@insertcolor.hash_table = internal global %struct._GHashTable* null, align 8
@maxred = internal global double 0.000000e+00, align 8
@maxgreen = internal global double 0.000000e+00, align 8
@maxblue = internal global double 0.000000e+00, align 8
@.str.19 = private unnamed_addr constant [19 x i8] c"color-cube-analyze\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"gimp-color-cube-analyze\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Image dimensions: %d \C3\97 %d\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"No colors\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Only one unique color\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Number of unique colors: %d\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %n_params, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %n_params.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  %4 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp4 = icmp ne i32 %5, 3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.end
  %6 = load i32, i32* %status, align 4
  %cmp7 = icmp eq i32 %6, 3
  br i1 %cmp7, label %if.then.8, label %if.end.29

if.then.8:                                        ; preds = %if.end.6
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data10 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call11 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call11, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data13 to i32*
  %10 = load i32, i32* %d_image, align 4
  store i32 %10, i32* @imageID, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call14 = call i32 @gimp_drawable_is_rgb(i32 %12)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id15, align 4
  %call16 = call i32 @gimp_drawable_is_gray(i32 %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.22, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id19, align 4
  %call20 = call i32 @gimp_drawable_is_indexed(i32 %16)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.then.8
  call void @llvm.memset.p0i8.i64(i8* bitcast ([256 x double]* @hist_red to i8*), i8 0, i64 2048, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([256 x double]* @hist_green to i8*), i8 0, i64 2048, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([256 x double]* @hist_blue to i8*), i8 0, i64 2048, i32 16, i1 false)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width, align 4
  %call23 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %18, %call23
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @analyze(%struct._GimpDrawable* %19)
  %20 = load i32, i32* %run_mode, align 4
  %cmp24 = icmp ne i32 %20, 1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  call void @doDialog()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.22
  br label %if.end.28

if.else:                                          ; preds = %lor.lhs.false.18
  store i32 0, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end.27
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %21)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.6
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %23 = load i32, i32* @uniques, align 4
  store i32 %23, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
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

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @analyze(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %src_row = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %numcol = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %a = alloca i32, align 4
  %idx = alloca i8, align 1
  %gray = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %has_sel = alloca i32, align 4
  %sel = alloca i8*, align 8
  %selPR = alloca %struct._GimpPixelRgn, align 8
  %ofsx = alloca i32, align 4
  %ofsy = alloca i32, align 4
  %selDrawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #4
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  store i32 %3, i32* @width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* @height, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp, align 4
  store i32 %7, i32* @bpp, align 4
  %8 = load i32, i32* @imageID, align 4
  %call3 = call i32 @gimp_selection_is_empty(i32 %8)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %has_sel, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_offsets(i32 %10, i32* %ofsx, i32* %ofsy)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = load i32, i32* @width, align 4
  %13 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %11, i32 0, i32 0, i32 %12, i32 %13, i32 0, i32 0)
  %14 = load i32, i32* @imageID, align 4
  %call6 = call i8* @gimp_image_get_colormap(i32 %14, i32* %numcol)
  store i8* %call6, i8** %cmap, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id7, align 4
  %call8 = call i32 @gimp_drawable_is_gray(i32 %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_item_is_channel(i32 %18)
  %tobool12 = icmp ne i32 %call11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %19 = phi i1 [ true, %entry ], [ %tobool12, %lor.rhs ]
  %lor.ext = zext i1 %19 to i32
  store i32 %lor.ext, i32* %gray, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id13, align 4
  %call14 = call i32 @gimp_drawable_has_alpha(i32 %21)
  store i32 %call14, i32* %has_alpha, align 4
  %22 = load i32, i32* @imageID, align 4
  %call15 = call i32 @gimp_image_get_selection(i32 %22)
  %call16 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %call15)
  store %struct._GimpDrawable* %call16, %struct._GimpDrawable** %selDrawable, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %selDrawable, align 8
  %24 = load i32, i32* @width, align 4
  %25 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %selPR, %struct._GimpDrawable* %23, i32 0, i32 0, i32 %24, i32 %25, i32 0, i32 0)
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %26, %27
  %28 = load i32, i32* @bpp, align 4
  %mul = mul nsw i32 %sub, %28
  %conv = sext i32 %mul to i64
  %call17 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call17, i8** %src_row, align 8
  %29 = load i32, i32* %x2, align 4
  %30 = load i32, i32* %x1, align 4
  %sub18 = sub nsw i32 %29, %30
  %conv19 = sext i32 %sub18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %sel, align 8
  %31 = load i32, i32* %y1, align 4
  store i32 %31, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %lor.end
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %src_row, align 8
  %35 = load i32, i32* %x1, align 4
  %36 = load i32, i32* %y, align 4
  %37 = load i32, i32* %x2, align 4
  %38 = load i32, i32* %x1, align 4
  %sub22 = sub nsw i32 %37, %38
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %34, i32 %35, i32 %36, i32 %sub22)
  %39 = load i32, i32* %has_sel, align 4
  %tobool23 = icmp ne i32 %39, 0
  br i1 %tobool23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %40 = load i8*, i8** %sel, align 8
  %41 = load i32, i32* %x1, align 4
  %42 = load i32, i32* %ofsx, align 4
  %add = add nsw i32 %41, %42
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %ofsy, align 4
  %add24 = add nsw i32 %43, %44
  %45 = load i32, i32* %x2, align 4
  %46 = load i32, i32* %x1, align 4
  %sub25 = sub nsw i32 %45, %46
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %selPR, i8* %40, i32 %add, i32 %add24, i32 %sub25)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.end
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %x2, align 4
  %49 = load i32, i32* %x1, align 4
  %sub27 = sub nsw i32 %48, %49
  %cmp28 = icmp slt i32 %47, %sub27
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.26
  store i32 255, i32* %a, align 4
  %50 = load i8*, i8** %cmap, align 8
  %tobool31 = icmp ne i8* %50, null
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.body.30
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* @bpp, align 4
  %mul33 = mul nsw i32 %51, %52
  %idxprom = sext i32 %mul33 to i64
  %53 = load i8*, i8** %src_row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %53, i64 %idxprom
  %54 = load i8, i8* %arrayidx, align 1
  store i8 %54, i8* %idx, align 1
  %55 = load i8, i8* %idx, align 1
  %conv34 = zext i8 %55 to i32
  %mul35 = mul nsw i32 %conv34, 3
  %idxprom36 = sext i32 %mul35 to i64
  %56 = load i8*, i8** %cmap, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %56, i64 %idxprom36
  %57 = load i8, i8* %arrayidx37, align 1
  store i8 %57, i8* %r, align 1
  %58 = load i8, i8* %idx, align 1
  %conv38 = zext i8 %58 to i32
  %mul39 = mul nsw i32 %conv38, 3
  %add40 = add nsw i32 %mul39, 1
  %idxprom41 = sext i32 %add40 to i64
  %59 = load i8*, i8** %cmap, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %59, i64 %idxprom41
  %60 = load i8, i8* %arrayidx42, align 1
  store i8 %60, i8* %g, align 1
  %61 = load i8, i8* %idx, align 1
  %conv43 = zext i8 %61 to i32
  %mul44 = mul nsw i32 %conv43, 3
  %add45 = add nsw i32 %mul44, 2
  %idxprom46 = sext i32 %add45 to i64
  %62 = load i8*, i8** %cmap, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %62, i64 %idxprom46
  %63 = load i8, i8* %arrayidx47, align 1
  store i8 %63, i8* %b, align 1
  %64 = load i32, i32* %has_alpha, align 4
  %tobool48 = icmp ne i32 %64, 0
  br i1 %tobool48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.then.32
  %65 = load i32, i32* %x, align 4
  %66 = load i32, i32* @bpp, align 4
  %mul50 = mul nsw i32 %65, %66
  %add51 = add nsw i32 %mul50, 1
  %idxprom52 = sext i32 %add51 to i64
  %67 = load i8*, i8** %src_row, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %67, i64 %idxprom52
  %68 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %68 to i32
  store i32 %conv54, i32* %a, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %if.then.32
  br label %if.end.90

if.else:                                          ; preds = %for.body.30
  %69 = load i32, i32* %gray, align 4
  %tobool56 = icmp ne i32 %69, 0
  br i1 %tobool56, label %if.then.57, label %if.else.69

if.then.57:                                       ; preds = %if.else
  %70 = load i32, i32* %x, align 4
  %71 = load i32, i32* @bpp, align 4
  %mul58 = mul nsw i32 %70, %71
  %idxprom59 = sext i32 %mul58 to i64
  %72 = load i8*, i8** %src_row, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %72, i64 %idxprom59
  %73 = load i8, i8* %arrayidx60, align 1
  store i8 %73, i8* %b, align 1
  store i8 %73, i8* %g, align 1
  store i8 %73, i8* %r, align 1
  %74 = load i32, i32* %has_alpha, align 4
  %tobool61 = icmp ne i32 %74, 0
  br i1 %tobool61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %if.then.57
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* @bpp, align 4
  %mul63 = mul nsw i32 %75, %76
  %add64 = add nsw i32 %mul63, 1
  %idxprom65 = sext i32 %add64 to i64
  %77 = load i8*, i8** %src_row, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %77, i64 %idxprom65
  %78 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %78 to i32
  store i32 %conv67, i32* %a, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %if.then.57
  br label %if.end.89

if.else.69:                                       ; preds = %if.else
  %79 = load i32, i32* %x, align 4
  %80 = load i32, i32* @bpp, align 4
  %mul70 = mul nsw i32 %79, %80
  %idxprom71 = sext i32 %mul70 to i64
  %81 = load i8*, i8** %src_row, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %81, i64 %idxprom71
  %82 = load i8, i8* %arrayidx72, align 1
  store i8 %82, i8* %r, align 1
  %83 = load i32, i32* %x, align 4
  %84 = load i32, i32* @bpp, align 4
  %mul73 = mul nsw i32 %83, %84
  %add74 = add nsw i32 %mul73, 1
  %idxprom75 = sext i32 %add74 to i64
  %85 = load i8*, i8** %src_row, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %85, i64 %idxprom75
  %86 = load i8, i8* %arrayidx76, align 1
  store i8 %86, i8* %g, align 1
  %87 = load i32, i32* %x, align 4
  %88 = load i32, i32* @bpp, align 4
  %mul77 = mul nsw i32 %87, %88
  %add78 = add nsw i32 %mul77, 2
  %idxprom79 = sext i32 %add78 to i64
  %89 = load i8*, i8** %src_row, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %89, i64 %idxprom79
  %90 = load i8, i8* %arrayidx80, align 1
  store i8 %90, i8* %b, align 1
  %91 = load i32, i32* %has_alpha, align 4
  %tobool81 = icmp ne i32 %91, 0
  br i1 %tobool81, label %if.then.82, label %if.end.88

if.then.82:                                       ; preds = %if.else.69
  %92 = load i32, i32* %x, align 4
  %93 = load i32, i32* @bpp, align 4
  %mul83 = mul nsw i32 %92, %93
  %add84 = add nsw i32 %mul83, 3
  %idxprom85 = sext i32 %add84 to i64
  %94 = load i8*, i8** %src_row, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %94, i64 %idxprom85
  %95 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %95 to i32
  store i32 %conv87, i32* %a, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.82, %if.else.69
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.68
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.55
  %96 = load i32, i32* %has_sel, align 4
  %tobool91 = icmp ne i32 %96, 0
  br i1 %tobool91, label %if.then.92, label %if.else.97

if.then.92:                                       ; preds = %if.end.90
  %97 = load i32, i32* %x, align 4
  %idxprom93 = sext i32 %97 to i64
  %98 = load i8*, i8** %sel, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %98, i64 %idxprom93
  %99 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %99 to i32
  %100 = load i32, i32* %a, align 4
  %mul96 = mul nsw i32 %100, %conv95
  store i32 %mul96, i32* %a, align 4
  br label %if.end.99

if.else.97:                                       ; preds = %if.end.90
  %101 = load i32, i32* %a, align 4
  %mul98 = mul nsw i32 %101, 255
  store i32 %mul98, i32* %a, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.92
  %102 = load i32, i32* %a, align 4
  %cmp100 = icmp ne i32 %102, 0
  br i1 %cmp100, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %if.end.99
  %103 = load i8, i8* %r, align 1
  %104 = load i8, i8* %g, align 1
  %105 = load i8, i8* %b, align 1
  %106 = load i32, i32* %a, align 4
  %conv103 = sitofp i32 %106 to double
  %mul104 = fmul double %conv103, 0x3EF0203040506071
  call void @insertcolor(i8 zeroext %103, i8 zeroext %104, i8 zeroext %105, double %mul104)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %if.end.99
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %107 = load i32, i32* %x, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  %108 = load i32, i32* %y, align 4
  %rem = srem i32 %108, 10
  %cmp106 = icmp eq i32 %rem, 0
  br i1 %cmp106, label %if.then.108, label %if.end.113

if.then.108:                                      ; preds = %for.end
  %109 = load i32, i32* %y, align 4
  %conv109 = sitofp i32 %109 to double
  %110 = load i32, i32* %y2, align 4
  %111 = load i32, i32* %y1, align 4
  %sub110 = sub nsw i32 %110, %111
  %conv111 = sitofp i32 %sub110 to double
  %div = fdiv double %conv109, %conv111
  %call112 = call i32 @gimp_progress_update(double %div)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.108, %for.end
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %112 = load i32, i32* %y, align 4
  %inc115 = add nsw i32 %112, 1
  store i32 %inc115, i32* %y, align 4
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  %call117 = call i32 @gimp_progress_update(double 1.000000e+00)
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %selDrawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %113)
  %114 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %114)
  %115 = load i8*, i8** %sel, align 8
  call void @g_free(i8* %115)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doDialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %2)
  %call4 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %vbox, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %5, i32 12)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  %call9 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %8)
  %9 = bitcast %struct._GtkWidget* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call10)
  %10 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %call12 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %hbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %call15 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_frame_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %18, i32 1)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %call20 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %preview, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %23, i32 256, i32 150)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_container_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkContainer*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %26, %struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0)) #4
  %29 = load i32, i32* @width, align 4
  %30 = load i32, i32* @height, align 4
  call void (%struct._GtkWidget*, i8*, ...) @doLabel(%struct._GtkWidget* %28, i8* %call23, i32 %29, i32 %30)
  %31 = load i32, i32* @uniques, align 4
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)) #4
  call void (%struct._GtkWidget*, i8*, ...) @doLabel(%struct._GtkWidget* %32, i8* %call24)
  br label %if.end.30

if.else:                                          ; preds = %entry
  %33 = load i32, i32* @uniques, align 4
  %cmp25 = icmp eq i32 %33, 1
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0)) #4
  call void (%struct._GtkWidget*, i8*, ...) @doLabel(%struct._GtkWidget* %34, i8* %call27)
  br label %if.end

if.else.28:                                       ; preds = %if.else
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0)) #4
  %36 = load i32, i32* @uniques, align 4
  call void (%struct._GtkWidget*, i8*, ...) @doLabel(%struct._GtkWidget* %35, i8* %call29, i32 %36)
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @fillPreview(%struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_dialog_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call31)
  %41 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpDialog*
  %call33 = call i32 @gimp_dialog_run(%struct._GimpDialog* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %42)
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_item_is_channel(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_image_get_selection(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @insertcolor(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, double %a) #0 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %a.addr = alloca double, align 8
  %key = alloca i32, align 4
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store double %a, double* %a.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @insertcolor.hash_table, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal)
  store %struct._GHashTable* %call, %struct._GHashTable** @insertcolor.hash_table, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, i8* %r.addr, align 1
  %2 = load i8, i8* %g.addr, align 1
  %3 = load i8, i8* %b.addr, align 1
  %4 = load double, double* %a.addr, align 8
  call void @histogram(i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, double %4)
  %5 = load i8, i8* %r.addr, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8, i8* %g.addr, align 1
  %conv1 = zext i8 %6 to i32
  %7 = load i8, i8* %b.addr, align 1
  %conv2 = zext i8 %7 to i32
  %mul = mul nsw i32 256, %conv2
  %add = add nsw i32 %conv1, %mul
  %mul3 = mul nsw i32 256, %add
  %add4 = add nsw i32 %conv, %mul3
  store i32 %add4, i32* %key, align 4
  %8 = load %struct._GHashTable*, %struct._GHashTable** @insertcolor.hash_table, align 8
  %9 = load i32, i32* %key, align 4
  %conv5 = zext i32 %9 to i64
  %10 = inttoptr i64 %conv5 to i8*
  %call6 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* %10)
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %return

if.end.9:                                         ; preds = %if.end
  %11 = load %struct._GHashTable*, %struct._GHashTable** @insertcolor.hash_table, align 8
  %12 = load i32, i32* %key, align 4
  %conv10 = zext i32 %12 to i64
  %13 = inttoptr i64 %conv10 to i8*
  %call11 = call i32 @g_hash_table_insert(%struct._GHashTable* %11, i8* %13, i8* inttoptr (i64 1 to i8*))
  %14 = load i32, i32* @uniques, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @uniques, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @g_free(i8*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @histogram(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, double %a) #0 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %a.addr = alloca double, align 8
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load i8, i8* %r.addr, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @hist_red, i32 0, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  %add = fadd double %2, %0
  store double %add, double* %arrayidx, align 8
  %3 = load double, double* %a.addr, align 8
  %4 = load i8, i8* %g.addr, align 1
  %idxprom1 = zext i8 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x double], [256 x double]* @hist_green, i32 0, i64 %idxprom1
  %5 = load double, double* %arrayidx2, align 8
  %add3 = fadd double %5, %3
  store double %add3, double* %arrayidx2, align 8
  %6 = load double, double* %a.addr, align 8
  %7 = load i8, i8* %b.addr, align 1
  %idxprom4 = zext i8 %7 to i64
  %arrayidx5 = getelementptr inbounds [256 x double], [256 x double]* @hist_blue, i32 0, i64 %idxprom4
  %8 = load double, double* %arrayidx5, align 8
  %add6 = fadd double %8, %6
  store double %add6, double* %arrayidx5, align 8
  %9 = load i8, i8* %r.addr, align 1
  %idxprom7 = zext i8 %9 to i64
  %arrayidx8 = getelementptr inbounds [256 x double], [256 x double]* @hist_red, i32 0, i64 %idxprom7
  %10 = load double, double* %arrayidx8, align 8
  %11 = load double, double* @maxred, align 8
  %cmp = fcmp ogt double %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i8, i8* %r.addr, align 1
  %idxprom9 = zext i8 %12 to i64
  %arrayidx10 = getelementptr inbounds [256 x double], [256 x double]* @hist_red, i32 0, i64 %idxprom9
  %13 = load double, double* %arrayidx10, align 8
  store double %13, double* @maxred, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8, i8* %g.addr, align 1
  %idxprom11 = zext i8 %14 to i64
  %arrayidx12 = getelementptr inbounds [256 x double], [256 x double]* @hist_green, i32 0, i64 %idxprom11
  %15 = load double, double* %arrayidx12, align 8
  %16 = load double, double* @maxgreen, align 8
  %cmp13 = fcmp ogt double %15, %16
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end
  %17 = load i8, i8* %g.addr, align 1
  %idxprom15 = zext i8 %17 to i64
  %arrayidx16 = getelementptr inbounds [256 x double], [256 x double]* @hist_green, i32 0, i64 %idxprom15
  %18 = load double, double* %arrayidx16, align 8
  store double %18, double* @maxgreen, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end
  %19 = load i8, i8* %b.addr, align 1
  %idxprom18 = zext i8 %19 to i64
  %arrayidx19 = getelementptr inbounds [256 x double], [256 x double]* @hist_blue, i32 0, i64 %idxprom18
  %20 = load double, double* %arrayidx19, align 8
  %21 = load double, double* @maxblue, align 8
  %cmp20 = fcmp ogt double %20, %21
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.17
  %22 = load i8, i8* %b.addr, align 1
  %idxprom22 = zext i8 %22 to i64
  %arrayidx23 = getelementptr inbounds [256 x double], [256 x double]* @hist_blue, i32 0, i64 %idxprom22
  %23 = load double, double* %arrayidx23, align 8
  store double %23, double* @maxblue, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.17
  ret void
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @doLabel(%struct._GtkWidget* %vbox, i8* %format, ...) #0 {
entry:
  %vbox.addr = alloca %struct._GtkWidget*, align 8
  %format.addr = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GtkWidget* %vbox, %struct._GtkWidget** %vbox.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i8* %call, i8** %text, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i8*, i8** %text, align 8
  %call5 = call %struct._GtkWidget* @gtk_label_new(i8* %1)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %label, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_misc_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call6)
  %4 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %4, float 0.000000e+00, float 5.000000e-01)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call8)
  %7 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load i8*, i8** %text, align 8
  call void @g_free(i8* %10)
  ret void
}

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @fillPreview(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %image = alloca i8*, align 8
  %column = alloca i8*, align 8
  %pixel = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %histcount = alloca double, align 8
  %val = alloca double, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i32 768, i32* %rowstride, align 4
  %0 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 256, %0
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 1)
  store i8* %call, i8** %image, align 8
  store i32 0, i32* %x, align 4
  %1 = load i8*, i8** %image, align 8
  store i8* %1, i8** %column, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %entry
  %2 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @hist_red, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %cmp2 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [256 x double], [256 x double]* @hist_red, i32 0, i64 %idxprom4
  %6 = load double, double* %arrayidx5, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %6, %cond.true ], [ 1.000000e+00, %cond.false ]
  store double %cond, double* %histcount, align 8
  %7 = load double, double* %histcount, align 8
  %call6 = call double @log(double %7) #4
  %mul7 = fmul double %call6, 1.200000e+01
  store double %mul7, double* %val, align 8
  %8 = load double, double* %val, align 8
  %cmp8 = fcmp ogt double %8, 1.500000e+02
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store double 1.500000e+02, double* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  store i32 149, i32* %y, align 4
  %9 = load i8*, i8** %column, align 8
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %rowstride, align 4
  %mul10 = mul nsw i32 %10, %11
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.end
  %12 = load i32, i32* %y, align 4
  %conv12 = sitofp i32 %12 to double
  %13 = load double, double* %val, align 8
  %sub = fsub double 1.500000e+02, %13
  %cmp13 = fcmp ogt double %conv12, %sub
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.11
  %14 = load i8*, i8** %pixel, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 -1, i8* %arrayidx16, align 1
  %15 = load i32, i32* %rowstride, align 4
  %16 = load i8*, i8** %pixel, align 8
  %idx.ext17 = sext i32 %15 to i64
  %idx.neg = sub i64 0, %idx.ext17
  %add.ptr18 = getelementptr inbounds i8, i8* %16, i64 %idx.neg
  store i8* %add.ptr18, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %17 = load i32, i32* %y, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %y, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %18 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [256 x double], [256 x double]* @hist_green, i32 0, i64 %idxprom19
  %19 = load double, double* %arrayidx20, align 8
  %cmp21 = fcmp ogt double %19, 1.000000e+00
  br i1 %cmp21, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %for.end
  %20 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [256 x double], [256 x double]* @hist_green, i32 0, i64 %idxprom24
  %21 = load double, double* %arrayidx25, align 8
  br label %cond.end.27

cond.false.26:                                    ; preds = %for.end
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.23
  %cond28 = phi double [ %21, %cond.true.23 ], [ 1.000000e+00, %cond.false.26 ]
  store double %cond28, double* %histcount, align 8
  %22 = load double, double* %histcount, align 8
  %call29 = call double @log(double %22) #4
  %mul30 = fmul double %call29, 1.200000e+01
  store double %mul30, double* %val, align 8
  %23 = load double, double* %val, align 8
  %cmp31 = fcmp ogt double %23, 1.500000e+02
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cond.end.27
  store double 1.500000e+02, double* %val, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %cond.end.27
  store i32 149, i32* %y, align 4
  %24 = load i8*, i8** %column, align 8
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %rowstride, align 4
  %mul35 = mul nsw i32 %25, %26
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %24, i64 %idx.ext36
  store i8* %add.ptr37, i8** %pixel, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.48, %if.end.34
  %27 = load i32, i32* %y, align 4
  %conv39 = sitofp i32 %27 to double
  %28 = load double, double* %val, align 8
  %sub40 = fsub double 1.500000e+02, %28
  %cmp41 = fcmp ogt double %conv39, %sub40
  br i1 %cmp41, label %for.body.43, label %for.end.50

for.body.43:                                      ; preds = %for.cond.38
  %29 = load i8*, i8** %pixel, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 -1, i8* %arrayidx44, align 1
  %30 = load i32, i32* %rowstride, align 4
  %31 = load i8*, i8** %pixel, align 8
  %idx.ext45 = sext i32 %30 to i64
  %idx.neg46 = sub i64 0, %idx.ext45
  %add.ptr47 = getelementptr inbounds i8, i8* %31, i64 %idx.neg46
  store i8* %add.ptr47, i8** %pixel, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.43
  %32 = load i32, i32* %y, align 4
  %dec49 = add nsw i32 %32, -1
  store i32 %dec49, i32* %y, align 4
  br label %for.cond.38

for.end.50:                                       ; preds = %for.cond.38
  %33 = load i32, i32* %x, align 4
  %idxprom51 = sext i32 %33 to i64
  %arrayidx52 = getelementptr inbounds [256 x double], [256 x double]* @hist_blue, i32 0, i64 %idxprom51
  %34 = load double, double* %arrayidx52, align 8
  %cmp53 = fcmp ogt double %34, 1.000000e+00
  br i1 %cmp53, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %for.end.50
  %35 = load i32, i32* %x, align 4
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [256 x double], [256 x double]* @hist_blue, i32 0, i64 %idxprom56
  %36 = load double, double* %arrayidx57, align 8
  br label %cond.end.59

cond.false.58:                                    ; preds = %for.end.50
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.55
  %cond60 = phi double [ %36, %cond.true.55 ], [ 1.000000e+00, %cond.false.58 ]
  store double %cond60, double* %histcount, align 8
  %37 = load double, double* %histcount, align 8
  %call61 = call double @log(double %37) #4
  %mul62 = fmul double %call61, 1.200000e+01
  store double %mul62, double* %val, align 8
  %38 = load double, double* %val, align 8
  %cmp63 = fcmp ogt double %38, 1.500000e+02
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %cond.end.59
  store double 1.500000e+02, double* %val, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %cond.end.59
  store i32 149, i32* %y, align 4
  %39 = load i8*, i8** %column, align 8
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %rowstride, align 4
  %mul67 = mul nsw i32 %40, %41
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %39, i64 %idx.ext68
  store i8* %add.ptr69, i8** %pixel, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.80, %if.end.66
  %42 = load i32, i32* %y, align 4
  %conv71 = sitofp i32 %42 to double
  %43 = load double, double* %val, align 8
  %sub72 = fsub double 1.500000e+02, %43
  %cmp73 = fcmp ogt double %conv71, %sub72
  br i1 %cmp73, label %for.body.75, label %for.end.82

for.body.75:                                      ; preds = %for.cond.70
  %44 = load i8*, i8** %pixel, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 -1, i8* %arrayidx76, align 1
  %45 = load i32, i32* %rowstride, align 4
  %46 = load i8*, i8** %pixel, align 8
  %idx.ext77 = sext i32 %45 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %46, i64 %idx.neg78
  store i8* %add.ptr79, i8** %pixel, align 8
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.75
  %47 = load i32, i32* %y, align 4
  %dec81 = add nsw i32 %47, -1
  store i32 %dec81, i32* %y, align 4
  br label %for.cond.70

for.end.82:                                       ; preds = %for.cond.70
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %48 = load i32, i32* %x, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %x, align 4
  %49 = load i8*, i8** %column, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %49, i64 3
  store i8* %add.ptr84, i8** %column, align 8
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_preview_area_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call86)
  %52 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpPreviewArea*
  %53 = load i8*, i8** %image, align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %52, i32 0, i32 0, i32 256, i32 150, i32 0, i8* %53, i32 768)
  %54 = load i8*, i8** %image, align 8
  call void @g_free(i8* %54)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind
declare double @log(double) #2

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
