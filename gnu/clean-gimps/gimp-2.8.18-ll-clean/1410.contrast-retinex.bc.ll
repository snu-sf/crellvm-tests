; ModuleID = './plug-ins/common/contrast-retinex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.RetinexParams = type { i32, i32, i32, float }
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
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.gauss3_coefs = type { i32, float, double, [4 x double] }

@PLUG_IN_INFO = internal global %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Biggest scale value\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"nscales\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Number of scales\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"scales-mode\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Retinex distribution through scales\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"cvar\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Variance value\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"plug-in-retinex\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Enhance contrast using the Retinex method\00", align 1
@.str.16 = private unnamed_addr constant [256 x i8] c"The Retinex Image Enhancement Algorithm is an automatic image enhancement method that enhances a digital image in terms of dynamic range compression, color independence from the spectral distribution of the scene illuminant, and color/lightness rendition.\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Fabien Pelisson\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"2003\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Retine_x...\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"<Image>/Colors/Modify\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@rvals = internal global %struct.RetinexParams { i32 240, i32 3, i32 0, float 0x3FF3333340000000 }, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"Retinex\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"contrast-retinex\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Retinex Image Enhancement\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"gimp-contrast-retinex\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Uniform\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"_Level:\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"_Scale:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Scale _division:\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Dy_namic:\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Failed to allocate memory\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"Retinex: filtering\00", align 1
@RetinexScales = internal global [8 x float] zeroinitializer, align 16

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

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0))
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
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0)) #4
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
  %call7 = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.end
  %9 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %9, 16
  br i1 %cmp, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %height, align 4
  %cmp9 = icmp slt i32 %10, 16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %do.end
  store i32 0, i32* %status, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %11)
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width10, align 4
  %call11 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %14, %call11
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end
  %call12 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.RetinexParams* @rvals to i8*))
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call13 = call i32 @retinex_dialog(%struct._GimpDrawable* %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb
  br label %return

if.end.16:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %17 = load i32, i32* %nparams.addr, align 4
  %cmp18 = icmp ne i32 %17, 7
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.bb.17
  store i32 1, i32* %status, align 4
  br label %if.end.33

if.else:                                          ; preds = %sw.bb.17
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int3223 = bitcast %union._GimpParamData* %data22 to i32*
  %19 = load i32, i32* %d_int3223, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 0), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_int3226 = bitcast %union._GimpParamData* %data25 to i32*
  %21 = load i32, i32* %d_int3226, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 5
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %23 = load i32, i32* %d_int3229, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 2), align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 6
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data31 to double*
  %25 = load double, double* %d_float, align 8
  %conv32 = fptrunc double %25 to float
  store float %conv32, float* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 3), align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.20
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end
  %call35 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.RetinexParams* @rvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.34, %if.end.33, %if.end.16
  %26 = load i32, i32* %status, align 4
  %cmp36 = icmp eq i32 %26, 3
  br i1 %cmp36, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %sw.epilog
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id38, align 4
  %call39 = call i32 @gimp_drawable_is_rgb(i32 %28)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.54

if.then.41:                                       ; preds = %land.lhs.true
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #4
  %call43 = call i32 @gimp_progress_init(i8* %call42)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @retinex(%struct._GimpDrawable* %29, %struct._GimpPreview* null)
  %30 = load i32, i32* %run_mode, align 4
  %cmp44 = icmp ne i32 %30, 1
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.41
  %call47 = call i32 @gimp_displays_flush()
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.then.41
  %31 = load i32, i32* %run_mode, align 4
  %cmp49 = icmp eq i32 %31, 0
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %call52 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.RetinexParams* @rvals to i8*), i32 16)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  br label %if.end.55

if.else.54:                                       ; preds = %land.lhs.true, %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.end.53
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %32)
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.55, %if.then.15, %if.then
  ret void
}

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

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @retinex_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @retinex to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
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
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #4
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)) #4
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call25, i32 0, i8* %call26, i32 1, i8* %call27, i32 2, i8* null)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %combo, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_int_combo_box_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpIntComboBox*
  %40 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 2), align 4
  %call31 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %39, i32 %40, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 2) to i8*))
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 2)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call33)
  %47 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call36 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %47, i32 0, i32 0, i8* %call35, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %48, i32 2, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call37)
  %52 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)) #4
  %53 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %53 to double
  %call40 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %52, i32 0, i32 1, i8* %call39, i32 150, i32 4, double %conv, double 1.600000e+01, double 2.500000e+02, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call40, %struct._GtkObject** %adj, align 8
  %54 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %55 = bitcast %struct._GtkObject* %54 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.RetinexParams* @rvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 2)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call43)
  %62 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0)) #4
  %63 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1), align 4
  %conv46 = sitofp i32 %63 to double
  %call47 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %62, i32 0, i32 2, i8* %call45, i32 150, i32 4, double %conv46, double 0.000000e+00, double 8.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call47, %struct._GtkObject** %adj, align 8
  %64 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %65 = bitcast %struct._GtkObject* %64 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %69, void (i8*, %struct._GClosure*)* null, i32 2)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call50)
  %72 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #4
  %73 = load float, float* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 3), align 4
  %conv53 = fpext float %73 to double
  %call54 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %72, i32 0, i32 3, i8* %call52, i32 150, i32 4, double %conv53, double 0.000000e+00, double 4.000000e+00, double 1.000000e-01, double 1.000000e-01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call54, %struct._GtkObject** %adj, align 8
  %74 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %75 = bitcast %struct._GtkObject* %74 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_float_adjustment_update to void ()*), i8* bitcast (float* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %76 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %77 = bitcast %struct._GtkObject* %76 to i8*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %79, void (i8*, %struct._GClosure*)* null, i32 2)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_dialog_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call57)
  %83 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpDialog*
  %call59 = call i32 @gimp_dialog_run(%struct._GimpDialog* %83)
  %cmp = icmp eq i32 %call59, -5
  %conv60 = zext i1 %cmp to i32
  store i32 %conv60, i32* %run, align 4
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %84)
  %85 = load i32, i32* %run, align 4
  ret i32 %85
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @retinex(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %size = alloca i32, align 4
  %bytes = alloca i32, align 4
  %src = alloca i8*, align 8
  %psrc = alloca i8*, align 8
  %dst_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %src, align 8
  store i8* null, i8** %psrc, align 8
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
  br label %if.end.14

if.else:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_drawable_mask_intersect(i32 %7, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %bytes, align 4
  %mul6 = mul nsw i32 %mul, %10
  store i32 %mul6, i32* %size, align 4
  %11 = load i32, i32* %size, align 4
  %conv = sext i32 %11 to i64
  %mul7 = mul i64 1, %conv
  %call8 = call noalias i8* @g_try_malloc(i64 %mul7)
  store i8* %call8, i8** %src, align 8
  %12 = load i8*, i8** %src, align 8
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.end
  %13 = load i8*, i8** %src, align 8
  %14 = load i32, i32* %size, align 4
  %conv12 = sext i32 %14 to i64
  %mul13 = mul i64 1, %conv12
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul13, i32 1, i1 false)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 0, i32 0)
  %20 = load i8*, i8** %src, align 8
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.11, %if.then
  %25 = load i8*, i8** %src, align 8
  store i8* %25, i8** %psrc, align 8
  %26 = load i8*, i8** %psrc, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %29 = load i32, i32* %bytes, align 4
  %30 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp15 = icmp ne %struct._GimpPreview* %30, null
  %conv16 = zext i1 %cmp15 to i32
  call void @MSRCR(i8* %26, i32 %27, i32 %28, i32 %29, i32 %conv16)
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool17 = icmp ne %struct._GimpPreview* %31, null
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.end.14
  %32 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %33 = load i8*, i8** %psrc, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %bytes, align 4
  %mul19 = mul nsw i32 %34, %35
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %32, i8* %33, i32 %mul19)
  br label %if.end.26

