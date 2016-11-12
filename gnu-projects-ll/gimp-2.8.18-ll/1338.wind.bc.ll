; ModuleID = './plug-ins/common/wind.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.config_tag = type { i32, i32, i32, i32, i32 }
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
@query.args = internal constant [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Controls where blending will be done >= 0\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Left or Right: 0 or 1\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Controls the extent of the blending > 1\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Algorithm { WIND (0), BLAST (1) }\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Edge behavior { BOTH (0), LEADING (1), TRAILING (2) }\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"plug-in-wind\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Smear image to give windblown effect\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Renders a wind effect.\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Nigel Wetten\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Wi_nd...\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@config = internal global %struct.config_tag { i32 10, i32 0, i32 10, i32 0, i32 1 }, align 4
@.str.26 = private unnamed_addr constant [29 x i8] c"An execution error occurred.\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Rendering wind\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Rendering blast\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"wind\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Wind\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"gimp-wind\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Style\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"_Wind\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"_Blast\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"_Left\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"_Right\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Edge Affected\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"L_eading\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Tr_ailing\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Bot_h\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"_Threshold:\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"Higher values restrict the effect to fewer areas of the image\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"_Strength:\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"Higher values increase the magnitude of the effect\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0))
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
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %call3 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %5, %call3
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  br label %do.body

do.body:                                          ; preds = %entry
  %call4 = call i8* @gimp_locale_directory() #5
  %call5 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call4) #4
  %call6 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #4
  %call7 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i32, i32* %run_mode, align 4
  switch i32 %6, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.29
    i32 2, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %do.end
  %7 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %7, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %status, align 4
  br label %if.end.28

if.else:                                          ; preds = %sw.bb
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %9 = load i32, i32* %d_int3211, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 4
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %11 = load i32, i32* %d_int3214, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 5
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int3217 = bitcast %union._GimpParamData* %data16 to i32*
  %13 = load i32, i32* %d_int3217, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 6
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_int3220 = bitcast %union._GimpParamData* %data19 to i32*
  %15 = load i32, i32* %d_int3220, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 7
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int3223 = bitcast %union._GimpParamData* %data22 to i32*
  %17 = load i32, i32* %d_int3223, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call24 = call i32 @render_effect(%struct._GimpDrawable* %18, %struct._GimpPreview* null)
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.29:                                         ; preds = %do.end
  %call30 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.config_tag* @config to i8*))
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call31 = call i32 @dialog_box(%struct._GimpDrawable* %19)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.29
  store i32 4, i32* %status, align 4
  br label %sw.epilog

if.end.33:                                        ; preds = %sw.bb.29
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call34 = call i32 @render_effect(%struct._GimpDrawable* %20, %struct._GimpPreview* null)
  %cmp35 = icmp eq i32 %call34, -1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  store i32 1, i32* %status, align 4
  br label %sw.epilog

if.end.38:                                        ; preds = %if.end.33
  %call39 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.config_tag* @config to i8*), i32 20)
  %call40 = call i32 @gimp_displays_flush()
  br label %sw.epilog

sw.bb.41:                                         ; preds = %do.end
  %call42 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.config_tag* @config to i8*))
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call43 = call i32 @render_effect(%struct._GimpDrawable* %21, %struct._GimpPreview* null)
  %cmp44 = icmp eq i32 %call43, -1
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %sw.bb.41
  store i32 0, i32* %status, align 4
  %call47 = call i32 @gimp_message(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.50

if.else.48:                                       ; preds = %sw.bb.41
  %call49 = call i32 @gimp_displays_flush()
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.46
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.50, %do.end, %if.end.38, %if.then.37, %if.then.32, %if.end.28
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %22)
  %23 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %23, align 4
  %24 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %24, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %25 = load i32, i32* %status, align 4
  store i32 %25, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #2

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @render_effect(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @render_wind(%struct._GimpDrawable* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct._GimpPreview* %6)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @render_blast(%struct._GimpDrawable* %8, i32 %9, i32 %10, i32 %11, i32 %12, %struct._GimpPreview* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  ret i32 0
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialog_box(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %style1 = alloca %struct._GtkWidget*, align 8
  %style2 = alloca %struct._GtkWidget*, align 8
  %dir1 = alloca %struct._GtkWidget*, align 8
  %dir2 = alloca %struct._GtkWidget*, align 8
  %edge1 = alloca %struct._GtkWidget*, align 8
  %edge2 = alloca %struct._GtkWidget*, align 8
  %edge3 = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpDrawable*, %struct._GimpPreview*)* @render_effect to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
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
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #4
  %36 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #4
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call25, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3) to i8*), i32 %36, i8* %call26, i32 0, %struct._GtkWidget** %style1, i8* %call27, i32 1, %struct._GtkWidget** %style2, i8* null)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %frame, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %style1, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 2)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %style2, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 2)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call31)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %47, %struct._GtkWidget* %48, i32 0, i32 1, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #4
  %50 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #4
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)) #4
  %call36 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call33, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1) to i8*), i32 %50, i8* %call34, i32 0, %struct._GtkWidget** %dir1, i8* %call35, i32 1, %struct._GtkWidget** %dir2, i8* null)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %frame, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dir1, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 2)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dir2, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 2)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call39)
  %61 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %61, %struct._GtkWidget* %62, i32 1, i32 2, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0)) #4
  %64 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 4
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #4
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #4
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)) #4
  %call45 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call41, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4) to i8*), i32 %64, i8* %call42, i32 1, %struct._GtkWidget** %edge1, i8* %call43, i32 2, %struct._GtkWidget** %edge2, i8* %call44, i32 0, %struct._GtkWidget** %edge3, i8* null)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %frame, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %edge1, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 2)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %edge2, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 2)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %edge3, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call49)
  %79 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %79, %struct._GtkWidget* %80, i32 2, i32 3, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call51 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %table, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call52)
  %85 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %85, i32 6)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call54)
  %88 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %88, i32 6)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call56)
  %91 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %91, %struct._GtkWidget* %92, i32 0, i32 0, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call58)
  %95 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0)) #4
  %96 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %conv = sitofp i32 %96 to double
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i32 0, i32 0)) #4
  %call62 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %95, i32 0, i32 0, i8* %call60, i32 200, i32 0, double %conv, double 0.000000e+00, double 5.000000e+01, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call61, i8* null)
  store %struct._GtkObject* %call62, %struct._GtkObject** %adj, align 8
  %97 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %98 = bitcast %struct._GtkObject* %97 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.config_tag* @config to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %100 = bitcast %struct._GtkObject* %99 to i8*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %102 = bitcast %struct._GtkWidget* %101 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 2)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call65)
  %105 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0)) #4
  %106 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2), align 4
  %conv68 = sitofp i32 %106 to double
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i32 0, i32 0)) #4
  %call70 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %105, i32 0, i32 1, i8* %call67, i32 200, i32 0, double %conv68, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call69, i8* null)
  store %struct._GtkObject* %call70, %struct._GtkObject** %adj, align 8
  %107 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %108 = bitcast %struct._GtkObject* %107 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %109 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %110 = bitcast %struct._GtkObject* %109 to i8*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %112 = bitcast %struct._GtkWidget* %111 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %112, void (i8*, %struct._GClosure*)* null, i32 2)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %113)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_dialog_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call73)
  %117 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpDialog*
  %call75 = call i32 @gimp_dialog_run(%struct._GimpDialog* %117)
  %cmp = icmp eq i32 %call75, -5
  %conv76 = zext i1 %cmp to i32
  store i32 %conv76, i32* %run, align 4
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %118)
  %119 = load i32, i32* %run, align 4
  ret i32 %119
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_message(i8*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @render_wind(%struct._GimpDrawable* %drawable, i32 %threshold, i32 %strength, i32 %direction, i32 %edge, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %threshold.addr = alloca i32, align 4
  %strength.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_region = alloca %struct._GimpPixelRgn, align 8
  %dest_region = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %row_stride = alloca i32, align 4
  %comp_stride = alloca i32, align 4
  %row = alloca i32, align 4
  %sb = alloca i8*, align 8
  %preview_buffer = alloca i8*, align 8
  %lpi = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %strength, i32* %strength.addr, align 4
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %preview_buffer, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %3, i32* %x1, i32* %y1)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %4, i32* %width, i32* %height)
  %5 = load i32, i32* %y1, align 4
  %6 = load i32, i32* %height, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %y2, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %bytes, align 4
  %mul1 = mul nsw i32 %mul, %9
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %preview_buffer, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_mask_intersect(i32 %11, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.else
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0)) #4
  %call6 = call i32 @gimp_progress_init(i8* %call5)
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* %height, align 4
  %add7 = add nsw i32 %12, %13
  store i32 %add7, i32* %y2, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %y1, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_region, %struct._GimpDrawable* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 1, i32 1)
  br label %if.end

