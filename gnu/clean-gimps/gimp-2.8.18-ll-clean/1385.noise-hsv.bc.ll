; ModuleID = './plug-ins/common/noise-hsv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.ValueType = type { i32, i32, i32, i32 }
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
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Input image (not used)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"holdness\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"convolution strength\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"hue-distance\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"scattering of hue angle [0,180]\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"saturation-distance\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"distribution distance on saturation axis [0,255]\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"value-distance\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"distribution distance on value axis [0,255]\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"plug-in-hsv-noise\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Randomize hue/saturation/value independently\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Scattering pixel values in HSV space\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Shuji Narazaki (narazaki@InetQ.or.jp)\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Shuji Narazaki\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"HSV Noise...\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"<Image>/Filters/Noise\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"plug-in-scatter-hsv\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@VALS = internal global %struct.ValueType { i32 2, i32 3, i32 10, i32 10 }, align 4
@.str.26 = private unnamed_addr constant [35 x i8] c"Can only operate on RGB drawables.\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"noise-hsv\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"HSV Noise\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"gimp-noise-hsv\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"_Holdness:\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"H_ue:\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"_Saturation:\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"_Value:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %run_mode = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int326 = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_int326, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.87
  ]

sw.bb:                                            ; preds = %do.end
  %call8 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.ValueType* @VALS to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_is_rgb(i32 %9)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call10)
  br label %return