if.else.20:                                       ; preds = %if.end.14
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_rgn, %struct._GimpDrawable* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 1, i32 1)
  %41 = load i8*, i8** %psrc, align 8
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_rgn, i8* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %call21 = call i32 @gimp_progress_update(double 1.000000e+00)
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %46)
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 0
  %48 = load i32, i32* %drawable_id22, align 4
  %call23 = call i32 @gimp_drawable_merge_shadow(i32 %48, i32 1)
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id24, align 4
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  %call25 = call i32 @gimp_drawable_update(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.20, %if.then.18
  %55 = load i8*, i8** %src, align 8
  call void @g_free(i8* %55)
  br label %return

return:                                           ; preds = %if.end.26, %if.then.10, %if.then.5
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

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_float_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare noalias i8* @g_try_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @MSRCR(i8* %src, i32 %width, i32 %height, i32 %bytes, i32 %preview_mode) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %preview_mode.addr = alloca i32, align 4
  %scale = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %channel = alloca i32, align 4
  %psrc = alloca i8*, align 8
  %dst = alloca float*, align 8
  %pdst = alloca float*, align 8
  %in = alloca float*, align 8
  %out = alloca float*, align 8
  %channelsize = alloca i32, align 4
  %weight = alloca float, align 4
  %coef = alloca %struct.gauss3_coefs, align 8
  %mean = alloca float, align 4
  %var = alloca float, align 4
  %mini = alloca float, align 4
  %range = alloca float, align 4
  %maxi = alloca float, align 4
  %alpha = alloca float, align 4
  %gain = alloca float, align 4
  %offset = alloca float, align 4
  %max_preview = alloca double, align 8
  %pos = alloca i32, align 4
  %logl = alloca float, align 4
  %c = alloca float, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %preview_mode, i32* %preview_mode.addr, align 4
  store i8* null, i8** %psrc, align 8
  store float* null, float** %dst, align 8
  store float* null, float** %pdst, align 8
  store double 0.000000e+00, double* %max_preview, align 8
  %0 = load i32, i32* %preview_mode.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0)) #4
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %1 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1), align 4
  %mul = mul nsw i32 3, %1
  %conv = sitofp i32 %mul to double
  store double %conv, double* %max_preview, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %height.addr, align 4
  %mul2 = mul nsw i32 %2, %3
  %4 = load i32, i32* %bytes.addr, align 4
  %mul3 = mul nsw i32 %mul2, %4
  store i32 %mul3, i32* %size, align 4
  %5 = load i32, i32* %size, align 4
  %conv4 = sext i32 %5 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call noalias i8* @g_try_malloc(i64 %mul5)
  %6 = bitcast i8* %call6 to float*
  store float* %6, float** %dst, align 8
  %7 = load float*, float** %dst, align 8
  %cmp = icmp eq float* %7, null
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0))
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load float*, float** %dst, align 8
  %9 = bitcast float* %8 to i8*
  %10 = load i32, i32* %size, align 4
  %conv10 = sext i32 %10 to i64
  %mul11 = mul i64 %conv10, 4
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %mul11, i32 4, i1 false)
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %mul12 = mul nsw i32 %11, %12
  store i32 %mul12, i32* %channelsize, align 4
  %13 = load i32, i32* %channelsize, align 4
  %conv13 = sext i32 %13 to i64
  %mul14 = mul i64 %conv13, 4
  %call15 = call noalias i8* @g_try_malloc(i64 %mul14)
  %14 = bitcast i8* %call15 to float*
  store float* %14, float** %in, align 8
  %15 = load float*, float** %in, align 8
  %cmp16 = icmp eq float* %15, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.9
  %16 = load float*, float** %dst, align 8
  %17 = bitcast float* %16 to i8*
  call void @g_free(i8* %17)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0))
  br label %return

if.end.19:                                        ; preds = %if.end.9
  %18 = load i32, i32* %channelsize, align 4
  %conv20 = sext i32 %18 to i64
  %mul21 = mul i64 %conv20, 4
  %call22 = call noalias i8* @g_try_malloc(i64 %mul21)
  %19 = bitcast i8* %call22 to float*
  store float* %19, float** %out, align 8
  %20 = load float*, float** %out, align 8
  %cmp23 = icmp eq float* %20, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  %21 = load float*, float** %in, align 8
  %22 = bitcast float* %21 to i8*
  call void @g_free(i8* %22)
  %23 = load float*, float** %dst, align 8
  %24 = bitcast float* %23 to i8*
  call void @g_free(i8* %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0))
  br label %return

if.end.26:                                        ; preds = %if.end.19
  %25 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 2), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 0), align 4
  call void @retinex_scales_distribution(float* getelementptr inbounds ([8 x float], [8 x float]* @RetinexScales, i32 0, i32 0), i32 %25, i32 %26, i32 %27)
  %28 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1), align 4
  %conv27 = sitofp i32 %28 to float
  %conv28 = fpext float %conv27 to double
  %div = fdiv double 1.000000e+00, %conv28
  %conv29 = fptrunc double %div to float
  store float %conv29, float* %weight, align 4
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.109, %if.end.26
  %29 = load i32, i32* %channel, align 4
  %cmp30 = icmp slt i32 %29, 3
  br i1 %cmp30, label %for.body, label %for.end.111

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %30 = load i32, i32* %channel, align 4
  store i32 %30, i32* %pos, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %channelsize, align 4
  %cmp33 = icmp slt i32 %31, %32
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %33 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 %idxprom
  %35 = load i8, i8* %arrayidx, align 1
  %conv36 = zext i8 %35 to i32
  %conv37 = sitofp i32 %conv36 to double
  %add = fadd double %conv37, 1.000000e+00
  %conv38 = fptrunc double %add to float
  %36 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %36 to i64
  %37 = load float*, float** %in, align 8
  %arrayidx40 = getelementptr inbounds float, float* %37, i64 %idxprom39
  store float %conv38, float* %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  %39 = load i32, i32* %bytes.addr, align 4
  %40 = load i32, i32* %pos, align 4
  %add41 = add nsw i32 %40, %39
  store i32 %add41, i32* %pos, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  store i32 0, i32* %scale, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.106, %for.end
  %41 = load i32, i32* %scale, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1), align 4
  %cmp43 = icmp slt i32 %41, %42
  br i1 %cmp43, label %for.body.45, label %for.end.108

