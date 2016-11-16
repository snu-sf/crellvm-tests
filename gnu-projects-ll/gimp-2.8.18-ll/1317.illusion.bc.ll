; ModuleID = './plug-ins/common/illusion.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.IllValues = type { i32, i32, i32 }
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
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.IllusionParam_t = type { %struct._GimpPixelFetcher*, double, double, double, double, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GimpRgnIterator = type opaque
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"division\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"The number of divisions\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Illusion type { TYPE1 (0), TYPE2 (1) }\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"plug-in-illusion\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Superimpose many altered copies of the image\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"produce illusion\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Hirotsuna Mizuno <s1041150@u-aizu.ac.jp>\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Hirotsuna Mizuno\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"v0.8 (May 14 2000)\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"_Illusion...\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@run.returnv = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@parameters = internal global %struct.IllValues { i32 8, i32 1, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"Illusion\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"illusion\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"gimp-illusion\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"_Divisions:\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Mode _1\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Mode _2\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %params, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.returnv, i32 0, i32 0), %struct._GimpParam** %5, align 8
  %6 = load i32, i32* %run_mode, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.IllValues* @parameters to i8*))
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @illusion_dialog(%struct._GimpDrawable* %7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  %call9 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.IllValues* @parameters to i8*), i32 12)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end
  %8 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %8, 5
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb.10
  store i32 1, i32* %status, align 4
  br label %if.end.22

if.else:                                          ; preds = %sw.bb.10
  %9 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 3
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %10 = load i32, i32* %d_int3214, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 0), align 4
  %11 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 4
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int3217 = bitcast %union._GimpParamData* %data16 to i32*
  %12 = load i32, i32* %d_int3217, align 4
  %cmp18 = icmp eq i32 %12, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i32 1, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 2), align 4
  br label %if.end.21

if.else.20:                                       ; preds = %if.else
  store i32 0, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 2), align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.11
  br label %sw.epilog

sw.bb.23:                                         ; preds = %do.end
  %call24 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.IllValues* @parameters to i8*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.23, %if.end.22, %if.end
  %13 = load i32, i32* %status, align 4
  %cmp25 = icmp eq i32 %13, 3
  br i1 %cmp25, label %if.then.26, label %if.end.43

if.then.26:                                       ; preds = %sw.epilog
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id, align 4
  %call27 = call i32 @gimp_drawable_is_rgb(i32 %15)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id29, align 4
  %call30 = call i32 @gimp_drawable_is_gray(i32 %17)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.41

if.then.32:                                       ; preds = %lor.lhs.false, %if.then.26
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 1
  %19 = load i32, i32* %width, align 4
  %call33 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %19, %call33
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #5
  %call35 = call i32 @gimp_progress_init(i8* %call34)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @illusion(%struct._GimpDrawable* %20)
  %21 = load i32, i32* %run_mode, align 4
  %cmp36 = icmp ne i32 %21, 1
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.32
  %call39 = call i32 @gimp_displays_flush()
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.32
  br label %if.end.42

if.else.41:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.end.40
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %sw.epilog
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.returnv, i32 0, i64 0, i32 0), align 4
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.returnv, i32 0, i64 0, i32 1) to i32*), align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %23)
  br label %return