if.end:                                           ; preds = %sw.bb
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @scatter_hsv_dialog(%struct._GimpDrawable* %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  br label %return

if.end.14:                                        ; preds = %if.end
  br label %sw.epilog

sw.bb.15:                                         ; preds = %do.end
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %12 = load i32, i32* %d_int3218, align 4
  %cmp = icmp sgt i32 %12, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.15
  br label %cond.end.28

cond.false:                                       ; preds = %sw.bb.15
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %14 = load i32, i32* %d_int3221, align 4
  %cmp22 = icmp slt i32 %14, 1
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false
  br label %cond.end

cond.false.24:                                    ; preds = %cond.false
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_int3227 = bitcast %union._GimpParamData* %data26 to i32*
  %16 = load i32, i32* %d_int3227, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.24, %cond.true.23
  %cond = phi i32 [ 1, %cond.true.23 ], [ %16, %cond.false.24 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi i32 [ 8, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond29, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 0), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 4
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %18 = load i32, i32* %d_int3232, align 4
  %cmp33 = icmp sgt i32 %18, 180
  br i1 %cmp33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.end.28
  br label %cond.end.47

cond.false.35:                                    ; preds = %cond.end.28
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 4
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_int3238 = bitcast %union._GimpParamData* %data37 to i32*
  %20 = load i32, i32* %d_int3238, align 4
  %cmp39 = icmp slt i32 %20, 0
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.false.35
  br label %cond.end.45

cond.false.41:                                    ; preds = %cond.false.35
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 4
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_int3244 = bitcast %union._GimpParamData* %data43 to i32*
  %22 = load i32, i32* %d_int3244, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.41, %cond.true.40
  %cond46 = phi i32 [ 0, %cond.true.40 ], [ %22, %cond.false.41 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.34
  %cond48 = phi i32 [ 180, %cond.true.34 ], [ %cond46, %cond.end.45 ]
  store i32 %cond48, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1), align 4
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 5
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %24 = load i32, i32* %d_int3251, align 4
  %cmp52 = icmp sgt i32 %24, 255
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.47
  br label %cond.end.66

cond.false.54:                                    ; preds = %cond.end.47
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 5
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_int3257 = bitcast %union._GimpParamData* %data56 to i32*
  %26 = load i32, i32* %d_int3257, align 4
  %cmp58 = icmp slt i32 %26, 0
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.54
  br label %cond.end.64

cond.false.60:                                    ; preds = %cond.false.54
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 5
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_int3263 = bitcast %union._GimpParamData* %data62 to i32*
  %28 = load i32, i32* %d_int3263, align 4
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.60, %cond.true.59
  %cond65 = phi i32 [ 0, %cond.true.59 ], [ %28, %cond.false.60 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.53
  %cond67 = phi i32 [ 255, %cond.true.53 ], [ %cond65, %cond.end.64 ]
  store i32 %cond67, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 6
  %data69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx68, i32 0, i32 1
  %d_int3270 = bitcast %union._GimpParamData* %data69 to i32*
  %30 = load i32, i32* %d_int3270, align 4
  %cmp71 = icmp sgt i32 %30, 255
  br i1 %cmp71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.66
  br label %cond.end.85

cond.false.73:                                    ; preds = %cond.end.66
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 6
  %data75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx74, i32 0, i32 1
  %d_int3276 = bitcast %union._GimpParamData* %data75 to i32*
  %32 = load i32, i32* %d_int3276, align 4
  %cmp77 = icmp slt i32 %32, 0
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.false.73
  br label %cond.end.83

cond.false.79:                                    ; preds = %cond.false.73
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 6
  %data81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx80, i32 0, i32 1
  %d_int3282 = bitcast %union._GimpParamData* %data81 to i32*
  %34 = load i32, i32* %d_int3282, align 4
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.79, %cond.true.78
  %cond84 = phi i32 [ 0, %cond.true.78 ], [ %34, %cond.false.79 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.72
  %cond86 = phi i32 [ 255, %cond.true.72 ], [ %cond84, %cond.end.83 ]
  store i32 %cond86, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %do.end
  %call88 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.ValueType* @VALS to i8*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.87, %cond.end.85, %if.end.14
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @scatter_hsv(%struct._GimpDrawable* %35)
  %36 = load i32, i32* %run_mode, align 4
  %cmp89 = icmp ne i32 %36, 1
  br i1 %cmp89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %sw.epilog
  %call91 = call i32 @gimp_displays_flush()
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %sw.epilog
  %37 = load i32, i32* %run_mode, align 4
  %cmp93 = icmp eq i32 %37, 0
  br i1 %cmp93, label %land.lhs.true, label %if.end.97

land.lhs.true:                                    ; preds = %if.end.92
  %38 = load i32, i32* %status, align 4
  %cmp94 = icmp eq i32 %38, 3
  br i1 %cmp94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %land.lhs.true
  %call96 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.ValueType* @VALS to i8*), i32 16)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %land.lhs.true, %if.end.92
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %39 = load i32, i32* %status, align 4
  store i32 %39, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.97, %if.then.13, %if.then
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

declare i32 @gimp_drawable_is_rgb(i32) #1

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

; Function Attrs: nounwind uwtable
define internal i32 @scatter_hsv_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @scatter_hsv_preview to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %26, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %29, i32 6)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #4
  %38 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 0), align 4
  %conv = sitofp i32 %38 to double
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %37, i32 0, i32 0, i8* %call27, i32 100, i32 3, double %conv, double 1.000000e+00, double 8.000000e+00, double 1.000000e+00, double 2.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %adj, align 8
  %39 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %40 = bitcast %struct._GtkObject* %39 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.ValueType* @VALS to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 2)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call31)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #4
  %48 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1), align 4
  %conv34 = sitofp i32 %48 to double
  %call35 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %47, i32 0, i32 1, i8* %call33, i32 100, i32 3, double %conv34, double 0.000000e+00, double 1.800000e+02, double 1.000000e+00, double 6.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call35, %struct._GtkObject** %adj, align 8
  %49 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %50 = bitcast %struct._GtkObject* %49 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 2)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call38)
  %57 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #4
  %58 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %conv41 = sitofp i32 %58 to double
  %call42 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %57, i32 0, i32 2, i8* %call40, i32 100, i32 3, double %conv41, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call42, %struct._GtkObject** %adj, align 8
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 2)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call45)
  %67 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0)) #4
  %68 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3), align 4
  %conv48 = sitofp i32 %68 to double
  %call49 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %67, i32 0, i32 3, i8* %call47, i32 100, i32 3, double %conv48, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call49, %struct._GtkObject** %adj, align 8
  %69 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %70 = bitcast %struct._GtkObject* %69 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 2)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_dialog_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call52)
  %78 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDialog*
  %call54 = call i32 @gimp_dialog_run(%struct._GimpDialog* %78)
  %cmp = icmp eq i32 %call54, -5
  %conv55 = zext i1 %cmp to i32
  store i32 %conv55, i32* %run, align 4
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %79)
  %80 = load i32, i32* %run, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal void @scatter_hsv(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  %call = call i32 @gimp_tile_width() #5
  %div = udiv i32 %1, %call
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0)) #4
  %call2 = call i32 @gimp_progress_init(i8* %call1)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %2, i32 0, void (i8*, i8*, i32, i8*)* @scatter_hsv_func, i8* null)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %3)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @scatter_hsv_preview(%struct._GimpPreview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %2)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %3, i32* %x1, i32* %y1)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %4, i32* %width, i32* %height)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp3, align 4
  store i32 %6, i32* %bpp, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %bpp, align 4
  %mul4 = mul nsw i32 %mul, %9
  %conv = sext i32 %mul4 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %src, align 8
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  %mul6 = mul nsw i32 %10, %11
  %12 = load i32, i32* %bpp, align 4
  %mul7 = mul nsw i32 %mul6, %12
  %conv8 = sext i32 %mul7 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv8, i64 1)
  store i8* %call9, i8** %dst, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = load i32, i32* %x1, align 4
  %15 = load i32, i32* %y1, align 4
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 0, i32 0)
  %18 = load i8*, i8** %src, align 8
  %19 = load i32, i32* %x1, align 4
  %20 = load i32, i32* %y1, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  %mul10 = mul nsw i32 %24, %25
  %cmp = icmp slt i32 %23, %mul10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %src, align 8
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %bpp, align 4
  %mul12 = mul nsw i32 %27, %28
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  %29 = load i8*, i8** %dst, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %bpp, align 4
  %mul13 = mul nsw i32 %30, %31
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %29, i64 %idx.ext14
  %32 = load i32, i32* %bpp, align 4
  call void @scatter_hsv_func(i8* %add.ptr, i8* %add.ptr15, i32 %32, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %35 = load i8*, i8** %dst, align 8
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %bpp, align 4
  %mul16 = mul nsw i32 %36, %37
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %34, i8* %35, i32 %mul16)
  %38 = load i8*, i8** %src, align 8
  call void @g_free(i8* %38)
  %39 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %39)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @scatter_hsv_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %h = alloca i8, align 1
  %s = alloca i8, align 1
  %v = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %h, align 1
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  store i8 %3, i8* %s, align 1
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx2, align 1
  store i8 %5, i8* %v, align 1
  call void @scatter_hsv_scatter(i8* %h, i8* %s, i8* %v)
  %6 = load i8, i8* %h, align 1
  %7 = load i8*, i8** %dest.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %6, i8* %arrayidx3, align 1
  %8 = load i8, i8* %s, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %8, i8* %arrayidx4, align 1
  %10 = load i8, i8* %v, align 1
  %11 = load i8*, i8** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 %10, i8* %arrayidx5, align 1
  %12 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp eq i32 %12, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx6, align 1
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %14, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @scatter_hsv_scatter(i8* %r, i8* %g, i8* %b) #0 {
entry:
  %r.addr = alloca i8*, align 8
  %g.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %h = alloca i32, align 4
  %s = alloca i32, align 4
  %v = alloca i32, align 4
  %h1 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %v2 = alloca i32, align 4
  store i8* %r, i8** %r.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %r.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %h, align 4
  %2 = load i8*, i8** %g.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = zext i8 %3 to i32
  store i32 %conv1, i32* %s, align 4
  %4 = load i8*, i8** %b.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %v, align 4
  call void @gimp_rgb_to_hsv_int(i32* %h, i32* %s, i32* %v)
  %6 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1), align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %s, align 4
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %h, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1), align 4
  %call = call i32 @randomize_value(i32 %8, i32 0, i32 359, i32 1, i32 %9)
  store i32 %call, i32* %h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %11 = load i32, i32* %s, align 4
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %call12 = call i32 @g_random_int_range(i32 0, i32 360)
  store i32 %call12, i32* %h, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.8
  %12 = load i32, i32* %s, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %call14 = call i32 @randomize_value(i32 %12, i32 0, i32 255, i32 0, i32 %13)
  store i32 %call14, i32* %s, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %if.end
  %14 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3), align 4
  %cmp16 = icmp sgt i32 %14, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %15 = load i32, i32* %v, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3), align 4
  %call19 = call i32 @randomize_value(i32 %15, i32 0, i32 255, i32 0, i32 %16)
  store i32 %call19, i32* %v, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %17 = load i32, i32* %h, align 4
  store i32 %17, i32* %h1, align 4
  %18 = load i32, i32* %s, align 4
  store i32 %18, i32* %s1, align 4
  %19 = load i32, i32* %v, align 4
  store i32 %19, i32* %v1, align 4
  call void @gimp_hsv_to_rgb_int(i32* %h, i32* %s, i32* %v)
  %20 = load i32, i32* %h, align 4
  store i32 %20, i32* %h2, align 4
  %21 = load i32, i32* %s, align 4
  store i32 %21, i32* %s2, align 4
  %22 = load i32, i32* %v, align 4
  store i32 %22, i32* %v2, align 4
  call void @gimp_rgb_to_hsv_int(i32* %h2, i32* %s2, i32* %v2)
  %23 = load i32, i32* %h1, align 4
  %24 = load i32, i32* %h2, align 4
  %sub = sub nsw i32 %23, %24
  %call21 = call i32 @abs(i32 %sub) #5
  %25 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1), align 4
  %cmp22 = icmp sle i32 %call21, %25
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.38