for.body.45:                                      ; preds = %for.cond.42
  %43 = load i32, i32* %scale, align 4
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds [8 x float], [8 x float]* @RetinexScales, i32 0, i64 %idxprom46
  %44 = load float, float* %arrayidx47, align 4
  call void @compute_coefs3(%struct.gauss3_coefs* %coef, float %44)
  store i32 0, i32* %row, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.55, %for.body.45
  %45 = load i32, i32* %row, align 4
  %46 = load i32, i32* %height.addr, align 4
  %cmp49 = icmp slt i32 %45, %46
  br i1 %cmp49, label %for.body.51, label %for.end.57

for.body.51:                                      ; preds = %for.cond.48
  %47 = load i32, i32* %row, align 4
  %48 = load i32, i32* %width.addr, align 4
  %mul52 = mul nsw i32 %47, %48
  store i32 %mul52, i32* %pos, align 4
  %49 = load float*, float** %in, align 8
  %50 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds float, float* %49, i64 %idx.ext
  %51 = load float*, float** %out, align 8
  %52 = load i32, i32* %pos, align 4
  %idx.ext53 = sext i32 %52 to i64
  %add.ptr54 = getelementptr inbounds float, float* %51, i64 %idx.ext53
  %53 = load i32, i32* %width.addr, align 4
  call void @gausssmooth(float* %add.ptr, float* %add.ptr54, i32 %53, i32 1, %struct.gauss3_coefs* %coef)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.51
  %54 = load i32, i32* %row, align 4
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* %row, align 4
  br label %for.cond.48

for.end.57:                                       ; preds = %for.cond.48
  %55 = load float*, float** %in, align 8
  %56 = bitcast float* %55 to i8*
  %57 = load float*, float** %out, align 8
  %58 = bitcast float* %57 to i8*
  %59 = load i32, i32* %channelsize, align 4
  %conv58 = sext i32 %59 to i64
  %mul59 = mul i64 %conv58, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %58, i64 %mul59, i32 4, i1 false)
  %60 = load float*, float** %out, align 8
  %61 = bitcast float* %60 to i8*
  %62 = load i32, i32* %channelsize, align 4
  %conv60 = sext i32 %62 to i64
  %mul61 = mul i64 %conv60, 4
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 %mul61, i32 4, i1 false)
  store i32 0, i32* %col, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.70, %for.end.57
  %63 = load i32, i32* %col, align 4
  %64 = load i32, i32* %width.addr, align 4
  %cmp63 = icmp slt i32 %63, %64
  br i1 %cmp63, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.62
  %65 = load i32, i32* %col, align 4
  store i32 %65, i32* %pos, align 4
  %66 = load float*, float** %in, align 8
  %67 = load i32, i32* %pos, align 4
  %idx.ext66 = sext i32 %67 to i64
  %add.ptr67 = getelementptr inbounds float, float* %66, i64 %idx.ext66
  %68 = load float*, float** %out, align 8
  %69 = load i32, i32* %pos, align 4
  %idx.ext68 = sext i32 %69 to i64
  %add.ptr69 = getelementptr inbounds float, float* %68, i64 %idx.ext68
  %70 = load i32, i32* %height.addr, align 4
  %71 = load i32, i32* %width.addr, align 4
  call void @gausssmooth(float* %add.ptr67, float* %add.ptr69, i32 %70, i32 %71, %struct.gauss3_coefs* %coef)
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %72 = load i32, i32* %col, align 4
  %inc71 = add nsw i32 %72, 1
  store i32 %inc71, i32* %col, align 4
  br label %for.cond.62

for.end.72:                                       ; preds = %for.cond.62
  store i32 0, i32* %i, align 4
  %73 = load i32, i32* %channel, align 4
  store i32 %73, i32* %pos, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.94, %for.end.72
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %channelsize, align 4
  %cmp74 = icmp slt i32 %74, %75
  br i1 %cmp74, label %for.body.76, label %for.end.97

for.body.76:                                      ; preds = %for.cond.73
  %76 = load float, float* %weight, align 4
  %conv77 = fpext float %76 to double
  %77 = load i32, i32* %pos, align 4
  %idxprom78 = sext i32 %77 to i64
  %78 = load i8*, i8** %src.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %78, i64 %idxprom78
  %79 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %79 to i32
  %conv81 = sitofp i32 %conv80 to double
  %add82 = fadd double %conv81, 1.000000e+00
  %call83 = call double @log(double %add82) #4
  %80 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %80 to i64
  %81 = load float*, float** %out, align 8
  %arrayidx85 = getelementptr inbounds float, float* %81, i64 %idxprom84
  %82 = load float, float* %arrayidx85, align 4
  %conv86 = fpext float %82 to double
  %call87 = call double @log(double %conv86) #4
  %sub = fsub double %call83, %call87
  %mul88 = fmul double %conv77, %sub
  %83 = load i32, i32* %pos, align 4
  %idxprom89 = sext i32 %83 to i64
  %84 = load float*, float** %dst, align 8
  %arrayidx90 = getelementptr inbounds float, float* %84, i64 %idxprom89
  %85 = load float, float* %arrayidx90, align 4
  %conv91 = fpext float %85 to double
  %add92 = fadd double %conv91, %mul88
  %conv93 = fptrunc double %add92 to float
  store float %conv93, float* %arrayidx90, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.76
  %86 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %86, 1
  store i32 %inc95, i32* %i, align 4
  %87 = load i32, i32* %bytes.addr, align 4
  %88 = load i32, i32* %pos, align 4
  %add96 = add nsw i32 %88, %87
  store i32 %add96, i32* %pos, align 4
  br label %for.cond.73

for.end.97:                                       ; preds = %for.cond.73
  %89 = load i32, i32* %preview_mode.addr, align 4
  %tobool98 = icmp ne i32 %89, 0
  br i1 %tobool98, label %if.end.105, label %if.then.99

if.then.99:                                       ; preds = %for.end.97
  %90 = load i32, i32* %channel, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 1), align 4
  %mul100 = mul nsw i32 %90, %91
  %92 = load i32, i32* %scale, align 4
  %add101 = add nsw i32 %mul100, %92
  %conv102 = sitofp i32 %add101 to double
  %93 = load double, double* %max_preview, align 8
  %div103 = fdiv double %conv102, %93
  %call104 = call i32 @gimp_progress_update(double %div103)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.99, %for.end.97
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %94 = load i32, i32* %scale, align 4
  %inc107 = add nsw i32 %94, 1
  store i32 %inc107, i32* %scale, align 4
  br label %for.cond.42

for.end.108:                                      ; preds = %for.cond.42
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %95 = load i32, i32* %channel, align 4
  %inc110 = add nsw i32 %95, 1
  store i32 %inc110, i32* %channel, align 4
  br label %for.cond

for.end.111:                                      ; preds = %for.cond
  %96 = load float*, float** %in, align 8
  %97 = bitcast float* %96 to i8*
  call void @g_free(i8* %97)
  %98 = load float*, float** %out, align 8
  %99 = bitcast float* %98 to i8*
  call void @g_free(i8* %99)
  store float 1.280000e+02, float* %alpha, align 4
  store float 1.000000e+00, float* %gain, align 4
  store float 0.000000e+00, float* %offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.186, %for.end.111
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %size, align 4
  %cmp113 = icmp slt i32 %100, %101
  br i1 %cmp113, label %for.body.115, label %for.end.188