return:                                           ; preds = %if.end.43, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @illusion_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %radio = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #4
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
  %call15 = call i64 @gtk_box_get_type() #4
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*, %struct._GimpDrawable*)* @illusion_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load i32, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 0), align 4
  %conv = sitofp i32 %37 to double
  %call25 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double -3.200000e+01, double 6.400000e+01, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %spinbutton, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0)) #5
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call29 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %40, i32 0, i32 0, i8* %call28, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %41, i32 1, i32 1)
  %42 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %43 = bitcast %struct._GtkObject* %42 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.IllValues* @parameters to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %45 = bitcast %struct._GtkObject* %44 to i8*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 2)
  %48 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)) #5
  %call33 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %48, i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %radio, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_radio_button_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call34)
  %51 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkRadioButton*
  %call36 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %51)
  store %struct._GSList* %call36, %struct._GSList** %group, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call37)
  %54 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_table_attach(%struct._GtkTable* %54, %struct._GtkWidget* %55, i32 0, i32 2, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 2)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_toggle_button_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call41)
  %65 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkToggleButton*
  %66 = load i32, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %65, i32 %66)
  %67 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #5
  %call44 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %67, i8* %call43)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %radio, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_radio_button_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call45)
  %70 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkRadioButton*
  %call47 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %70)
  store %struct._GSList* %call47, %struct._GSList** %group, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call48)
  %73 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_table_attach(%struct._GtkTable* %73, %struct._GtkWidget* %74, i32 0, i32 2, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 2)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_toggle_button_get_type() #4
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call52)
  %84 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkToggleButton*
  %85 = load i32, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %84, i32 %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_dialog_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call54)
  %89 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpDialog*
  %call56 = call i32 @gimp_dialog_run(%struct._GimpDialog* %89)
  %cmp = icmp eq i32 %call56, -5
  %conv57 = zext i1 %cmp to i32
  store i32 %conv57, i32* %run, align 4
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %90)
  %91 = load i32, i32* %run, align 4
  ret i32 %91
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @illusion(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %param = alloca %struct.IllusionParam_t, align 8
  %iter = alloca %struct._GimpRgnIterator*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %2 = load i32, i32* %x2, align 4
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %width, align 4
  %4 = load i32, i32* %y2, align 4
  %5 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %4, %5
  store i32 %sub1, i32* %height, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call2 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %6, i32 0)
  %pft = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 0
  store %struct._GimpPixelFetcher* %call2, %struct._GimpPixelFetcher** %pft, align 8
  %pft3 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 0
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft3, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %7, i32 2)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_has_alpha(i32 %9)
  %has_alpha = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 5
  store i32 %call5, i32* %has_alpha, align 4
  %10 = load i32, i32* %x1, align 4
  %11 = load i32, i32* %x2, align 4
  %add = add nsw i32 %10, %11
  %conv = sitofp i32 %add to double
  %div = fdiv double %conv, 2.000000e+00
  %center_x = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 1
  store double %div, double* %center_x, align 8
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* %y2, align 4
  %add6 = add nsw i32 %12, %13
  %conv7 = sitofp i32 %add6 to double
  %div8 = fdiv double %conv7, 2.000000e+00
  %center_y = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 2
  store double %div8, double* %center_y, align 8
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %height, align 4
  %17 = load i32, i32* %height, align 4
  %mul9 = mul nsw i32 %16, %17
  %add10 = add nsw i32 %mul, %mul9
  %conv11 = sitofp i32 %add10 to double
  %call12 = call double @sqrt(double %conv11) #5
  %div13 = fdiv double %call12, 2.000000e+00
  %scale = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 3
  store double %div13, double* %scale, align 8
  %scale14 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 3
  %18 = load double, double* %scale14, align 8
  %div15 = fdiv double %18, 2.000000e+00
  %conv16 = fptosi double %div15 to i32
  %conv17 = sitofp i32 %conv16 to double
  %offset = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 4
  store double %conv17, double* %offset, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %19, i32 0)
  store %struct._GimpRgnIterator* %call18, %struct._GimpRgnIterator** %iter, align 8
  %20 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %21 = bitcast %struct.IllusionParam_t* %param to i8*
  call void @gimp_rgn_iterator_src_dest(%struct._GimpRgnIterator* %20, void (i32, i32, i8*, i8*, i32, i8*)* @illusion_func, i8* %21)
  %22 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %22)
  %pft19 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 0
  %23 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft19, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %23)
  ret void
}