if.else.8:                                        ; preds = %if.else
  br label %if.end.47

if.end:                                           ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y1, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_region, %struct._GimpDrawable* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 0, i32 0)
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %bytes, align 4
  %mul10 = mul nsw i32 %24, %25
  store i32 %mul10, i32* %row_stride, align 4
  %26 = load i32, i32* %bytes, align 4
  %mul11 = mul nsw i32 %26, 3
  store i32 %mul11, i32* %comp_stride, align 4
  %27 = load i32, i32* %row_stride, align 4
  %28 = load i32, i32* %comp_stride, align 4
  %sub = sub nsw i32 %27, %28
  store i32 %sub, i32* %lpi, align 4
  %29 = load i32, i32* %row_stride, align 4
  %conv12 = sext i32 %29 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  store i8* %call13, i8** %sb, align 8
  %30 = load i32, i32* %y1, align 4
  store i32 %30, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %31 = load i32, i32* %row, align 4
  %32 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i8*, i8** %sb, align 8
  %34 = load i32, i32* %x1, align 4
  %35 = load i32, i32* %row, align 4
  %36 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_region, i8* %33, i32 %34, i32 %35, i32 %36)
  %37 = load i32, i32* %direction.addr, align 4
  %cmp15 = icmp eq i32 %37, 1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %38 = load i8*, i8** %sb, align 8
  %39 = load i32, i32* %row_stride, align 4
  %40 = load i32, i32* %bytes, align 4
  call void @reverse_buffer(i8* %38, i32 %39, i32 %40)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %for.body
  %41 = load i8*, i8** %sb, align 8
  %42 = load i32, i32* %bytes, align 4
  %43 = load i32, i32* %lpi, align 4
  %44 = load i32, i32* %threshold.addr, align 4
  %45 = load i32, i32* %strength.addr, align 4
  %46 = load i32, i32* %edge.addr, align 4
  call void @render_wind_row(i8* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %47 = load i32, i32* %direction.addr, align 4
  %cmp19 = icmp eq i32 %47, 1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %48 = load i8*, i8** %sb, align 8
  %49 = load i32, i32* %row_stride, align 4
  %50 = load i32, i32* %bytes, align 4
  call void @reverse_buffer(i8* %48, i32 %49, i32 %50)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %51 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool23 = icmp ne %struct._GimpPreview* %51, null
  br i1 %tobool23, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.end.22
  %52 = load i8*, i8** %preview_buffer, align 8
  %53 = load i32, i32* %row, align 4
  %54 = load i32, i32* %y1, align 4
  %sub25 = sub nsw i32 %53, %54
  %55 = load i32, i32* %row_stride, align 4
  %mul26 = mul nsw i32 %sub25, %55
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  %56 = load i8*, i8** %sb, align 8
  %57 = load i32, i32* %row_stride, align 4
  %conv27 = sext i32 %57 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %56, i64 %conv27, i32 1, i1 false)
  br label %if.end.37

if.else.28:                                       ; preds = %if.end.22
  %58 = load i8*, i8** %sb, align 8
  %59 = load i32, i32* %x1, align 4
  %60 = load i32, i32* %row, align 4
  %61 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_region, i8* %58, i32 %59, i32 %60, i32 %61)
  %62 = load i32, i32* %row, align 4
  %rem = srem i32 %62, 8
  %cmp29 = icmp eq i32 %rem, 0
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.else.28
  %63 = load i32, i32* %row, align 4
  %64 = load i32, i32* %y1, align 4
  %sub32 = sub nsw i32 %63, %64
  %conv33 = sitofp i32 %sub32 to double
  %65 = load i32, i32* %height, align 4
  %conv34 = sitofp i32 %65 to double
  %div = fdiv double %conv33, %conv34
  %call35 = call i32 @gimp_progress_update(double %div)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.else.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %66 = load i32, i32* %row, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load i8*, i8** %sb, align 8
  call void @g_free(i8* %67)
  %68 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool38 = icmp ne %struct._GimpPreview* %68, null
  br i1 %tobool38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %for.end
  %69 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %70 = load i8*, i8** %preview_buffer, align 8
  %71 = load i32, i32* %width, align 4
  %72 = load i32, i32* %bytes, align 4
  %mul40 = mul nsw i32 %71, %72
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %69, i8* %70, i32 %mul40)
  %73 = load i8*, i8** %preview_buffer, align 8
  call void @g_free(i8* %73)
  br label %if.end.47

if.else.41:                                       ; preds = %for.end
  %call42 = call i32 @gimp_progress_update(double 1.000000e+00)
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %74)
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id43 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %75, i32 0, i32 0
  %76 = load i32, i32* %drawable_id43, align 4
  %call44 = call i32 @gimp_drawable_merge_shadow(i32 %76, i32 1)
  %77 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id45 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %77, i32 0, i32 0
  %78 = load i32, i32* %drawable_id45, align 4
  %79 = load i32, i32* %x1, align 4
  %80 = load i32, i32* %y1, align 4
  %81 = load i32, i32* %width, align 4
  %82 = load i32, i32* %height, align 4
  %call46 = call i32 @gimp_drawable_update(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.8, %if.else.41, %if.then.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_blast(%struct._GimpDrawable* %drawable, i32 %threshold, i32 %strength, i32 %direction, i32 %edge, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %threshold.addr = alloca i32, align 4
  %strength.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %preview_buffer = alloca i8*, align 8
  %src_region = alloca %struct._GimpPixelRgn, align 8
  %dest_region = alloca %struct._GimpPixelRgn, align 8
  %row = alloca i32, align 4
  %row_stride = alloca i32, align 4
  %marker = alloca i32, align 4
  %lpi = alloca i32, align 4
  %j = alloca i32, align 4
  %limit = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %strength, i32* %strength.addr, align 4
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  store i8* null, i8** %preview_buffer, align 8
  store i32 0, i32* %marker, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %3, i32* %x1, i32* %y1)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %4, i32* %width, i32* %height)
  %5 = load i32, i32* %y1, align 4
  %6 = load i32, i32* %height, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %y2, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %bytes, align 4
  %mul1 = mul nsw i32 %mul, %9
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %preview_buffer, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_mask_intersect(i32 %11, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.else
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)) #4
  %call6 = call i32 @gimp_progress_init(i8* %call5)
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* %height, align 4
  %add7 = add nsw i32 %12, %13
  store i32 %add7, i32* %y2, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %y1, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_region, %struct._GimpDrawable* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 1, i32 1)
  br label %if.end

if.else.8:                                        ; preds = %if.else
  br label %if.end.75