for.body.115:                                     ; preds = %for.cond.112
  %102 = load i8*, i8** %src.addr, align 8
  %103 = load i32, i32* %i, align 4
  %idx.ext116 = sext i32 %103 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %102, i64 %idx.ext116
  store i8* %add.ptr117, i8** %psrc, align 8
  %104 = load float*, float** %dst, align 8
  %105 = load i32, i32* %i, align 4
  %idx.ext118 = sext i32 %105 to i64
  %add.ptr119 = getelementptr inbounds float, float* %104, i64 %idx.ext118
  store float* %add.ptr119, float** %pdst, align 8
  %106 = load i8*, i8** %psrc, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx120, align 1
  %conv121 = uitofp i8 %107 to float
  %108 = load i8*, i8** %psrc, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx122, align 1
  %conv123 = uitofp i8 %109 to float
  %add124 = fadd float %conv121, %conv123
  %110 = load i8*, i8** %psrc, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %110, i64 2
  %111 = load i8, i8* %arrayidx125, align 1
  %conv126 = uitofp i8 %111 to float
  %add127 = fadd float %add124, %conv126
  %conv128 = fpext float %add127 to double
  %add129 = fadd double %conv128, 3.000000e+00
  %call130 = call double @log(double %add129) #4
  %conv131 = fptrunc double %call130 to float
  store float %conv131, float* %logl, align 4
  %112 = load float, float* %gain, align 4
  %conv132 = fpext float %112 to double
  %113 = load float, float* %alpha, align 4
  %conv133 = fpext float %113 to double
  %114 = load i8*, i8** %psrc, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %114, i64 0
  %115 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %115 to i32
  %conv136 = sitofp i32 %conv135 to double
  %add137 = fadd double %conv136, 1.000000e+00
  %mul138 = fmul double %conv133, %add137
  %call139 = call double @log(double %mul138) #4
  %116 = load float, float* %logl, align 4
  %conv140 = fpext float %116 to double
  %sub141 = fsub double %call139, %conv140
  %117 = load float*, float** %pdst, align 8
  %arrayidx142 = getelementptr inbounds float, float* %117, i64 0
  %118 = load float, float* %arrayidx142, align 4
  %conv143 = fpext float %118 to double
  %mul144 = fmul double %sub141, %conv143
  %mul145 = fmul double %conv132, %mul144
  %119 = load float, float* %offset, align 4
  %conv146 = fpext float %119 to double
  %add147 = fadd double %mul145, %conv146
  %conv148 = fptrunc double %add147 to float
  %120 = load float*, float** %pdst, align 8
  %arrayidx149 = getelementptr inbounds float, float* %120, i64 0
  store float %conv148, float* %arrayidx149, align 4
  %121 = load float, float* %gain, align 4
  %conv150 = fpext float %121 to double
  %122 = load float, float* %alpha, align 4
  %conv151 = fpext float %122 to double
  %123 = load i8*, i8** %psrc, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %123, i64 1
  %124 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %124 to i32
  %conv154 = sitofp i32 %conv153 to double
  %add155 = fadd double %conv154, 1.000000e+00
  %mul156 = fmul double %conv151, %add155
  %call157 = call double @log(double %mul156) #4
  %125 = load float, float* %logl, align 4
  %conv158 = fpext float %125 to double
  %sub159 = fsub double %call157, %conv158
  %126 = load float*, float** %pdst, align 8
  %arrayidx160 = getelementptr inbounds float, float* %126, i64 1
  %127 = load float, float* %arrayidx160, align 4
  %conv161 = fpext float %127 to double
  %mul162 = fmul double %sub159, %conv161
  %mul163 = fmul double %conv150, %mul162
  %128 = load float, float* %offset, align 4
  %conv164 = fpext float %128 to double
  %add165 = fadd double %mul163, %conv164
  %conv166 = fptrunc double %add165 to float
  %129 = load float*, float** %pdst, align 8
  %arrayidx167 = getelementptr inbounds float, float* %129, i64 1
  store float %conv166, float* %arrayidx167, align 4
  %130 = load float, float* %gain, align 4
  %conv168 = fpext float %130 to double
  %131 = load float, float* %alpha, align 4
  %conv169 = fpext float %131 to double
  %132 = load i8*, i8** %psrc, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %132, i64 2
  %133 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %133 to i32
  %conv172 = sitofp i32 %conv171 to double
  %add173 = fadd double %conv172, 1.000000e+00
  %mul174 = fmul double %conv169, %add173
  %call175 = call double @log(double %mul174) #4
  %134 = load float, float* %logl, align 4
  %conv176 = fpext float %134 to double
  %sub177 = fsub double %call175, %conv176
  %135 = load float*, float** %pdst, align 8
  %arrayidx178 = getelementptr inbounds float, float* %135, i64 2
  %136 = load float, float* %arrayidx178, align 4
  %conv179 = fpext float %136 to double
  %mul180 = fmul double %sub177, %conv179
  %mul181 = fmul double %conv168, %mul180
  %137 = load float, float* %offset, align 4
  %conv182 = fpext float %137 to double
  %add183 = fadd double %mul181, %conv182
  %conv184 = fptrunc double %add183 to float
  %138 = load float*, float** %pdst, align 8
  %arrayidx185 = getelementptr inbounds float, float* %138, i64 2
  store float %conv184, float* %arrayidx185, align 4
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.115
  %139 = load i32, i32* %bytes.addr, align 4
  %140 = load i32, i32* %i, align 4
  %add187 = add nsw i32 %140, %139
  store i32 %add187, i32* %i, align 4
  br label %for.cond.112

for.end.188:                                      ; preds = %for.cond.112
  %141 = load float*, float** %dst, align 8
  store float* %141, float** %pdst, align 8
  %142 = load float*, float** %pdst, align 8
  %143 = load i32, i32* %size, align 4
  %144 = load i32, i32* %bytes.addr, align 4
  call void @compute_mean_var(float* %142, float* %mean, float* %var, i32 %143, i32 %144)
  %145 = load float, float* %mean, align 4
  %146 = load float, float* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 3), align 4
  %147 = load float, float* %var, align 4
  %mul189 = fmul float %146, %147
  %sub190 = fsub float %145, %mul189
  store float %sub190, float* %mini, align 4
  %148 = load float, float* %mean, align 4
  %149 = load float, float* getelementptr inbounds (%struct.RetinexParams, %struct.RetinexParams* @rvals, i32 0, i32 3), align 4
  %150 = load float, float* %var, align 4
  %mul191 = fmul float %149, %150
  %add192 = fadd float %148, %mul191
  store float %add192, float* %maxi, align 4
  %151 = load float, float* %maxi, align 4
  %152 = load float, float* %mini, align 4
  %sub193 = fsub float %151, %152
  store float %sub193, float* %range, align 4
  %153 = load float, float* %range, align 4
  %tobool194 = fcmp une float %153, 0.000000e+00
  br i1 %tobool194, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %for.end.188
  store float 1.000000e+00, float* %range, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %for.end.188
  store i32 0, i32* %i, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.228, %if.end.196
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* %size, align 4
  %cmp198 = icmp slt i32 %154, %155
  br i1 %cmp198, label %for.body.200, label %for.end.230