declare i32 @gimp_displays_flush() #1

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

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @illusion_preview(%struct._GimpPreview* %preview, %struct._GimpDrawable* %drawable) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %preview_width = alloca i32, align 4
  %preview_height = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %src_pixel = alloca i8*, align 8
  %dest_pixel = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %param = alloca %struct.IllusionParam_t, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %2 = load i32, i32* %x2, align 4
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %width, align 4
  %4 = load i32, i32* %y2, align 4
  %5 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %4, %5
  store i32 %sub1, i32* %height, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call2 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %6, i32 0)
  %pft = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 0
  store %struct._GimpPixelFetcher* %call2, %struct._GimpPixelFetcher** %pft, align 8
  %pft3 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 0
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft3, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %7, i32 2)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_has_alpha(i32 %9)
  %has_alpha = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 5
  store i32 %call5, i32* %has_alpha, align 4
  %10 = load i32, i32* %x1, align 4
  %11 = load i32, i32* %x2, align 4
  %add = add nsw i32 %10, %11
  %conv = sitofp i32 %add to double
  %div = fdiv double %conv, 2.000000e+00
  %center_x = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 1
  store double %div, double* %center_x, align 8
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* %y2, align 4
  %add6 = add nsw i32 %12, %13
  %conv7 = sitofp i32 %add6 to double
  %div8 = fdiv double %conv7, 2.000000e+00
  %center_y = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 2
  store double %div8, double* %center_y, align 8
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %height, align 4
  %17 = load i32, i32* %height, align 4
  %mul9 = mul nsw i32 %16, %17
  %add10 = add nsw i32 %mul, %mul9
  %conv11 = sitofp i32 %add10 to double
  %call12 = call double @sqrt(double %conv11) #5
  %div13 = fdiv double %call12, 2.000000e+00
  %scale = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 3
  store double %div13, double* %scale, align 8
  %scale14 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 3
  %18 = load double, double* %scale14, align 8
  %div15 = fdiv double %18, 2.000000e+00
  %conv16 = fptosi double %div15 to i32
  %conv17 = sitofp i32 %conv16 to double
  %offset = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 4
  store double %conv17, double* %offset, align 8
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %20 = bitcast %struct._GimpPreview* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_zoom_preview_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpZoomPreview*
  %call20 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %21, i32* %preview_width, i32* %preview_height, i32* %bpp)
  store i8* %call20, i8** %src, align 8
  %22 = load i32, i32* %preview_width, align 4
  %23 = load i32, i32* %preview_height, align 4
  %mul21 = mul nsw i32 %22, %23
  %24 = load i32, i32* %bpp, align 4
  %mul22 = mul nsw i32 %mul21, %24
  %conv23 = sext i32 %mul22 to i64
  %call24 = call noalias i8* @g_malloc(i64 %conv23)
  store i8* %call24, i8** %dest, align 8
  %25 = load i8*, i8** %src, align 8
  store i8* %25, i8** %src_pixel, align 8
  %26 = load i8*, i8** %dest, align 8
  store i8* %26, i8** %dest_pixel, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %preview_height, align 4
  %cmp = icmp slt i32 %27, %28
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %preview_width, align 4
  %cmp27 = icmp slt i32 %29, %30
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %y, align 4
  call void @gimp_preview_untransform(%struct._GimpPreview* %31, i32 %32, i32 %33, i32* %sx, i32* %sy)
  %34 = load i32, i32* %sx, align 4
  %35 = load i32, i32* %sy, align 4
  %36 = load i8*, i8** %src_pixel, align 8
  %37 = load i8*, i8** %dest_pixel, align 8
  %38 = load i32, i32* %bpp, align 4
  %39 = bitcast %struct.IllusionParam_t* %param to i8*
  call void @illusion_func(i32 %34, i32 %35, i8* %36, i8* %37, i32 %38, i8* %39)
  %40 = load i32, i32* %bpp, align 4
  %41 = load i8*, i8** %src_pixel, align 8
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  store i8* %add.ptr, i8** %src_pixel, align 8
  %42 = load i32, i32* %bpp, align 4
  %43 = load i8*, i8** %dest_pixel, align 8
  %idx.ext30 = sext i32 %42 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %43, i64 %idx.ext30
  store i8* %add.ptr31, i8** %dest_pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %44 = load i32, i32* %x, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %45 = load i32, i32* %y, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* %y, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %pft35 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %param, i32 0, i32 0
  %46 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft35, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %46)
  %47 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %48 = load i8*, i8** %dest, align 8
  %49 = load i32, i32* %preview_width, align 4
  %50 = load i32, i32* %bpp, align 4
  %mul36 = mul nsw i32 %49, %50
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %47, i8* %48, i32 %mul36)
  %51 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %51)
  %52 = load i8*, i8** %src, align 8
  call void @g_free(i8* %52)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_preview_untransform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @illusion_func(i32 %x, i32 %y, i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.IllusionParam_t*, align 8
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %b = alloca i32, align 4
  %radius = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %angle = alloca double, align 8
  %pixel = alloca [4 x i8], align 1
  %alpha1 = alloca i32, align 4
  %alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.IllusionParam_t*
  store %struct.IllusionParam_t* %1, %struct.IllusionParam_t** %param, align 8
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to double
  %3 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %center_y = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %3, i32 0, i32 2
  %4 = load double, double* %center_y, align 8
  %sub = fsub double %conv, %4
  %5 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %scale = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %5, i32 0, i32 3
  %6 = load double, double* %scale, align 8
  %div = fdiv double %sub, %6
  store double %div, double* %cy, align 8
  %7 = load i32, i32* %x.addr, align 4
  %conv1 = sitofp i32 %7 to double
  %8 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %center_x = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %8, i32 0, i32 1
  %9 = load double, double* %center_x, align 8
  %sub2 = fsub double %conv1, %9
  %10 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %scale3 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %10, i32 0, i32 3
  %11 = load double, double* %scale3, align 8
  %div4 = fdiv double %sub2, %11
  store double %div4, double* %cx, align 8
  %12 = load double, double* %cy, align 8
  %13 = load double, double* %cx, align 8
  %call = call double @atan2(double %12, double %13) #5
  %14 = load i32, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 0), align 4
  %conv5 = sitofp i32 %14 to double
  %mul = fmul double %call, %conv5
  %div6 = fdiv double %mul, 0x3FF921FB54442D18
  %call7 = call double @floor(double %div6) #4
  %mul8 = fmul double %call7, 0x3FF921FB54442D18
  %15 = load i32, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 0), align 4
  %conv9 = sitofp i32 %15 to double
  %div10 = fdiv double %mul8, %conv9
  %16 = load i32, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 0), align 4
  %conv11 = sitofp i32 %16 to double
  %div12 = fdiv double 0x400921FB54442D18, %conv11
  %add = fadd double %div10, %div12
  store double %add, double* %angle, align 8
  %17 = load double, double* %cx, align 8
  %18 = load double, double* %cx, align 8
  %mul13 = fmul double %17, %18
  %19 = load double, double* %cy, align 8
  %20 = load double, double* %cy, align 8
  %mul14 = fmul double %19, %20
  %add15 = fadd double %mul13, %mul14
  %call16 = call double @sqrt(double %add15) #5
  store double %call16, double* %radius, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.IllValues, %struct.IllValues* @parameters, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %22 = load i32, i32* %x.addr, align 4
  %conv17 = sitofp i32 %22 to double
  %23 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %offset = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %23, i32 0, i32 4
  %24 = load double, double* %offset, align 8
  %25 = load double, double* %angle, align 8
  %call18 = call double @cos(double %25) #5
  %mul19 = fmul double %24, %call18
  %sub20 = fsub double %conv17, %mul19
  %conv21 = fptosi double %sub20 to i32
  store i32 %conv21, i32* %xx, align 4
  %26 = load i32, i32* %y.addr, align 4
  %conv22 = sitofp i32 %26 to double
  %27 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %offset23 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %27, i32 0, i32 4
  %28 = load double, double* %offset23, align 8
  %29 = load double, double* %angle, align 8
  %call24 = call double @sin(double %29) #5
  %mul25 = fmul double %28, %call24
  %sub26 = fsub double %conv22, %mul25
  %conv27 = fptosi double %sub26 to i32
  store i32 %conv27, i32* %yy, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %30 = load i32, i32* %x.addr, align 4
  %conv28 = sitofp i32 %30 to double
  %31 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %offset29 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %31, i32 0, i32 4
  %32 = load double, double* %offset29, align 8
  %33 = load double, double* %angle, align 8
  %call30 = call double @sin(double %33) #5
  %mul31 = fmul double %32, %call30
  %sub32 = fsub double %conv28, %mul31
  %conv33 = fptosi double %sub32 to i32
  store i32 %conv33, i32* %xx, align 4
  %34 = load i32, i32* %y.addr, align 4
  %conv34 = sitofp i32 %34 to double
  %35 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %offset35 = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %35, i32 0, i32 4
  %36 = load double, double* %offset35, align 8
  %37 = load double, double* %angle, align 8
  %call36 = call double @cos(double %37) #5
  %mul37 = fmul double %36, %call36
  %sub38 = fsub double %conv34, %mul37
  %conv39 = fptosi double %sub38 to i32
  store i32 %conv39, i32* %yy, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %pft = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %38, i32 0, i32 0
  %39 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %40 = load i32, i32* %xx, align 4
  %41 = load i32, i32* %yy, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %39, i32 %40, i32 %41, i8* %arraydecay)
  %42 = load %struct.IllusionParam_t*, %struct.IllusionParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.IllusionParam_t, %struct.IllusionParam_t* %42, i32 0, i32 5
  %43 = load i32, i32* %has_alpha, align 4
  %tobool40 = icmp ne i32 %43, 0
  br i1 %tobool40, label %if.then.41, label %if.else.85