if.end:                                           ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y1, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_region, %struct._GimpDrawable* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 0, i32 0)
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %bytes, align 4
  %mul10 = mul nsw i32 %24, %25
  store i32 %mul10, i32* %row_stride, align 4
  %26 = load i32, i32* %row_stride, align 4
  %27 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %26, %27
  store i32 %sub, i32* %lpi, align 4
  %28 = load i32, i32* %row_stride, align 4
  %conv11 = sext i32 %28 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 1)
  store i8* %call12, i8** %buffer, align 8
  %29 = load i32, i32* %y1, align 4
  store i32 %29, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %if.end.9
  %30 = load i32, i32* %row, align 4
  %31 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %30, %31
  br i1 %cmp, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %buffer, align 8
  %33 = load i32, i32* %x1, align 4
  %34 = load i32, i32* %row, align 4
  %35 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_region, i8* %32, i32 %33, i32 %34, i32 %35)
  %36 = load i32, i32* %direction.addr, align 4
  %cmp14 = icmp eq i32 %36, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %37 = load i8*, i8** %buffer, align 8
  %38 = load i32, i32* %row_stride, align 4
  %39 = load i32, i32* %bytes, align 4
  call void @reverse_buffer(i8* %37, i32 %38, i32 %39)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.body
  %40 = load i8*, i8** %buffer, align 8
  %41 = load i32, i32* %bytes, align 4
  %42 = load i32, i32* %lpi, align 4
  %43 = load i32, i32* %threshold.addr, align 4
  %44 = load i32, i32* %strength.addr, align 4
  %45 = load i32, i32* %edge.addr, align 4
  %call18 = call i32 @render_blast_row(i8* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %call18, i32* %marker, align 4
  %46 = load i32, i32* %direction.addr, align 4
  %cmp19 = icmp eq i32 %46, 1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  %47 = load i8*, i8** %buffer, align 8
  %48 = load i32, i32* %row_stride, align 4
  %49 = load i32, i32* %bytes, align 4
  call void @reverse_buffer(i8* %47, i32 %48, i32 %49)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.17
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool23 = icmp ne %struct._GimpPreview* %50, null
  br i1 %tobool23, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.end.22
  %51 = load i8*, i8** %preview_buffer, align 8
  %52 = load i32, i32* %row, align 4
  %53 = load i32, i32* %y1, align 4
  %sub25 = sub nsw i32 %52, %53
  %54 = load i32, i32* %row_stride, align 4
  %mul26 = mul nsw i32 %sub25, %54
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %idx.ext
  %55 = load i8*, i8** %buffer, align 8
  %56 = load i32, i32* %row_stride, align 4
  %conv27 = sext i32 %56 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %55, i64 %conv27, i32 1, i1 false)
  br label %if.end.37

if.else.28:                                       ; preds = %if.end.22
  %57 = load i8*, i8** %buffer, align 8
  %58 = load i32, i32* %x1, align 4
  %59 = load i32, i32* %row, align 4
  %60 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_region, i8* %57, i32 %58, i32 %59, i32 %60)
  %61 = load i32, i32* %row, align 4
  %rem = srem i32 %61, 8
  %cmp29 = icmp eq i32 %rem, 0
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.else.28
  %62 = load i32, i32* %row, align 4
  %63 = load i32, i32* %y1, align 4
  %sub32 = sub nsw i32 %62, %63
  %conv33 = sitofp i32 %sub32 to double
  %64 = load i32, i32* %height, align 4
  %conv34 = sitofp i32 %64 to double
  %div = fdiv double %conv33, %conv34
  %call35 = call i32 @gimp_progress_update(double %div)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.else.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.24
  %65 = load i32, i32* %marker, align 4
  %tobool38 = icmp ne i32 %65, 0
  br i1 %tobool38, label %if.then.39, label %if.end.62

if.then.39:                                       ; preds = %if.end.37
  %call40 = call i32 @g_random_int_range(i32 0, i32 2)
  %add41 = add nsw i32 1, %call40
  store i32 %add41, i32* %limit, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %if.then.39
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %limit, align 4
  %cmp43 = icmp slt i32 %66, %67
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.42
  %68 = load i32, i32* %row, align 4
  %69 = load i32, i32* %y2, align 4
  %cmp45 = icmp slt i32 %68, %69
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.42
  %70 = phi i1 [ false, %for.cond.42 ], [ %cmp45, %land.rhs ]
  br i1 %70, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %land.end
  %71 = load i32, i32* %row, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %row, align 4
  %72 = load i32, i32* %row, align 4
  %73 = load i32, i32* %y2, align 4
  %cmp48 = icmp slt i32 %72, %73
  br i1 %cmp48, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %for.body.47
  %74 = load i8*, i8** %buffer, align 8
  %75 = load i32, i32* %x1, align 4
  %76 = load i32, i32* %row, align 4
  %77 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_region, i8* %74, i32 %75, i32 %76, i32 %77)
  %78 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool51 = icmp ne %struct._GimpPreview* %78, null
  br i1 %tobool51, label %if.then.52, label %if.else.58

if.then.52:                                       ; preds = %if.then.50
  %79 = load i8*, i8** %preview_buffer, align 8
  %80 = load i32, i32* %row, align 4
  %81 = load i32, i32* %y1, align 4
  %sub53 = sub nsw i32 %80, %81
  %82 = load i32, i32* %row_stride, align 4
  %mul54 = mul nsw i32 %sub53, %82
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %79, i64 %idx.ext55
  %83 = load i8*, i8** %buffer, align 8
  %84 = load i32, i32* %row_stride, align 4
  %conv57 = sext i32 %84 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr56, i8* %83, i64 %conv57, i32 1, i1 false)
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.50
  %85 = load i8*, i8** %buffer, align 8
  %86 = load i32, i32* %x1, align 4
  %87 = load i32, i32* %row, align 4
  %88 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_region, i8* %85, i32 %86, i32 %87, i32 %88)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %89 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %89, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.42

for.end:                                          ; preds = %land.end
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %if.end.37
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %90 = load i32, i32* %row, align 4
  %inc64 = add nsw i32 %90, 1
  store i32 %inc64, i32* %row, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %91 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %91)
  %92 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool66 = icmp ne %struct._GimpPreview* %92, null
  br i1 %tobool66, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %for.end.65
  %93 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %94 = load i8*, i8** %preview_buffer, align 8
  %95 = load i32, i32* %width, align 4
  %96 = load i32, i32* %bytes, align 4
  %mul68 = mul nsw i32 %95, %96
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %93, i8* %94, i32 %mul68)
  %97 = load i8*, i8** %preview_buffer, align 8
  call void @g_free(i8* %97)
  br label %if.end.75