for.body.200:                                     ; preds = %for.cond.197
  %156 = load i8*, i8** %src.addr, align 8
  %157 = load i32, i32* %i, align 4
  %idx.ext201 = sext i32 %157 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %156, i64 %idx.ext201
  store i8* %add.ptr202, i8** %psrc, align 8
  %158 = load float*, float** %dst, align 8
  %159 = load i32, i32* %i, align 4
  %idx.ext203 = sext i32 %159 to i64
  %add.ptr204 = getelementptr inbounds float, float* %158, i64 %idx.ext203
  store float* %add.ptr204, float** %pdst, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.225, %for.body.200
  %160 = load i32, i32* %j, align 4
  %cmp206 = icmp slt i32 %160, 3
  br i1 %cmp206, label %for.body.208, label %for.end.227

for.body.208:                                     ; preds = %for.cond.205
  %161 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %161 to i64
  %162 = load float*, float** %pdst, align 8
  %arrayidx210 = getelementptr inbounds float, float* %162, i64 %idxprom209
  %163 = load float, float* %arrayidx210, align 4
  %164 = load float, float* %mini, align 4
  %sub211 = fsub float %163, %164
  %mul212 = fmul float 2.550000e+02, %sub211
  %165 = load float, float* %range, align 4
  %div213 = fdiv float %mul212, %165
  store float %div213, float* %c, align 4
  %166 = load float, float* %c, align 4
  %cmp214 = fcmp ogt float %166, 2.550000e+02
  br i1 %cmp214, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.208
  br label %cond.end.220

cond.false:                                       ; preds = %for.body.208
  %167 = load float, float* %c, align 4
  %cmp216 = fcmp olt float %167, 0.000000e+00
  br i1 %cmp216, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %cond.false
  br label %cond.end