if.then.41:                                       ; preds = %if.end
  %44 = load i32, i32* %bpp.addr, align 4
  %sub42 = sub nsw i32 %44, 1
  %idxprom = sext i32 %sub42 to i64
  %45 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 %idxprom
  %46 = load i8, i8* %arrayidx, align 1
  %conv43 = zext i8 %46 to i32
  store i32 %conv43, i32* %alpha1, align 4
  %47 = load i32, i32* %bpp.addr, align 4
  %sub44 = sub nsw i32 %47, 1
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom45
  %48 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %48 to i32
  store i32 %conv47, i32* %alpha2, align 4
  %49 = load double, double* %radius, align 8
  %sub48 = fsub double 1.000000e+00, %49
  %50 = load i32, i32* %alpha1, align 4
  %conv49 = uitofp i32 %50 to double
  %mul50 = fmul double %sub48, %conv49
  %51 = load double, double* %radius, align 8
  %52 = load i32, i32* %alpha2, align 4
  %conv51 = uitofp i32 %52 to double
  %mul52 = fmul double %51, %conv51
  %add53 = fadd double %mul50, %mul52
  %conv54 = fptoui double %add53 to i32
  store i32 %conv54, i32* %alpha, align 4
  %53 = load i32, i32* %alpha, align 4
  %shr = lshr i32 %53, 1
  %conv55 = trunc i32 %shr to i8
  %54 = load i32, i32* %bpp.addr, align 4
  %sub56 = sub nsw i32 %54, 1
  %idxprom57 = sext i32 %sub56 to i64
  %55 = load i8*, i8** %dest.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %55, i64 %idxprom57
  store i8 %conv55, i8* %arrayidx58, align 1
  %tobool59 = icmp ne i8 %conv55, 0
  br i1 %tobool59, label %if.then.60, label %if.end.84