land.lhs.true.24:                                 ; preds = %if.end.20
  %26 = load i32, i32* %s1, align 4
  %27 = load i32, i32* %s2, align 4
  %sub25 = sub nsw i32 %26, %27
  %call26 = call i32 @abs(i32 %sub25) #5
  %28 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %cmp27 = icmp sle i32 %call26, %28
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.38

land.lhs.true.29:                                 ; preds = %land.lhs.true.24
  %29 = load i32, i32* %v1, align 4
  %30 = load i32, i32* %v2, align 4
  %sub30 = sub nsw i32 %29, %30
  %call31 = call i32 @abs(i32 %sub30) #5
  %31 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3), align 4
  %cmp32 = icmp sle i32 %call31, %31
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %land.lhs.true.29
  %32 = load i32, i32* %h, align 4
  %conv35 = trunc i32 %32 to i8
  %33 = load i8*, i8** %r.addr, align 8
  store i8 %conv35, i8* %33, align 1
  %34 = load i32, i32* %s, align 4
  %conv36 = trunc i32 %34 to i8
  %35 = load i8*, i8** %g.addr, align 8
  store i8 %conv36, i8* %35, align 1
  %36 = load i32, i32* %v, align 4
  %conv37 = trunc i32 %36 to i8
  %37 = load i8*, i8** %b.addr, align 8
  store i8 %conv37, i8* %37, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %land.lhs.true.29, %land.lhs.true.24, %if.end.20
  ret void
}