cond.false.219:                                   ; preds = %cond.false
  %168 = load float, float* %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.219, %cond.true.218
  %cond = phi float [ 0.000000e+00, %cond.true.218 ], [ %168, %cond.false.219 ]
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.end, %cond.true
  %cond221 = phi float [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv222 = fptoui float %cond221 to i8
  %169 = load i32, i32* %j, align 4
  %idxprom223 = sext i32 %169 to i64
  %170 = load i8*, i8** %psrc, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %170, i64 %idxprom223
  store i8 %conv222, i8* %arrayidx224, align 1
  br label %for.inc.225

for.inc.225:                                      ; preds = %cond.end.220
  %171 = load i32, i32* %j, align 4
  %inc226 = add nsw i32 %171, 1
  store i32 %inc226, i32* %j, align 4
  br label %for.cond.205

for.end.227:                                      ; preds = %for.cond.205
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.end.227
  %172 = load i32, i32* %bytes.addr, align 4
  %173 = load i32, i32* %i, align 4
  %add229 = add nsw i32 %173, %172
  store i32 %add229, i32* %i, align 4
  br label %for.cond.197

for.end.230:                                      ; preds = %for.cond.197
  %174 = load float*, float** %dst, align 8
  %175 = bitcast float* %174 to i8*
  call void @g_free(i8* %175)
  br label %return

return:                                           ; preds = %for.end.230, %if.then.25, %if.then.18, %if.then.8
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @retinex_scales_distribution(float* %scales, i32 %nscales, i32 %mode, i32 %s) #0 {
entry:
  %scales.addr = alloca float*, align 8
  %nscales.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %size_step = alloca float, align 4
  %i = alloca i32, align 4
  store float* %scales, float** %scales.addr, align 8
  store i32 %nscales, i32* %nscales.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %nscales.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %s.addr, align 4
  %div = sdiv i32 %1, 2
  %conv = sitofp i32 %div to float
  %2 = load float*, float** %scales.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  store float %conv, float* %arrayidx, align 4
  br label %if.end.66

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %nscales.addr, align 4
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then.3, label %if.else.9

if.then.3:                                        ; preds = %if.else
  %4 = load i32, i32* %s.addr, align 4
  %div4 = sdiv i32 %4, 2
  %conv5 = sitofp i32 %div4 to float
  %5 = load float*, float** %scales.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %5, i64 0
  store float %conv5, float* %arrayidx6, align 4
  %6 = load i32, i32* %s.addr, align 4
  %conv7 = sitofp i32 %6 to float
  %7 = load float*, float** %scales.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %7, i64 1
  store float %conv7, float* %arrayidx8, align 4
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %8 = load i32, i32* %s.addr, align 4
  %conv10 = sitofp i32 %8 to float
  %9 = load i32, i32* %nscales.addr, align 4
  %conv11 = sitofp i32 %9 to float
  %div12 = fdiv float %conv10, %conv11
  store float %div12, float* %size_step, align 4
  %10 = load i32, i32* %mode.addr, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.19
    i32 2, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %if.else.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %nscales.addr, align 4
  %cmp13 = icmp slt i32 %11, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %conv15 = sitofp i32 %13 to float
  %14 = load float, float* %size_step, align 4
  %mul = fmul float %conv15, %14
  %conv16 = fpext float %mul to double
  %add = fadd double 2.000000e+00, %conv16
  %conv17 = fptrunc double %add to float
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load float*, float** %scales.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %16, i64 %idxprom
  store float %conv17, float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.else.9
  %18 = load i32, i32* %s.addr, align 4
  %conv20 = sitofp i32 %18 to double
  %sub = fsub double %conv20, 2.000000e+00
  %call = call double @log(double %sub) #4
  %conv21 = fptrunc double %call to float
  %19 = load i32, i32* %nscales.addr, align 4
  %conv22 = sitofp i32 %19 to float
  %div23 = fdiv float %conv21, %conv22
  store float %div23, float* %size_step, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.38, %sw.bb.19
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %nscales.addr, align 4
  %cmp25 = icmp slt i32 %20, %21
  br i1 %cmp25, label %for.body.27, label %for.end.40

for.body.27:                                      ; preds = %for.cond.24
  %22 = load i32, i32* %i, align 4
  %conv28 = sitofp i32 %22 to float
  %23 = load float, float* %size_step, align 4
  %mul29 = fmul float %conv28, %23
  %conv30 = fpext float %mul29 to double
  %call31 = call double @log(double 1.000000e+01) #4
  %div32 = fdiv double %conv30, %call31
  %call33 = call double @pow(double 1.000000e+01, double %div32) #4
  %add34 = fadd double 2.000000e+00, %call33
  %conv35 = fptrunc double %add34 to float
  %24 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %24 to i64
  %25 = load float*, float** %scales.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %25, i64 %idxprom36
  store float %conv35, float* %arrayidx37, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.27
  %26 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %26, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.24

for.end.40:                                       ; preds = %for.cond.24
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.else.9
  %27 = load i32, i32* %s.addr, align 4
  %conv42 = sitofp i32 %27 to double
  %sub43 = fsub double %conv42, 2.000000e+00
  %call44 = call double @log(double %sub43) #4
  %conv45 = fptrunc double %call44 to float
  %28 = load i32, i32* %nscales.addr, align 4
  %conv46 = sitofp i32 %28 to float
  %div47 = fdiv float %conv45, %conv46
  store float %div47, float* %size_step, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.63, %sw.bb.41
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %nscales.addr, align 4
  %cmp49 = icmp slt i32 %29, %30
  br i1 %cmp49, label %for.body.51, label %for.end.65

for.body.51:                                      ; preds = %for.cond.48
  %31 = load i32, i32* %s.addr, align 4
  %conv52 = sitofp i32 %31 to double
  %32 = load i32, i32* %i, align 4
  %conv53 = sitofp i32 %32 to float
  %33 = load float, float* %size_step, align 4
  %mul54 = fmul float %conv53, %33
  %conv55 = fpext float %mul54 to double
  %call56 = call double @log(double 1.000000e+01) #4
  %div57 = fdiv double %conv55, %call56
  %call58 = call double @pow(double 1.000000e+01, double %div57) #4
  %sub59 = fsub double %conv52, %call58
  %conv60 = fptrunc double %sub59 to float
  %34 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %34 to i64
  %35 = load float*, float** %scales.addr, align 8
  %arrayidx62 = getelementptr inbounds float, float* %35, i64 %idxprom61
  store float %conv60, float* %arrayidx62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.51
  %36 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %36, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.48

for.end.65:                                       ; preds = %for.cond.48
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.65, %for.end.40, %for.end
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then.3
  br label %if.end.66

if.end.66:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_coefs3(%struct.gauss3_coefs* %c, float %sigma) #0 {
entry:
  %c.addr = alloca %struct.gauss3_coefs*, align 8
  %sigma.addr = alloca float, align 4
  %q = alloca float, align 4
  %q2 = alloca float, align 4
  %q3 = alloca float, align 4
  store %struct.gauss3_coefs* %c, %struct.gauss3_coefs** %c.addr, align 8
  store float %sigma, float* %sigma.addr, align 4
  %0 = load float, float* %sigma.addr, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp oge double %conv, 2.500000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float, float* %sigma.addr, align 4
  %conv2 = fpext float %1 to double
  %mul = fmul double 9.871100e-01, %conv2
  %sub = fsub double %mul, 9.633000e-01
  %conv3 = fptrunc double %sub to float
  store float %conv3, float* %q, align 4
  br label %if.end.20

if.else:                                          ; preds = %entry
  %2 = load float, float* %sigma.addr, align 4
  %conv4 = fpext float %2 to double
  %cmp5 = fcmp oge double %conv4, 5.000000e-01
  br i1 %cmp5, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.else
  %3 = load float, float* %sigma.addr, align 4
  %conv7 = fpext float %3 to double
  %cmp8 = fcmp olt double %conv7, 2.500000e+00
  br i1 %cmp8, label %if.then.10, label %if.else.19

if.then.10:                                       ; preds = %land.lhs.true
  %4 = load float, float* %sigma.addr, align 4
  %conv11 = fpext float %4 to double
  %mul12 = fmul double 2.689100e-01, %conv11
  %sub13 = fsub double 1.000000e+00, %mul12
  %call = call double @sqrt(double %sub13) #4
  %conv14 = fptrunc double %call to float
  %conv15 = fpext float %conv14 to double
  %mul16 = fmul double 4.145540e+00, %conv15
  %sub17 = fsub double 3.971560e+00, %mul16
  %conv18 = fptrunc double %sub17 to float
  store float %conv18, float* %q, align 4
  br label %if.end

if.else.19:                                       ; preds = %land.lhs.true, %if.else
  store float 0x3FBD619980000000, float* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  %5 = load float, float* %q, align 4
  %6 = load float, float* %q, align 4
  %mul21 = fmul float %5, %6
  store float %mul21, float* %q2, align 4
  %7 = load float, float* %q, align 4
  %8 = load float, float* %q2, align 4
  %mul22 = fmul float %7, %8
  store float %mul22, float* %q3, align 4
  %9 = load float, float* %q, align 4
  %conv23 = fpext float %9 to double
  %mul24 = fmul double 2.444130e+00, %conv23
  %add = fadd double 1.578250e+00, %mul24
  %10 = load float, float* %q2, align 4
  %conv25 = fpext float %10 to double
  %mul26 = fmul double 1.428100e+00, %conv25
  %add27 = fadd double %add, %mul26
  %11 = load float, float* %q3, align 4
  %conv28 = fpext float %11 to double
  %mul29 = fmul double 4.222050e-01, %conv28
  %add30 = fadd double %add27, %mul29
  %12 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %12, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %b, i32 0, i64 0
  store double %add30, double* %arrayidx, align 8
  %13 = load float, float* %q, align 4
  %conv31 = fpext float %13 to double
  %mul32 = fmul double 2.444130e+00, %conv31
  %14 = load float, float* %q2, align 4
  %conv33 = fpext float %14 to double
  %mul34 = fmul double 2.856190e+00, %conv33
  %add35 = fadd double %mul32, %mul34
  %15 = load float, float* %q3, align 4
  %conv36 = fpext float %15 to double
  %mul37 = fmul double 1.266610e+00, %conv36
  %add38 = fadd double %add35, %mul37
  %16 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b39 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %16, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %b39, i32 0, i64 1
  store double %add38, double* %arrayidx40, align 8
  %17 = load float, float* %q2, align 4
  %conv41 = fpext float %17 to double
  %mul42 = fmul double 1.428100e+00, %conv41
  %18 = load float, float* %q3, align 4
  %conv43 = fpext float %18 to double
  %mul44 = fmul double 1.266610e+00, %conv43
  %add45 = fadd double %mul42, %mul44
  %sub46 = fsub double -0.000000e+00, %add45
  %19 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b47 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %19, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [4 x double], [4 x double]* %b47, i32 0, i64 2
  store double %sub46, double* %arrayidx48, align 8
  %20 = load float, float* %q3, align 4
  %conv49 = fpext float %20 to double
  %mul50 = fmul double 4.222050e-01, %conv49
  %21 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b51 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %21, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [4 x double], [4 x double]* %b51, i32 0, i64 3
  store double %mul50, double* %arrayidx52, align 8
  %22 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b53 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %22, i32 0, i32 3
  %arrayidx54 = getelementptr inbounds [4 x double], [4 x double]* %b53, i32 0, i64 1
  %23 = load double, double* %arrayidx54, align 8
  %24 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b55 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %24, i32 0, i32 3
  %arrayidx56 = getelementptr inbounds [4 x double], [4 x double]* %b55, i32 0, i64 2
  %25 = load double, double* %arrayidx56, align 8
  %add57 = fadd double %23, %25
  %26 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b58 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %26, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [4 x double], [4 x double]* %b58, i32 0, i64 3
  %27 = load double, double* %arrayidx59, align 8
  %add60 = fadd double %add57, %27
  %28 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b61 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %28, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [4 x double], [4 x double]* %b61, i32 0, i64 0
  %29 = load double, double* %arrayidx62, align 8
  %div = fdiv double %add60, %29
  %sub63 = fsub double 1.000000e+00, %div
  %30 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %B = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %30, i32 0, i32 2
  store double %sub63, double* %B, align 8
  %31 = load float, float* %sigma.addr, align 4
  %32 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %sigma64 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %32, i32 0, i32 1
  store float %31, float* %sigma64, align 4
  %33 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %N = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %33, i32 0, i32 0
  store i32 3, i32* %N, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gausssmooth(float* %in, float* %out, i32 %size, i32 %rowstride, %struct.gauss3_coefs* %c) #0 {
entry:
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %size.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %c.addr = alloca %struct.gauss3_coefs*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %w1 = alloca float*, align 8
  %w2 = alloca float*, align 8
  store float* %in, float** %in.addr, align 8
  store float* %out, float** %out.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %rowstride, i32* %rowstride.addr, align 4
  store %struct.gauss3_coefs* %c, %struct.gauss3_coefs** %c.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, i32* %bufsize, align 4
  %1 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %size.addr, align 4
  %2 = load i32, i32* %bufsize, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @g_try_malloc(i64 %mul)
  %3 = bitcast i8* %call to float*
  store float* %3, float** %w1, align 8
  %4 = load i32, i32* %bufsize, align 4
  %conv1 = sext i32 %4 to i64
  %mul2 = mul i64 %conv1, 4
  %call3 = call noalias i8* @g_try_malloc(i64 %mul2)
  %5 = bitcast i8* %call3 to float*
  store float* %5, float** %w2, align 8
  %6 = load float*, float** %in.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx, align 4
  %8 = load float*, float** %w1, align 8
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 0
  store float %7, float* %arrayidx4, align 4
  %9 = load float*, float** %in.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 0
  %10 = load float, float* %arrayidx5, align 4
  %11 = load float*, float** %w1, align 8
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 1
  store float %10, float* %arrayidx6, align 4
  %12 = load float*, float** %in.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %12, i64 0
  %13 = load float, float* %arrayidx7, align 4
  %14 = load float*, float** %w1, align 8
  %arrayidx8 = getelementptr inbounds float, float* %14, i64 2
  store float %13, float* %arrayidx8, align 4
  store i32 0, i32* %i, align 4
  store i32 3, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %size.addr, align 4
  %cmp = icmp sle i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %B = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %17, i32 0, i32 2
  %18 = load double, double* %B, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %rowstride.addr, align 4
  %mul10 = mul nsw i32 %19, %20
  %idxprom = sext i32 %mul10 to i64
  %21 = load float*, float** %in.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %21, i64 %idxprom
  %22 = load float, float* %arrayidx11, align 4
  %conv12 = fpext float %22 to double
  %mul13 = fmul double %18, %conv12
  %23 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %23, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %b, i32 0, i64 1
  %24 = load double, double* %arrayidx14, align 8
  %25 = load i32, i32* %n, align 4
  %sub15 = sub nsw i32 %25, 1
  %idxprom16 = sext i32 %sub15 to i64
  %26 = load float*, float** %w1, align 8
  %arrayidx17 = getelementptr inbounds float, float* %26, i64 %idxprom16
  %27 = load float, float* %arrayidx17, align 4
  %conv18 = fpext float %27 to double
  %mul19 = fmul double %24, %conv18
  %28 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b20 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %28, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %b20, i32 0, i64 2
  %29 = load double, double* %arrayidx21, align 8
  %30 = load i32, i32* %n, align 4
  %sub22 = sub nsw i32 %30, 2
  %idxprom23 = sext i32 %sub22 to i64
  %31 = load float*, float** %w1, align 8
  %arrayidx24 = getelementptr inbounds float, float* %31, i64 %idxprom23
  %32 = load float, float* %arrayidx24, align 4
  %conv25 = fpext float %32 to double
  %mul26 = fmul double %29, %conv25
  %add27 = fadd double %mul19, %mul26
  %33 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b28 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %33, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [4 x double], [4 x double]* %b28, i32 0, i64 3
  %34 = load double, double* %arrayidx29, align 8
  %35 = load i32, i32* %n, align 4
  %sub30 = sub nsw i32 %35, 3
  %idxprom31 = sext i32 %sub30 to i64
  %36 = load float*, float** %w1, align 8
  %arrayidx32 = getelementptr inbounds float, float* %36, i64 %idxprom31
  %37 = load float, float* %arrayidx32, align 4
  %conv33 = fpext float %37 to double
  %mul34 = fmul double %34, %conv33
  %add35 = fadd double %add27, %mul34
  %38 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b36 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %38, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [4 x double], [4 x double]* %b36, i32 0, i64 0
  %39 = load double, double* %arrayidx37, align 8
  %div = fdiv double %add35, %39
  %add38 = fadd double %mul13, %div
  %conv39 = fptrunc double %add38 to float
  %40 = load i32, i32* %n, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load float*, float** %w1, align 8
  %arrayidx41 = getelementptr inbounds float, float* %41, i64 %idxprom40
  store float %conv39, float* %arrayidx41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  %43 = load i32, i32* %n, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* %size.addr, align 4
  %add43 = add nsw i32 %44, 3
  %idxprom44 = sext i32 %add43 to i64
  %45 = load float*, float** %w1, align 8
  %arrayidx45 = getelementptr inbounds float, float* %45, i64 %idxprom44
  %46 = load float, float* %arrayidx45, align 4
  %47 = load i32, i32* %size.addr, align 4
  %add46 = add nsw i32 %47, 1
  %idxprom47 = sext i32 %add46 to i64
  %48 = load float*, float** %w2, align 8
  %arrayidx48 = getelementptr inbounds float, float* %48, i64 %idxprom47
  store float %46, float* %arrayidx48, align 4
  %49 = load i32, i32* %size.addr, align 4
  %add49 = add nsw i32 %49, 3
  %idxprom50 = sext i32 %add49 to i64
  %50 = load float*, float** %w1, align 8
  %arrayidx51 = getelementptr inbounds float, float* %50, i64 %idxprom50
  %51 = load float, float* %arrayidx51, align 4
  %52 = load i32, i32* %size.addr, align 4
  %add52 = add nsw i32 %52, 2
  %idxprom53 = sext i32 %add52 to i64
  %53 = load float*, float** %w2, align 8
  %arrayidx54 = getelementptr inbounds float, float* %53, i64 %idxprom53
  store float %51, float* %arrayidx54, align 4
  %54 = load i32, i32* %size.addr, align 4
  %add55 = add nsw i32 %54, 3
  %idxprom56 = sext i32 %add55 to i64
  %55 = load float*, float** %w1, align 8
  %arrayidx57 = getelementptr inbounds float, float* %55, i64 %idxprom56
  %56 = load float, float* %arrayidx57, align 4
  %57 = load i32, i32* %size.addr, align 4
  %add58 = add nsw i32 %57, 3
  %idxprom59 = sext i32 %add58 to i64
  %58 = load float*, float** %w2, align 8
  %arrayidx60 = getelementptr inbounds float, float* %58, i64 %idxprom59
  store float %56, float* %arrayidx60, align 4
  %59 = load i32, i32* %size.addr, align 4
  store i32 %59, i32* %i, align 4
  %60 = load i32, i32* %i, align 4
  store i32 %60, i32* %n, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.104, %for.end
  %61 = load i32, i32* %i, align 4
  %cmp62 = icmp sge i32 %61, 0
  br i1 %cmp62, label %for.body.64, label %for.end.106

for.body.64:                                      ; preds = %for.cond.61
  %62 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %B65 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %62, i32 0, i32 2
  %63 = load double, double* %B65, align 8
  %64 = load i32, i32* %n, align 4
  %add66 = add nsw i32 %64, 3
  %idxprom67 = sext i32 %add66 to i64
  %65 = load float*, float** %w1, align 8
  %arrayidx68 = getelementptr inbounds float, float* %65, i64 %idxprom67
  %66 = load float, float* %arrayidx68, align 4
  %conv69 = fpext float %66 to double
  %mul70 = fmul double %63, %conv69
  %67 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b71 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %67, i32 0, i32 3
  %arrayidx72 = getelementptr inbounds [4 x double], [4 x double]* %b71, i32 0, i64 1
  %68 = load double, double* %arrayidx72, align 8
  %69 = load i32, i32* %n, align 4
  %add73 = add nsw i32 %69, 1
  %idxprom74 = sext i32 %add73 to i64
  %70 = load float*, float** %w2, align 8
  %arrayidx75 = getelementptr inbounds float, float* %70, i64 %idxprom74
  %71 = load float, float* %arrayidx75, align 4
  %conv76 = fpext float %71 to double
  %mul77 = fmul double %68, %conv76
  %72 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b78 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %72, i32 0, i32 3
  %arrayidx79 = getelementptr inbounds [4 x double], [4 x double]* %b78, i32 0, i64 2
  %73 = load double, double* %arrayidx79, align 8
  %74 = load i32, i32* %n, align 4
  %add80 = add nsw i32 %74, 2
  %idxprom81 = sext i32 %add80 to i64
  %75 = load float*, float** %w2, align 8
  %arrayidx82 = getelementptr inbounds float, float* %75, i64 %idxprom81
  %76 = load float, float* %arrayidx82, align 4
  %conv83 = fpext float %76 to double
  %mul84 = fmul double %73, %conv83
  %add85 = fadd double %mul77, %mul84
  %77 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b86 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %77, i32 0, i32 3
  %arrayidx87 = getelementptr inbounds [4 x double], [4 x double]* %b86, i32 0, i64 3
  %78 = load double, double* %arrayidx87, align 8
  %79 = load i32, i32* %n, align 4
  %add88 = add nsw i32 %79, 3
  %idxprom89 = sext i32 %add88 to i64
  %80 = load float*, float** %w2, align 8
  %arrayidx90 = getelementptr inbounds float, float* %80, i64 %idxprom89
  %81 = load float, float* %arrayidx90, align 4
  %conv91 = fpext float %81 to double
  %mul92 = fmul double %78, %conv91
  %add93 = fadd double %add85, %mul92
  %82 = load %struct.gauss3_coefs*, %struct.gauss3_coefs** %c.addr, align 8
  %b94 = getelementptr inbounds %struct.gauss3_coefs, %struct.gauss3_coefs* %82, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [4 x double], [4 x double]* %b94, i32 0, i64 0
  %83 = load double, double* %arrayidx95, align 8
  %div96 = fdiv double %add93, %83
  %add97 = fadd double %mul70, %div96
  %conv98 = fptrunc double %add97 to float
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %rowstride.addr, align 4
  %mul99 = mul nsw i32 %84, %85
  %idxprom100 = sext i32 %mul99 to i64
  %86 = load float*, float** %out.addr, align 8
  %arrayidx101 = getelementptr inbounds float, float* %86, i64 %idxprom100
  store float %conv98, float* %arrayidx101, align 4
  %87 = load i32, i32* %n, align 4
  %idxprom102 = sext i32 %87 to i64
  %88 = load float*, float** %w2, align 8
  %arrayidx103 = getelementptr inbounds float, float* %88, i64 %idxprom102
  store float %conv98, float* %arrayidx103, align 4
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.64
  %89 = load i32, i32* %i, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %i, align 4
  %90 = load i32, i32* %n, align 4
  %dec105 = add nsw i32 %90, -1
  store i32 %dec105, i32* %n, align 4
  br label %for.cond.61

for.end.106:                                      ; preds = %for.cond.61
  %91 = load float*, float** %w1, align 8
  %92 = bitcast float* %91 to i8*
  call void @g_free(i8* %92)
  %93 = load float*, float** %w2, align 8
  %94 = bitcast float* %93 to i8*
  call void @g_free(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define internal void @compute_mean_var(float* %src, float* %mean, float* %var, i32 %size, i32 %bytes) #0 {
entry:
  %src.addr = alloca float*, align 8
  %mean.addr = alloca float*, align 8
  %var.addr = alloca float*, align 8
  %size.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %vsquared = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %psrc = alloca float*, align 8
  store float* %src, float** %src.addr, align 8
  store float* %mean, float** %mean.addr, align 8
  store float* %var, float** %var.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store float 0.000000e+00, float* %vsquared, align 4
  %0 = load float*, float** %mean.addr, align 8
  store float 0.000000e+00, float* %0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %src.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds float, float* %3, i64 %idx.ext
  store float* %add.ptr, float** %psrc, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %5, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load float*, float** %psrc, align 8
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4
  %9 = load float*, float** %mean.addr, align 8
  %10 = load float, float* %9, align 4
  %add = fadd float %10, %8
  store float %add, float* %9, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load float*, float** %psrc, align 8
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 %idxprom4
  %13 = load float, float* %arrayidx5, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load float*, float** %psrc, align 8
  %arrayidx7 = getelementptr inbounds float, float* %15, i64 %idxprom6
  %16 = load float, float* %arrayidx7, align 4
  %mul = fmul float %13, %16
  %17 = load float, float* %vsquared, align 4
  %add8 = fadd float %17, %mul
  store float %add8, float* %vsquared, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %19 = load i32, i32* %bytes.addr, align 4
  %20 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %20, %19
  store i32 %add10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %21 = load i32, i32* %size.addr, align 4
  %conv = sitofp i32 %21 to float
  %22 = load float*, float** %mean.addr, align 8
  %23 = load float, float* %22, align 4
  %div = fdiv float %23, %conv
  store float %div, float* %22, align 4
  %24 = load i32, i32* %size.addr, align 4
  %conv12 = sitofp i32 %24 to float
  %25 = load float, float* %vsquared, align 4
  %div13 = fdiv float %25, %conv12
  store float %div13, float* %vsquared, align 4
  %26 = load float, float* %vsquared, align 4
  %27 = load float*, float** %mean.addr, align 8
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %mean.addr, align 8
  %30 = load float, float* %29, align 4
  %mul14 = fmul float %28, %30
  %sub = fsub float %26, %mul14
  %31 = load float*, float** %var.addr, align 8
  store float %sub, float* %31, align 4
  %32 = load float*, float** %var.addr, align 8
  %33 = load float, float* %32, align 4
  %conv15 = fpext float %33 to double
  %call = call double @sqrt(double %conv15) #4
  %conv16 = fptrunc double %call to float
  %34 = load float*, float** %var.addr, align 8
  store float %conv16, float* %34, align 4
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