if.then.60:                                       ; preds = %if.then.41
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.60
  %56 = load i32, i32* %b, align 4
  %57 = load i32, i32* %bpp.addr, align 4
  %sub61 = sub nsw i32 %57, 1
  %cmp = icmp slt i32 %56, %sub61
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load double, double* %radius, align 8
  %sub63 = fsub double 1.000000e+00, %58
  %59 = load i32, i32* %b, align 4
  %idxprom64 = sext i32 %59 to i64
  %60 = load i8*, i8** %src.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %60, i64 %idxprom64
  %61 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %61 to i32
  %conv67 = sitofp i32 %conv66 to double
  %mul68 = fmul double %sub63, %conv67
  %62 = load i32, i32* %alpha1, align 4
  %conv69 = uitofp i32 %62 to double
  %mul70 = fmul double %mul68, %conv69
  %63 = load double, double* %radius, align 8
  %64 = load i32, i32* %b, align 4
  %idxprom71 = sext i32 %64 to i64
  %arrayidx72 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom71
  %65 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %65 to i32
  %conv74 = sitofp i32 %conv73 to double
  %mul75 = fmul double %63, %conv74
  %66 = load i32, i32* %alpha2, align 4
  %conv76 = uitofp i32 %66 to double
  %mul77 = fmul double %mul75, %conv76
  %add78 = fadd double %mul70, %mul77
  %67 = load i32, i32* %alpha, align 4
  %conv79 = uitofp i32 %67 to double
  %div80 = fdiv double %add78, %conv79
  %conv81 = fptoui double %div80 to i8
  %68 = load i32, i32* %b, align 4
  %idxprom82 = sext i32 %68 to i64
  %69 = load i8*, i8** %dest.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %69, i64 %idxprom82
  store i8 %conv81, i8* %arrayidx83, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i32, i32* %b, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.84