declare void @gimp_rgb_to_hsv_int(i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @randomize_value(i32 %now, i32 %min, i32 %max, i32 %wraps_around, i32 %rand_max) #0 {
entry:
  %now.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %wraps_around.addr = alloca i32, align 4
  %rand_max.addr = alloca i32, align 4
  %flag = alloca i32, align 4
  %steps = alloca i32, align 4
  %index = alloca i32, align 4
  %rand_val = alloca double, align 8
  %new = alloca double, align 8
  %tmp = alloca double, align 8
  store i32 %now, i32* %now.addr, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 %wraps_around, i32* %wraps_around.addr, align 4
  store i32 %rand_max, i32* %rand_max.addr, align 4
  %0 = load i32, i32* %max.addr, align 4
  %1 = load i32, i32* %min.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %steps, align 4
  %call = call double @g_random_double()
  store double %call, double* %rand_val, align 8
  store i32 1, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %index, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call double @g_random_double()
  store double %call1, double* %tmp, align 8
  %4 = load double, double* %tmp, align 8
  %5 = load double, double* %rand_val, align 8
  %cmp2 = fcmp olt double %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load double, double* %tmp, align 8
  store double %6, double* %rand_val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call double @g_random_double()
  %cmp4 = fcmp olt double %call3, 5.000000e-01
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.end
  store i32 -1, i32* %flag, align 4
  br label %if.end.6

if.else:                                          ; preds = %for.end
  store i32 1, i32* %flag, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %8 = load i32, i32* %now.addr, align 4
  %conv = sitofp i32 %8 to double
  %9 = load i32, i32* %flag, align 4
  %conv7 = sitofp i32 %9 to double
  %10 = load i32, i32* %rand_max.addr, align 4
  %conv8 = sitofp i32 %10 to double
  %11 = load double, double* %rand_val, align 8
  %mul = fmul double %conv8, %11
  %12 = load i32, i32* %steps, align 4
  %conv9 = sitofp i32 %12 to double
  %call10 = call double @fmod(double %mul, double %conv9) #4
  %mul11 = fmul double %conv7, %call10
  %add12 = fadd double %conv, %mul11
  store double %add12, double* %new, align 8
  %13 = load double, double* %new, align 8
  %14 = load i32, i32* %min.addr, align 4
  %conv13 = sitofp i32 %14 to double
  %cmp14 = fcmp olt double %13, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end.6
  %15 = load i32, i32* %wraps_around.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.then.16
  %16 = load i32, i32* %steps, align 4
  %conv18 = sitofp i32 %16 to double
  %17 = load double, double* %new, align 8
  %add19 = fadd double %17, %conv18
  store double %add19, double* %new, align 8
  br label %if.end.22

if.else.20:                                       ; preds = %if.then.16
  %18 = load i32, i32* %min.addr, align 4
  %conv21 = sitofp i32 %18 to double
  store double %conv21, double* %new, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.6
  %19 = load i32, i32* %max.addr, align 4
  %conv24 = sitofp i32 %19 to double
  %20 = load double, double* %new, align 8
  %cmp25 = fcmp olt double %conv24, %20
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.end.23
  %21 = load i32, i32* %wraps_around.addr, align 4
  %tobool28 = icmp ne i32 %21, 0
  br i1 %tobool28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.then.27
  %22 = load i32, i32* %steps, align 4
  %conv30 = sitofp i32 %22 to double
  %23 = load double, double* %new, align 8
  %sub31 = fsub double %23, %conv30
  store double %sub31, double* %new, align 8
  br label %if.end.34

if.else.32:                                       ; preds = %if.then.27
  %24 = load i32, i32* %max.addr, align 4
  %conv33 = sitofp i32 %24 to double
  store double %conv33, double* %new, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.23
  %25 = load double, double* %new, align 8
  %add36 = fadd double %25, 5.000000e-01
  %conv37 = fptosi double %add36 to i32
  ret i32 %conv37
}

declare i32 @g_random_int_range(i32, i32) #1

declare void @gimp_hsv_to_rgb_int(i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare double @g_random_double() #1

; Function Attrs: nounwind
declare double @fmod(double, double) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