if.else.69:                                       ; preds = %for.end.65
  %call70 = call i32 @gimp_progress_update(double 1.000000e+00)
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %98)
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id71 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %99, i32 0, i32 0
  %100 = load i32, i32* %drawable_id71, align 4
  %call72 = call i32 @gimp_drawable_merge_shadow(i32 %100, i32 1)
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id73 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %101, i32 0, i32 0
  %102 = load i32, i32* %drawable_id73, align 4
  %103 = load i32, i32* %x1, align 4
  %104 = load i32, i32* %y1, align 4
  %105 = load i32, i32* %width, align 4
  %106 = load i32, i32* %height, align 4
  %call74 = call i32 @gimp_drawable_update(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.8, %if.else.69, %if.then.67
  ret void
}

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @reverse_buffer(i8* %buffer, i32 %length, i32 %bytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %si = alloca i32, align 4
  %temp = alloca i32, align 4
  %midpoint = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %midpoint, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %midpoint, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %length.addr, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %sub, %5
  store i32 %sub1, i32* %si, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %temp, align 4
  %9 = load i32, i32* %si, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load i8*, i8** %buffer.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %idxprom2
  %11 = load i8, i8* %arrayidx3, align 1
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i8*, i8** %buffer.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 %idxprom4
  store i8 %11, i8* %arrayidx5, align 1
  %14 = load i32, i32* %temp, align 4
  %conv6 = trunc i32 %14 to i8
  %15 = load i32, i32* %si, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i8*, i8** %buffer.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1
  %17 = load i32, i32* %i, align 4
  %add = add nsw i32 %17, 1
  %idxprom9 = sext i32 %add to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %idxprom9
  %19 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %19 to i32
  store i32 %conv11, i32* %temp, align 4
  %20 = load i32, i32* %si, align 4
  %add12 = add nsw i32 %20, 1
  %idxprom13 = sext i32 %add12 to i64
  %21 = load i8*, i8** %buffer.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %21, i64 %idxprom13
  %22 = load i8, i8* %arrayidx14, align 1
  %23 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %23, 1
  %idxprom16 = sext i32 %add15 to i64
  %24 = load i8*, i8** %buffer.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 %idxprom16
  store i8 %22, i8* %arrayidx17, align 1
  %25 = load i32, i32* %temp, align 4
  %conv18 = trunc i32 %25 to i8
  %26 = load i32, i32* %si, align 4
  %add19 = add nsw i32 %26, 1
  %idxprom20 = sext i32 %add19 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 %idxprom20
  store i8 %conv18, i8* %arrayidx21, align 1
  %28 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %28, 2
  %idxprom23 = sext i32 %add22 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 %idxprom23
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  store i32 %conv25, i32* %temp, align 4
  %31 = load i32, i32* %si, align 4
  %add26 = add nsw i32 %31, 2
  %idxprom27 = sext i32 %add26 to i64
  %32 = load i8*, i8** %buffer.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 %idxprom27
  %33 = load i8, i8* %arrayidx28, align 1
  %34 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %34, 2
  %idxprom30 = sext i32 %add29 to i64
  %35 = load i8*, i8** %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 %idxprom30
  store i8 %33, i8* %arrayidx31, align 1
  %36 = load i32, i32* %temp, align 4
  %conv32 = trunc i32 %36 to i8
  %37 = load i32, i32* %si, align 4
  %add33 = add nsw i32 %37, 2
  %idxprom34 = sext i32 %add33 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %38, i64 %idxprom34
  store i8 %conv32, i8* %arrayidx35, align 1
  %39 = load i32, i32* %bytes.addr, align 4
  %cmp36 = icmp sgt i32 %39, 3
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %40, 3
  %idxprom39 = sext i32 %add38 to i64
  %41 = load i8*, i8** %buffer.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %41, i64 %idxprom39
  %42 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %42 to i32
  store i32 %conv41, i32* %temp, align 4
  %43 = load i32, i32* %si, align 4
  %add42 = add nsw i32 %43, 3
  %idxprom43 = sext i32 %add42 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %44, i64 %idxprom43
  %45 = load i8, i8* %arrayidx44, align 1
  %46 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %46, 3
  %idxprom46 = sext i32 %add45 to i64
  %47 = load i8*, i8** %buffer.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %47, i64 %idxprom46
  store i8 %45, i8* %arrayidx47, align 1
  %48 = load i32, i32* %temp, align 4
  %conv48 = trunc i32 %48 to i8
  %49 = load i32, i32* %si, align 4
  %add49 = add nsw i32 %49, 3
  %idxprom50 = sext i32 %add49 to i64
  %50 = load i8*, i8** %buffer.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %50, i64 %idxprom50
  store i8 %conv48, i8* %arrayidx51, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load i32, i32* %bytes.addr, align 4
  %52 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %52, %51
  store i32 %add52, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_wind_row(i8* %sb, i32 %bytes, i32 %lpi, i32 %threshold, i32 %strength, i32 %edge) #0 {
entry:
  %sb.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %lpi.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %strength.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bleed_length = alloca i32, align 4
  %blend_amt_R = alloca i32, align 4
  %blend_amt_G = alloca i32, align 4
  %blend_amt_B = alloca i32, align 4
  %blend_amt_A = alloca i32, align 4
  %blend_colour_R = alloca i32, align 4
  %blend_colour_G = alloca i32, align 4
  %blend_colour_B = alloca i32, align 4
  %blend_colour_A = alloca i32, align 4
  %target_colour_R = alloca i32, align 4
  %target_colour_G = alloca i32, align 4
  %target_colour_B = alloca i32, align 4
  %target_colour_A = alloca i32, align 4
  %bleed_variation = alloca i32, align 4
  %n = alloca i32, align 4
  %sbi = alloca i32, align 4
  %lbi = alloca i32, align 4
  %denominator = alloca double, align 8
  %comp_stride = alloca i32, align 4
  %Ri = alloca i32, align 4
  %Gi = alloca i32, align 4
  %Bi = alloca i32, align 4
  %Ai = alloca i32, align 4
  %bleed_length_max = alloca double, align 8
  store i8* %sb, i8** %sb.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %lpi, i32* %lpi.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %strength, i32* %strength.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 0, i32* %blend_amt_A, align 4
  store i32 0, i32* %blend_colour_A, align 4
  store i32 0, i32* %target_colour_A, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %0, 3
  store i32 %mul, i32* %comp_stride, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.246, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %lpi.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.248

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  store i32 %3, i32* %Ri, align 4
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %Gi, align 4
  %5 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %5, 2
  store i32 %add1, i32* %Bi, align 4
  store i32 0, i32* %Ai, align 4
  %6 = load i32, i32* %bytes.addr, align 4
  %cmp2 = icmp sgt i32 %6, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %add3 = add nsw i32 %7, 3
  store i32 %add3, i32* %Ai, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i8*, i8** %sb.addr, align 8
  %9 = load i32, i32* %Ri, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %10 = load i8*, i8** %sb.addr, align 8
  %11 = load i32, i32* %Ri, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = load i32, i32* %comp_stride, align 4
  %idx.ext6 = sext i32 %12 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr5, i64 %idx.ext6
  %13 = load i32, i32* %edge.addr, align 4
  %14 = load i32, i32* %threshold.addr, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %cmp8 = icmp sgt i32 %15, 3
  %conv = zext i1 %cmp8 to i32
  %call = call i32 @threshold_exceeded(i8* %add.ptr, i8* %add.ptr7, i32 %13, i32 %14, i32 %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.9, label %if.end.245

if.then.9:                                        ; preds = %if.end
  %16 = load i32, i32* %Ri, align 4
  %17 = load i32, i32* %comp_stride, align 4
  %add10 = add nsw i32 %16, %17
  store i32 %add10, i32* %sbi, align 4
  %18 = load i32, i32* %Ri, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8*, i8** %sb.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %conv11 = zext i8 %20 to i32
  store i32 %conv11, i32* %blend_colour_R, align 4
  %21 = load i32, i32* %Gi, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load i8*, i8** %sb.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %22, i64 %idxprom12
  %23 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %23 to i32
  store i32 %conv14, i32* %blend_colour_G, align 4
  %24 = load i32, i32* %Bi, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i8*, i8** %sb.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %25, i64 %idxprom15
  %26 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %26 to i32
  store i32 %conv17, i32* %blend_colour_B, align 4
  %27 = load i32, i32* %sbi, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i8*, i8** %sb.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %28, i64 %idxprom18
  %29 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %29 to i32
  store i32 %conv20, i32* %target_colour_R, align 4
  %30 = load i32, i32* %sbi, align 4
  %add21 = add nsw i32 %30, 1
  %idxprom22 = sext i32 %add21 to i64
  %31 = load i8*, i8** %sb.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %32 to i32
  store i32 %conv24, i32* %target_colour_G, align 4
  %33 = load i32, i32* %sbi, align 4
  %add25 = add nsw i32 %33, 2
  %idxprom26 = sext i32 %add25 to i64
  %34 = load i8*, i8** %sb.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 %idxprom26
  %35 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %35 to i32
  store i32 %conv28, i32* %target_colour_B, align 4
  %36 = load i32, i32* %bytes.addr, align 4
  %cmp29 = icmp sgt i32 %36, 3
  br i1 %cmp29, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.then.9
  %37 = load i32, i32* %Ai, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load i8*, i8** %sb.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %38, i64 %idxprom32
  %39 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %39 to i32
  store i32 %conv34, i32* %blend_colour_A, align 4
  %40 = load i32, i32* %sbi, align 4
  %add35 = add nsw i32 %40, 3
  %idxprom36 = sext i32 %add35 to i64
  %41 = load i8*, i8** %sb.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %41, i64 %idxprom36
  %42 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %42 to i32
  store i32 %conv38, i32* %target_colour_A, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.31, %if.then.9
  %call40 = call i32 @g_random_int_range(i32 0, i32 3)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.39
  %43 = load i32, i32* %strength.addr, align 4
  %conv43 = sitofp i32 %43 to double
  store double %conv43, double* %bleed_length_max, align 8
  br label %if.end.46

if.else:                                          ; preds = %if.end.39
  %44 = load i32, i32* %strength.addr, align 4
  %mul44 = mul nsw i32 4, %44
  %conv45 = sitofp i32 %mul44 to double
  store double %conv45, double* %bleed_length_max, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.42
  %45 = load double, double* %bleed_length_max, align 8
  %call47 = call double @g_random_double()
  %mul48 = fmul double %45, %call47
  %conv49 = fptosi double %mul48 to i32
  %add50 = add nsw i32 1, %conv49
  store i32 %add50, i32* %bleed_variation, align 4
  %46 = load i32, i32* %sbi, align 4
  %47 = load i32, i32* %bleed_variation, align 4
  %48 = load i32, i32* %bytes.addr, align 4
  %mul51 = mul nsw i32 %47, %48
  %add52 = add nsw i32 %46, %mul51
  store i32 %add52, i32* %lbi, align 4
  %49 = load i32, i32* %lbi, align 4
  %50 = load i32, i32* %lpi.addr, align 4
  %cmp53 = icmp sgt i32 %49, %50
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.46
  %51 = load i32, i32* %lpi.addr, align 4
  store i32 %51, i32* %lbi, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.46
  %52 = load i32, i32* %bleed_variation, align 4
  store i32 %52, i32* %bleed_length, align 4
  %53 = load i32, i32* %target_colour_R, align 4
  %54 = load i32, i32* %blend_colour_R, align 4
  %sub = sub nsw i32 %53, %54
  store i32 %sub, i32* %blend_amt_R, align 4
  %55 = load i32, i32* %target_colour_G, align 4
  %56 = load i32, i32* %blend_colour_G, align 4
  %sub57 = sub nsw i32 %55, %56
  store i32 %sub57, i32* %blend_amt_G, align 4
  %57 = load i32, i32* %target_colour_B, align 4
  %58 = load i32, i32* %blend_colour_B, align 4
  %sub58 = sub nsw i32 %57, %58
  store i32 %sub58, i32* %blend_amt_B, align 4
  %59 = load i32, i32* %bytes.addr, align 4
  %cmp59 = icmp sgt i32 %59, 3
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.56
  %60 = load i32, i32* %target_colour_A, align 4
  %61 = load i32, i32* %blend_colour_A, align 4
  %sub62 = sub nsw i32 %60, %61
  store i32 %sub62, i32* %blend_amt_A, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.56
  %62 = load i32, i32* %bleed_length, align 4
  %63 = load i32, i32* %bleed_length, align 4
  %mul64 = mul nsw i32 %62, %63
  %64 = load i32, i32* %bleed_length, align 4
  %add65 = add nsw i32 %mul64, %64
  %conv66 = sitofp i32 %add65 to double
  store double %conv66, double* %denominator, align 8
  %65 = load double, double* %denominator, align 8
  %div = fdiv double 2.000000e+00, %65
  store double %div, double* %denominator, align 8
  %66 = load i32, i32* %bleed_length, align 4
  store i32 %66, i32* %n, align 4
  %67 = load i32, i32* %sbi, align 4
  store i32 %67, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc, %if.end.63
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %lbi, align 4
  %cmp68 = icmp slt i32 %68, %69
  br i1 %cmp68, label %for.body.70, label %for.end

for.body.70:                                      ; preds = %for.cond.67
  %70 = load i8*, i8** %sb.addr, align 8
  %71 = load i32, i32* %Ri, align 4
  %idx.ext71 = sext i32 %71 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %70, i64 %idx.ext71
  %72 = load i8*, i8** %sb.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idx.ext73 = sext i32 %73 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %72, i64 %idx.ext73
  %74 = load i32, i32* %edge.addr, align 4
  %75 = load i32, i32* %threshold.addr, align 4
  %76 = load i32, i32* %bytes.addr, align 4
  %cmp75 = icmp sgt i32 %76, 3
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @threshold_exceeded(i8* %add.ptr72, i8* %add.ptr74, i32 %74, i32 %75, i32 %conv76)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.83, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.70
  %call79 = call i32 @g_random_int()
  %and = and i32 %call79, 32768
  %cmp80 = icmp ne i32 %and, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.83:                                        ; preds = %land.lhs.true, %for.body.70
  %77 = load i32, i32* %blend_amt_R, align 4
  %78 = load i32, i32* %n, align 4
  %mul84 = mul nsw i32 %77, %78
  %conv85 = sitofp i32 %mul84 to double
  %79 = load double, double* %denominator, align 8
  %mul86 = fmul double %conv85, %79
  %80 = load i32, i32* %blend_colour_R, align 4
  %conv87 = sitofp i32 %80 to double
  %add88 = fadd double %conv87, %mul86
  %conv89 = fptosi double %add88 to i32
  store i32 %conv89, i32* %blend_colour_R, align 4
  %81 = load i32, i32* %blend_amt_G, align 4
  %82 = load i32, i32* %n, align 4
  %mul90 = mul nsw i32 %81, %82
  %conv91 = sitofp i32 %mul90 to double
  %83 = load double, double* %denominator, align 8
  %mul92 = fmul double %conv91, %83
  %84 = load i32, i32* %blend_colour_G, align 4
  %conv93 = sitofp i32 %84 to double
  %add94 = fadd double %conv93, %mul92
  %conv95 = fptosi double %add94 to i32
  store i32 %conv95, i32* %blend_colour_G, align 4
  %85 = load i32, i32* %blend_amt_B, align 4
  %86 = load i32, i32* %n, align 4
  %mul96 = mul nsw i32 %85, %86
  %conv97 = sitofp i32 %mul96 to double
  %87 = load double, double* %denominator, align 8
  %mul98 = fmul double %conv97, %87
  %88 = load i32, i32* %blend_colour_B, align 4
  %conv99 = sitofp i32 %88 to double
  %add100 = fadd double %conv99, %mul98
  %conv101 = fptosi double %add100 to i32
  store i32 %conv101, i32* %blend_colour_B, align 4
  %89 = load i32, i32* %bytes.addr, align 4
  %cmp102 = icmp sgt i32 %89, 3
  br i1 %cmp102, label %if.then.104, label %if.end.120

if.then.104:                                      ; preds = %if.end.83
  %90 = load i32, i32* %blend_amt_A, align 4
  %91 = load i32, i32* %n, align 4
  %mul105 = mul nsw i32 %90, %91
  %conv106 = sitofp i32 %mul105 to double
  %92 = load double, double* %denominator, align 8
  %mul107 = fmul double %conv106, %92
  %93 = load i32, i32* %blend_colour_A, align 4
  %conv108 = sitofp i32 %93 to double
  %add109 = fadd double %conv108, %mul107
  %conv110 = fptosi double %add109 to i32
  store i32 %conv110, i32* %blend_colour_A, align 4
  %94 = load i32, i32* %blend_colour_A, align 4
  %cmp111 = icmp sgt i32 %94, 255
  br i1 %cmp111, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %if.then.104
  store i32 255, i32* %blend_colour_A, align 4
  br label %if.end.119

if.else.114:                                      ; preds = %if.then.104
  %95 = load i32, i32* %blend_colour_A, align 4
  %cmp115 = icmp slt i32 %95, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.else.114
  store i32 0, i32* %blend_colour_A, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.else.114
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.83
  %96 = load i32, i32* %blend_colour_R, align 4
  %cmp121 = icmp sgt i32 %96, 255
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.end.120
  store i32 255, i32* %blend_colour_R, align 4
  br label %if.end.129

if.else.124:                                      ; preds = %if.end.120
  %97 = load i32, i32* %blend_colour_R, align 4
  %cmp125 = icmp slt i32 %97, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.else.124
  store i32 0, i32* %blend_colour_R, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.else.124
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.123
  %98 = load i32, i32* %blend_colour_G, align 4
  %cmp130 = icmp sgt i32 %98, 255
  br i1 %cmp130, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %if.end.129
  store i32 255, i32* %blend_colour_G, align 4
  br label %if.end.138

if.else.133:                                      ; preds = %if.end.129
  %99 = load i32, i32* %blend_colour_G, align 4
  %cmp134 = icmp slt i32 %99, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.else.133
  store i32 0, i32* %blend_colour_G, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.else.133
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.132
  %100 = load i32, i32* %blend_colour_B, align 4
  %cmp139 = icmp sgt i32 %100, 255
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.end.138
  store i32 255, i32* %blend_colour_B, align 4
  br label %if.end.147

if.else.142:                                      ; preds = %if.end.138
  %101 = load i32, i32* %blend_colour_B, align 4
  %cmp143 = icmp slt i32 %101, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.else.142
  store i32 0, i32* %blend_colour_B, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.else.142
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.141
  %102 = load i32, i32* %blend_colour_R, align 4
  %mul148 = mul nsw i32 %102, 2
  %103 = load i32, i32* %i, align 4
  %add149 = add nsw i32 %103, 0
  %idxprom150 = sext i32 %add149 to i64
  %104 = load i8*, i8** %sb.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %104, i64 %idxprom150
  %105 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %105 to i32
  %add153 = add nsw i32 %mul148, %conv152
  %div154 = sdiv i32 %add153, 3
  %conv155 = trunc i32 %div154 to i8
  %106 = load i32, i32* %i, align 4
  %add156 = add nsw i32 %106, 0
  %idxprom157 = sext i32 %add156 to i64
  %107 = load i8*, i8** %sb.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %107, i64 %idxprom157
  store i8 %conv155, i8* %arrayidx158, align 1
  %108 = load i32, i32* %blend_colour_G, align 4
  %mul159 = mul nsw i32 %108, 2
  %109 = load i32, i32* %i, align 4
  %add160 = add nsw i32 %109, 1
  %idxprom161 = sext i32 %add160 to i64
  %110 = load i8*, i8** %sb.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %110, i64 %idxprom161
  %111 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %111 to i32
  %add164 = add nsw i32 %mul159, %conv163
  %div165 = sdiv i32 %add164, 3
  %conv166 = trunc i32 %div165 to i8
  %112 = load i32, i32* %i, align 4
  %add167 = add nsw i32 %112, 1
  %idxprom168 = sext i32 %add167 to i64
  %113 = load i8*, i8** %sb.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %113, i64 %idxprom168
  store i8 %conv166, i8* %arrayidx169, align 1
  %114 = load i32, i32* %blend_colour_B, align 4
  %mul170 = mul nsw i32 %114, 2
  %115 = load i32, i32* %i, align 4
  %add171 = add nsw i32 %115, 2
  %idxprom172 = sext i32 %add171 to i64
  %116 = load i8*, i8** %sb.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %116, i64 %idxprom172
  %117 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %117 to i32
  %add175 = add nsw i32 %mul170, %conv174
  %div176 = sdiv i32 %add175, 3
  %conv177 = trunc i32 %div176 to i8
  %118 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %118, 2
  %idxprom179 = sext i32 %add178 to i64
  %119 = load i8*, i8** %sb.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %119, i64 %idxprom179
  store i8 %conv177, i8* %arrayidx180, align 1
  %120 = load i32, i32* %bytes.addr, align 4
  %cmp181 = icmp sgt i32 %120, 3
  br i1 %cmp181, label %if.then.183, label %if.end.195

if.then.183:                                      ; preds = %if.end.147
  %121 = load i32, i32* %blend_colour_A, align 4
  %mul184 = mul nsw i32 %121, 2
  %122 = load i32, i32* %i, align 4
  %add185 = add nsw i32 %122, 3
  %idxprom186 = sext i32 %add185 to i64
  %123 = load i8*, i8** %sb.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %123, i64 %idxprom186
  %124 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %124 to i32
  %add189 = add nsw i32 %mul184, %conv188
  %div190 = sdiv i32 %add189, 3
  %conv191 = trunc i32 %div190 to i8
  %125 = load i32, i32* %i, align 4
  %add192 = add nsw i32 %125, 3
  %idxprom193 = sext i32 %add192 to i64
  %126 = load i8*, i8** %sb.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %126, i64 %idxprom193
  store i8 %conv191, i8* %arrayidx194, align 1
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.183, %if.end.147
  %127 = load i8*, i8** %sb.addr, align 8
  %128 = load i32, i32* %i, align 4
  %idx.ext196 = sext i32 %128 to i64
  %add.ptr197 = getelementptr inbounds i8, i8* %127, i64 %idx.ext196
  %129 = load i8*, i8** %sb.addr, align 8
  %130 = load i32, i32* %i, align 4
  %idx.ext198 = sext i32 %130 to i64
  %add.ptr199 = getelementptr inbounds i8, i8* %129, i64 %idx.ext198
  %131 = load i32, i32* %comp_stride, align 4
  %idx.ext200 = sext i32 %131 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %add.ptr199, i64 %idx.ext200
  %132 = load i32, i32* %threshold.addr, align 4
  %133 = load i32, i32* %bytes.addr, align 4
  %cmp202 = icmp sgt i32 %133, 3
  %conv203 = zext i1 %cmp202 to i32
  %call204 = call i32 @threshold_exceeded(i8* %add.ptr197, i8* %add.ptr201, i32 0, i32 %132, i32 %conv203)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.243

if.then.206:                                      ; preds = %if.end.195
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %comp_stride, align 4
  %add207 = add nsw i32 %134, %135
  %add208 = add nsw i32 %add207, 0
  %idxprom209 = sext i32 %add208 to i64
  %136 = load i8*, i8** %sb.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %136, i64 %idxprom209
  %137 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %137 to i32
  store i32 %conv211, i32* %target_colour_R, align 4
  %138 = load i32, i32* %i, align 4
  %139 = load i32, i32* %comp_stride, align 4
  %add212 = add nsw i32 %138, %139
  %add213 = add nsw i32 %add212, 1
  %idxprom214 = sext i32 %add213 to i64
  %140 = load i8*, i8** %sb.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %140, i64 %idxprom214
  %141 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %141 to i32
  store i32 %conv216, i32* %target_colour_G, align 4
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %comp_stride, align 4
  %add217 = add nsw i32 %142, %143
  %add218 = add nsw i32 %add217, 2
  %idxprom219 = sext i32 %add218 to i64
  %144 = load i8*, i8** %sb.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %144, i64 %idxprom219
  %145 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %145 to i32
  store i32 %conv221, i32* %target_colour_B, align 4
  %146 = load i32, i32* %bytes.addr, align 4
  %cmp222 = icmp sgt i32 %146, 3
  br i1 %cmp222, label %if.then.224, label %if.end.230

if.then.224:                                      ; preds = %if.then.206
  %147 = load i32, i32* %i, align 4
  %148 = load i32, i32* %comp_stride, align 4
  %add225 = add nsw i32 %147, %148
  %add226 = add nsw i32 %add225, 3
  %idxprom227 = sext i32 %add226 to i64
  %149 = load i8*, i8** %sb.addr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %149, i64 %idxprom227
  %150 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %150 to i32
  store i32 %conv229, i32* %target_colour_A, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.224, %if.then.206
  %151 = load i32, i32* %target_colour_R, align 4
  %152 = load i32, i32* %blend_colour_R, align 4
  %sub231 = sub nsw i32 %151, %152
  store i32 %sub231, i32* %blend_amt_R, align 4
  %153 = load i32, i32* %target_colour_G, align 4
  %154 = load i32, i32* %blend_colour_G, align 4
  %sub232 = sub nsw i32 %153, %154
  store i32 %sub232, i32* %blend_amt_G, align 4
  %155 = load i32, i32* %target_colour_B, align 4
  %156 = load i32, i32* %blend_colour_B, align 4
  %sub233 = sub nsw i32 %155, %156
  store i32 %sub233, i32* %blend_amt_B, align 4
  %157 = load i32, i32* %bytes.addr, align 4
  %cmp234 = icmp sgt i32 %157, 3
  br i1 %cmp234, label %if.then.236, label %if.end.238

if.then.236:                                      ; preds = %if.end.230
  %158 = load i32, i32* %target_colour_A, align 4
  %159 = load i32, i32* %blend_colour_A, align 4
  %sub237 = sub nsw i32 %158, %159
  store i32 %sub237, i32* %blend_amt_A, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.236, %if.end.230
  %160 = load i32, i32* %n, align 4
  %161 = load i32, i32* %n, align 4
  %mul239 = mul nsw i32 %160, %161
  %162 = load i32, i32* %n, align 4
  %add240 = add nsw i32 %mul239, %162
  %conv241 = sitofp i32 %add240 to double
  store double %conv241, double* %denominator, align 8
  %163 = load double, double* %denominator, align 8
  %div242 = fdiv double 2.000000e+00, %163
  store double %div242, double* %denominator, align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.238, %if.end.195
  %164 = load i32, i32* %n, align 4
  %dec = add nsw i32 %164, -1
  store i32 %dec, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.243
  %165 = load i32, i32* %bytes.addr, align 4
  %166 = load i32, i32* %i, align 4
  %add244 = add nsw i32 %166, %165
  store i32 %add244, i32* %i, align 4
  br label %for.cond.67

for.end:                                          ; preds = %if.then.82, %for.cond.67
  br label %if.end.245

if.end.245:                                       ; preds = %for.end, %if.end
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245
  %167 = load i32, i32* %bytes.addr, align 4
  %168 = load i32, i32* %j, align 4
  %add247 = add nsw i32 %168, %167
  store i32 %add247, i32* %j, align 4
  br label %for.cond

for.end.248:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @g_free(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @threshold_exceeded(i8* %pixel_R1, i8* %pixel_R2, i32 %edge, i32 %threshold, i32 %has_alpha) #0 {
entry:
  %pixel_R1.addr = alloca i8*, align 8
  %pixel_R2.addr = alloca i8*, align 8
  %edge.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %derivative_R = alloca i32, align 4
  %derivative_G = alloca i32, align 4
  %derivative_B = alloca i32, align 4
  %derivative_A = alloca i32, align 4
  store i8* %pixel_R1, i8** %pixel_R1.addr, align 8
  store i8* %pixel_R2, i8** %pixel_R2.addr, align 8
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load i8*, i8** %pixel_R1.addr, align 8
  %1 = load i8*, i8** %pixel_R2.addr, align 8
  %2 = load i32, i32* %edge.addr, align 4
  %3 = load i32, i32* %has_alpha.addr, align 4
  call void @get_derivative(i8* %0, i8* %1, i32 %2, i32 %3, i32* %derivative_R, i32* %derivative_G, i32* %derivative_B, i32* %derivative_A)
  %4 = load i32, i32* %derivative_R, align 4
  %5 = load i32, i32* %derivative_G, align 4
  %add = add nsw i32 %4, %5
  %6 = load i32, i32* %derivative_B, align 4
  %add1 = add nsw i32 %add, %6
  %7 = load i32, i32* %derivative_A, align 4
  %add2 = add nsw i32 %add1, %7
  %div = sdiv i32 %add2, 4
  %8 = load i32, i32* %threshold.addr, align 4
  %cmp = icmp sgt i32 %div, %8
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @g_random_int_range(i32, i32) #1

declare double @g_random_double() #1

declare i32 @g_random_int() #1

; Function Attrs: nounwind uwtable
define internal void @get_derivative(i8* %pixel_R1, i8* %pixel_R2, i32 %edge, i32 %has_alpha, i32* %derivative_R, i32* %derivative_G, i32* %derivative_B, i32* %derivative_A) #0 {
entry:
  %pixel_R1.addr = alloca i8*, align 8
  %pixel_R2.addr = alloca i8*, align 8
  %edge.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %derivative_R.addr = alloca i32*, align 8
  %derivative_G.addr = alloca i32*, align 8
  %derivative_B.addr = alloca i32*, align 8
  %derivative_A.addr = alloca i32*, align 8
  %pixel_G1 = alloca i8*, align 8
  %pixel_B1 = alloca i8*, align 8
  %pixel_G2 = alloca i8*, align 8
  %pixel_B2 = alloca i8*, align 8
  %pixel_A1 = alloca i8*, align 8
  %pixel_A2 = alloca i8*, align 8
  store i8* %pixel_R1, i8** %pixel_R1.addr, align 8
  store i8* %pixel_R2, i8** %pixel_R2.addr, align 8
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32* %derivative_R, i32** %derivative_R.addr, align 8
  store i32* %derivative_G, i32** %derivative_G.addr, align 8
  store i32* %derivative_B, i32** %derivative_B.addr, align 8
  store i32* %derivative_A, i32** %derivative_A.addr, align 8
  %0 = load i8*, i8** %pixel_R1.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %pixel_G1, align 8
  %1 = load i8*, i8** %pixel_R1.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %1, i64 2
  store i8* %add.ptr1, i8** %pixel_B1, align 8
  %2 = load i8*, i8** %pixel_R2.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %add.ptr2, i8** %pixel_G2, align 8
  %3 = load i8*, i8** %pixel_R2.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %3, i64 2
  store i8* %add.ptr3, i8** %pixel_B2, align 8
  %4 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %pixel_R1.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %5, i64 3
  store i8* %add.ptr4, i8** %pixel_A1, align 8
  %6 = load i8*, i8** %pixel_R2.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %6, i64 3
  store i8* %add.ptr5, i8** %pixel_A2, align 8
  %7 = load i8*, i8** %pixel_A2, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %9 = load i8*, i8** %pixel_A1, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %sub = sub nsw i32 %conv, %conv6
  %11 = load i32*, i32** %derivative_A.addr, align 8
  store i32 %sub, i32* %11, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i32*, i32** %derivative_A.addr, align 8
  store i32 0, i32* %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %pixel_R2.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = zext i8 %14 to i32
  %15 = load i8*, i8** %pixel_R1.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv8 = zext i8 %16 to i32
  %sub9 = sub nsw i32 %conv7, %conv8
  %17 = load i32*, i32** %derivative_R.addr, align 8
  store i32 %sub9, i32* %17, align 4
  %18 = load i8*, i8** %pixel_G2, align 8
  %19 = load i8, i8* %18, align 1
  %conv10 = zext i8 %19 to i32
  %20 = load i8*, i8** %pixel_G1, align 8
  %21 = load i8, i8* %20, align 1
  %conv11 = zext i8 %21 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  %22 = load i32*, i32** %derivative_G.addr, align 8
  store i32 %sub12, i32* %22, align 4
  %23 = load i8*, i8** %pixel_B2, align 8
  %24 = load i8, i8* %23, align 1
  %conv13 = zext i8 %24 to i32
  %25 = load i8*, i8** %pixel_B1, align 8
  %26 = load i8, i8* %25, align 1
  %conv14 = zext i8 %26 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  %27 = load i32*, i32** %derivative_B.addr, align 8
  store i32 %sub15, i32* %27, align 4
  %28 = load i32, i32* %edge.addr, align 4
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.end
  %29 = load i32*, i32** %derivative_R.addr, align 8
  %30 = load i32, i32* %29, align 4
  %call = call i32 @abs(i32 %30) #5
  %31 = load i32*, i32** %derivative_R.addr, align 8
  store i32 %call, i32* %31, align 4
  %32 = load i32*, i32** %derivative_G.addr, align 8
  %33 = load i32, i32* %32, align 4
  %call18 = call i32 @abs(i32 %33) #5
  %34 = load i32*, i32** %derivative_G.addr, align 8
  store i32 %call18, i32* %34, align 4
  %35 = load i32*, i32** %derivative_B.addr, align 8
  %36 = load i32, i32* %35, align 4
  %call19 = call i32 @abs(i32 %36) #5
  %37 = load i32*, i32** %derivative_B.addr, align 8
  store i32 %call19, i32* %37, align 4
  %38 = load i32*, i32** %derivative_A.addr, align 8
  %39 = load i32, i32* %38, align 4
  %call20 = call i32 @abs(i32 %39) #5
  %40 = load i32*, i32** %derivative_A.addr, align 8
  store i32 %call20, i32* %40, align 4
  br label %if.end.35

if.else.21:                                       ; preds = %if.end
  %41 = load i32, i32* %edge.addr, align 4
  %cmp22 = icmp eq i32 %41, 1
  br i1 %cmp22, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.else.21
  %42 = load i32*, i32** %derivative_R.addr, align 8
  %43 = load i32, i32* %42, align 4
  %sub25 = sub nsw i32 0, %43
  %44 = load i32*, i32** %derivative_R.addr, align 8
  store i32 %sub25, i32* %44, align 4
  %45 = load i32*, i32** %derivative_G.addr, align 8
  %46 = load i32, i32* %45, align 4
  %sub26 = sub nsw i32 0, %46
  %47 = load i32*, i32** %derivative_G.addr, align 8
  store i32 %sub26, i32* %47, align 4
  %48 = load i32*, i32** %derivative_B.addr, align 8
  %49 = load i32, i32* %48, align 4
  %sub27 = sub nsw i32 0, %49
  %50 = load i32*, i32** %derivative_B.addr, align 8
  store i32 %sub27, i32* %50, align 4
  %51 = load i32*, i32** %derivative_A.addr, align 8
  %52 = load i32, i32* %51, align 4
  %sub28 = sub nsw i32 0, %52
  %53 = load i32*, i32** %derivative_A.addr, align 8
  store i32 %sub28, i32* %53, align 4
  br label %if.end.34

if.else.29:                                       ; preds = %if.else.21
  %54 = load i32, i32* %edge.addr, align 4
  %cmp30 = icmp eq i32 %54, 2
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.17
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @render_blast_row(i8* %buffer, i32 %bytes, i32 %lpi, i32 %threshold, i32 %strength, i32 %edge) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %lpi.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %strength.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %Ri = alloca i32, align 4
  %Gi = alloca i32, align 4
  %Bi = alloca i32, align 4
  %Ai = alloca i32, align 4
  %sbi = alloca i32, align 4
  %lbi = alloca i32, align 4
  %bleed_length = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %weight = alloca i32, align 4
  %random_factor = alloca i32, align 4
  %skip = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %lpi, i32* %lpi.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %strength, i32* %strength.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 0, i32* %Ai, align 4
  store i32 0, i32* %skip, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %lpi.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  store i32 %2, i32* %Ri, align 4
  %3 = load i32, i32* %j, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %Gi, align 4
  %4 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %4, 2
  store i32 %add1, i32* %Bi, align 4
  %5 = load i32, i32* %bytes.addr, align 4
  %cmp2 = icmp sgt i32 %5, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %add3 = add nsw i32 %6, 3
  store i32 %add3, i32* %Ai, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i8*, i8** %buffer.addr, align 8
  %8 = load i32, i32* %Ri, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = load i8*, i8** %buffer.addr, align 8
  %10 = load i32, i32* %Ri, align 4
  %idx.ext4 = sext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.ext4
  %11 = load i32, i32* %bytes.addr, align 4
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr5, i64 %idx.ext6
  %12 = load i32, i32* %edge.addr, align 4
  %13 = load i32, i32* %threshold.addr, align 4
  %14 = load i32, i32* %bytes.addr, align 4
  %cmp8 = icmp sgt i32 %14, 3
  %conv = zext i1 %cmp8 to i32
  %call = call i32 @threshold_exceeded(i8* %add.ptr, i8* %add.ptr7, i32 %12, i32 %13, i32 %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.9, label %if.end.64

if.then.9:                                        ; preds = %if.end
  %15 = load i32, i32* %Ri, align 4
  store i32 %15, i32* %sbi, align 4
  %call10 = call i32 @g_random_int_range(i32 0, i32 10)
  store i32 %call10, i32* %weight, align 4
  %16 = load i32, i32* %weight, align 4
  %cmp11 = icmp sgt i32 %16, 5
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  store i32 2, i32* %random_factor, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.then.9
  %17 = load i32, i32* %weight, align 4
  %cmp14 = icmp sgt i32 %17, 3
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  store i32 3, i32* %random_factor, align 4
  br label %if.end.18

if.else.17:                                       ; preds = %if.else
  store i32 4, i32* %random_factor, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.13
  store i32 0, i32* %bleed_length, align 4
  %18 = load i32, i32* %random_factor, align 4
  %call20 = call i32 @g_random_int_range(i32 0, i32 %18)
  switch i32 %call20, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.22
    i32 1, label %sw.bb.24
    i32 0, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.19
  %19 = load i32, i32* %strength.addr, align 4
  %20 = load i32, i32* %bleed_length, align 4
  %add21 = add nsw i32 %20, %19
  store i32 %add21, i32* %bleed_length, align 4
  br label %sw.bb.22

sw.bb.22:                                         ; preds = %if.end.19, %sw.bb
  %21 = load i32, i32* %strength.addr, align 4
  %22 = load i32, i32* %bleed_length, align 4
  %add23 = add nsw i32 %22, %21
  store i32 %add23, i32* %bleed_length, align 4
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %if.end.19, %sw.bb.22
  %23 = load i32, i32* %strength.addr, align 4
  %24 = load i32, i32* %bleed_length, align 4
  %add25 = add nsw i32 %24, %23
  store i32 %add25, i32* %bleed_length, align 4
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %if.end.19, %sw.bb.24
  %25 = load i32, i32* %strength.addr, align 4
  %26 = load i32, i32* %bleed_length, align 4
  %add27 = add nsw i32 %26, %25
  store i32 %add27, i32* %bleed_length, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.26, %if.end.19
  %27 = load i32, i32* %sbi, align 4
  %28 = load i32, i32* %bytes.addr, align 4
  %29 = load i32, i32* %bleed_length, align 4
  %mul = mul nsw i32 %28, %29
  %add28 = add nsw i32 %27, %mul
  store i32 %add28, i32* %lbi, align 4
  %30 = load i32, i32* %lbi, align 4
  %31 = load i32, i32* %lpi.addr, align 4
  %cmp29 = icmp sgt i32 %30, %31
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.epilog
  %32 = load i32, i32* %lpi.addr, align 4
  store i32 %32, i32* %lbi, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %sw.epilog
  %33 = load i32, i32* %sbi, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end.32
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %lbi, align 4
  %cmp34 = icmp slt i32 %34, %35
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %36 = load i32, i32* %Ri, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8, i8* %arrayidx, align 1
  %39 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %40, i64 %idxprom37
  store i8 %38, i8* %arrayidx38, align 1
  %41 = load i32, i32* %Gi, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load i8*, i8** %buffer.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %42, i64 %idxprom39
  %43 = load i8, i8* %arrayidx40, align 1
  %44 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %44, 1
  %idxprom42 = sext i32 %add41 to i64
  %45 = load i8*, i8** %buffer.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %45, i64 %idxprom42
  store i8 %43, i8* %arrayidx43, align 1
  %46 = load i32, i32* %Bi, align 4
  %idxprom44 = sext i32 %46 to i64
  %47 = load i8*, i8** %buffer.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %47, i64 %idxprom44
  %48 = load i8, i8* %arrayidx45, align 1
  %49 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %49, 2
  %idxprom47 = sext i32 %add46 to i64
  %50 = load i8*, i8** %buffer.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %50, i64 %idxprom47
  store i8 %48, i8* %arrayidx48, align 1
  %51 = load i32, i32* %bytes.addr, align 4
  %cmp49 = icmp sgt i32 %51, 3
  br i1 %cmp49, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %for.body.36
  %52 = load i32, i32* %Ai, align 4
  %idxprom52 = sext i32 %52 to i64
  %53 = load i8*, i8** %buffer.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %53, i64 %idxprom52
  %54 = load i8, i8* %arrayidx53, align 1
  %55 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %55, 3
  %idxprom55 = sext i32 %add54 to i64
  %56 = load i8*, i8** %buffer.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %56, i64 %idxprom55
  store i8 %54, i8* %arrayidx56, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %for.body.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %57 = load i32, i32* %bytes.addr, align 4
  %58 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %58, %57
  store i32 %add58, i32* %i, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %59 = load i32, i32* %lbi, align 4
  %60 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %59, %60
  store i32 %sub, i32* %j, align 4
  %call59 = call i32 @g_random_int_range(i32 0, i32 10)
  %cmp60 = icmp sgt i32 %call59, 7
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.end
  store i32 1, i32* %skip, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %for.end
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %61 = load i32, i32* %bytes.addr, align 4
  %62 = load i32, i32* %j, align 4
  %add66 = add nsw i32 %62, %61
  store i32 %add66, i32* %j, align 4
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  %63 = load i32, i32* %skip, align 4
  ret i32 %63
}

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