if.end.84:                                        ; preds = %for.end, %if.then.41
  br label %if.end.108

if.else.85:                                       ; preds = %if.end
  store i32 0, i32* %b, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.105, %if.else.85
  %71 = load i32, i32* %b, align 4
  %72 = load i32, i32* %bpp.addr, align 4
  %cmp87 = icmp slt i32 %71, %72
  br i1 %cmp87, label %for.body.89, label %for.end.107

for.body.89:                                      ; preds = %for.cond.86
  %73 = load double, double* %radius, align 8
  %sub90 = fsub double 1.000000e+00, %73
  %74 = load i32, i32* %b, align 4
  %idxprom91 = sext i32 %74 to i64
  %75 = load i8*, i8** %src.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %75, i64 %idxprom91
  %76 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %76 to i32
  %conv94 = sitofp i32 %conv93 to double
  %mul95 = fmul double %sub90, %conv94
  %77 = load double, double* %radius, align 8
  %78 = load i32, i32* %b, align 4
  %idxprom96 = sext i32 %78 to i64
  %arrayidx97 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom96
  %79 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %79 to i32
  %conv99 = sitofp i32 %conv98 to double
  %mul100 = fmul double %77, %conv99
  %add101 = fadd double %mul95, %mul100
  %conv102 = fptoui double %add101 to i8
  %80 = load i32, i32* %b, align 4
  %idxprom103 = sext i32 %80 to i64
  %81 = load i8*, i8** %dest.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %81, i64 %idxprom103
  store i8 %conv102, i8* %arrayidx104, align 1
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.89
  %82 = load i32, i32* %b, align 4
  %inc106 = add nsw i32 %82, 1
  store i32 %inc106, i32* %b, align 4
  br label %for.cond.86

for.end.107:                                      ; preds = %for.cond.86
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.107, %if.end.84
  ret void
}

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_src_dest(%struct._GimpRgnIterator*, void (i32, i32, i8*, i8*, i32, i8*)*, i8*) #1

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
