; ModuleID = './plug-ins/common/jigsaw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.config_tag = type { i32, i32, i32, i32, double }
%struct.globals_tag = type { [4 x i32*], [4 x i32*], [4 x i32*], [4 x i32*], [4 x i32], i32*, i32*, [4 x i32**], [4 x i32**], [4 x i32**], [4 x i32**], [4 x i32**], [4 x i32**], [4 x i32**], [4 x i32**] }
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
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Number of tiles across > 0\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Number of tiles down > 0\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"The style/shape of the jigsaw puzzle { 0, 1 }\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"blend-lines\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Number of lines for shading bevels >= 0\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"blend-amount\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"The power of the light highlights 0 =< 5\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"plug-in-jigsaw\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Add a jigsaw-puzzle pattern to the image\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Jigsaw puzzle look\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Nigel Wetten\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"_Jigsaw...\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@config = internal global %struct.config_tag { i32 5, i32 5, i32 0, i32 3, double 5.000000e-01 }, align 8
@.str.26 = private unnamed_addr constant [18 x i8] c"Assembling jigsaw\00", align 1
@globals = internal global %struct.globals_tag zeroinitializer, align 8
@__func__.draw_jigsaw = private unnamed_addr constant [12 x i8] c"draw_jigsaw\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"buffer != NULL\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"draw_jigsaw: bad style\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"jigsaw\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Jigsaw\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"gimp-jigsaw\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Number of Tiles\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"_Horizontal:\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Number of pieces going across\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"_Vertical:\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Number of pieces going down\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Bevel Edges\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"_Bevel width:\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Degree of slope of each piece's edge\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"H_ighlight:\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"The amount of highlighting on the edges of each piece\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Jigsaw Style\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"_Square\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"C_urved\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"Each piece has straight sides\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"Each piece has curved sides\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #6
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
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %call7 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %5, %call7
  %add = add i32 %div, 1
  %conv = zext i32 %add to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %6 = load i32, i32* %run_mode, align 4
  switch i32 %6, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.23
    i32 2, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %do.end
  %7 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
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
  %d_float = bitcast %union._GimpParamData* %data22 to double*
  %17 = load double, double* %d_float, align 8
  store double %17, double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @jigsaw(%struct._GimpDrawable* %18, %struct._GimpPreview* null)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.23:                                         ; preds = %do.end
  %call24 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.config_tag* @config to i8*))
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call25 = call i32 @jigsaw_dialog(%struct._GimpDrawable* %19)
  %tobool = icmp ne i32 %call25, 0
  br i1 %tobool, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %sw.bb.23
  store i32 4, i32* %status, align 4
  br label %sw.epilog

if.end.27:                                        ; preds = %sw.bb.23
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #6
  %call29 = call i32 @gimp_progress_init(i8* %call28)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @jigsaw(%struct._GimpDrawable* %20, %struct._GimpPreview* null)
  %call30 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.config_tag* @config to i8*), i32 24)
  %call31 = call i32 @gimp_displays_flush()
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end
  %call33 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.config_tag* @config to i8*))
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @jigsaw(%struct._GimpDrawable* %21, %struct._GimpPreview* null)
  %call34 = call i32 @gimp_displays_flush()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.32, %do.end, %if.end.27, %if.then.26, %if.end
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

; Function Attrs: nounwind uwtable
define internal void @jigsaw(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_pr = alloca %struct._GimpPixelRgn, align 8
  %dest_pr = alloca %struct._GimpPixelRgn, align 8
  %buffer = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %buffer_size = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %1, i32* %width, i32* %height)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 3
  %3 = load i32, i32* %bpp, align 4
  store i32 %3, i32* %bytes, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call = call i8* @gimp_drawable_get_thumbnail_data(i32 %5, i32* %width, i32* %height, i32* %bytes)
  store i8* %call, i8** %buffer, align 8
  %6 = load i32, i32* %bytes, align 4
  %7 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %height, align 4
  %mul1 = mul nsw i32 %mul, %8
  store i32 %mul1, i32* %buffer_size, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width2, align 4
  store i32 %10, i32* %width, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height3, align 4
  store i32 %12, i32* %height, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 3
  %14 = load i32, i32* %bpp4, align 4
  store i32 %14, i32* %bytes, align 4
  %15 = load i32, i32* %bytes, align 4
  %16 = load i32, i32* %width, align 4
  %mul5 = mul nsw i32 %15, %16
  %17 = load i32, i32* %height, align 4
  %mul6 = mul nsw i32 %mul5, %17
  store i32 %mul6, i32* %buffer_size, align 4
  %18 = load i32, i32* %buffer_size, align 4
  %conv = sext i32 %18 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call7, i8** %buffer, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_pr, %struct._GimpDrawable* %19, i32 0, i32 0, i32 %20, i32 %21, i32 0, i32 0)
  %22 = load i8*, i8** %buffer, align 8
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_pr, i8* %22, i32 0, i32 0, i32 %23, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  call void @check_config(i32 %25, i32 %26)
  %27 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %27, %28
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %div = sdiv i32 %29, %30
  %mul9 = mul nsw i32 %div, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %31 = load i32, i32* %height, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %div10 = sdiv i32 %31, %32
  %mul11 = mul nsw i32 %div10, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul9, %cond.true ], [ %mul11, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  store i32 %cond, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  store i32 %cond, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  store i32 %cond, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  call void @malloc_cache()
  %33 = load i8*, i8** %buffer, align 8
  %34 = load i32, i32* %buffer_size, align 4
  %35 = load i32, i32* %width, align 4
  %36 = load i32, i32* %height, align 4
  %37 = load i32, i32* %bytes, align 4
  %38 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp12 = icmp ne %struct._GimpPreview* %38, null
  %conv13 = zext i1 %cmp12 to i32
  call void @draw_jigsaw(i8* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %conv13)
  call void @free_cache()
  %39 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool14 = icmp ne %struct._GimpPreview* %39, null
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %cond.end
  %40 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %41 = load i8*, i8** %buffer, align 8
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %bytes, align 4
  %mul16 = mul nsw i32 %42, %43
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %40, i8* %41, i32 %mul16)
  br label %if.end.22

if.else.17:                                       ; preds = %cond.end
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_pr, %struct._GimpDrawable* %44, i32 0, i32 0, i32 %45, i32 %46, i32 1, i32 1)
  %47 = load i8*, i8** %buffer, align 8
  %48 = load i32, i32* %width, align 4
  %49 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dest_pr, i8* %47, i32 0, i32 0, i32 %48, i32 %49)
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %50)
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 0
  %52 = load i32, i32* %drawable_id18, align 4
  %call19 = call i32 @gimp_drawable_merge_shadow(i32 %52, i32 1)
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 0
  %54 = load i32, i32* %drawable_id20, align 4
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %height, align 4
  %call21 = call i32 @gimp_drawable_update(i32 %54, i32 0, i32 0, i32 %55, i32 %56)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.17, %if.then.15
  %57 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %57)
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @jigsaw_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %rbutton1 = alloca %struct._GtkWidget*, align 8
  %rbutton2 = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_aspect_preview_new(%struct._GimpDrawable* %16, i32* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @jigsaw to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0)) #6
  %call19 = call %struct._GtkWidget* @gimp_frame_new(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %call22 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %table, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call25)
  %35 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %35, i32 6)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_container_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkContainer*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %38, %struct._GtkWidget* %39)
  %call29 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call29, %struct._GtkSizeGroup** %group, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #6
  %43 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %conv = sitofp i32 %43 to double
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0)) #6
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %42, i32 0, i32 0, i8* %call32, i32 200, i32 0, double %conv, double 1.000000e+00, double 2.000000e+01, double 1.000000e+00, double 4.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call33, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %adj, align 8
  %44 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %45 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %46 = bitcast %struct._GtkObject* %45 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %call36 = call i8* @g_object_get_data(%struct._GObject* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %48 = bitcast i8* %call36 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %44, %struct._GtkWidget* %48)
  %49 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %50 = bitcast %struct._GtkSizeGroup* %49 to i8*
  call void @g_object_unref(i8* %50)
  %51 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.config_tag* @config to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call39)
  %59 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #6
  %60 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %conv42 = sitofp i32 %60 to double
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0)) #6
  %call44 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %59, i32 0, i32 1, i8* %call41, i32 200, i32 0, double %conv42, double 1.000000e+00, double 2.000000e+01, double 1.000000e+00, double 4.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call43, i8* null)
  store %struct._GtkObject* %call44, %struct._GtkObject** %adj, align 8
  %61 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %63 = bitcast %struct._GtkObject* %62 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 80)
  %64 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %call46 = call i8* @g_object_get_data(%struct._GObject* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %65 = bitcast i8* %call46 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %61, %struct._GtkWidget* %65)
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %69 = bitcast %struct._GtkObject* %68 to i8*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 2)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0)) #6
  %call50 = call %struct._GtkWidget* @gimp_frame_new(i8* %call49)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %frame, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call51)
  %76 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %76, %struct._GtkWidget* %77, i32 0, i32 0, i32 0)
  %call53 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %table, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call54)
  %80 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %80, i32 6)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call56)
  %83 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %83, i32 6)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_container_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call58)
  %86 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkContainer*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %86, %struct._GtkWidget* %87)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call60)
  %90 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0)) #6
  %91 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  %conv63 = sitofp i32 %91 to double
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i32 0, i32 0)) #6
  %call65 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %90, i32 0, i32 0, i8* %call62, i32 200, i32 4, double %conv63, double 0.000000e+00, double 1.000000e+01, double 1.000000e+00, double 2.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call64, i8* null)
  store %struct._GtkObject* %call65, %struct._GtkObject** %adj, align 8
  %92 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %93 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %94 = bitcast %struct._GtkObject* %93 to %struct._GTypeInstance*
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 80)
  %95 = bitcast %struct._GTypeInstance* %call66 to %struct._GObject*
  %call67 = call i8* @g_object_get_data(%struct._GObject* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %96 = bitcast i8* %call67 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %92, %struct._GtkWidget* %96)
  %97 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %98 = bitcast %struct._GtkObject* %97 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %100 = bitcast %struct._GtkObject* %99 to i8*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %102 = bitcast %struct._GtkWidget* %101 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 2)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call70)
  %105 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)) #6
  %106 = load double, double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 8
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i32 0, i32 0)) #6
  %call74 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %105, i32 0, i32 1, i8* %call72, i32 200, i32 4, double %106, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call73, i8* null)
  store %struct._GtkObject* %call74, %struct._GtkObject** %adj, align 8
  %107 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %108 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %109 = bitcast %struct._GtkObject* %108 to %struct._GTypeInstance*
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 80)
  %110 = bitcast %struct._GTypeInstance* %call75 to %struct._GObject*
  %call76 = call i8* @g_object_get_data(%struct._GObject* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %111 = bitcast i8* %call76 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %107, %struct._GtkWidget* %111)
  %112 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %113 = bitcast %struct._GtkObject* %112 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %114 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %115 = bitcast %struct._GtkObject* %114 to i8*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %117 = bitcast %struct._GtkWidget* %116 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %117, void (i8*, %struct._GClosure*)* null, i32 2)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0)) #6
  %120 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2), align 4
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #6
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0)) #6
  %call82 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call79, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2) to i8*), i32 %120, i8* %call80, i32 0, %struct._GtkWidget** %rbutton1, i8* %call81, i32 1, %struct._GtkWidget** %rbutton2, i8* null)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %frame, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %rbutton1, align 8
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %121, i8* %call83, i8* null)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %rbutton2, align 8
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %122, i8* %call84, i8* null)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %rbutton1, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %126, void (i8*, %struct._GClosure*)* null, i32 2)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %rbutton2, align 8
  %128 = bitcast %struct._GtkWidget* %127 to i8*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %130 = bitcast %struct._GtkWidget* %129 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %130, void (i8*, %struct._GClosure*)* null, i32 2)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call87)
  %133 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %133, %struct._GtkWidget* %134, i32 0, i32 0, i32 0)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_dialog_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call89)
  %139 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpDialog*
  %call91 = call i32 @gimp_dialog_run(%struct._GimpDialog* %139)
  %cmp = icmp eq i32 %call91, -5
  %conv92 = zext i1 %cmp to i32
  store i32 %conv92, i32* %run, align 4
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %140)
  %141 = load i32, i32* %run, align 4
  ret i32 %141
}

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i8* @gimp_drawable_get_thumbnail_data(i32, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @check_config(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_width_limit = alloca i32, align 4
  %tile_height_limit = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load double, double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 8
  %cmp4 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store double 0.000000e+00, double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %3 = load double, double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 8
  %cmp7 = fcmp ogt double %3, 5.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store double 5.000000e+00, double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  %div = sdiv i32 %4, %5
  store i32 %div, i32* %tile_width, align 4
  %6 = load i32, i32* %height.addr, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  %div10 = sdiv i32 %6, %7
  store i32 %div10, i32* %tile_height, align 4
  %8 = load i32, i32* %tile_width, align 4
  %conv = sitofp i32 %8 to double
  %mul = fmul double 4.000000e-01, %conv
  %conv11 = fptosi double %mul to i32
  store i32 %conv11, i32* %tile_width_limit, align 4
  %9 = load i32, i32* %tile_height, align 4
  %conv12 = sitofp i32 %9 to double
  %mul13 = fmul double 4.000000e-01, %conv12
  %conv14 = fptosi double %mul13 to i32
  store i32 %conv14, i32* %tile_height_limit, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  %11 = load i32, i32* %tile_width_limit, align 4
  %cmp15 = icmp sgt i32 %10, %11
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %12 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  %13 = load i32, i32* %tile_height_limit, align 4
  %cmp17 = icmp sgt i32 %12, %13
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.9
  %14 = load i32, i32* %tile_width_limit, align 4
  %15 = load i32, i32* %tile_height_limit, align 4
  %cmp20 = icmp slt i32 %14, %15
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %16 = load i32, i32* %tile_width_limit, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %17 = load i32, i32* %tile_height_limit, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @malloc_cache() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %blend_lines = alloca i32, align 4
  %steps = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  store i32 %0, i32* %blend_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.99, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %steps, align 4
  %4 = load i32, i32* %steps, align 4
  %conv = sext i32 %4 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %5 = bitcast i8* %call to i32*
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0), i32 0, i64 %idxprom1
  store i32* %5, i32** %arrayidx2, align 8
  %7 = load i32, i32* %steps, align 4
  %conv3 = sext i32 %7 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 4)
  %8 = bitcast i8* %call4 to i32*
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1), i32 0, i64 %idxprom5
  store i32* %8, i32** %arrayidx6, align 8
  %10 = load i32, i32* %steps, align 4
  %conv7 = sext i32 %10 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 4)
  %11 = bitcast i8* %call8 to i32*
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2), i32 0, i64 %idxprom9
  store i32* %11, i32** %arrayidx10, align 8
  %13 = load i32, i32* %steps, align 4
  %conv11 = sext i32 %13 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 4)
  %14 = bitcast i8* %call12 to i32*
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3), i32 0, i64 %idxprom13
  store i32* %14, i32** %arrayidx14, align 8
  %16 = load i32, i32* %blend_lines, align 4
  %conv15 = sext i32 %16 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 8)
  %17 = bitcast i8* %call16 to i32**
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7), i32 0, i64 %idxprom17
  store i32** %17, i32*** %arrayidx18, align 8
  %19 = load i32, i32* %blend_lines, align 4
  %conv19 = sext i32 %19 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 8)
  %20 = bitcast i8* %call20 to i32**
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8), i32 0, i64 %idxprom21
  store i32** %20, i32*** %arrayidx22, align 8
  %22 = load i32, i32* %blend_lines, align 4
  %conv23 = sext i32 %22 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv23, i64 8)
  %23 = bitcast i8* %call24 to i32**
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9), i32 0, i64 %idxprom25
  store i32** %23, i32*** %arrayidx26, align 8
  %25 = load i32, i32* %blend_lines, align 4
  %conv27 = sext i32 %25 to i64
  %call28 = call noalias i8* @g_malloc_n(i64 %conv27, i64 8)
  %26 = bitcast i8* %call28 to i32**
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10), i32 0, i64 %idxprom29
  store i32** %26, i32*** %arrayidx30, align 8
  %28 = load i32, i32* %blend_lines, align 4
  %conv31 = sext i32 %28 to i64
  %call32 = call noalias i8* @g_malloc_n(i64 %conv31, i64 8)
  %29 = bitcast i8* %call32 to i32**
  %30 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11), i32 0, i64 %idxprom33
  store i32** %29, i32*** %arrayidx34, align 8
  %31 = load i32, i32* %blend_lines, align 4
  %conv35 = sext i32 %31 to i64
  %call36 = call noalias i8* @g_malloc_n(i64 %conv35, i64 8)
  %32 = bitcast i8* %call36 to i32**
  %33 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12), i32 0, i64 %idxprom37
  store i32** %32, i32*** %arrayidx38, align 8
  %34 = load i32, i32* %blend_lines, align 4
  %conv39 = sext i32 %34 to i64
  %call40 = call noalias i8* @g_malloc_n(i64 %conv39, i64 8)
  %35 = bitcast i8* %call40 to i32**
  %36 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13), i32 0, i64 %idxprom41
  store i32** %35, i32*** %arrayidx42, align 8
  %37 = load i32, i32* %blend_lines, align 4
  %conv43 = sext i32 %37 to i64
  %call44 = call noalias i8* @g_malloc_n(i64 %conv43, i64 8)
  %38 = bitcast i8* %call44 to i32**
  %39 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14), i32 0, i64 %idxprom45
  store i32** %38, i32*** %arrayidx46, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %for.body
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %blend_lines, align 4
  %cmp48 = icmp slt i32 %40, %41
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %42 = load i32, i32* %steps, align 4
  %conv51 = sext i32 %42 to i64
  %call52 = call noalias i8* @g_malloc_n(i64 %conv51, i64 4)
  %43 = bitcast i8* %call52 to i32*
  %44 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7), i32 0, i64 %idxprom54
  %46 = load i32**, i32*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %46, i64 %idxprom53
  store i32* %43, i32** %arrayidx56, align 8
  %47 = load i32, i32* %steps, align 4
  %conv57 = sext i32 %47 to i64
  %call58 = call noalias i8* @g_malloc_n(i64 %conv57, i64 4)
  %48 = bitcast i8* %call58 to i32*
  %49 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %50 to i64
  %arrayidx61 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8), i32 0, i64 %idxprom60
  %51 = load i32**, i32*** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %51, i64 %idxprom59
  store i32* %48, i32** %arrayidx62, align 8
  %52 = load i32, i32* %steps, align 4
  %conv63 = sext i32 %52 to i64
  %call64 = call noalias i8* @g_malloc_n(i64 %conv63, i64 4)
  %53 = bitcast i8* %call64 to i32*
  %54 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %55 to i64
  %arrayidx67 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9), i32 0, i64 %idxprom66
  %56 = load i32**, i32*** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32*, i32** %56, i64 %idxprom65
  store i32* %53, i32** %arrayidx68, align 8
  %57 = load i32, i32* %steps, align 4
  %conv69 = sext i32 %57 to i64
  %call70 = call noalias i8* @g_malloc_n(i64 %conv69, i64 4)
  %58 = bitcast i8* %call70 to i32*
  %59 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %arrayidx73 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10), i32 0, i64 %idxprom72
  %61 = load i32**, i32*** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32*, i32** %61, i64 %idxprom71
  store i32* %58, i32** %arrayidx74, align 8
  %62 = load i32, i32* %steps, align 4
  %conv75 = sext i32 %62 to i64
  %call76 = call noalias i8* @g_malloc_n(i64 %conv75, i64 4)
  %63 = bitcast i8* %call76 to i32*
  %64 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %65 to i64
  %arrayidx79 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11), i32 0, i64 %idxprom78
  %66 = load i32**, i32*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %66, i64 %idxprom77
  store i32* %63, i32** %arrayidx80, align 8
  %67 = load i32, i32* %steps, align 4
  %conv81 = sext i32 %67 to i64
  %call82 = call noalias i8* @g_malloc_n(i64 %conv81, i64 4)
  %68 = bitcast i8* %call82 to i32*
  %69 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %70 to i64
  %arrayidx85 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12), i32 0, i64 %idxprom84
  %71 = load i32**, i32*** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %71, i64 %idxprom83
  store i32* %68, i32** %arrayidx86, align 8
  %72 = load i32, i32* %steps, align 4
  %conv87 = sext i32 %72 to i64
  %call88 = call noalias i8* @g_malloc_n(i64 %conv87, i64 4)
  %73 = bitcast i8* %call88 to i32*
  %74 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %75 to i64
  %arrayidx91 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13), i32 0, i64 %idxprom90
  %76 = load i32**, i32*** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %76, i64 %idxprom89
  store i32* %73, i32** %arrayidx92, align 8
  %77 = load i32, i32* %steps, align 4
  %conv93 = sext i32 %77 to i64
  %call94 = call noalias i8* @g_malloc_n(i64 %conv93, i64 4)
  %78 = bitcast i8* %call94 to i32*
  %79 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %80 to i64
  %arrayidx97 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14), i32 0, i64 %idxprom96
  %81 = load i32**, i32*** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32*, i32** %81, i64 %idxprom95
  store i32* %78, i32** %arrayidx98, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.50
  %82 = load i32, i32* %j, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.47

for.end:                                          ; preds = %for.cond.47
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end
  %83 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %83, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_jigsaw(i8* %buffer, i32 %bufsize, i32 %width, i32 %height, i32 %bytes, i32 %preview_mode) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %preview_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32*, align 8
  %y = alloca i32*, align 8
  %xtiles = alloca i32, align 4
  %ytiles = alloca i32, align 4
  %xlines = alloca i32, align 4
  %ylines = alloca i32, align 4
  %blend_lines = alloca i32, align 4
  %blend_amount = alloca double, align 8
  %steps = alloca i32, align 4
  %style = alloca i32, align 4
  %progress_total = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %preview_mode, i32* %preview_mode.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  store i32 %0, i32* %xtiles, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  store i32 %1, i32* %ytiles, align 4
  %2 = load i32, i32* %xtiles, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %xlines, align 4
  %3 = load i32, i32* %ytiles, align 4
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %ylines, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  store i32 %4, i32* %blend_lines, align 4
  %5 = load double, double* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 4), align 8
  store double %5, double* %blend_amount, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  store i32 %6, i32* %steps, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 2), align 4
  store i32 %7, i32* %style, align 4
  %8 = load i32, i32* %xlines, align 4
  %9 = load i32, i32* %ylines, align 4
  %add = add nsw i32 %8, %9
  %sub2 = sub nsw i32 %add, 1
  store i32 %sub2, i32* %progress_total, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load i8*, i8** %buffer.addr, align 8
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.draw_jigsaw, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load i32, i32* %xtiles, align 4
  %conv = sext i32 %11 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %12 = bitcast i8* %call to i32*
  store i32* %12, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  %13 = load i32, i32* %ytiles, align 4
  %conv3 = sext i32 %13 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 4)
  %14 = bitcast i8* %call4 to i32*
  store i32* %14, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  %15 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  store i32* %15, i32** %x, align 8
  %16 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  store i32* %16, i32** %y, align 8
  %17 = load i32, i32* %width.addr, align 4
  %18 = load i32, i32* %height.addr, align 4
  %19 = load i32, i32* %xtiles, align 4
  %20 = load i32, i32* %ytiles, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  %22 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  call void @generate_grid(i32 %17, i32 %18, i32 %19, i32 %20, i32* %21, i32* %22)
  %23 = load i32, i32* %width.addr, align 4
  %24 = load i32, i32* %height.addr, align 4
  call void @init_right_bump(i32 %23, i32 %24)
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %height.addr, align 4
  call void @init_left_bump(i32 %25, i32 %26)
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %height.addr, align 4
  call void @init_up_bump(i32 %27, i32 %28)
  %29 = load i32, i32* %width.addr, align 4
  %30 = load i32, i32* %height.addr, align 4
  call void @init_down_bump(i32 %29, i32 %30)
  %31 = load i32, i32* %style, align 4
  %cmp5 = icmp eq i32 %31, 0
  br i1 %cmp5, label %if.then.7, label %if.else.32

if.then.7:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %xlines, align 4
  %cmp8 = icmp slt i32 %32, %33
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %buffer.addr, align 8
  %35 = load i32, i32* %bufsize.addr, align 4
  %36 = load i32, i32* %width.addr, align 4
  %37 = load i32, i32* %height.addr, align 4
  %38 = load i32, i32* %bytes.addr, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load i32*, i32** %x, align 8
  %arrayidx = getelementptr inbounds i32, i32* %40, i64 %idxprom
  %41 = load i32, i32* %arrayidx, align 4
  %42 = load i32, i32* %ytiles, align 4
  %43 = load i32, i32* %blend_lines, align 4
  %44 = load double, double* %blend_amount, align 8
  call void @draw_vertical_border(i8* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %41, i32 %42, i32 %43, double %44)
  %45 = load i32, i32* %preview_mode.addr, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.end.14, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %conv11 = sitofp i32 %46 to double
  %47 = load i32, i32* %progress_total, align 4
  %conv12 = sitofp i32 %47 to double
  %div = fdiv double %conv11, %conv12
  %call13 = call i32 @gimp_progress_update(double %div)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.29, %for.end
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %ylines, align 4
  %cmp16 = icmp slt i32 %49, %50
  br i1 %cmp16, label %for.body.18, label %for.end.31

for.body.18:                                      ; preds = %for.cond.15
  %51 = load i8*, i8** %buffer.addr, align 8
  %52 = load i32, i32* %bufsize.addr, align 4
  %53 = load i32, i32* %width.addr, align 4
  %54 = load i32, i32* %bytes.addr, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %55 to i64
  %56 = load i32*, i32** %y, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %56, i64 %idxprom19
  %57 = load i32, i32* %arrayidx20, align 4
  %58 = load i32, i32* %xtiles, align 4
  %59 = load i32, i32* %blend_lines, align 4
  %60 = load double, double* %blend_amount, align 8
  call void @draw_horizontal_border(i8* %51, i32 %52, i32 %53, i32 %54, i32 %57, i32 %58, i32 %59, double %60)
  %61 = load i32, i32* %preview_mode.addr, align 4
  %tobool21 = icmp ne i32 %61, 0
  br i1 %tobool21, label %if.end.28, label %if.then.22

if.then.22:                                       ; preds = %for.body.18
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %xlines, align 4
  %add23 = add nsw i32 %62, %63
  %conv24 = sitofp i32 %add23 to double
  %64 = load i32, i32* %progress_total, align 4
  %conv25 = sitofp i32 %64 to double
  %div26 = fdiv double %conv24, %conv25
  %call27 = call i32 @gimp_progress_update(double %div26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %for.body.18
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %65 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %65, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.15

for.end.31:                                       ; preds = %for.cond.15
  br label %if.end.72

if.else.32:                                       ; preds = %do.end
  %66 = load i32, i32* %style, align 4
  %cmp33 = icmp eq i32 %66, 1
  br i1 %cmp33, label %if.then.35, label %if.else.69

if.then.35:                                       ; preds = %if.else.32
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.49, %if.then.35
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %xlines, align 4
  %cmp37 = icmp slt i32 %67, %68
  br i1 %cmp37, label %for.body.39, label %for.end.51

for.body.39:                                      ; preds = %for.cond.36
  %69 = load i8*, i8** %buffer.addr, align 8
  %70 = load i32, i32* %bufsize.addr, align 4
  %71 = load i32, i32* %width.addr, align 4
  %72 = load i32, i32* %height.addr, align 4
  %73 = load i32, i32* %bytes.addr, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %74 to i64
  %75 = load i32*, i32** %x, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %75, i64 %idxprom40
  %76 = load i32, i32* %arrayidx41, align 4
  %77 = load i32, i32* %xtiles, align 4
  %78 = load i32, i32* %ytiles, align 4
  %79 = load i32, i32* %blend_lines, align 4
  %80 = load double, double* %blend_amount, align 8
  %81 = load i32, i32* %steps, align 4
  call void @draw_bezier_vertical_border(i8* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %76, i32 %77, i32 %78, i32 %79, double %80, i32 %81)
  %82 = load i32, i32* %preview_mode.addr, align 4
  %tobool42 = icmp ne i32 %82, 0
  br i1 %tobool42, label %if.end.48, label %if.then.43

if.then.43:                                       ; preds = %for.body.39
  %83 = load i32, i32* %i, align 4
  %conv44 = sitofp i32 %83 to double
  %84 = load i32, i32* %progress_total, align 4
  %conv45 = sitofp i32 %84 to double
  %div46 = fdiv double %conv44, %conv45
  %call47 = call i32 @gimp_progress_update(double %div46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %for.body.39
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %85 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %85, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.36

for.end.51:                                       ; preds = %for.cond.36
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.66, %for.end.51
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %ylines, align 4
  %cmp53 = icmp slt i32 %86, %87
  br i1 %cmp53, label %for.body.55, label %for.end.68

for.body.55:                                      ; preds = %for.cond.52
  %88 = load i8*, i8** %buffer.addr, align 8
  %89 = load i32, i32* %bufsize.addr, align 4
  %90 = load i32, i32* %width.addr, align 4
  %91 = load i32, i32* %height.addr, align 4
  %92 = load i32, i32* %bytes.addr, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %93 to i64
  %94 = load i32*, i32** %y, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %94, i64 %idxprom56
  %95 = load i32, i32* %arrayidx57, align 4
  %96 = load i32, i32* %xtiles, align 4
  %97 = load i32, i32* %ytiles, align 4
  %98 = load i32, i32* %blend_lines, align 4
  %99 = load double, double* %blend_amount, align 8
  %100 = load i32, i32* %steps, align 4
  call void @draw_bezier_horizontal_border(i8* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %95, i32 %96, i32 %97, i32 %98, double %99, i32 %100)
  %101 = load i32, i32* %preview_mode.addr, align 4
  %tobool58 = icmp ne i32 %101, 0
  br i1 %tobool58, label %if.end.65, label %if.then.59

if.then.59:                                       ; preds = %for.body.55
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %xlines, align 4
  %add60 = add nsw i32 %102, %103
  %conv61 = sitofp i32 %add60 to double
  %104 = load i32, i32* %progress_total, align 4
  %conv62 = sitofp i32 %104 to double
  %div63 = fdiv double %conv61, %conv62
  %call64 = call i32 @gimp_progress_update(double %div63)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.59, %for.body.55
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %105 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %105, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.52

for.end.68:                                       ; preds = %for.cond.52
  br label %if.end.71

if.else.69:                                       ; preds = %if.else.32
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0))
  call void @gimp_quit() #7
  unreachable

if.end.71:                                        ; preds = %for.end.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %for.end.31
  %call73 = call i32 @gimp_progress_update(double 1.000000e+00)
  %106 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  %107 = bitcast i32* %106 to i8*
  call void @g_free(i8* %107)
  %108 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  %109 = bitcast i32* %108 to i8*
  call void @g_free(i8* %109)
  br label %return

return:                                           ; preds = %if.end.72, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_cache() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %blend_lines = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  store i32 %0, i32* %blend_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0), i32 0, i64 %idxprom
  %3 = load i32*, i32** %arrayidx, align 8
  %4 = bitcast i32* %3 to i8*
  call void @g_free(i8* %4)
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1), i32 0, i64 %idxprom1
  %6 = load i32*, i32** %arrayidx2, align 8
  %7 = bitcast i32* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2), i32 0, i64 %idxprom3
  %9 = load i32*, i32** %arrayidx4, align 8
  %10 = bitcast i32* %9 to i8*
  call void @g_free(i8* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32*], [4 x i32*]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3), i32 0, i64 %idxprom5
  %12 = load i32*, i32** %arrayidx6, align 8
  %13 = bitcast i32* %12 to i8*
  call void @g_free(i8* %13)
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %blend_lines, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %16 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7), i32 0, i64 %idxprom11
  %18 = load i32**, i32*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %18, i64 %idxprom10
  %19 = load i32*, i32** %arrayidx13, align 8
  %20 = bitcast i32* %19 to i8*
  call void @g_free(i8* %20)
  %21 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8), i32 0, i64 %idxprom15
  %23 = load i32**, i32*** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %23, i64 %idxprom14
  %24 = load i32*, i32** %arrayidx17, align 8
  %25 = bitcast i32* %24 to i8*
  call void @g_free(i8* %25)
  %26 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9), i32 0, i64 %idxprom19
  %28 = load i32**, i32*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %28, i64 %idxprom18
  %29 = load i32*, i32** %arrayidx21, align 8
  %30 = bitcast i32* %29 to i8*
  call void @g_free(i8* %30)
  %31 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10), i32 0, i64 %idxprom23
  %33 = load i32**, i32*** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %33, i64 %idxprom22
  %34 = load i32*, i32** %arrayidx25, align 8
  %35 = bitcast i32* %34 to i8*
  call void @g_free(i8* %35)
  %36 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11), i32 0, i64 %idxprom27
  %38 = load i32**, i32*** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %38, i64 %idxprom26
  %39 = load i32*, i32** %arrayidx29, align 8
  %40 = bitcast i32* %39 to i8*
  call void @g_free(i8* %40)
  %41 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %42 to i64
  %arrayidx32 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12), i32 0, i64 %idxprom31
  %43 = load i32**, i32*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %43, i64 %idxprom30
  %44 = load i32*, i32** %arrayidx33, align 8
  %45 = bitcast i32* %44 to i8*
  call void @g_free(i8* %45)
  %46 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %46 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %47 to i64
  %arrayidx36 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13), i32 0, i64 %idxprom35
  %48 = load i32**, i32*** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %48, i64 %idxprom34
  %49 = load i32*, i32** %arrayidx37, align 8
  %50 = bitcast i32* %49 to i8*
  call void @g_free(i8* %50)
  %51 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %52 to i64
  %arrayidx40 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14), i32 0, i64 %idxprom39
  %53 = load i32**, i32*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %53, i64 %idxprom38
  %54 = load i32*, i32** %arrayidx41, align 8
  %55 = bitcast i32* %54 to i8*
  call void @g_free(i8* %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %56 = load i32, i32* %j, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %57 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %57 to i64
  %arrayidx43 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7), i32 0, i64 %idxprom42
  %58 = load i32**, i32*** %arrayidx43, align 8
  %59 = bitcast i32** %58 to i8*
  call void @g_free(i8* %59)
  %60 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %60 to i64
  %arrayidx45 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8), i32 0, i64 %idxprom44
  %61 = load i32**, i32*** %arrayidx45, align 8
  %62 = bitcast i32** %61 to i8*
  call void @g_free(i8* %62)
  %63 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %63 to i64
  %arrayidx47 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9), i32 0, i64 %idxprom46
  %64 = load i32**, i32*** %arrayidx47, align 8
  %65 = bitcast i32** %64 to i8*
  call void @g_free(i8* %65)
  %66 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %66 to i64
  %arrayidx49 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10), i32 0, i64 %idxprom48
  %67 = load i32**, i32*** %arrayidx49, align 8
  %68 = bitcast i32** %67 to i8*
  call void @g_free(i8* %68)
  %69 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %69 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11), i32 0, i64 %idxprom50
  %70 = load i32**, i32*** %arrayidx51, align 8
  %71 = bitcast i32** %70 to i8*
  call void @g_free(i8* %71)
  %72 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %72 to i64
  %arrayidx53 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12), i32 0, i64 %idxprom52
  %73 = load i32**, i32*** %arrayidx53, align 8
  %74 = bitcast i32** %73 to i8*
  call void @g_free(i8* %74)
  %75 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %75 to i64
  %arrayidx55 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13), i32 0, i64 %idxprom54
  %76 = load i32**, i32*** %arrayidx55, align 8
  %77 = bitcast i32** %76 to i8*
  call void @g_free(i8* %77)
  %78 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %78 to i64
  %arrayidx57 = getelementptr inbounds [4 x i32**], [4 x i32**]* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14), i32 0, i64 %idxprom56
  %79 = load i32**, i32*** %arrayidx57, align 8
  %80 = bitcast i32** %79 to i8*
  call void @g_free(i8* %80)
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end
  %81 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %81, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @generate_grid(i32 %width, i32 %height, i32 %xtiles, i32 %ytiles, i32* %x, i32* %y) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %xtiles.addr = alloca i32, align 4
  %ytiles.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %xlines = alloca i32, align 4
  %ylines = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_width_leftover = alloca i32, align 4
  %tile_height_leftover = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %carry = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %xtiles, i32* %xtiles.addr, align 4
  store i32 %ytiles, i32* %ytiles.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %xtiles.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %xlines, align 4
  %1 = load i32, i32* %ytiles.addr, align 4
  %sub1 = sub nsw i32 %1, 1
  store i32 %sub1, i32* %ylines, align 4
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %xtiles.addr, align 4
  %div = sdiv i32 %2, %3
  store i32 %div, i32* %tile_width, align 4
  %4 = load i32, i32* %height.addr, align 4
  %5 = load i32, i32* %ytiles.addr, align 4
  %div2 = sdiv i32 %4, %5
  store i32 %div2, i32* %tile_height, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %xtiles.addr, align 4
  %rem = srem i32 %6, %7
  store i32 %rem, i32* %tile_width_leftover, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load i32, i32* %ytiles.addr, align 4
  %rem3 = srem i32 %8, %9
  store i32 %rem3, i32* %tile_height_leftover, align 4
  %10 = load i32, i32* %tile_width, align 4
  store i32 %10, i32* %x_offset, align 4
  %11 = load i32, i32* %tile_height, align 4
  store i32 %11, i32* %y_offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %xlines, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %x_offset, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %x.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %14, i32* %arrayidx, align 4
  %17 = load i32, i32* %tile_width, align 4
  %18 = load i32, i32* %x_offset, align 4
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %x_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %carry, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.12, %for.end
  %20 = load i32, i32* %tile_width_leftover, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %carry, align 4
  store i32 %21, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %while.body
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %xlines, align 4
  %cmp5 = icmp slt i32 %22, %23
  br i1 %cmp5, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.4
  %24 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %24 to i64
  %25 = load i32*, i32** %x.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %25, i64 %idxprom7
  %26 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %26, 1
  store i32 %add9, i32* %arrayidx8, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.6
  %27 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %27, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.4

for.end.12:                                       ; preds = %for.cond.4
  %28 = load i32, i32* %tile_width_leftover, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %tile_width_leftover, align 4
  %29 = load i32, i32* %carry, align 4
  %inc13 = add nsw i32 %29, 1
  store i32 %inc13, i32* %carry, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i32, i32* %width.addr, align 4
  %sub14 = sub nsw i32 %30, 1
  %31 = load i32, i32* %xlines, align 4
  %idxprom15 = sext i32 %31 to i64
  %32 = load i32*, i32** %x.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %32, i64 %idxprom15
  store i32 %sub14, i32* %arrayidx16, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.23, %while.end
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %ytiles.addr, align 4
  %cmp18 = icmp slt i32 %33, %34
  br i1 %cmp18, label %for.body.19, label %for.end.25

for.body.19:                                      ; preds = %for.cond.17
  %35 = load i32, i32* %y_offset, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load i32*, i32** %y.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %37, i64 %idxprom20
  store i32 %35, i32* %arrayidx21, align 4
  %38 = load i32, i32* %tile_height, align 4
  %39 = load i32, i32* %y_offset, align 4
  %add22 = add nsw i32 %39, %38
  store i32 %add22, i32* %y_offset, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.19
  %40 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %40, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.17

for.end.25:                                       ; preds = %for.cond.17
  store i32 0, i32* %carry, align 4
  br label %while.cond.26

while.cond.26:                                    ; preds = %for.end.37, %for.end.25
  %41 = load i32, i32* %tile_height_leftover, align 4
  %tobool27 = icmp ne i32 %41, 0
  br i1 %tobool27, label %while.body.28, label %while.end.40

while.body.28:                                    ; preds = %while.cond.26
  %42 = load i32, i32* %carry, align 4
  store i32 %42, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.35, %while.body.28
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %ylines, align 4
  %cmp30 = icmp slt i32 %43, %44
  br i1 %cmp30, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.29
  %45 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %45 to i64
  %46 = load i32*, i32** %y.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %46, i64 %idxprom32
  %47 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %47, 1
  store i32 %add34, i32* %arrayidx33, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %48 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %48, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.29

for.end.37:                                       ; preds = %for.cond.29
  %49 = load i32, i32* %tile_height_leftover, align 4
  %dec38 = add nsw i32 %49, -1
  store i32 %dec38, i32* %tile_height_leftover, align 4
  %50 = load i32, i32* %carry, align 4
  %inc39 = add nsw i32 %50, 1
  store i32 %inc39, i32* %carry, align 4
  br label %while.cond.26

while.end.40:                                     ; preds = %while.cond.26
  %51 = load i32, i32* %height.addr, align 4
  %sub41 = sub nsw i32 %51, 1
  %52 = load i32, i32* %ylines, align 4
  %idxprom42 = sext i32 %52 to i64
  %53 = load i32*, i32** %y.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %53, i64 %idxprom42
  store i32 %sub41, i32* %arrayidx43, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_right_bump(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xtiles = alloca i32, align 4
  %ytiles = alloca i32, align 4
  %steps = alloca i32, align 4
  %px = alloca [4 x i32], align 16
  %py = alloca [4 x i32], align 16
  %x_offset = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_height_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %blend_lines = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  store i32 %0, i32* %xtiles, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  store i32 %1, i32* %ytiles, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  store i32 %2, i32* %steps, align 4
  store i32 0, i32* %x_offset, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %xtiles, align 4
  %div = sdiv i32 %3, %4
  store i32 %div, i32* %tile_width, align 4
  %5 = load i32, i32* %height.addr, align 4
  %6 = load i32, i32* %ytiles, align 4
  %div1 = sdiv i32 %5, %6
  store i32 %div1, i32* %tile_height, align 4
  %7 = load i32, i32* %tile_height, align 4
  %div2 = sdiv i32 %7, 8
  store i32 %div2, i32* %tile_height_eighth, align 4
  store i32 0, i32* %curve_start_offset, align 4
  %8 = load i32, i32* %curve_start_offset, align 4
  %9 = load i32, i32* %tile_height_eighth, align 4
  %mul = mul nsw i32 2, %9
  %add = add nsw i32 %8, %mul
  store i32 %add, i32* %curve_end_offset, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  store i32 %10, i32* %blend_lines, align 4
  %11 = load i32, i32* %x_offset, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %11, i32* %arrayidx, align 4
  %12 = load i32, i32* %x_offset, align 4
  %conv = sitofp i32 %12 to double
  %13 = load i32, i32* %tile_width, align 4
  %conv3 = sitofp i32 %13 to double
  %mul4 = fmul double 8.330000e-02, %conv3
  %add5 = fadd double %conv, %mul4
  %conv6 = fptosi double %add5 to i32
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv6, i32* %arrayidx7, align 4
  %14 = load i32, i32* %x_offset, align 4
  %conv8 = sitofp i32 %14 to double
  %15 = load i32, i32* %tile_width, align 4
  %conv9 = sitofp i32 %15 to double
  %mul10 = fmul double 2.083000e-01, %conv9
  %add11 = fadd double %conv8, %mul10
  %conv12 = fptosi double %add11 to i32
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv12, i32* %arrayidx13, align 4
  %16 = load i32, i32* %x_offset, align 4
  %conv14 = sitofp i32 %16 to double
  %17 = load i32, i32* %tile_width, align 4
  %conv15 = sitofp i32 %17 to double
  %mul16 = fmul double 2.500000e-01, %conv15
  %add17 = fadd double %conv14, %mul16
  %conv18 = fptosi double %add17 to i32
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %conv18, i32* %arrayidx19, align 4
  %18 = load i32, i32* %curve_start_offset, align 4
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %18, i32* %arrayidx20, align 4
  %19 = load i32, i32* %curve_start_offset, align 4
  %conv21 = sitofp i32 %19 to double
  %20 = load i32, i32* %tile_height, align 4
  %conv22 = sitofp i32 %20 to double
  %mul23 = fmul double 1.000000e-01, %conv22
  %add24 = fadd double %conv21, %mul23
  %conv25 = fptosi double %add24 to i32
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv25, i32* %arrayidx26, align 4
  %21 = load i32, i32* %curve_start_offset, align 4
  %conv27 = sitofp i32 %21 to double
  %22 = load i32, i32* %tile_height, align 4
  %conv28 = sitofp i32 %22 to double
  %mul29 = fmul double 2.200000e-01, %conv28
  %sub = fsub double %conv27, %mul29
  %conv30 = fptosi double %sub to i32
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv30, i32* %arrayidx31, align 4
  %23 = load i32, i32* %curve_start_offset, align 4
  %conv32 = sitofp i32 %23 to double
  %24 = load i32, i32* %tile_height, align 4
  %conv33 = sitofp i32 %24 to double
  %mul34 = fmul double 1.000000e-01, %conv33
  %add35 = fadd double %conv32, %mul34
  %conv36 = fptosi double %add35 to i32
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %conv36, i32* %arrayidx37, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %25 = load i32, i32* %steps, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 1), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 1), align 8
  call void @generate_bezier(i32* %arraydecay, i32* %arraydecay38, i32 %25, i32* %26, i32* %27)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %blend_lines, align 4
  %cmp = icmp slt i32 %28, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %30 = load i32, i32* %arrayidx40, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %31 = load i32, i32* %arrayidx41, align 4
  %dec42 = add nsw i32 %31, -1
  store i32 %dec42, i32* %arrayidx41, align 4
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %32 = load i32, i32* %arrayidx43, align 4
  %dec44 = add nsw i32 %32, -1
  store i32 %dec44, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %33 = load i32, i32* %arrayidx45, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %arrayidx45, align 4
  %arraydecay46 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %34 = load i32, i32* %steps, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 1), align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %36, i64 %idxprom
  %37 = load i32*, i32** %arrayidx48, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %38 to i64
  %39 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 1), align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %39, i64 %idxprom49
  %40 = load i32*, i32** %arrayidx50, align 8
  call void @generate_bezier(i32* %arraydecay46, i32* %arraydecay47, i32 %34, i32* %37, i32* %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %41, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %blend_lines, align 4
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %43 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %43, %42
  store i32 %add53, i32* %arrayidx52, align 4
  %44 = load i32, i32* %blend_lines, align 4
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %45 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %45, %44
  store i32 %add55, i32* %arrayidx54, align 4
  %46 = load i32, i32* %blend_lines, align 4
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %47 = load i32, i32* %arrayidx56, align 4
  %add57 = add nsw i32 %47, %46
  store i32 %add57, i32* %arrayidx56, align 4
  %48 = load i32, i32* %blend_lines, align 4
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %49 = load i32, i32* %arrayidx58, align 4
  %sub59 = sub nsw i32 %49, %48
  store i32 %sub59, i32* %arrayidx58, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.78, %for.end
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %blend_lines, align 4
  %cmp61 = icmp slt i32 %50, %51
  br i1 %cmp61, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.60
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %52 = load i32, i32* %arrayidx64, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %arrayidx64, align 4
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %53 = load i32, i32* %arrayidx66, align 4
  %inc67 = add nsw i32 %53, 1
  store i32 %inc67, i32* %arrayidx66, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %54 = load i32, i32* %arrayidx68, align 4
  %inc69 = add nsw i32 %54, 1
  store i32 %inc69, i32* %arrayidx68, align 4
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %55 = load i32, i32* %arrayidx70, align 4
  %dec71 = add nsw i32 %55, -1
  store i32 %dec71, i32* %arrayidx70, align 4
  %arraydecay72 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %56 = load i32, i32* %steps, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 1), align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %58, i64 %idxprom74
  %59 = load i32*, i32** %arrayidx75, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %60 to i64
  %61 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 1), align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %61, i64 %idxprom76
  %62 = load i32*, i32** %arrayidx77, align 8
  call void @generate_bezier(i32* %arraydecay72, i32* %arraydecay73, i32 %56, i32* %59, i32* %62)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.63
  %63 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %63, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.60

for.end.80:                                       ; preds = %for.cond.60
  %64 = load i32, i32* %x_offset, align 4
  %conv81 = sitofp i32 %64 to double
  %65 = load i32, i32* %tile_width, align 4
  %conv82 = sitofp i32 %65 to double
  %mul83 = fmul double 2.500000e-01, %conv82
  %add84 = fadd double %conv81, %mul83
  %conv85 = fptosi double %add84 to i32
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %conv85, i32* %arrayidx86, align 4
  %66 = load i32, i32* %x_offset, align 4
  %conv87 = sitofp i32 %66 to double
  %67 = load i32, i32* %tile_width, align 4
  %conv88 = sitofp i32 %67 to double
  %mul89 = fmul double 2.083000e-01, %conv88
  %add90 = fadd double %conv87, %mul89
  %conv91 = fptosi double %add90 to i32
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv91, i32* %arrayidx92, align 4
  %68 = load i32, i32* %x_offset, align 4
  %conv93 = sitofp i32 %68 to double
  %69 = load i32, i32* %tile_width, align 4
  %conv94 = sitofp i32 %69 to double
  %mul95 = fmul double 8.330000e-02, %conv94
  %add96 = fadd double %conv93, %mul95
  %conv97 = fptosi double %add96 to i32
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv97, i32* %arrayidx98, align 4
  %70 = load i32, i32* %x_offset, align 4
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %70, i32* %arrayidx99, align 4
  %71 = load i32, i32* %curve_start_offset, align 4
  %conv100 = sitofp i32 %71 to double
  %72 = load i32, i32* %tile_height, align 4
  %conv101 = sitofp i32 %72 to double
  %mul102 = fmul double 1.000000e-01, %conv101
  %add103 = fadd double %conv100, %mul102
  %conv104 = fptosi double %add103 to i32
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %conv104, i32* %arrayidx105, align 4
  %73 = load i32, i32* %curve_start_offset, align 4
  %conv106 = sitofp i32 %73 to double
  %74 = load i32, i32* %tile_height, align 4
  %conv107 = sitofp i32 %74 to double
  %mul108 = fmul double 4.666000e-01, %conv107
  %add109 = fadd double %conv106, %mul108
  %conv110 = fptosi double %add109 to i32
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv110, i32* %arrayidx111, align 4
  %75 = load i32, i32* %curve_start_offset, align 4
  %conv112 = sitofp i32 %75 to double
  %76 = load i32, i32* %tile_height, align 4
  %conv113 = sitofp i32 %76 to double
  %mul114 = fmul double 1.000000e-01, %conv113
  %add115 = fadd double %conv112, %mul114
  %conv116 = fptosi double %add115 to i32
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv116, i32* %arrayidx117, align 4
  %77 = load i32, i32* %curve_end_offset, align 4
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %77, i32* %arrayidx118, align 4
  %arraydecay119 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %78 = load i32, i32* %steps, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 1), align 8
  %80 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 1), align 8
  call void @generate_bezier(i32* %arraydecay119, i32* %arraydecay120, i32 %78, i32* %79, i32* %80)
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.139, %for.end.80
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %blend_lines, align 4
  %cmp122 = icmp slt i32 %81, %82
  br i1 %cmp122, label %for.body.124, label %for.end.141

for.body.124:                                     ; preds = %for.cond.121
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %83 = load i32, i32* %arrayidx125, align 4
  %inc126 = add nsw i32 %83, 1
  store i32 %inc126, i32* %arrayidx125, align 4
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %84 = load i32, i32* %arrayidx127, align 4
  %inc128 = add nsw i32 %84, 1
  store i32 %inc128, i32* %arrayidx127, align 4
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %85 = load i32, i32* %arrayidx129, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %arrayidx129, align 4
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %86 = load i32, i32* %arrayidx131, align 4
  %inc132 = add nsw i32 %86, 1
  store i32 %inc132, i32* %arrayidx131, align 4
  %arraydecay133 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay134 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %87 = load i32, i32* %steps, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %88 to i64
  %89 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 1), align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %89, i64 %idxprom135
  %90 = load i32*, i32** %arrayidx136, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %91 to i64
  %92 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 1), align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %92, i64 %idxprom137
  %93 = load i32*, i32** %arrayidx138, align 8
  call void @generate_bezier(i32* %arraydecay133, i32* %arraydecay134, i32 %87, i32* %90, i32* %93)
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.124
  %94 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %94, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.121

for.end.141:                                      ; preds = %for.cond.121
  %95 = load i32, i32* %blend_lines, align 4
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %96 = load i32, i32* %arrayidx142, align 4
  %sub143 = sub nsw i32 %96, %95
  store i32 %sub143, i32* %arrayidx142, align 4
  %97 = load i32, i32* %blend_lines, align 4
  %arrayidx144 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %98 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %98, %97
  store i32 %sub145, i32* %arrayidx144, align 4
  %99 = load i32, i32* %blend_lines, align 4
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %100 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %100, %99
  store i32 %sub147, i32* %arrayidx146, align 4
  %101 = load i32, i32* %blend_lines, align 4
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %102 = load i32, i32* %arrayidx148, align 4
  %sub149 = sub nsw i32 %102, %101
  store i32 %sub149, i32* %arrayidx148, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.168, %for.end.141
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %blend_lines, align 4
  %cmp151 = icmp slt i32 %103, %104
  br i1 %cmp151, label %for.body.153, label %for.end.170

for.body.153:                                     ; preds = %for.cond.150
  %arrayidx154 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %105 = load i32, i32* %arrayidx154, align 4
  %dec155 = add nsw i32 %105, -1
  store i32 %dec155, i32* %arrayidx154, align 4
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %106 = load i32, i32* %arrayidx156, align 4
  %dec157 = add nsw i32 %106, -1
  store i32 %dec157, i32* %arrayidx156, align 4
  %arrayidx158 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %107 = load i32, i32* %arrayidx158, align 4
  %dec159 = add nsw i32 %107, -1
  store i32 %dec159, i32* %arrayidx158, align 4
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %108 = load i32, i32* %arrayidx160, align 4
  %dec161 = add nsw i32 %108, -1
  store i32 %dec161, i32* %arrayidx160, align 4
  %arraydecay162 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay163 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %109 = load i32, i32* %steps, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %110 to i64
  %111 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 1), align 8
  %arrayidx165 = getelementptr inbounds i32*, i32** %111, i64 %idxprom164
  %112 = load i32*, i32** %arrayidx165, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %113 to i64
  %114 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 1), align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %114, i64 %idxprom166
  %115 = load i32*, i32** %arrayidx167, align 8
  call void @generate_bezier(i32* %arraydecay162, i32* %arraydecay163, i32 %109, i32* %112, i32* %115)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.153
  %116 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %116, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.150

for.end.170:                                      ; preds = %for.cond.150
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_left_bump(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xtiles = alloca i32, align 4
  %ytiles = alloca i32, align 4
  %steps = alloca i32, align 4
  %px = alloca [4 x i32], align 16
  %py = alloca [4 x i32], align 16
  %x_offset = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_height_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %blend_lines = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  store i32 %0, i32* %xtiles, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  store i32 %1, i32* %ytiles, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  store i32 %2, i32* %steps, align 4
  store i32 0, i32* %x_offset, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %xtiles, align 4
  %div = sdiv i32 %3, %4
  store i32 %div, i32* %tile_width, align 4
  %5 = load i32, i32* %height.addr, align 4
  %6 = load i32, i32* %ytiles, align 4
  %div1 = sdiv i32 %5, %6
  store i32 %div1, i32* %tile_height, align 4
  %7 = load i32, i32* %tile_height, align 4
  %div2 = sdiv i32 %7, 8
  store i32 %div2, i32* %tile_height_eighth, align 4
  store i32 0, i32* %curve_start_offset, align 4
  %8 = load i32, i32* %curve_start_offset, align 4
  %9 = load i32, i32* %tile_height_eighth, align 4
  %mul = mul nsw i32 2, %9
  %add = add nsw i32 %8, %mul
  store i32 %add, i32* %curve_end_offset, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  store i32 %10, i32* %blend_lines, align 4
  %11 = load i32, i32* %x_offset, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %11, i32* %arrayidx, align 4
  %12 = load i32, i32* %x_offset, align 4
  %conv = sitofp i32 %12 to double
  %13 = load i32, i32* %tile_width, align 4
  %conv3 = sitofp i32 %13 to double
  %mul4 = fmul double 8.330000e-02, %conv3
  %sub = fsub double %conv, %mul4
  %conv5 = fptosi double %sub to i32
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv5, i32* %arrayidx6, align 4
  %14 = load i32, i32* %x_offset, align 4
  %conv7 = sitofp i32 %14 to double
  %15 = load i32, i32* %tile_width, align 4
  %conv8 = sitofp i32 %15 to double
  %mul9 = fmul double 2.083000e-01, %conv8
  %sub10 = fsub double %conv7, %mul9
  %conv11 = fptosi double %sub10 to i32
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv11, i32* %arrayidx12, align 4
  %16 = load i32, i32* %x_offset, align 4
  %conv13 = sitofp i32 %16 to double
  %17 = load i32, i32* %tile_width, align 4
  %conv14 = sitofp i32 %17 to double
  %mul15 = fmul double 2.500000e-01, %conv14
  %sub16 = fsub double %conv13, %mul15
  %conv17 = fptosi double %sub16 to i32
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %conv17, i32* %arrayidx18, align 4
  %18 = load i32, i32* %curve_start_offset, align 4
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %18, i32* %arrayidx19, align 4
  %19 = load i32, i32* %curve_start_offset, align 4
  %conv20 = sitofp i32 %19 to double
  %20 = load i32, i32* %tile_height, align 4
  %conv21 = sitofp i32 %20 to double
  %mul22 = fmul double 1.000000e-01, %conv21
  %add23 = fadd double %conv20, %mul22
  %conv24 = fptosi double %add23 to i32
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv24, i32* %arrayidx25, align 4
  %21 = load i32, i32* %curve_start_offset, align 4
  %conv26 = sitofp i32 %21 to double
  %22 = load i32, i32* %tile_height, align 4
  %conv27 = sitofp i32 %22 to double
  %mul28 = fmul double 2.200000e-01, %conv27
  %sub29 = fsub double %conv26, %mul28
  %conv30 = fptosi double %sub29 to i32
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv30, i32* %arrayidx31, align 4
  %23 = load i32, i32* %curve_start_offset, align 4
  %conv32 = sitofp i32 %23 to double
  %24 = load i32, i32* %tile_height, align 4
  %conv33 = sitofp i32 %24 to double
  %mul34 = fmul double 1.000000e-01, %conv33
  %add35 = fadd double %conv32, %mul34
  %conv36 = fptosi double %add35 to i32
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %conv36, i32* %arrayidx37, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %25 = load i32, i32* %steps, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 0), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 0), align 8
  call void @generate_bezier(i32* %arraydecay, i32* %arraydecay38, i32 %25, i32* %26, i32* %27)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %blend_lines, align 4
  %cmp = icmp slt i32 %28, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %30 = load i32, i32* %arrayidx40, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %31 = load i32, i32* %arrayidx41, align 4
  %dec42 = add nsw i32 %31, -1
  store i32 %dec42, i32* %arrayidx41, align 4
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %32 = load i32, i32* %arrayidx43, align 4
  %dec44 = add nsw i32 %32, -1
  store i32 %dec44, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %33 = load i32, i32* %arrayidx45, align 4
  %dec46 = add nsw i32 %33, -1
  store i32 %dec46, i32* %arrayidx45, align 4
  %arraydecay47 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %34 = load i32, i32* %steps, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 0), align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %36, i64 %idxprom
  %37 = load i32*, i32** %arrayidx49, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %38 to i64
  %39 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 0), align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %39, i64 %idxprom50
  %40 = load i32*, i32** %arrayidx51, align 8
  call void @generate_bezier(i32* %arraydecay47, i32* %arraydecay48, i32 %34, i32* %37, i32* %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %blend_lines, align 4
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %43 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %43, %42
  store i32 %add53, i32* %arrayidx52, align 4
  %44 = load i32, i32* %blend_lines, align 4
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %45 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %45, %44
  store i32 %add55, i32* %arrayidx54, align 4
  %46 = load i32, i32* %blend_lines, align 4
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %47 = load i32, i32* %arrayidx56, align 4
  %add57 = add nsw i32 %47, %46
  store i32 %add57, i32* %arrayidx56, align 4
  %48 = load i32, i32* %blend_lines, align 4
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %49 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %49, %48
  store i32 %add59, i32* %arrayidx58, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.78, %for.end
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %blend_lines, align 4
  %cmp61 = icmp slt i32 %50, %51
  br i1 %cmp61, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.60
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %52 = load i32, i32* %arrayidx64, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %arrayidx64, align 4
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %53 = load i32, i32* %arrayidx66, align 4
  %inc67 = add nsw i32 %53, 1
  store i32 %inc67, i32* %arrayidx66, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %54 = load i32, i32* %arrayidx68, align 4
  %inc69 = add nsw i32 %54, 1
  store i32 %inc69, i32* %arrayidx68, align 4
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %55 = load i32, i32* %arrayidx70, align 4
  %inc71 = add nsw i32 %55, 1
  store i32 %inc71, i32* %arrayidx70, align 4
  %arraydecay72 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %56 = load i32, i32* %steps, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 0), align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %58, i64 %idxprom74
  %59 = load i32*, i32** %arrayidx75, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %60 to i64
  %61 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 0), align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %61, i64 %idxprom76
  %62 = load i32*, i32** %arrayidx77, align 8
  call void @generate_bezier(i32* %arraydecay72, i32* %arraydecay73, i32 %56, i32* %59, i32* %62)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.63
  %63 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %63, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.60

for.end.80:                                       ; preds = %for.cond.60
  %64 = load i32, i32* %x_offset, align 4
  %conv81 = sitofp i32 %64 to double
  %65 = load i32, i32* %tile_width, align 4
  %conv82 = sitofp i32 %65 to double
  %mul83 = fmul double 2.500000e-01, %conv82
  %sub84 = fsub double %conv81, %mul83
  %conv85 = fptosi double %sub84 to i32
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %conv85, i32* %arrayidx86, align 4
  %66 = load i32, i32* %x_offset, align 4
  %conv87 = sitofp i32 %66 to double
  %67 = load i32, i32* %tile_width, align 4
  %conv88 = sitofp i32 %67 to double
  %mul89 = fmul double 2.083000e-01, %conv88
  %sub90 = fsub double %conv87, %mul89
  %conv91 = fptosi double %sub90 to i32
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv91, i32* %arrayidx92, align 4
  %68 = load i32, i32* %x_offset, align 4
  %conv93 = sitofp i32 %68 to double
  %69 = load i32, i32* %tile_width, align 4
  %conv94 = sitofp i32 %69 to double
  %mul95 = fmul double 8.330000e-02, %conv94
  %sub96 = fsub double %conv93, %mul95
  %conv97 = fptosi double %sub96 to i32
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv97, i32* %arrayidx98, align 4
  %70 = load i32, i32* %x_offset, align 4
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %70, i32* %arrayidx99, align 4
  %71 = load i32, i32* %curve_start_offset, align 4
  %conv100 = sitofp i32 %71 to double
  %72 = load i32, i32* %tile_height, align 4
  %conv101 = sitofp i32 %72 to double
  %mul102 = fmul double 1.000000e-01, %conv101
  %add103 = fadd double %conv100, %mul102
  %conv104 = fptosi double %add103 to i32
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %conv104, i32* %arrayidx105, align 4
  %73 = load i32, i32* %curve_start_offset, align 4
  %conv106 = sitofp i32 %73 to double
  %74 = load i32, i32* %tile_height, align 4
  %conv107 = sitofp i32 %74 to double
  %mul108 = fmul double 4.666000e-01, %conv107
  %add109 = fadd double %conv106, %mul108
  %conv110 = fptosi double %add109 to i32
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv110, i32* %arrayidx111, align 4
  %75 = load i32, i32* %curve_start_offset, align 4
  %conv112 = sitofp i32 %75 to double
  %76 = load i32, i32* %tile_height, align 4
  %conv113 = sitofp i32 %76 to double
  %mul114 = fmul double 1.000000e-01, %conv113
  %add115 = fadd double %conv112, %mul114
  %conv116 = fptosi double %add115 to i32
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv116, i32* %arrayidx117, align 4
  %77 = load i32, i32* %curve_end_offset, align 4
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %77, i32* %arrayidx118, align 4
  %arraydecay119 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %78 = load i32, i32* %steps, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 0), align 8
  %80 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 0), align 8
  call void @generate_bezier(i32* %arraydecay119, i32* %arraydecay120, i32 %78, i32* %79, i32* %80)
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.139, %for.end.80
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %blend_lines, align 4
  %cmp122 = icmp slt i32 %81, %82
  br i1 %cmp122, label %for.body.124, label %for.end.141

for.body.124:                                     ; preds = %for.cond.121
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %83 = load i32, i32* %arrayidx125, align 4
  %inc126 = add nsw i32 %83, 1
  store i32 %inc126, i32* %arrayidx125, align 4
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %84 = load i32, i32* %arrayidx127, align 4
  %inc128 = add nsw i32 %84, 1
  store i32 %inc128, i32* %arrayidx127, align 4
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %85 = load i32, i32* %arrayidx129, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %arrayidx129, align 4
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %86 = load i32, i32* %arrayidx131, align 4
  %dec132 = add nsw i32 %86, -1
  store i32 %dec132, i32* %arrayidx131, align 4
  %arraydecay133 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay134 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %87 = load i32, i32* %steps, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %88 to i64
  %89 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 0), align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %89, i64 %idxprom135
  %90 = load i32*, i32** %arrayidx136, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %91 to i64
  %92 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 0), align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %92, i64 %idxprom137
  %93 = load i32*, i32** %arrayidx138, align 8
  call void @generate_bezier(i32* %arraydecay133, i32* %arraydecay134, i32 %87, i32* %90, i32* %93)
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.124
  %94 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %94, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.121

for.end.141:                                      ; preds = %for.cond.121
  %95 = load i32, i32* %blend_lines, align 4
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %96 = load i32, i32* %arrayidx142, align 4
  %sub143 = sub nsw i32 %96, %95
  store i32 %sub143, i32* %arrayidx142, align 4
  %97 = load i32, i32* %blend_lines, align 4
  %arrayidx144 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %98 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %98, %97
  store i32 %sub145, i32* %arrayidx144, align 4
  %99 = load i32, i32* %blend_lines, align 4
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %100 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %100, %99
  store i32 %sub147, i32* %arrayidx146, align 4
  %101 = load i32, i32* %blend_lines, align 4
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %102 = load i32, i32* %arrayidx148, align 4
  %add149 = add nsw i32 %102, %101
  store i32 %add149, i32* %arrayidx148, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.168, %for.end.141
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %blend_lines, align 4
  %cmp151 = icmp slt i32 %103, %104
  br i1 %cmp151, label %for.body.153, label %for.end.170

for.body.153:                                     ; preds = %for.cond.150
  %arrayidx154 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  %105 = load i32, i32* %arrayidx154, align 4
  %dec155 = add nsw i32 %105, -1
  store i32 %dec155, i32* %arrayidx154, align 4
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  %106 = load i32, i32* %arrayidx156, align 4
  %dec157 = add nsw i32 %106, -1
  store i32 %dec157, i32* %arrayidx156, align 4
  %arrayidx158 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %107 = load i32, i32* %arrayidx158, align 4
  %dec159 = add nsw i32 %107, -1
  store i32 %dec159, i32* %arrayidx158, align 4
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %108 = load i32, i32* %arrayidx160, align 4
  %inc161 = add nsw i32 %108, 1
  store i32 %inc161, i32* %arrayidx160, align 4
  %arraydecay162 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay163 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %109 = load i32, i32* %steps, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %110 to i64
  %111 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 0), align 8
  %arrayidx165 = getelementptr inbounds i32*, i32** %111, i64 %idxprom164
  %112 = load i32*, i32** %arrayidx165, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %113 to i64
  %114 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 0), align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %114, i64 %idxprom166
  %115 = load i32*, i32** %arrayidx167, align 8
  call void @generate_bezier(i32* %arraydecay162, i32* %arraydecay163, i32 %109, i32* %112, i32* %115)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.153
  %116 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %116, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.150

for.end.170:                                      ; preds = %for.cond.150
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_up_bump(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xtiles = alloca i32, align 4
  %ytiles = alloca i32, align 4
  %steps = alloca i32, align 4
  %px = alloca [4 x i32], align 16
  %py = alloca [4 x i32], align 16
  %y_offset = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_width_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %blend_lines = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  store i32 %0, i32* %xtiles, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  store i32 %1, i32* %ytiles, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  store i32 %2, i32* %steps, align 4
  store i32 0, i32* %y_offset, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %xtiles, align 4
  %div = sdiv i32 %3, %4
  store i32 %div, i32* %tile_width, align 4
  %5 = load i32, i32* %height.addr, align 4
  %6 = load i32, i32* %ytiles, align 4
  %div1 = sdiv i32 %5, %6
  store i32 %div1, i32* %tile_height, align 4
  %7 = load i32, i32* %tile_width, align 4
  %div2 = sdiv i32 %7, 8
  store i32 %div2, i32* %tile_width_eighth, align 4
  store i32 0, i32* %curve_start_offset, align 4
  %8 = load i32, i32* %curve_start_offset, align 4
  %9 = load i32, i32* %tile_width_eighth, align 4
  %mul = mul nsw i32 2, %9
  %add = add nsw i32 %8, %mul
  store i32 %add, i32* %curve_end_offset, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  store i32 %10, i32* %blend_lines, align 4
  %11 = load i32, i32* %curve_start_offset, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %11, i32* %arrayidx, align 4
  %12 = load i32, i32* %curve_start_offset, align 4
  %conv = sitofp i32 %12 to double
  %13 = load i32, i32* %tile_width, align 4
  %conv3 = sitofp i32 %13 to double
  %mul4 = fmul double 1.000000e-01, %conv3
  %add5 = fadd double %conv, %mul4
  %conv6 = fptosi double %add5 to i32
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv6, i32* %arrayidx7, align 4
  %14 = load i32, i32* %curve_start_offset, align 4
  %conv8 = sitofp i32 %14 to double
  %15 = load i32, i32* %tile_width, align 4
  %conv9 = sitofp i32 %15 to double
  %mul10 = fmul double 2.200000e-01, %conv9
  %sub = fsub double %conv8, %mul10
  %conv11 = fptosi double %sub to i32
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv11, i32* %arrayidx12, align 4
  %16 = load i32, i32* %curve_start_offset, align 4
  %conv13 = sitofp i32 %16 to double
  %17 = load i32, i32* %tile_width, align 4
  %conv14 = sitofp i32 %17 to double
  %mul15 = fmul double 1.000000e-01, %conv14
  %add16 = fadd double %conv13, %mul15
  %conv17 = fptosi double %add16 to i32
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %conv17, i32* %arrayidx18, align 4
  %18 = load i32, i32* %y_offset, align 4
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %18, i32* %arrayidx19, align 4
  %19 = load i32, i32* %y_offset, align 4
  %conv20 = sitofp i32 %19 to double
  %20 = load i32, i32* %tile_height, align 4
  %conv21 = sitofp i32 %20 to double
  %mul22 = fmul double 8.330000e-02, %conv21
  %sub23 = fsub double %conv20, %mul22
  %conv24 = fptosi double %sub23 to i32
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv24, i32* %arrayidx25, align 4
  %21 = load i32, i32* %y_offset, align 4
  %conv26 = sitofp i32 %21 to double
  %22 = load i32, i32* %tile_height, align 4
  %conv27 = sitofp i32 %22 to double
  %mul28 = fmul double 2.083000e-01, %conv27
  %sub29 = fsub double %conv26, %mul28
  %conv30 = fptosi double %sub29 to i32
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv30, i32* %arrayidx31, align 4
  %23 = load i32, i32* %y_offset, align 4
  %conv32 = sitofp i32 %23 to double
  %24 = load i32, i32* %tile_height, align 4
  %conv33 = sitofp i32 %24 to double
  %mul34 = fmul double 2.500000e-01, %conv33
  %sub35 = fsub double %conv32, %mul34
  %conv36 = fptosi double %sub35 to i32
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %conv36, i32* %arrayidx37, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %25 = load i32, i32* %steps, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 2), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 2), align 8
  call void @generate_bezier(i32* %arraydecay, i32* %arraydecay38, i32 %25, i32* %26, i32* %27)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %blend_lines, align 4
  %cmp = icmp slt i32 %28, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %30 = load i32, i32* %arrayidx40, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %31 = load i32, i32* %arrayidx41, align 4
  %dec42 = add nsw i32 %31, -1
  store i32 %dec42, i32* %arrayidx41, align 4
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %32 = load i32, i32* %arrayidx43, align 4
  %dec44 = add nsw i32 %32, -1
  store i32 %dec44, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %33 = load i32, i32* %arrayidx45, align 4
  %dec46 = add nsw i32 %33, -1
  store i32 %dec46, i32* %arrayidx45, align 4
  %arraydecay47 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %34 = load i32, i32* %steps, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 2), align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %36, i64 %idxprom
  %37 = load i32*, i32** %arrayidx49, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %38 to i64
  %39 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 2), align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %39, i64 %idxprom50
  %40 = load i32*, i32** %arrayidx51, align 8
  call void @generate_bezier(i32* %arraydecay47, i32* %arraydecay48, i32 %34, i32* %37, i32* %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %blend_lines, align 4
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %43 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %43, %42
  store i32 %add53, i32* %arrayidx52, align 4
  %44 = load i32, i32* %blend_lines, align 4
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %45 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %45, %44
  store i32 %add55, i32* %arrayidx54, align 4
  %46 = load i32, i32* %blend_lines, align 4
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %47 = load i32, i32* %arrayidx56, align 4
  %add57 = add nsw i32 %47, %46
  store i32 %add57, i32* %arrayidx56, align 4
  %48 = load i32, i32* %blend_lines, align 4
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %49 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %49, %48
  store i32 %add59, i32* %arrayidx58, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.78, %for.end
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %blend_lines, align 4
  %cmp61 = icmp slt i32 %50, %51
  br i1 %cmp61, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.60
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %52 = load i32, i32* %arrayidx64, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %arrayidx64, align 4
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %53 = load i32, i32* %arrayidx66, align 4
  %inc67 = add nsw i32 %53, 1
  store i32 %inc67, i32* %arrayidx66, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %54 = load i32, i32* %arrayidx68, align 4
  %inc69 = add nsw i32 %54, 1
  store i32 %inc69, i32* %arrayidx68, align 4
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %55 = load i32, i32* %arrayidx70, align 4
  %inc71 = add nsw i32 %55, 1
  store i32 %inc71, i32* %arrayidx70, align 4
  %arraydecay72 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %56 = load i32, i32* %steps, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 2), align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %58, i64 %idxprom74
  %59 = load i32*, i32** %arrayidx75, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %60 to i64
  %61 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 2), align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %61, i64 %idxprom76
  %62 = load i32*, i32** %arrayidx77, align 8
  call void @generate_bezier(i32* %arraydecay72, i32* %arraydecay73, i32 %56, i32* %59, i32* %62)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.63
  %63 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %63, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.60

for.end.80:                                       ; preds = %for.cond.60
  %64 = load i32, i32* %curve_start_offset, align 4
  %conv81 = sitofp i32 %64 to double
  %65 = load i32, i32* %tile_width, align 4
  %conv82 = sitofp i32 %65 to double
  %mul83 = fmul double 1.000000e-01, %conv82
  %add84 = fadd double %conv81, %mul83
  %conv85 = fptosi double %add84 to i32
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %conv85, i32* %arrayidx86, align 4
  %66 = load i32, i32* %curve_start_offset, align 4
  %conv87 = sitofp i32 %66 to double
  %67 = load i32, i32* %tile_width, align 4
  %conv88 = sitofp i32 %67 to double
  %mul89 = fmul double 4.666000e-01, %conv88
  %add90 = fadd double %conv87, %mul89
  %conv91 = fptosi double %add90 to i32
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv91, i32* %arrayidx92, align 4
  %68 = load i32, i32* %curve_start_offset, align 4
  %conv93 = sitofp i32 %68 to double
  %69 = load i32, i32* %tile_width, align 4
  %conv94 = sitofp i32 %69 to double
  %mul95 = fmul double 1.000000e-01, %conv94
  %add96 = fadd double %conv93, %mul95
  %conv97 = fptosi double %add96 to i32
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv97, i32* %arrayidx98, align 4
  %70 = load i32, i32* %curve_end_offset, align 4
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %70, i32* %arrayidx99, align 4
  %71 = load i32, i32* %y_offset, align 4
  %conv100 = sitofp i32 %71 to double
  %72 = load i32, i32* %tile_height, align 4
  %conv101 = sitofp i32 %72 to double
  %mul102 = fmul double 2.500000e-01, %conv101
  %sub103 = fsub double %conv100, %mul102
  %conv104 = fptosi double %sub103 to i32
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %conv104, i32* %arrayidx105, align 4
  %73 = load i32, i32* %y_offset, align 4
  %conv106 = sitofp i32 %73 to double
  %74 = load i32, i32* %tile_height, align 4
  %conv107 = sitofp i32 %74 to double
  %mul108 = fmul double 2.083000e-01, %conv107
  %sub109 = fsub double %conv106, %mul108
  %conv110 = fptosi double %sub109 to i32
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv110, i32* %arrayidx111, align 4
  %75 = load i32, i32* %y_offset, align 4
  %conv112 = sitofp i32 %75 to double
  %76 = load i32, i32* %tile_height, align 4
  %conv113 = sitofp i32 %76 to double
  %mul114 = fmul double 8.330000e-02, %conv113
  %sub115 = fsub double %conv112, %mul114
  %conv116 = fptosi double %sub115 to i32
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv116, i32* %arrayidx117, align 4
  %77 = load i32, i32* %y_offset, align 4
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %77, i32* %arrayidx118, align 4
  %arraydecay119 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %78 = load i32, i32* %steps, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 2), align 8
  %80 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 2), align 8
  call void @generate_bezier(i32* %arraydecay119, i32* %arraydecay120, i32 %78, i32* %79, i32* %80)
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.139, %for.end.80
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %blend_lines, align 4
  %cmp122 = icmp slt i32 %81, %82
  br i1 %cmp122, label %for.body.124, label %for.end.141

for.body.124:                                     ; preds = %for.cond.121
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %83 = load i32, i32* %arrayidx125, align 4
  %inc126 = add nsw i32 %83, 1
  store i32 %inc126, i32* %arrayidx125, align 4
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %84 = load i32, i32* %arrayidx127, align 4
  %inc128 = add nsw i32 %84, 1
  store i32 %inc128, i32* %arrayidx127, align 4
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %85 = load i32, i32* %arrayidx129, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %arrayidx129, align 4
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %86 = load i32, i32* %arrayidx131, align 4
  %dec132 = add nsw i32 %86, -1
  store i32 %dec132, i32* %arrayidx131, align 4
  %arraydecay133 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay134 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %87 = load i32, i32* %steps, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %88 to i64
  %89 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 2), align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %89, i64 %idxprom135
  %90 = load i32*, i32** %arrayidx136, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %91 to i64
  %92 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 2), align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %92, i64 %idxprom137
  %93 = load i32*, i32** %arrayidx138, align 8
  call void @generate_bezier(i32* %arraydecay133, i32* %arraydecay134, i32 %87, i32* %90, i32* %93)
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.124
  %94 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %94, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.121

for.end.141:                                      ; preds = %for.cond.121
  %95 = load i32, i32* %blend_lines, align 4
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %96 = load i32, i32* %arrayidx142, align 4
  %sub143 = sub nsw i32 %96, %95
  store i32 %sub143, i32* %arrayidx142, align 4
  %97 = load i32, i32* %blend_lines, align 4
  %arrayidx144 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %98 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %98, %97
  store i32 %sub145, i32* %arrayidx144, align 4
  %99 = load i32, i32* %blend_lines, align 4
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %100 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %100, %99
  store i32 %sub147, i32* %arrayidx146, align 4
  %101 = load i32, i32* %blend_lines, align 4
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %102 = load i32, i32* %arrayidx148, align 4
  %add149 = add nsw i32 %102, %101
  store i32 %add149, i32* %arrayidx148, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.168, %for.end.141
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %blend_lines, align 4
  %cmp151 = icmp slt i32 %103, %104
  br i1 %cmp151, label %for.body.153, label %for.end.170

for.body.153:                                     ; preds = %for.cond.150
  %arrayidx154 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %105 = load i32, i32* %arrayidx154, align 4
  %dec155 = add nsw i32 %105, -1
  store i32 %dec155, i32* %arrayidx154, align 4
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %106 = load i32, i32* %arrayidx156, align 4
  %dec157 = add nsw i32 %106, -1
  store i32 %dec157, i32* %arrayidx156, align 4
  %arrayidx158 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %107 = load i32, i32* %arrayidx158, align 4
  %dec159 = add nsw i32 %107, -1
  store i32 %dec159, i32* %arrayidx158, align 4
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %108 = load i32, i32* %arrayidx160, align 4
  %inc161 = add nsw i32 %108, 1
  store i32 %inc161, i32* %arrayidx160, align 4
  %arraydecay162 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay163 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %109 = load i32, i32* %steps, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %110 to i64
  %111 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 2), align 8
  %arrayidx165 = getelementptr inbounds i32*, i32** %111, i64 %idxprom164
  %112 = load i32*, i32** %arrayidx165, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %113 to i64
  %114 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 2), align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %114, i64 %idxprom166
  %115 = load i32*, i32** %arrayidx167, align 8
  call void @generate_bezier(i32* %arraydecay162, i32* %arraydecay163, i32 %109, i32* %112, i32* %115)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.153
  %116 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %116, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.150

for.end.170:                                      ; preds = %for.cond.150
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_down_bump(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xtiles = alloca i32, align 4
  %ytiles = alloca i32, align 4
  %steps = alloca i32, align 4
  %px = alloca [4 x i32], align 16
  %py = alloca [4 x i32], align 16
  %y_offset = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_width_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %blend_lines = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 0), align 4
  store i32 %0, i32* %xtiles, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 1), align 4
  store i32 %1, i32* %ytiles, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  store i32 %2, i32* %steps, align 4
  store i32 0, i32* %y_offset, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %xtiles, align 4
  %div = sdiv i32 %3, %4
  store i32 %div, i32* %tile_width, align 4
  %5 = load i32, i32* %height.addr, align 4
  %6 = load i32, i32* %ytiles, align 4
  %div1 = sdiv i32 %5, %6
  store i32 %div1, i32* %tile_height, align 4
  %7 = load i32, i32* %tile_width, align 4
  %div2 = sdiv i32 %7, 8
  store i32 %div2, i32* %tile_width_eighth, align 4
  store i32 0, i32* %curve_start_offset, align 4
  %8 = load i32, i32* %curve_start_offset, align 4
  %9 = load i32, i32* %tile_width_eighth, align 4
  %mul = mul nsw i32 2, %9
  %add = add nsw i32 %8, %mul
  store i32 %add, i32* %curve_end_offset, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.config_tag, %struct.config_tag* @config, i32 0, i32 3), align 4
  store i32 %10, i32* %blend_lines, align 4
  %11 = load i32, i32* %curve_start_offset, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %11, i32* %arrayidx, align 4
  %12 = load i32, i32* %curve_start_offset, align 4
  %conv = sitofp i32 %12 to double
  %13 = load i32, i32* %tile_width, align 4
  %conv3 = sitofp i32 %13 to double
  %mul4 = fmul double 1.000000e-01, %conv3
  %add5 = fadd double %conv, %mul4
  %conv6 = fptosi double %add5 to i32
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv6, i32* %arrayidx7, align 4
  %14 = load i32, i32* %curve_start_offset, align 4
  %conv8 = sitofp i32 %14 to double
  %15 = load i32, i32* %tile_width, align 4
  %conv9 = sitofp i32 %15 to double
  %mul10 = fmul double 2.200000e-01, %conv9
  %sub = fsub double %conv8, %mul10
  %conv11 = fptosi double %sub to i32
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv11, i32* %arrayidx12, align 4
  %16 = load i32, i32* %curve_start_offset, align 4
  %conv13 = sitofp i32 %16 to double
  %17 = load i32, i32* %tile_width, align 4
  %conv14 = sitofp i32 %17 to double
  %mul15 = fmul double 1.000000e-01, %conv14
  %add16 = fadd double %conv13, %mul15
  %conv17 = fptosi double %add16 to i32
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %conv17, i32* %arrayidx18, align 4
  %18 = load i32, i32* %y_offset, align 4
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %18, i32* %arrayidx19, align 4
  %19 = load i32, i32* %y_offset, align 4
  %conv20 = sitofp i32 %19 to double
  %20 = load i32, i32* %tile_height, align 4
  %conv21 = sitofp i32 %20 to double
  %mul22 = fmul double 8.330000e-02, %conv21
  %add23 = fadd double %conv20, %mul22
  %conv24 = fptosi double %add23 to i32
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv24, i32* %arrayidx25, align 4
  %21 = load i32, i32* %y_offset, align 4
  %conv26 = sitofp i32 %21 to double
  %22 = load i32, i32* %tile_height, align 4
  %conv27 = sitofp i32 %22 to double
  %mul28 = fmul double 2.083000e-01, %conv27
  %add29 = fadd double %conv26, %mul28
  %conv30 = fptosi double %add29 to i32
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv30, i32* %arrayidx31, align 4
  %23 = load i32, i32* %y_offset, align 4
  %conv32 = sitofp i32 %23 to double
  %24 = load i32, i32* %tile_height, align 4
  %conv33 = sitofp i32 %24 to double
  %mul34 = fmul double 2.500000e-01, %conv33
  %add35 = fadd double %conv32, %mul34
  %conv36 = fptosi double %add35 to i32
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %conv36, i32* %arrayidx37, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %25 = load i32, i32* %steps, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 3), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 3), align 8
  call void @generate_bezier(i32* %arraydecay, i32* %arraydecay38, i32 %25, i32* %26, i32* %27)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %blend_lines, align 4
  %cmp = icmp slt i32 %28, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %30 = load i32, i32* %arrayidx40, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %31 = load i32, i32* %arrayidx41, align 4
  %dec42 = add nsw i32 %31, -1
  store i32 %dec42, i32* %arrayidx41, align 4
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %32 = load i32, i32* %arrayidx43, align 4
  %dec44 = add nsw i32 %32, -1
  store i32 %dec44, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %33 = load i32, i32* %arrayidx45, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %arrayidx45, align 4
  %arraydecay46 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %34 = load i32, i32* %steps, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 3), align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %36, i64 %idxprom
  %37 = load i32*, i32** %arrayidx48, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %38 to i64
  %39 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 3), align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %39, i64 %idxprom49
  %40 = load i32*, i32** %arrayidx50, align 8
  call void @generate_bezier(i32* %arraydecay46, i32* %arraydecay47, i32 %34, i32* %37, i32* %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %41, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %blend_lines, align 4
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %43 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %43, %42
  store i32 %add53, i32* %arrayidx52, align 4
  %44 = load i32, i32* %blend_lines, align 4
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %45 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %45, %44
  store i32 %add55, i32* %arrayidx54, align 4
  %46 = load i32, i32* %blend_lines, align 4
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %47 = load i32, i32* %arrayidx56, align 4
  %add57 = add nsw i32 %47, %46
  store i32 %add57, i32* %arrayidx56, align 4
  %48 = load i32, i32* %blend_lines, align 4
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %49 = load i32, i32* %arrayidx58, align 4
  %sub59 = sub nsw i32 %49, %48
  store i32 %sub59, i32* %arrayidx58, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.78, %for.end
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %blend_lines, align 4
  %cmp61 = icmp slt i32 %50, %51
  br i1 %cmp61, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.60
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %52 = load i32, i32* %arrayidx64, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %arrayidx64, align 4
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %53 = load i32, i32* %arrayidx66, align 4
  %inc67 = add nsw i32 %53, 1
  store i32 %inc67, i32* %arrayidx66, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %54 = load i32, i32* %arrayidx68, align 4
  %inc69 = add nsw i32 %54, 1
  store i32 %inc69, i32* %arrayidx68, align 4
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  %55 = load i32, i32* %arrayidx70, align 4
  %dec71 = add nsw i32 %55, -1
  store i32 %dec71, i32* %arrayidx70, align 4
  %arraydecay72 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %56 = load i32, i32* %steps, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 3), align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %58, i64 %idxprom74
  %59 = load i32*, i32** %arrayidx75, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %60 to i64
  %61 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 3), align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %61, i64 %idxprom76
  %62 = load i32*, i32** %arrayidx77, align 8
  call void @generate_bezier(i32* %arraydecay72, i32* %arraydecay73, i32 %56, i32* %59, i32* %62)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.63
  %63 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %63, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.60

for.end.80:                                       ; preds = %for.cond.60
  %64 = load i32, i32* %curve_start_offset, align 4
  %conv81 = sitofp i32 %64 to double
  %65 = load i32, i32* %tile_width, align 4
  %conv82 = sitofp i32 %65 to double
  %mul83 = fmul double 1.000000e-01, %conv82
  %add84 = fadd double %conv81, %mul83
  %conv85 = fptosi double %add84 to i32
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %conv85, i32* %arrayidx86, align 4
  %66 = load i32, i32* %curve_start_offset, align 4
  %conv87 = sitofp i32 %66 to double
  %67 = load i32, i32* %tile_width, align 4
  %conv88 = sitofp i32 %67 to double
  %mul89 = fmul double 4.666000e-01, %conv88
  %add90 = fadd double %conv87, %mul89
  %conv91 = fptosi double %add90 to i32
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv91, i32* %arrayidx92, align 4
  %68 = load i32, i32* %curve_start_offset, align 4
  %conv93 = sitofp i32 %68 to double
  %69 = load i32, i32* %tile_width, align 4
  %conv94 = sitofp i32 %69 to double
  %mul95 = fmul double 1.000000e-01, %conv94
  %add96 = fadd double %conv93, %mul95
  %conv97 = fptosi double %add96 to i32
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv97, i32* %arrayidx98, align 4
  %70 = load i32, i32* %curve_end_offset, align 4
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %70, i32* %arrayidx99, align 4
  %71 = load i32, i32* %y_offset, align 4
  %conv100 = sitofp i32 %71 to double
  %72 = load i32, i32* %tile_height, align 4
  %conv101 = sitofp i32 %72 to double
  %mul102 = fmul double 2.500000e-01, %conv101
  %add103 = fadd double %conv100, %mul102
  %conv104 = fptosi double %add103 to i32
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %conv104, i32* %arrayidx105, align 4
  %73 = load i32, i32* %y_offset, align 4
  %conv106 = sitofp i32 %73 to double
  %74 = load i32, i32* %tile_height, align 4
  %conv107 = sitofp i32 %74 to double
  %mul108 = fmul double 2.083000e-01, %conv107
  %add109 = fadd double %conv106, %mul108
  %conv110 = fptosi double %add109 to i32
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv110, i32* %arrayidx111, align 4
  %75 = load i32, i32* %y_offset, align 4
  %conv112 = sitofp i32 %75 to double
  %76 = load i32, i32* %tile_height, align 4
  %conv113 = sitofp i32 %76 to double
  %mul114 = fmul double 8.330000e-02, %conv113
  %add115 = fadd double %conv112, %mul114
  %conv116 = fptosi double %add115 to i32
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv116, i32* %arrayidx117, align 4
  %77 = load i32, i32* %y_offset, align 4
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %77, i32* %arrayidx118, align 4
  %arraydecay119 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %78 = load i32, i32* %steps, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 3), align 8
  %80 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 3), align 8
  call void @generate_bezier(i32* %arraydecay119, i32* %arraydecay120, i32 %78, i32* %79, i32* %80)
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.139, %for.end.80
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %blend_lines, align 4
  %cmp122 = icmp slt i32 %81, %82
  br i1 %cmp122, label %for.body.124, label %for.end.141

for.body.124:                                     ; preds = %for.cond.121
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %83 = load i32, i32* %arrayidx125, align 4
  %inc126 = add nsw i32 %83, 1
  store i32 %inc126, i32* %arrayidx125, align 4
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %84 = load i32, i32* %arrayidx127, align 4
  %inc128 = add nsw i32 %84, 1
  store i32 %inc128, i32* %arrayidx127, align 4
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %85 = load i32, i32* %arrayidx129, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %arrayidx129, align 4
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %86 = load i32, i32* %arrayidx131, align 4
  %inc132 = add nsw i32 %86, 1
  store i32 %inc132, i32* %arrayidx131, align 4
  %arraydecay133 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay134 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %87 = load i32, i32* %steps, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %88 to i64
  %89 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 3), align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %89, i64 %idxprom135
  %90 = load i32*, i32** %arrayidx136, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %91 to i64
  %92 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 3), align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %92, i64 %idxprom137
  %93 = load i32*, i32** %arrayidx138, align 8
  call void @generate_bezier(i32* %arraydecay133, i32* %arraydecay134, i32 %87, i32* %90, i32* %93)
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.124
  %94 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %94, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.121

for.end.141:                                      ; preds = %for.cond.121
  %95 = load i32, i32* %blend_lines, align 4
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %96 = load i32, i32* %arrayidx142, align 4
  %sub143 = sub nsw i32 %96, %95
  store i32 %sub143, i32* %arrayidx142, align 4
  %97 = load i32, i32* %blend_lines, align 4
  %arrayidx144 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %98 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %98, %97
  store i32 %sub145, i32* %arrayidx144, align 4
  %99 = load i32, i32* %blend_lines, align 4
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %100 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %100, %99
  store i32 %sub147, i32* %arrayidx146, align 4
  %101 = load i32, i32* %blend_lines, align 4
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %102 = load i32, i32* %arrayidx148, align 4
  %sub149 = sub nsw i32 %102, %101
  store i32 %sub149, i32* %arrayidx148, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.168, %for.end.141
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %blend_lines, align 4
  %cmp151 = icmp slt i32 %103, %104
  br i1 %cmp151, label %for.body.153, label %for.end.170

for.body.153:                                     ; preds = %for.cond.150
  %arrayidx154 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  %105 = load i32, i32* %arrayidx154, align 4
  %dec155 = add nsw i32 %105, -1
  store i32 %dec155, i32* %arrayidx154, align 4
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  %106 = load i32, i32* %arrayidx156, align 4
  %dec157 = add nsw i32 %106, -1
  store i32 %dec157, i32* %arrayidx156, align 4
  %arrayidx158 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  %107 = load i32, i32* %arrayidx158, align 4
  %dec159 = add nsw i32 %107, -1
  store i32 %dec159, i32* %arrayidx158, align 4
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %108 = load i32, i32* %arrayidx160, align 4
  %dec161 = add nsw i32 %108, -1
  store i32 %dec161, i32* %arrayidx160, align 4
  %arraydecay162 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay163 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %109 = load i32, i32* %steps, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %110 to i64
  %111 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 3), align 8
  %arrayidx165 = getelementptr inbounds i32*, i32** %111, i64 %idxprom164
  %112 = load i32*, i32** %arrayidx165, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %113 to i64
  %114 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 3), align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %114, i64 %idxprom166
  %115 = load i32*, i32** %arrayidx167, align 8
  call void @generate_bezier(i32* %arraydecay162, i32* %arraydecay163, i32 %109, i32* %112, i32* %115)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.153
  %116 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %116, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.150

for.end.170:                                      ; preds = %for.cond.150
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_vertical_border(i8* %buffer, i32 %bufsize, i32 %width, i32 %height, i32 %bytes, i32 %x_offset, i32 %ytiles, i32 %blend_lines, double %blend_amount) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %ytiles.addr = alloca i32, align 4
  %blend_lines.addr = alloca i32, align 4
  %blend_amount.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_height_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %px = alloca [2 x i32], align 4
  %py = alloca [2 x i32], align 4
  %ly = alloca [2 x i32], align 4
  %dy = alloca [2 x i32], align 4
  %y_offset = alloca i32, align 4
  %delta = alloca double, align 8
  %sigma = alloca double, align 8
  %right = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %ytiles, i32* %ytiles.addr, align 4
  store i32 %blend_lines, i32* %blend_lines.addr, align 4
  store double %blend_amount, double* %blend_amount.addr, align 8
  %0 = load i32, i32* %height.addr, align 4
  %1 = load i32, i32* %ytiles.addr, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %tile_height, align 4
  %2 = load i32, i32* %tile_height, align 4
  %div1 = sdiv i32 %2, 8
  store i32 %div1, i32* %tile_height_eighth, align 4
  %3 = load i32, i32* %tile_height_eighth, align 4
  %mul = mul nsw i32 3, %3
  store i32 %mul, i32* %curve_start_offset, align 4
  %4 = load i32, i32* %curve_start_offset, align 4
  %5 = load i32, i32* %tile_height_eighth, align 4
  %mul2 = mul nsw i32 2, %5
  %add = add nsw i32 %4, %mul2
  store i32 %add, i32* %curve_end_offset, align 4
  store i32 0, i32* %y_offset, align 4
  %6 = load double, double* %blend_amount.addr, align 8
  %7 = load i32, i32* %blend_lines.addr, align 4
  %conv = sitofp i32 %7 to double
  %div3 = fdiv double %6, %conv
  store double %div3, double* %sigma, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %ytiles.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %call = call i32 @g_random_int_range(i32 0, i32 2)
  store i32 %call, i32* %right, align 4
  %10 = load i32, i32* %x_offset.addr, align 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 1
  store i32 %10, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %10, i32* %arrayidx5, align 4
  %11 = load i32, i32* %y_offset, align 4
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %11, i32* %arrayidx6, align 4
  %12 = load i32, i32* %y_offset, align 4
  %13 = load i32, i32* %curve_start_offset, align 4
  %add7 = add nsw i32 %12, %13
  %sub = sub nsw i32 %add7, 1
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 1
  store i32 %sub, i32* %arrayidx8, align 4
  %14 = load i8*, i8** %buffer.addr, align 8
  %15 = load i32, i32* %bufsize.addr, align 4
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %bytes.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  call void @draw_vertical_line(i8* %14, i32 %15, i32 %16, i32 %17, i32* %arraydecay, i32* %arraydecay9)
  %18 = load double, double* %blend_amount.addr, align 8
  store double %18, double* %delta, align 8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  %19 = load i32, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 0
  store i32 %19, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 0
  store i32 %19, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 1
  %20 = load i32, i32* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 1
  store i32 %20, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 1
  store i32 %20, i32* %arrayidx15, align 4
  %21 = load i32, i32* %right, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %blend_lines.addr, align 4
  %add16 = add nsw i32 %22, 2
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 1
  %23 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %23, %add16
  store i32 %add18, i32* %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %blend_lines.addr, align 4
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 0
  %26 = load i32, i32* %arrayidx23, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 1
  %27 = load i32, i32* %arrayidx24, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 0
  %28 = load i32, i32* %arrayidx25, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, i32* %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 1
  %29 = load i32, i32* %arrayidx27, align 4
  %dec28 = add nsw i32 %29, -1
  store i32 %dec28, i32* %arrayidx27, align 4
  %30 = load i32, i32* %x_offset.addr, align 4
  %31 = load i32, i32* %j, align 4
  %sub29 = sub nsw i32 %30, %31
  %sub30 = sub nsw i32 %sub29, 1
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %sub30, i32* %arrayidx31, align 4
  %32 = load i8*, i8** %buffer.addr, align 8
  %33 = load i32, i32* %bufsize.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %bytes.addr, align 4
  %arraydecay32 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i32 0
  %36 = load double, double* %delta, align 8
  call void @darken_vertical_line(i8* %32, i32 %33, i32 %34, i32 %35, i32* %arraydecay32, i32* %arraydecay33, double %36)
  %37 = load i32, i32* %x_offset.addr, align 4
  %38 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %37, %38
  %add35 = add nsw i32 %add34, 1
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %add35, i32* %arrayidx36, align 4
  %39 = load i8*, i8** %buffer.addr, align 8
  %40 = load i32, i32* %bufsize.addr, align 4
  %41 = load i32, i32* %width.addr, align 4
  %42 = load i32, i32* %bytes.addr, align 4
  %arraydecay37 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i32 0
  %43 = load double, double* %delta, align 8
  call void @lighten_vertical_line(i8* %39, i32 %40, i32 %41, i32 %42, i32* %arraydecay37, i32* %arraydecay38, double %43)
  %44 = load double, double* %sigma, align 8
  %45 = load double, double* %delta, align 8
  %sub39 = fsub double %45, %44
  store double %sub39, double* %delta, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %46 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %46, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %47 = load i32, i32* %right, align 4
  %tobool41 = icmp ne i32 %47, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %for.end
  %48 = load i8*, i8** %buffer.addr, align 8
  %49 = load i32, i32* %bufsize.addr, align 4
  %50 = load i32, i32* %width.addr, align 4
  %51 = load i32, i32* %bytes.addr, align 4
  %52 = load i32, i32* %x_offset.addr, align 4
  %53 = load i32, i32* %y_offset, align 4
  %54 = load i32, i32* %curve_start_offset, align 4
  %add43 = add nsw i32 %53, %54
  %55 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  call void @draw_right_bump(i8* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %add43, i32 %55)
  %56 = load double, double* %blend_amount.addr, align 8
  store double %56, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.51, %if.then.42
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %blend_lines.addr, align 4
  %cmp45 = icmp slt i32 %57, %58
  br i1 %cmp45, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.44
  %59 = load i8*, i8** %buffer.addr, align 8
  %60 = load i32, i32* %bufsize.addr, align 4
  %61 = load i32, i32* %width.addr, align 4
  %62 = load i32, i32* %bytes.addr, align 4
  %63 = load i32, i32* %x_offset.addr, align 4
  %64 = load i32, i32* %y_offset, align 4
  %65 = load i32, i32* %curve_start_offset, align 4
  %add48 = add nsw i32 %64, %65
  %66 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  %67 = load double, double* %delta, align 8
  %68 = load i32, i32* %j, align 4
  call void @darken_right_bump(i8* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %add48, i32 %66, double %67, i32 %68)
  %69 = load i8*, i8** %buffer.addr, align 8
  %70 = load i32, i32* %bufsize.addr, align 4
  %71 = load i32, i32* %width.addr, align 4
  %72 = load i32, i32* %bytes.addr, align 4
  %73 = load i32, i32* %x_offset.addr, align 4
  %74 = load i32, i32* %y_offset, align 4
  %75 = load i32, i32* %curve_start_offset, align 4
  %add49 = add nsw i32 %74, %75
  %76 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  %77 = load double, double* %delta, align 8
  %78 = load i32, i32* %j, align 4
  call void @lighten_right_bump(i8* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %add49, i32 %76, double %77, i32 %78)
  %79 = load double, double* %sigma, align 8
  %80 = load double, double* %delta, align 8
  %sub50 = fsub double %80, %79
  store double %sub50, double* %delta, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.47
  %81 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %81, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.44

for.end.53:                                       ; preds = %for.cond.44
  br label %if.end.65

if.else:                                          ; preds = %for.end
  %82 = load i8*, i8** %buffer.addr, align 8
  %83 = load i32, i32* %bufsize.addr, align 4
  %84 = load i32, i32* %width.addr, align 4
  %85 = load i32, i32* %bytes.addr, align 4
  %86 = load i32, i32* %x_offset.addr, align 4
  %87 = load i32, i32* %y_offset, align 4
  %88 = load i32, i32* %curve_start_offset, align 4
  %add54 = add nsw i32 %87, %88
  %89 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  call void @draw_left_bump(i8* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %add54, i32 %89)
  %90 = load double, double* %blend_amount.addr, align 8
  store double %90, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.62, %if.else
  %91 = load i32, i32* %j, align 4
  %92 = load i32, i32* %blend_lines.addr, align 4
  %cmp56 = icmp slt i32 %91, %92
  br i1 %cmp56, label %for.body.58, label %for.end.64

for.body.58:                                      ; preds = %for.cond.55
  %93 = load i8*, i8** %buffer.addr, align 8
  %94 = load i32, i32* %bufsize.addr, align 4
  %95 = load i32, i32* %width.addr, align 4
  %96 = load i32, i32* %bytes.addr, align 4
  %97 = load i32, i32* %x_offset.addr, align 4
  %98 = load i32, i32* %y_offset, align 4
  %99 = load i32, i32* %curve_start_offset, align 4
  %add59 = add nsw i32 %98, %99
  %100 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  %101 = load double, double* %delta, align 8
  %102 = load i32, i32* %j, align 4
  call void @darken_left_bump(i8* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %add59, i32 %100, double %101, i32 %102)
  %103 = load i8*, i8** %buffer.addr, align 8
  %104 = load i32, i32* %bufsize.addr, align 4
  %105 = load i32, i32* %width.addr, align 4
  %106 = load i32, i32* %bytes.addr, align 4
  %107 = load i32, i32* %x_offset.addr, align 4
  %108 = load i32, i32* %y_offset, align 4
  %109 = load i32, i32* %curve_start_offset, align 4
  %add60 = add nsw i32 %108, %109
  %110 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  %111 = load double, double* %delta, align 8
  %112 = load i32, i32* %j, align 4
  call void @lighten_left_bump(i8* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %add60, i32 %110, double %111, i32 %112)
  %113 = load double, double* %sigma, align 8
  %114 = load double, double* %delta, align 8
  %sub61 = fsub double %114, %113
  store double %sub61, double* %delta, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.58
  %115 = load i32, i32* %j, align 4
  %inc63 = add nsw i32 %115, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.55

for.end.64:                                       ; preds = %for.cond.55
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %for.end.53
  %116 = load i32, i32* %x_offset.addr, align 4
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 1
  store i32 %116, i32* %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %116, i32* %arrayidx67, align 4
  %117 = load i32, i32* %y_offset, align 4
  %118 = load i32, i32* %curve_end_offset, align 4
  %add68 = add nsw i32 %117, %118
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %add68, i32* %arrayidx69, align 4
  %119 = load i32, i32* %i, align 4
  %idxprom = sext i32 %119 to i64
  %120 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %120, i64 %idxprom
  %121 = load i32, i32* %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 1
  store i32 %121, i32* %arrayidx71, align 4
  %122 = load i8*, i8** %buffer.addr, align 8
  %123 = load i32, i32* %bufsize.addr, align 4
  %124 = load i32, i32* %width.addr, align 4
  %125 = load i32, i32* %bytes.addr, align 4
  %arraydecay72 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  call void @draw_vertical_line(i8* %122, i32 %123, i32 %124, i32 %125, i32* %arraydecay72, i32* %arraydecay73)
  %126 = load double, double* %blend_amount.addr, align 8
  store double %126, double* %delta, align 8
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  %127 = load i32, i32* %arrayidx74, align 4
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 0
  store i32 %127, i32* %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 0
  store i32 %127, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 1
  %128 = load i32, i32* %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 1
  store i32 %128, i32* %arrayidx78, align 4
  %arrayidx79 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 1
  store i32 %128, i32* %arrayidx79, align 4
  %129 = load i32, i32* %right, align 4
  %tobool80 = icmp ne i32 %129, 0
  br i1 %tobool80, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.end.65
  %130 = load i32, i32* %blend_lines.addr, align 4
  %add82 = add nsw i32 %130, 2
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 0
  %131 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %131, %add82
  store i32 %sub84, i32* %arrayidx83, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.end.65
  store i32 0, i32* %j, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.109, %if.end.85
  %132 = load i32, i32* %j, align 4
  %133 = load i32, i32* %blend_lines.addr, align 4
  %cmp87 = icmp slt i32 %132, %133
  br i1 %cmp87, label %for.body.89, label %for.end.111

for.body.89:                                      ; preds = %for.cond.86
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 0
  %134 = load i32, i32* %arrayidx90, align 4
  %inc91 = add nsw i32 %134, 1
  store i32 %inc91, i32* %arrayidx90, align 4
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i64 1
  %135 = load i32, i32* %arrayidx92, align 4
  %dec93 = add nsw i32 %135, -1
  store i32 %dec93, i32* %arrayidx92, align 4
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 0
  %136 = load i32, i32* %arrayidx94, align 4
  %inc95 = add nsw i32 %136, 1
  store i32 %inc95, i32* %arrayidx94, align 4
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i64 1
  %137 = load i32, i32* %arrayidx96, align 4
  %dec97 = add nsw i32 %137, -1
  store i32 %dec97, i32* %arrayidx96, align 4
  %138 = load i32, i32* %x_offset.addr, align 4
  %139 = load i32, i32* %j, align 4
  %sub98 = sub nsw i32 %138, %139
  %sub99 = sub nsw i32 %sub98, 1
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %sub99, i32* %arrayidx100, align 4
  %140 = load i8*, i8** %buffer.addr, align 8
  %141 = load i32, i32* %bufsize.addr, align 4
  %142 = load i32, i32* %width.addr, align 4
  %143 = load i32, i32* %bytes.addr, align 4
  %arraydecay101 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [2 x i32], [2 x i32]* %dy, i32 0, i32 0
  %144 = load double, double* %delta, align 8
  call void @darken_vertical_line(i8* %140, i32 %141, i32 %142, i32 %143, i32* %arraydecay101, i32* %arraydecay102, double %144)
  %145 = load i32, i32* %x_offset.addr, align 4
  %146 = load i32, i32* %j, align 4
  %add103 = add nsw i32 %145, %146
  %add104 = add nsw i32 %add103, 1
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %add104, i32* %arrayidx105, align 4
  %147 = load i8*, i8** %buffer.addr, align 8
  %148 = load i32, i32* %bufsize.addr, align 4
  %149 = load i32, i32* %width.addr, align 4
  %150 = load i32, i32* %bytes.addr, align 4
  %arraydecay106 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay107 = getelementptr inbounds [2 x i32], [2 x i32]* %ly, i32 0, i32 0
  %151 = load double, double* %delta, align 8
  call void @lighten_vertical_line(i8* %147, i32 %148, i32 %149, i32 %150, i32* %arraydecay106, i32* %arraydecay107, double %151)
  %152 = load double, double* %sigma, align 8
  %153 = load double, double* %delta, align 8
  %sub108 = fsub double %153, %152
  store double %sub108, double* %delta, align 8
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.89
  %154 = load i32, i32* %j, align 4
  %inc110 = add nsw i32 %154, 1
  store i32 %inc110, i32* %j, align 4
  br label %for.cond.86

for.end.111:                                      ; preds = %for.cond.86
  %155 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %155 to i64
  %156 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %156, i64 %idxprom112
  %157 = load i32, i32* %arrayidx113, align 4
  store i32 %157, i32* %y_offset, align 4
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.end.111
  %158 = load i32, i32* %i, align 4
  %inc115 = add nsw i32 %158, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal void @draw_horizontal_border(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %y_offset, i32 %xtiles, i32 %blend_lines, double %blend_amount) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %xtiles.addr = alloca i32, align 4
  %blend_lines.addr = alloca i32, align 4
  %blend_amount.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_width_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %px = alloca [2 x i32], align 4
  %py = alloca [2 x i32], align 4
  %dx = alloca [2 x i32], align 4
  %lx = alloca [2 x i32], align 4
  %x_offset = alloca i32, align 4
  %delta = alloca double, align 8
  %sigma = alloca double, align 8
  %up = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %xtiles, i32* %xtiles.addr, align 4
  store i32 %blend_lines, i32* %blend_lines.addr, align 4
  store double %blend_amount, double* %blend_amount.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %xtiles.addr, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %tile_width, align 4
  %2 = load i32, i32* %tile_width, align 4
  %div1 = sdiv i32 %2, 8
  store i32 %div1, i32* %tile_width_eighth, align 4
  %3 = load i32, i32* %tile_width_eighth, align 4
  %mul = mul nsw i32 3, %3
  store i32 %mul, i32* %curve_start_offset, align 4
  %4 = load i32, i32* %curve_start_offset, align 4
  %5 = load i32, i32* %tile_width_eighth, align 4
  %mul2 = mul nsw i32 2, %5
  %add = add nsw i32 %4, %mul2
  store i32 %add, i32* %curve_end_offset, align 4
  store i32 0, i32* %x_offset, align 4
  %6 = load double, double* %blend_amount.addr, align 8
  %7 = load i32, i32* %blend_lines.addr, align 4
  %conv = sitofp i32 %7 to double
  %div3 = fdiv double %6, %conv
  store double %div3, double* %sigma, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %xtiles.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %call = call i32 @g_random_int_range(i32 0, i32 2)
  store i32 %call, i32* %up, align 4
  %10 = load i32, i32* %x_offset, align 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %10, i32* %arrayidx, align 4
  %11 = load i32, i32* %x_offset, align 4
  %12 = load i32, i32* %curve_start_offset, align 4
  %add5 = add nsw i32 %11, %12
  %sub = sub nsw i32 %add5, 1
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 1
  store i32 %sub, i32* %arrayidx6, align 4
  %13 = load i32, i32* %y_offset.addr, align 4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 1
  store i32 %13, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %13, i32* %arrayidx8, align 4
  %14 = load i8*, i8** %buffer.addr, align 8
  %15 = load i32, i32* %bufsize.addr, align 4
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %bytes.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  call void @draw_horizontal_line(i8* %14, i32 %15, i32 %16, i32 %17, i32* %arraydecay, i32* %arraydecay9)
  %18 = load double, double* %blend_amount.addr, align 8
  store double %18, double* %delta, align 8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  %19 = load i32, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 0
  store i32 %19, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 0
  store i32 %19, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 1
  %20 = load i32, i32* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 1
  store i32 %20, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 1
  store i32 %20, i32* %arrayidx15, align 4
  %21 = load i32, i32* %up, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %blend_lines.addr, align 4
  %add16 = add nsw i32 %22, 2
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 1
  %23 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %23, %add16
  store i32 %add18, i32* %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %blend_lines.addr, align 4
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 0
  %26 = load i32, i32* %arrayidx23, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 1
  %27 = load i32, i32* %arrayidx24, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 0
  %28 = load i32, i32* %arrayidx25, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, i32* %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 1
  %29 = load i32, i32* %arrayidx27, align 4
  %dec28 = add nsw i32 %29, -1
  store i32 %dec28, i32* %arrayidx27, align 4
  %30 = load i32, i32* %y_offset.addr, align 4
  %31 = load i32, i32* %j, align 4
  %sub29 = sub nsw i32 %30, %31
  %sub30 = sub nsw i32 %sub29, 1
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %sub30, i32* %arrayidx31, align 4
  %32 = load i8*, i8** %buffer.addr, align 8
  %33 = load i32, i32* %bufsize.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %bytes.addr, align 4
  %arraydecay32 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  %36 = load double, double* %delta, align 8
  call void @darken_horizontal_line(i8* %32, i32 %33, i32 %34, i32 %35, i32* %arraydecay32, i32* %arraydecay33, double %36)
  %37 = load i32, i32* %y_offset.addr, align 4
  %38 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %37, %38
  %add35 = add nsw i32 %add34, 1
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %add35, i32* %arrayidx36, align 4
  %39 = load i8*, i8** %buffer.addr, align 8
  %40 = load i32, i32* %bufsize.addr, align 4
  %41 = load i32, i32* %width.addr, align 4
  %42 = load i32, i32* %bytes.addr, align 4
  %arraydecay37 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  %43 = load double, double* %delta, align 8
  call void @lighten_horizontal_line(i8* %39, i32 %40, i32 %41, i32 %42, i32* %arraydecay37, i32* %arraydecay38, double %43)
  %44 = load double, double* %sigma, align 8
  %45 = load double, double* %delta, align 8
  %sub39 = fsub double %45, %44
  store double %sub39, double* %delta, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %46 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %46, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %47 = load i32, i32* %up, align 4
  %tobool41 = icmp ne i32 %47, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %for.end
  %48 = load i8*, i8** %buffer.addr, align 8
  %49 = load i32, i32* %bufsize.addr, align 4
  %50 = load i32, i32* %width.addr, align 4
  %51 = load i32, i32* %bytes.addr, align 4
  %52 = load i32, i32* %y_offset.addr, align 4
  %53 = load i32, i32* %x_offset, align 4
  %54 = load i32, i32* %curve_start_offset, align 4
  %add43 = add nsw i32 %53, %54
  %55 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  call void @draw_up_bump(i8* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %add43, i32 %55)
  %56 = load double, double* %blend_amount.addr, align 8
  store double %56, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.51, %if.then.42
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %blend_lines.addr, align 4
  %cmp45 = icmp slt i32 %57, %58
  br i1 %cmp45, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.44
  %59 = load i8*, i8** %buffer.addr, align 8
  %60 = load i32, i32* %bufsize.addr, align 4
  %61 = load i32, i32* %width.addr, align 4
  %62 = load i32, i32* %bytes.addr, align 4
  %63 = load i32, i32* %y_offset.addr, align 4
  %64 = load i32, i32* %x_offset, align 4
  %65 = load i32, i32* %curve_start_offset, align 4
  %add48 = add nsw i32 %64, %65
  %66 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  %67 = load double, double* %delta, align 8
  %68 = load i32, i32* %j, align 4
  call void @darken_up_bump(i8* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %add48, i32 %66, double %67, i32 %68)
  %69 = load i8*, i8** %buffer.addr, align 8
  %70 = load i32, i32* %bufsize.addr, align 4
  %71 = load i32, i32* %width.addr, align 4
  %72 = load i32, i32* %bytes.addr, align 4
  %73 = load i32, i32* %y_offset.addr, align 4
  %74 = load i32, i32* %x_offset, align 4
  %75 = load i32, i32* %curve_start_offset, align 4
  %add49 = add nsw i32 %74, %75
  %76 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  %77 = load double, double* %delta, align 8
  %78 = load i32, i32* %j, align 4
  call void @lighten_up_bump(i8* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %add49, i32 %76, double %77, i32 %78)
  %79 = load double, double* %sigma, align 8
  %80 = load double, double* %delta, align 8
  %sub50 = fsub double %80, %79
  store double %sub50, double* %delta, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.47
  %81 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %81, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.44

for.end.53:                                       ; preds = %for.cond.44
  br label %if.end.65

if.else:                                          ; preds = %for.end
  %82 = load i8*, i8** %buffer.addr, align 8
  %83 = load i32, i32* %bufsize.addr, align 4
  %84 = load i32, i32* %width.addr, align 4
  %85 = load i32, i32* %bytes.addr, align 4
  %86 = load i32, i32* %y_offset.addr, align 4
  %87 = load i32, i32* %x_offset, align 4
  %88 = load i32, i32* %curve_start_offset, align 4
  %add54 = add nsw i32 %87, %88
  %89 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  call void @draw_down_bump(i8* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %add54, i32 %89)
  %90 = load double, double* %blend_amount.addr, align 8
  store double %90, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.62, %if.else
  %91 = load i32, i32* %j, align 4
  %92 = load i32, i32* %blend_lines.addr, align 4
  %cmp56 = icmp slt i32 %91, %92
  br i1 %cmp56, label %for.body.58, label %for.end.64

for.body.58:                                      ; preds = %for.cond.55
  %93 = load i8*, i8** %buffer.addr, align 8
  %94 = load i32, i32* %bufsize.addr, align 4
  %95 = load i32, i32* %width.addr, align 4
  %96 = load i32, i32* %bytes.addr, align 4
  %97 = load i32, i32* %y_offset.addr, align 4
  %98 = load i32, i32* %x_offset, align 4
  %99 = load i32, i32* %curve_start_offset, align 4
  %add59 = add nsw i32 %98, %99
  %100 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  %101 = load double, double* %delta, align 8
  %102 = load i32, i32* %j, align 4
  call void @darken_down_bump(i8* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %add59, i32 %100, double %101, i32 %102)
  %103 = load i8*, i8** %buffer.addr, align 8
  %104 = load i32, i32* %bufsize.addr, align 4
  %105 = load i32, i32* %width.addr, align 4
  %106 = load i32, i32* %bytes.addr, align 4
  %107 = load i32, i32* %y_offset.addr, align 4
  %108 = load i32, i32* %x_offset, align 4
  %109 = load i32, i32* %curve_start_offset, align 4
  %add60 = add nsw i32 %108, %109
  %110 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  %111 = load double, double* %delta, align 8
  %112 = load i32, i32* %j, align 4
  call void @lighten_down_bump(i8* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %add60, i32 %110, double %111, i32 %112)
  %113 = load double, double* %sigma, align 8
  %114 = load double, double* %delta, align 8
  %sub61 = fsub double %114, %113
  store double %sub61, double* %delta, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.58
  %115 = load i32, i32* %j, align 4
  %inc63 = add nsw i32 %115, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.55

for.end.64:                                       ; preds = %for.cond.55
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %for.end.53
  %116 = load i32, i32* %x_offset, align 4
  %117 = load i32, i32* %curve_end_offset, align 4
  %add66 = add nsw i32 %116, %117
  %arrayidx67 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  store i32 %add66, i32* %arrayidx67, align 4
  %118 = load i32, i32* %i, align 4
  %idxprom = sext i32 %118 to i64
  %119 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %119, i64 %idxprom
  %120 = load i32, i32* %arrayidx68, align 4
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 1
  store i32 %120, i32* %arrayidx69, align 4
  %121 = load i32, i32* %y_offset.addr, align 4
  %arrayidx70 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 1
  store i32 %121, i32* %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %121, i32* %arrayidx71, align 4
  %122 = load i8*, i8** %buffer.addr, align 8
  %123 = load i32, i32* %bufsize.addr, align 4
  %124 = load i32, i32* %width.addr, align 4
  %125 = load i32, i32* %bytes.addr, align 4
  %arraydecay72 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  call void @draw_horizontal_line(i8* %122, i32 %123, i32 %124, i32 %125, i32* %arraydecay72, i32* %arraydecay73)
  %126 = load double, double* %blend_amount.addr, align 8
  store double %126, double* %delta, align 8
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 0
  %127 = load i32, i32* %arrayidx74, align 4
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 0
  store i32 %127, i32* %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 0
  store i32 %127, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i32 0, i64 1
  %128 = load i32, i32* %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 1
  store i32 %128, i32* %arrayidx78, align 4
  %arrayidx79 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 1
  store i32 %128, i32* %arrayidx79, align 4
  %129 = load i32, i32* %up, align 4
  %tobool80 = icmp ne i32 %129, 0
  br i1 %tobool80, label %if.end.85, label %if.then.81

if.then.81:                                       ; preds = %if.end.65
  %130 = load i32, i32* %blend_lines.addr, align 4
  %add82 = add nsw i32 %130, 2
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 0
  %131 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %131, %add82
  store i32 %sub84, i32* %arrayidx83, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.end.65
  store i32 0, i32* %j, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.109, %if.end.85
  %132 = load i32, i32* %j, align 4
  %133 = load i32, i32* %blend_lines.addr, align 4
  %cmp87 = icmp slt i32 %132, %133
  br i1 %cmp87, label %for.body.89, label %for.end.111

for.body.89:                                      ; preds = %for.cond.86
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 0
  %134 = load i32, i32* %arrayidx90, align 4
  %inc91 = add nsw i32 %134, 1
  store i32 %inc91, i32* %arrayidx90, align 4
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i64 1
  %135 = load i32, i32* %arrayidx92, align 4
  %dec93 = add nsw i32 %135, -1
  store i32 %dec93, i32* %arrayidx92, align 4
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 0
  %136 = load i32, i32* %arrayidx94, align 4
  %inc95 = add nsw i32 %136, 1
  store i32 %inc95, i32* %arrayidx94, align 4
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i64 1
  %137 = load i32, i32* %arrayidx96, align 4
  %dec97 = add nsw i32 %137, -1
  store i32 %dec97, i32* %arrayidx96, align 4
  %138 = load i32, i32* %y_offset.addr, align 4
  %139 = load i32, i32* %j, align 4
  %sub98 = sub nsw i32 %138, %139
  %sub99 = sub nsw i32 %sub98, 1
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %sub99, i32* %arrayidx100, align 4
  %140 = load i8*, i8** %buffer.addr, align 8
  %141 = load i32, i32* %bufsize.addr, align 4
  %142 = load i32, i32* %width.addr, align 4
  %143 = load i32, i32* %bytes.addr, align 4
  %arraydecay101 = getelementptr inbounds [2 x i32], [2 x i32]* %dx, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  %144 = load double, double* %delta, align 8
  call void @darken_horizontal_line(i8* %140, i32 %141, i32 %142, i32 %143, i32* %arraydecay101, i32* %arraydecay102, double %144)
  %145 = load i32, i32* %y_offset.addr, align 4
  %146 = load i32, i32* %j, align 4
  %add103 = add nsw i32 %145, %146
  %add104 = add nsw i32 %add103, 1
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i64 0
  store i32 %add104, i32* %arrayidx105, align 4
  %147 = load i8*, i8** %buffer.addr, align 8
  %148 = load i32, i32* %bufsize.addr, align 4
  %149 = load i32, i32* %width.addr, align 4
  %150 = load i32, i32* %bytes.addr, align 4
  %arraydecay106 = getelementptr inbounds [2 x i32], [2 x i32]* %lx, i32 0, i32 0
  %arraydecay107 = getelementptr inbounds [2 x i32], [2 x i32]* %py, i32 0, i32 0
  %151 = load double, double* %delta, align 8
  call void @lighten_horizontal_line(i8* %147, i32 %148, i32 %149, i32 %150, i32* %arraydecay106, i32* %arraydecay107, double %151)
  %152 = load double, double* %sigma, align 8
  %153 = load double, double* %delta, align 8
  %sub108 = fsub double %153, %152
  store double %sub108, double* %delta, align 8
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.89
  %154 = load i32, i32* %j, align 4
  %inc110 = add nsw i32 %154, 1
  store i32 %inc110, i32* %j, align 4
  br label %for.cond.86

for.end.111:                                      ; preds = %for.cond.86
  %155 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %155 to i64
  %156 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %156, i64 %idxprom112
  %157 = load i32, i32* %arrayidx113, align 4
  store i32 %157, i32* %x_offset, align 4
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.end.111
  %158 = load i32, i32* %i, align 4
  %inc115 = add nsw i32 %158, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_bezier_vertical_border(i8* %buffer, i32 %bufsize, i32 %width, i32 %height, i32 %bytes, i32 %x_offset, i32 %xtiles, i32 %ytiles, i32 %blend_lines, double %blend_amount, i32 %steps) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %xtiles.addr = alloca i32, align 4
  %ytiles.addr = alloca i32, align 4
  %blend_lines.addr = alloca i32, align 4
  %blend_amount.addr = alloca double, align 8
  %steps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_height_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %px = alloca [4 x i32], align 16
  %py = alloca [4 x i32], align 16
  %y_offset = alloca i32, align 4
  %delta = alloca double, align 8
  %sigma = alloca double, align 8
  %right = alloca i32, align 4
  %cachex = alloca i32*, align 8
  %cachey = alloca i32*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %xtiles, i32* %xtiles.addr, align 4
  store i32 %ytiles, i32* %ytiles.addr, align 4
  store i32 %blend_lines, i32* %blend_lines.addr, align 4
  store double %blend_amount, double* %blend_amount.addr, align 8
  store i32 %steps, i32* %steps.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %xtiles.addr, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %tile_width, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %ytiles.addr, align 4
  %div1 = sdiv i32 %2, %3
  store i32 %div1, i32* %tile_height, align 4
  %4 = load i32, i32* %tile_height, align 4
  %div2 = sdiv i32 %4, 8
  store i32 %div2, i32* %tile_height_eighth, align 4
  %5 = load i32, i32* %tile_height_eighth, align 4
  %mul = mul nsw i32 3, %5
  store i32 %mul, i32* %curve_start_offset, align 4
  %6 = load i32, i32* %curve_start_offset, align 4
  %7 = load i32, i32* %tile_height_eighth, align 4
  %mul3 = mul nsw i32 2, %7
  %add = add nsw i32 %6, %mul3
  store i32 %add, i32* %curve_end_offset, align 4
  store i32 0, i32* %y_offset, align 4
  %8 = load double, double* %blend_amount.addr, align 8
  %9 = load i32, i32* %blend_lines.addr, align 4
  %conv = sitofp i32 %9 to double
  %div4 = fdiv double %8, %conv
  store double %div4, double* %sigma, align 8
  %10 = load i32, i32* %steps.addr, align 4
  %conv5 = sext i32 %10 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv5, i64 4)
  %11 = bitcast i8* %call to i32*
  store i32* %11, i32** %cachex, align 8
  %12 = load i32, i32* %steps.addr, align 4
  %conv6 = sext i32 %12 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv6, i64 4)
  %13 = bitcast i8* %call7 to i32*
  store i32* %13, i32** %cachey, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.157, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %ytiles.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.159

for.body:                                         ; preds = %for.cond
  %call9 = call i32 @g_random_int_range(i32 0, i32 2)
  store i32 %call9, i32* %right, align 4
  %16 = load i32, i32* %x_offset.addr, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %16, i32* %arrayidx, align 4
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %16, i32* %arrayidx10, align 4
  %17 = load i32, i32* %x_offset.addr, align 4
  %conv11 = sitofp i32 %17 to double
  %18 = load i32, i32* %tile_width, align 4
  %conv12 = sitofp i32 %18 to double
  %mul13 = fmul double 5.000000e-02, %conv12
  %mul14 = fmul double %mul13, 1.200000e+00
  %add15 = fadd double %conv11, %mul14
  %conv16 = fptosi double %add15 to i32
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv16, i32* %arrayidx17, align 4
  %19 = load i32, i32* %x_offset.addr, align 4
  %conv18 = sitofp i32 %19 to double
  %20 = load i32, i32* %tile_width, align 4
  %conv19 = sitofp i32 %20 to double
  %mul20 = fmul double 5.000000e-02, %conv19
  %mul21 = fmul double %mul20, 1.200000e+00
  %add22 = fadd double %conv18, %mul21
  %conv23 = fptosi double %add22 to i32
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv23, i32* %arrayidx24, align 4
  %21 = load i32, i32* %y_offset, align 4
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %21, i32* %arrayidx25, align 4
  %22 = load i32, i32* %y_offset, align 4
  %conv26 = sitofp i32 %22 to double
  %23 = load i32, i32* %tile_height, align 4
  %conv27 = sitofp i32 %23 to double
  %mul28 = fmul double 2.000000e-01, %conv27
  %add29 = fadd double %conv26, %mul28
  %conv30 = fptosi double %add29 to i32
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv30, i32* %arrayidx31, align 4
  %24 = load i32, i32* %y_offset, align 4
  %conv32 = sitofp i32 %24 to double
  %25 = load i32, i32* %tile_height, align 4
  %conv33 = sitofp i32 %25 to double
  %mul34 = fmul double 3.000000e-01, %conv33
  %add35 = fadd double %conv32, %mul34
  %conv36 = fptosi double %add35 to i32
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv36, i32* %arrayidx37, align 4
  %26 = load i32, i32* %y_offset, align 4
  %27 = load i32, i32* %curve_start_offset, align 4
  %add38 = add nsw i32 %26, %27
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %add38, i32* %arrayidx39, align 4
  %28 = load i32, i32* %right, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load i32, i32* %x_offset.addr, align 4
  %conv40 = sitofp i32 %29 to double
  %30 = load i32, i32* %tile_width, align 4
  %conv41 = sitofp i32 %30 to double
  %mul42 = fmul double 5.000000e-02, %conv41
  %sub = fsub double %conv40, %mul42
  %conv43 = fptosi double %sub to i32
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv43, i32* %arrayidx44, align 4
  %31 = load i32, i32* %x_offset.addr, align 4
  %conv45 = sitofp i32 %31 to double
  %32 = load i32, i32* %tile_width, align 4
  %conv46 = sitofp i32 %32 to double
  %mul47 = fmul double 5.000000e-02, %conv46
  %sub48 = fsub double %conv45, %mul47
  %conv49 = fptosi double %sub48 to i32
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv49, i32* %arrayidx50, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay51 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %33 = load i32, i32* %steps.addr, align 4
  %34 = load i32*, i32** %cachex, align 8
  %35 = load i32*, i32** %cachey, align 8
  call void @generate_bezier(i32* %arraydecay, i32* %arraydecay51, i32 %33, i32* %34, i32* %35)
  %36 = load i8*, i8** %buffer.addr, align 8
  %37 = load i32, i32* %bufsize.addr, align 4
  %38 = load i32, i32* %width.addr, align 4
  %39 = load i32, i32* %bytes.addr, align 4
  %40 = load i32, i32* %steps.addr, align 4
  %41 = load i32*, i32** %cachex, align 8
  %42 = load i32*, i32** %cachey, align 8
  call void @draw_bezier_line(i8* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32* %41, i32* %42)
  %43 = load double, double* %blend_amount.addr, align 8
  store double %43, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %if.end
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %blend_lines.addr, align 4
  %cmp53 = icmp slt i32 %44, %45
  br i1 %cmp53, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.52
  %46 = load i32, i32* %j, align 4
  %sub56 = sub nsw i32 0, %46
  %sub57 = sub nsw i32 %sub56, 1
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %sub57, i32* %arrayidx58, align 4
  %47 = load i8*, i8** %buffer.addr, align 8
  %48 = load i32, i32* %bufsize.addr, align 4
  %49 = load i32, i32* %width.addr, align 4
  %50 = load i32, i32* %bytes.addr, align 4
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %51 = load i32, i32* %arrayidx59, align 4
  %52 = load i32, i32* %steps.addr, align 4
  %53 = load i32*, i32** %cachex, align 8
  %54 = load i32*, i32** %cachey, align 8
  %55 = load double, double* %delta, align 8
  call void @darken_bezier_line(i8* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 0, i32 %52, i32* %53, i32* %54, double %55)
  %56 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %56, 1
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %add60, i32* %arrayidx61, align 4
  %57 = load i8*, i8** %buffer.addr, align 8
  %58 = load i32, i32* %bufsize.addr, align 4
  %59 = load i32, i32* %width.addr, align 4
  %60 = load i32, i32* %bytes.addr, align 4
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %61 = load i32, i32* %arrayidx62, align 4
  %62 = load i32, i32* %steps.addr, align 4
  %63 = load i32*, i32** %cachex, align 8
  %64 = load i32*, i32** %cachey, align 8
  %65 = load double, double* %delta, align 8
  call void @lighten_bezier_line(i8* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 0, i32 %62, i32* %63, i32* %64, double %65)
  %66 = load double, double* %sigma, align 8
  %67 = load double, double* %delta, align 8
  %sub63 = fsub double %67, %66
  store double %sub63, double* %delta, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.55
  %68 = load i32, i32* %j, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  %69 = load i32, i32* %right, align 4
  %tobool64 = icmp ne i32 %69, 0
  br i1 %tobool64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %for.end
  %70 = load i8*, i8** %buffer.addr, align 8
  %71 = load i32, i32* %bufsize.addr, align 4
  %72 = load i32, i32* %width.addr, align 4
  %73 = load i32, i32* %bytes.addr, align 4
  %74 = load i32, i32* %x_offset.addr, align 4
  %75 = load i32, i32* %y_offset, align 4
  %76 = load i32, i32* %curve_start_offset, align 4
  %add66 = add nsw i32 %75, %76
  %77 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  call void @draw_right_bump(i8* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %add66, i32 %77)
  %78 = load double, double* %blend_amount.addr, align 8
  store double %78, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.74, %if.then.65
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* %blend_lines.addr, align 4
  %cmp68 = icmp slt i32 %79, %80
  br i1 %cmp68, label %for.body.70, label %for.end.76

for.body.70:                                      ; preds = %for.cond.67
  %81 = load i8*, i8** %buffer.addr, align 8
  %82 = load i32, i32* %bufsize.addr, align 4
  %83 = load i32, i32* %width.addr, align 4
  %84 = load i32, i32* %bytes.addr, align 4
  %85 = load i32, i32* %x_offset.addr, align 4
  %86 = load i32, i32* %y_offset, align 4
  %87 = load i32, i32* %curve_start_offset, align 4
  %add71 = add nsw i32 %86, %87
  %88 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  %89 = load double, double* %delta, align 8
  %90 = load i32, i32* %j, align 4
  call void @darken_right_bump(i8* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %add71, i32 %88, double %89, i32 %90)
  %91 = load i8*, i8** %buffer.addr, align 8
  %92 = load i32, i32* %bufsize.addr, align 4
  %93 = load i32, i32* %width.addr, align 4
  %94 = load i32, i32* %bytes.addr, align 4
  %95 = load i32, i32* %x_offset.addr, align 4
  %96 = load i32, i32* %y_offset, align 4
  %97 = load i32, i32* %curve_start_offset, align 4
  %add72 = add nsw i32 %96, %97
  %98 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 1), align 4
  %99 = load double, double* %delta, align 8
  %100 = load i32, i32* %j, align 4
  call void @lighten_right_bump(i8* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %add72, i32 %98, double %99, i32 %100)
  %101 = load double, double* %sigma, align 8
  %102 = load double, double* %delta, align 8
  %sub73 = fsub double %102, %101
  store double %sub73, double* %delta, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.70
  %103 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %103, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.67

for.end.76:                                       ; preds = %for.cond.67
  br label %if.end.88

if.else:                                          ; preds = %for.end
  %104 = load i8*, i8** %buffer.addr, align 8
  %105 = load i32, i32* %bufsize.addr, align 4
  %106 = load i32, i32* %width.addr, align 4
  %107 = load i32, i32* %bytes.addr, align 4
  %108 = load i32, i32* %x_offset.addr, align 4
  %109 = load i32, i32* %y_offset, align 4
  %110 = load i32, i32* %curve_start_offset, align 4
  %add77 = add nsw i32 %109, %110
  %111 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  call void @draw_left_bump(i8* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %add77, i32 %111)
  %112 = load double, double* %blend_amount.addr, align 8
  store double %112, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.85, %if.else
  %113 = load i32, i32* %j, align 4
  %114 = load i32, i32* %blend_lines.addr, align 4
  %cmp79 = icmp slt i32 %113, %114
  br i1 %cmp79, label %for.body.81, label %for.end.87

for.body.81:                                      ; preds = %for.cond.78
  %115 = load i8*, i8** %buffer.addr, align 8
  %116 = load i32, i32* %bufsize.addr, align 4
  %117 = load i32, i32* %width.addr, align 4
  %118 = load i32, i32* %bytes.addr, align 4
  %119 = load i32, i32* %x_offset.addr, align 4
  %120 = load i32, i32* %y_offset, align 4
  %121 = load i32, i32* %curve_start_offset, align 4
  %add82 = add nsw i32 %120, %121
  %122 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  %123 = load double, double* %delta, align 8
  %124 = load i32, i32* %j, align 4
  call void @darken_left_bump(i8* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %add82, i32 %122, double %123, i32 %124)
  %125 = load i8*, i8** %buffer.addr, align 8
  %126 = load i32, i32* %bufsize.addr, align 4
  %127 = load i32, i32* %width.addr, align 4
  %128 = load i32, i32* %bytes.addr, align 4
  %129 = load i32, i32* %x_offset.addr, align 4
  %130 = load i32, i32* %y_offset, align 4
  %131 = load i32, i32* %curve_start_offset, align 4
  %add83 = add nsw i32 %130, %131
  %132 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 0), align 4
  %133 = load double, double* %delta, align 8
  %134 = load i32, i32* %j, align 4
  call void @lighten_left_bump(i8* %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %add83, i32 %132, double %133, i32 %134)
  %135 = load double, double* %sigma, align 8
  %136 = load double, double* %delta, align 8
  %sub84 = fsub double %136, %135
  store double %sub84, double* %delta, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.81
  %137 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %137, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond.78

for.end.87:                                       ; preds = %for.cond.78
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %for.end.76
  %138 = load i32, i32* %x_offset.addr, align 4
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %138, i32* %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %138, i32* %arrayidx90, align 4
  %139 = load i32, i32* %x_offset.addr, align 4
  %conv91 = sitofp i32 %139 to double
  %140 = load i32, i32* %tile_width, align 4
  %conv92 = sitofp i32 %140 to double
  %mul93 = fmul double 5.000000e-02, %conv92
  %mul94 = fmul double %mul93, 1.200000e+00
  %add95 = fadd double %conv91, %mul94
  %conv96 = fptosi double %add95 to i32
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv96, i32* %arrayidx97, align 4
  %141 = load i32, i32* %x_offset.addr, align 4
  %conv98 = sitofp i32 %141 to double
  %142 = load i32, i32* %tile_width, align 4
  %conv99 = sitofp i32 %142 to double
  %mul100 = fmul double 5.000000e-02, %conv99
  %mul101 = fmul double %mul100, 1.200000e+00
  %add102 = fadd double %conv98, %mul101
  %conv103 = fptosi double %add102 to i32
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv103, i32* %arrayidx104, align 4
  %143 = load i32, i32* %y_offset, align 4
  %144 = load i32, i32* %curve_end_offset, align 4
  %add105 = add nsw i32 %143, %144
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %add105, i32* %arrayidx106, align 4
  %145 = load i32, i32* %y_offset, align 4
  %146 = load i32, i32* %curve_end_offset, align 4
  %add107 = add nsw i32 %145, %146
  %conv108 = sitofp i32 %add107 to double
  %147 = load i32, i32* %tile_height, align 4
  %conv109 = sitofp i32 %147 to double
  %mul110 = fmul double 2.000000e-01, %conv109
  %add111 = fadd double %conv108, %mul110
  %conv112 = fptosi double %add111 to i32
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv112, i32* %arrayidx113, align 4
  %148 = load i32, i32* %y_offset, align 4
  %149 = load i32, i32* %curve_end_offset, align 4
  %add114 = add nsw i32 %148, %149
  %conv115 = sitofp i32 %add114 to double
  %150 = load i32, i32* %tile_height, align 4
  %conv116 = sitofp i32 %150 to double
  %mul117 = fmul double 3.000000e-01, %conv116
  %add118 = fadd double %conv115, %mul117
  %conv119 = fptosi double %add118 to i32
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv119, i32* %arrayidx120, align 4
  %151 = load i32, i32* %i, align 4
  %idxprom = sext i32 %151 to i64
  %152 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %152, i64 %idxprom
  %153 = load i32, i32* %arrayidx121, align 4
  %arrayidx122 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %153, i32* %arrayidx122, align 4
  %154 = load i32, i32* %right, align 4
  %tobool123 = icmp ne i32 %154, 0
  br i1 %tobool123, label %if.then.124, label %if.end.137

if.then.124:                                      ; preds = %if.end.88
  %155 = load i32, i32* %x_offset.addr, align 4
  %conv125 = sitofp i32 %155 to double
  %156 = load i32, i32* %tile_width, align 4
  %conv126 = sitofp i32 %156 to double
  %mul127 = fmul double 5.000000e-02, %conv126
  %sub128 = fsub double %conv125, %mul127
  %conv129 = fptosi double %sub128 to i32
  %arrayidx130 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv129, i32* %arrayidx130, align 4
  %157 = load i32, i32* %x_offset.addr, align 4
  %conv131 = sitofp i32 %157 to double
  %158 = load i32, i32* %tile_width, align 4
  %conv132 = sitofp i32 %158 to double
  %mul133 = fmul double 5.000000e-02, %conv132
  %sub134 = fsub double %conv131, %mul133
  %conv135 = fptosi double %sub134 to i32
  %arrayidx136 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv135, i32* %arrayidx136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.124, %if.end.88
  %arraydecay138 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay139 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %159 = load i32, i32* %steps.addr, align 4
  %160 = load i32*, i32** %cachex, align 8
  %161 = load i32*, i32** %cachey, align 8
  call void @generate_bezier(i32* %arraydecay138, i32* %arraydecay139, i32 %159, i32* %160, i32* %161)
  %162 = load i8*, i8** %buffer.addr, align 8
  %163 = load i32, i32* %bufsize.addr, align 4
  %164 = load i32, i32* %width.addr, align 4
  %165 = load i32, i32* %bytes.addr, align 4
  %166 = load i32, i32* %steps.addr, align 4
  %167 = load i32*, i32** %cachex, align 8
  %168 = load i32*, i32** %cachey, align 8
  call void @draw_bezier_line(i8* %162, i32 %163, i32 %164, i32 %165, i32 %166, i32* %167, i32* %168)
  %169 = load double, double* %blend_amount.addr, align 8
  store double %169, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.152, %if.end.137
  %170 = load i32, i32* %j, align 4
  %171 = load i32, i32* %blend_lines.addr, align 4
  %cmp141 = icmp slt i32 %170, %171
  br i1 %cmp141, label %for.body.143, label %for.end.154

for.body.143:                                     ; preds = %for.cond.140
  %172 = load i32, i32* %j, align 4
  %sub144 = sub nsw i32 0, %172
  %sub145 = sub nsw i32 %sub144, 1
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %sub145, i32* %arrayidx146, align 4
  %173 = load i8*, i8** %buffer.addr, align 8
  %174 = load i32, i32* %bufsize.addr, align 4
  %175 = load i32, i32* %width.addr, align 4
  %176 = load i32, i32* %bytes.addr, align 4
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %177 = load i32, i32* %arrayidx147, align 4
  %178 = load i32, i32* %steps.addr, align 4
  %179 = load i32*, i32** %cachex, align 8
  %180 = load i32*, i32** %cachey, align 8
  %181 = load double, double* %delta, align 8
  call void @darken_bezier_line(i8* %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 0, i32 %178, i32* %179, i32* %180, double %181)
  %182 = load i32, i32* %j, align 4
  %add148 = add nsw i32 %182, 1
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %add148, i32* %arrayidx149, align 4
  %183 = load i8*, i8** %buffer.addr, align 8
  %184 = load i32, i32* %bufsize.addr, align 4
  %185 = load i32, i32* %width.addr, align 4
  %186 = load i32, i32* %bytes.addr, align 4
  %arrayidx150 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  %187 = load i32, i32* %arrayidx150, align 4
  %188 = load i32, i32* %steps.addr, align 4
  %189 = load i32*, i32** %cachex, align 8
  %190 = load i32*, i32** %cachey, align 8
  %191 = load double, double* %delta, align 8
  call void @lighten_bezier_line(i8* %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 0, i32 %188, i32* %189, i32* %190, double %191)
  %192 = load double, double* %sigma, align 8
  %193 = load double, double* %delta, align 8
  %sub151 = fsub double %193, %192
  store double %sub151, double* %delta, align 8
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.143
  %194 = load i32, i32* %j, align 4
  %inc153 = add nsw i32 %194, 1
  store i32 %inc153, i32* %j, align 4
  br label %for.cond.140

for.end.154:                                      ; preds = %for.cond.140
  %195 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %195 to i64
  %196 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 6), align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %196, i64 %idxprom155
  %197 = load i32, i32* %arrayidx156, align 4
  store i32 %197, i32* %y_offset, align 4
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.end.154
  %198 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %198, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond

for.end.159:                                      ; preds = %for.cond
  %199 = load i32*, i32** %cachex, align 8
  %200 = bitcast i32* %199 to i8*
  call void @g_free(i8* %200)
  %201 = load i32*, i32** %cachey, align 8
  %202 = bitcast i32* %201 to i8*
  call void @g_free(i8* %202)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_bezier_horizontal_border(i8* %buffer, i32 %bufsize, i32 %width, i32 %height, i32 %bytes, i32 %y_offset, i32 %xtiles, i32 %ytiles, i32 %blend_lines, double %blend_amount, i32 %steps) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %xtiles.addr = alloca i32, align 4
  %ytiles.addr = alloca i32, align 4
  %blend_lines.addr = alloca i32, align 4
  %blend_amount.addr = alloca double, align 8
  %steps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_width_eighth = alloca i32, align 4
  %curve_start_offset = alloca i32, align 4
  %curve_end_offset = alloca i32, align 4
  %px = alloca [4 x i32], align 16
  %py = alloca [4 x i32], align 16
  %x_offset = alloca i32, align 4
  %delta = alloca double, align 8
  %sigma = alloca double, align 8
  %up = alloca i32, align 4
  %cachex = alloca i32*, align 8
  %cachey = alloca i32*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %xtiles, i32* %xtiles.addr, align 4
  store i32 %ytiles, i32* %ytiles.addr, align 4
  store i32 %blend_lines, i32* %blend_lines.addr, align 4
  store double %blend_amount, double* %blend_amount.addr, align 8
  store i32 %steps, i32* %steps.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %xtiles.addr, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %tile_width, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %ytiles.addr, align 4
  %div1 = sdiv i32 %2, %3
  store i32 %div1, i32* %tile_height, align 4
  %4 = load i32, i32* %tile_width, align 4
  %div2 = sdiv i32 %4, 8
  store i32 %div2, i32* %tile_width_eighth, align 4
  %5 = load i32, i32* %tile_width_eighth, align 4
  %mul = mul nsw i32 3, %5
  store i32 %mul, i32* %curve_start_offset, align 4
  %6 = load i32, i32* %curve_start_offset, align 4
  %7 = load i32, i32* %tile_width_eighth, align 4
  %mul3 = mul nsw i32 2, %7
  %add = add nsw i32 %6, %mul3
  store i32 %add, i32* %curve_end_offset, align 4
  store i32 0, i32* %x_offset, align 4
  %8 = load double, double* %blend_amount.addr, align 8
  %9 = load i32, i32* %blend_lines.addr, align 4
  %conv = sitofp i32 %9 to double
  %div4 = fdiv double %8, %conv
  store double %div4, double* %sigma, align 8
  %10 = load i32, i32* %steps.addr, align 4
  %conv5 = sext i32 %10 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv5, i64 4)
  %11 = bitcast i8* %call to i32*
  store i32* %11, i32** %cachex, align 8
  %12 = load i32, i32* %steps.addr, align 4
  %conv6 = sext i32 %12 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv6, i64 4)
  %13 = bitcast i8* %call7 to i32*
  store i32* %13, i32** %cachey, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.157, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %xtiles.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.159

for.body:                                         ; preds = %for.cond
  %call9 = call i32 @g_random_int_range(i32 0, i32 2)
  store i32 %call9, i32* %up, align 4
  %16 = load i32, i32* %x_offset, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %16, i32* %arrayidx, align 4
  %17 = load i32, i32* %x_offset, align 4
  %conv10 = sitofp i32 %17 to double
  %18 = load i32, i32* %tile_width, align 4
  %conv11 = sitofp i32 %18 to double
  %mul12 = fmul double 2.000000e-01, %conv11
  %add13 = fadd double %conv10, %mul12
  %conv14 = fptosi double %add13 to i32
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv14, i32* %arrayidx15, align 4
  %19 = load i32, i32* %x_offset, align 4
  %conv16 = sitofp i32 %19 to double
  %20 = load i32, i32* %tile_width, align 4
  %conv17 = sitofp i32 %20 to double
  %mul18 = fmul double 3.000000e-01, %conv17
  %add19 = fadd double %conv16, %mul18
  %conv20 = fptosi double %add19 to i32
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv20, i32* %arrayidx21, align 4
  %21 = load i32, i32* %x_offset, align 4
  %22 = load i32, i32* %curve_start_offset, align 4
  %add22 = add nsw i32 %21, %22
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %add22, i32* %arrayidx23, align 4
  %23 = load i32, i32* %y_offset.addr, align 4
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %23, i32* %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %23, i32* %arrayidx25, align 4
  %24 = load i32, i32* %y_offset.addr, align 4
  %conv26 = sitofp i32 %24 to double
  %25 = load i32, i32* %tile_height, align 4
  %conv27 = sitofp i32 %25 to double
  %mul28 = fmul double 5.000000e-02, %conv27
  %mul29 = fmul double %mul28, 1.200000e+00
  %add30 = fadd double %conv26, %mul29
  %conv31 = fptosi double %add30 to i32
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv31, i32* %arrayidx32, align 4
  %26 = load i32, i32* %y_offset.addr, align 4
  %conv33 = sitofp i32 %26 to double
  %27 = load i32, i32* %tile_height, align 4
  %conv34 = sitofp i32 %27 to double
  %mul35 = fmul double 5.000000e-02, %conv34
  %mul36 = fmul double %mul35, 1.200000e+00
  %add37 = fadd double %conv33, %mul36
  %conv38 = fptosi double %add37 to i32
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv38, i32* %arrayidx39, align 4
  %28 = load i32, i32* %up, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %29 = load i32, i32* %y_offset.addr, align 4
  %conv40 = sitofp i32 %29 to double
  %30 = load i32, i32* %tile_height, align 4
  %conv41 = sitofp i32 %30 to double
  %mul42 = fmul double 5.000000e-02, %conv41
  %sub = fsub double %conv40, %mul42
  %conv43 = fptosi double %sub to i32
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv43, i32* %arrayidx44, align 4
  %31 = load i32, i32* %y_offset.addr, align 4
  %conv45 = sitofp i32 %31 to double
  %32 = load i32, i32* %tile_height, align 4
  %conv46 = sitofp i32 %32 to double
  %mul47 = fmul double 5.000000e-02, %conv46
  %sub48 = fsub double %conv45, %mul47
  %conv49 = fptosi double %sub48 to i32
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv49, i32* %arrayidx50, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay51 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %33 = load i32, i32* %steps.addr, align 4
  %34 = load i32*, i32** %cachex, align 8
  %35 = load i32*, i32** %cachey, align 8
  call void @generate_bezier(i32* %arraydecay, i32* %arraydecay51, i32 %33, i32* %34, i32* %35)
  %36 = load i8*, i8** %buffer.addr, align 8
  %37 = load i32, i32* %bufsize.addr, align 4
  %38 = load i32, i32* %width.addr, align 4
  %39 = load i32, i32* %bytes.addr, align 4
  %40 = load i32, i32* %steps.addr, align 4
  %41 = load i32*, i32** %cachex, align 8
  %42 = load i32*, i32** %cachey, align 8
  call void @draw_bezier_line(i8* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32* %41, i32* %42)
  %43 = load double, double* %blend_amount.addr, align 8
  store double %43, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %if.end
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %blend_lines.addr, align 4
  %cmp53 = icmp slt i32 %44, %45
  br i1 %cmp53, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.52
  %46 = load i32, i32* %j, align 4
  %sub56 = sub nsw i32 0, %46
  %sub57 = sub nsw i32 %sub56, 1
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %sub57, i32* %arrayidx58, align 4
  %47 = load i8*, i8** %buffer.addr, align 8
  %48 = load i32, i32* %bufsize.addr, align 4
  %49 = load i32, i32* %width.addr, align 4
  %50 = load i32, i32* %bytes.addr, align 4
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %51 = load i32, i32* %arrayidx59, align 4
  %52 = load i32, i32* %steps.addr, align 4
  %53 = load i32*, i32** %cachex, align 8
  %54 = load i32*, i32** %cachey, align 8
  %55 = load double, double* %delta, align 8
  call void @darken_bezier_line(i8* %47, i32 %48, i32 %49, i32 %50, i32 0, i32 %51, i32 %52, i32* %53, i32* %54, double %55)
  %56 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %56, 1
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %add60, i32* %arrayidx61, align 4
  %57 = load i8*, i8** %buffer.addr, align 8
  %58 = load i32, i32* %bufsize.addr, align 4
  %59 = load i32, i32* %width.addr, align 4
  %60 = load i32, i32* %bytes.addr, align 4
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %61 = load i32, i32* %arrayidx62, align 4
  %62 = load i32, i32* %steps.addr, align 4
  %63 = load i32*, i32** %cachex, align 8
  %64 = load i32*, i32** %cachey, align 8
  %65 = load double, double* %delta, align 8
  call void @lighten_bezier_line(i8* %57, i32 %58, i32 %59, i32 %60, i32 0, i32 %61, i32 %62, i32* %63, i32* %64, double %65)
  %66 = load double, double* %sigma, align 8
  %67 = load double, double* %delta, align 8
  %sub63 = fsub double %67, %66
  store double %sub63, double* %delta, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.55
  %68 = load i32, i32* %j, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  %69 = load i32, i32* %up, align 4
  %tobool64 = icmp ne i32 %69, 0
  br i1 %tobool64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %for.end
  %70 = load i8*, i8** %buffer.addr, align 8
  %71 = load i32, i32* %bufsize.addr, align 4
  %72 = load i32, i32* %width.addr, align 4
  %73 = load i32, i32* %bytes.addr, align 4
  %74 = load i32, i32* %y_offset.addr, align 4
  %75 = load i32, i32* %x_offset, align 4
  %76 = load i32, i32* %curve_start_offset, align 4
  %add66 = add nsw i32 %75, %76
  %77 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  call void @draw_up_bump(i8* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %add66, i32 %77)
  %78 = load double, double* %blend_amount.addr, align 8
  store double %78, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.74, %if.then.65
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* %blend_lines.addr, align 4
  %cmp68 = icmp slt i32 %79, %80
  br i1 %cmp68, label %for.body.70, label %for.end.76

for.body.70:                                      ; preds = %for.cond.67
  %81 = load i8*, i8** %buffer.addr, align 8
  %82 = load i32, i32* %bufsize.addr, align 4
  %83 = load i32, i32* %width.addr, align 4
  %84 = load i32, i32* %bytes.addr, align 4
  %85 = load i32, i32* %y_offset.addr, align 4
  %86 = load i32, i32* %x_offset, align 4
  %87 = load i32, i32* %curve_start_offset, align 4
  %add71 = add nsw i32 %86, %87
  %88 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  %89 = load double, double* %delta, align 8
  %90 = load i32, i32* %j, align 4
  call void @darken_up_bump(i8* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %add71, i32 %88, double %89, i32 %90)
  %91 = load i8*, i8** %buffer.addr, align 8
  %92 = load i32, i32* %bufsize.addr, align 4
  %93 = load i32, i32* %width.addr, align 4
  %94 = load i32, i32* %bytes.addr, align 4
  %95 = load i32, i32* %y_offset.addr, align 4
  %96 = load i32, i32* %x_offset, align 4
  %97 = load i32, i32* %curve_start_offset, align 4
  %add72 = add nsw i32 %96, %97
  %98 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 2), align 4
  %99 = load double, double* %delta, align 8
  %100 = load i32, i32* %j, align 4
  call void @lighten_up_bump(i8* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %add72, i32 %98, double %99, i32 %100)
  %101 = load double, double* %sigma, align 8
  %102 = load double, double* %delta, align 8
  %sub73 = fsub double %102, %101
  store double %sub73, double* %delta, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.70
  %103 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %103, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.67

for.end.76:                                       ; preds = %for.cond.67
  br label %if.end.88

if.else:                                          ; preds = %for.end
  %104 = load i8*, i8** %buffer.addr, align 8
  %105 = load i32, i32* %bufsize.addr, align 4
  %106 = load i32, i32* %width.addr, align 4
  %107 = load i32, i32* %bytes.addr, align 4
  %108 = load i32, i32* %y_offset.addr, align 4
  %109 = load i32, i32* %x_offset, align 4
  %110 = load i32, i32* %curve_start_offset, align 4
  %add77 = add nsw i32 %109, %110
  %111 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  call void @draw_down_bump(i8* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %add77, i32 %111)
  %112 = load double, double* %blend_amount.addr, align 8
  store double %112, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.85, %if.else
  %113 = load i32, i32* %j, align 4
  %114 = load i32, i32* %blend_lines.addr, align 4
  %cmp79 = icmp slt i32 %113, %114
  br i1 %cmp79, label %for.body.81, label %for.end.87

for.body.81:                                      ; preds = %for.cond.78
  %115 = load i8*, i8** %buffer.addr, align 8
  %116 = load i32, i32* %bufsize.addr, align 4
  %117 = load i32, i32* %width.addr, align 4
  %118 = load i32, i32* %bytes.addr, align 4
  %119 = load i32, i32* %y_offset.addr, align 4
  %120 = load i32, i32* %x_offset, align 4
  %121 = load i32, i32* %curve_start_offset, align 4
  %add82 = add nsw i32 %120, %121
  %122 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  %123 = load double, double* %delta, align 8
  %124 = load i32, i32* %j, align 4
  call void @darken_down_bump(i8* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %add82, i32 %122, double %123, i32 %124)
  %125 = load i8*, i8** %buffer.addr, align 8
  %126 = load i32, i32* %bufsize.addr, align 4
  %127 = load i32, i32* %width.addr, align 4
  %128 = load i32, i32* %bytes.addr, align 4
  %129 = load i32, i32* %y_offset.addr, align 4
  %130 = load i32, i32* %x_offset, align 4
  %131 = load i32, i32* %curve_start_offset, align 4
  %add83 = add nsw i32 %130, %131
  %132 = load i32, i32* getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 4, i64 3), align 4
  %133 = load double, double* %delta, align 8
  %134 = load i32, i32* %j, align 4
  call void @lighten_down_bump(i8* %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %add83, i32 %132, double %133, i32 %134)
  %135 = load double, double* %sigma, align 8
  %136 = load double, double* %delta, align 8
  %sub84 = fsub double %136, %135
  store double %sub84, double* %delta, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.81
  %137 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %137, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond.78

for.end.87:                                       ; preds = %for.cond.78
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %for.end.76
  %138 = load i32, i32* %x_offset, align 4
  %139 = load i32, i32* %curve_end_offset, align 4
  %add89 = add nsw i32 %138, %139
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 0
  store i32 %add89, i32* %arrayidx90, align 4
  %140 = load i32, i32* %x_offset, align 4
  %141 = load i32, i32* %curve_end_offset, align 4
  %add91 = add nsw i32 %140, %141
  %conv92 = sitofp i32 %add91 to double
  %142 = load i32, i32* %tile_width, align 4
  %conv93 = sitofp i32 %142 to double
  %mul94 = fmul double 2.000000e-01, %conv93
  %add95 = fadd double %conv92, %mul94
  %conv96 = fptosi double %add95 to i32
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 1
  store i32 %conv96, i32* %arrayidx97, align 4
  %143 = load i32, i32* %x_offset, align 4
  %144 = load i32, i32* %curve_end_offset, align 4
  %add98 = add nsw i32 %143, %144
  %conv99 = sitofp i32 %add98 to double
  %145 = load i32, i32* %tile_width, align 4
  %conv100 = sitofp i32 %145 to double
  %mul101 = fmul double 3.000000e-01, %conv100
  %add102 = fadd double %conv99, %mul101
  %conv103 = fptosi double %add102 to i32
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 2
  store i32 %conv103, i32* %arrayidx104, align 4
  %146 = load i32, i32* %i, align 4
  %idxprom = sext i32 %146 to i64
  %147 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %147, i64 %idxprom
  %148 = load i32, i32* %arrayidx105, align 4
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i64 3
  store i32 %148, i32* %arrayidx106, align 4
  %149 = load i32, i32* %y_offset.addr, align 4
  %arrayidx107 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 3
  store i32 %149, i32* %arrayidx107, align 4
  %arrayidx108 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %149, i32* %arrayidx108, align 4
  %150 = load i32, i32* %y_offset.addr, align 4
  %conv109 = sitofp i32 %150 to double
  %151 = load i32, i32* %tile_height, align 4
  %conv110 = sitofp i32 %151 to double
  %mul111 = fmul double 5.000000e-02, %conv110
  %mul112 = fmul double %mul111, 1.200000e+00
  %add113 = fadd double %conv109, %mul112
  %conv114 = fptosi double %add113 to i32
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv114, i32* %arrayidx115, align 4
  %152 = load i32, i32* %y_offset.addr, align 4
  %conv116 = sitofp i32 %152 to double
  %153 = load i32, i32* %tile_height, align 4
  %conv117 = sitofp i32 %153 to double
  %mul118 = fmul double 5.000000e-02, %conv117
  %mul119 = fmul double %mul118, 1.200000e+00
  %add120 = fadd double %conv116, %mul119
  %conv121 = fptosi double %add120 to i32
  %arrayidx122 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv121, i32* %arrayidx122, align 4
  %154 = load i32, i32* %up, align 4
  %tobool123 = icmp ne i32 %154, 0
  br i1 %tobool123, label %if.end.137, label %if.then.124

if.then.124:                                      ; preds = %if.end.88
  %155 = load i32, i32* %y_offset.addr, align 4
  %conv125 = sitofp i32 %155 to double
  %156 = load i32, i32* %tile_height, align 4
  %conv126 = sitofp i32 %156 to double
  %mul127 = fmul double 5.000000e-02, %conv126
  %sub128 = fsub double %conv125, %mul127
  %conv129 = fptosi double %sub128 to i32
  %arrayidx130 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 1
  store i32 %conv129, i32* %arrayidx130, align 4
  %157 = load i32, i32* %y_offset.addr, align 4
  %conv131 = sitofp i32 %157 to double
  %158 = load i32, i32* %tile_height, align 4
  %conv132 = sitofp i32 %158 to double
  %mul133 = fmul double 5.000000e-02, %conv132
  %sub134 = fsub double %conv131, %mul133
  %conv135 = fptosi double %sub134 to i32
  %arrayidx136 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 2
  store i32 %conv135, i32* %arrayidx136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.124, %if.end.88
  %arraydecay138 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i32 0, i32 0
  %arraydecay139 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i32 0
  %159 = load i32, i32* %steps.addr, align 4
  %160 = load i32*, i32** %cachex, align 8
  %161 = load i32*, i32** %cachey, align 8
  call void @generate_bezier(i32* %arraydecay138, i32* %arraydecay139, i32 %159, i32* %160, i32* %161)
  %162 = load i8*, i8** %buffer.addr, align 8
  %163 = load i32, i32* %bufsize.addr, align 4
  %164 = load i32, i32* %width.addr, align 4
  %165 = load i32, i32* %bytes.addr, align 4
  %166 = load i32, i32* %steps.addr, align 4
  %167 = load i32*, i32** %cachex, align 8
  %168 = load i32*, i32** %cachey, align 8
  call void @draw_bezier_line(i8* %162, i32 %163, i32 %164, i32 %165, i32 %166, i32* %167, i32* %168)
  %169 = load double, double* %blend_amount.addr, align 8
  store double %169, double* %delta, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.152, %if.end.137
  %170 = load i32, i32* %j, align 4
  %171 = load i32, i32* %blend_lines.addr, align 4
  %cmp141 = icmp slt i32 %170, %171
  br i1 %cmp141, label %for.body.143, label %for.end.154

for.body.143:                                     ; preds = %for.cond.140
  %172 = load i32, i32* %j, align 4
  %sub144 = sub nsw i32 0, %172
  %sub145 = sub nsw i32 %sub144, 1
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %sub145, i32* %arrayidx146, align 4
  %173 = load i8*, i8** %buffer.addr, align 8
  %174 = load i32, i32* %bufsize.addr, align 4
  %175 = load i32, i32* %width.addr, align 4
  %176 = load i32, i32* %bytes.addr, align 4
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %177 = load i32, i32* %arrayidx147, align 4
  %178 = load i32, i32* %steps.addr, align 4
  %179 = load i32*, i32** %cachex, align 8
  %180 = load i32*, i32** %cachey, align 8
  %181 = load double, double* %delta, align 8
  call void @darken_bezier_line(i8* %173, i32 %174, i32 %175, i32 %176, i32 0, i32 %177, i32 %178, i32* %179, i32* %180, double %181)
  %182 = load i32, i32* %j, align 4
  %add148 = add nsw i32 %182, 1
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  store i32 %add148, i32* %arrayidx149, align 4
  %183 = load i8*, i8** %buffer.addr, align 8
  %184 = load i32, i32* %bufsize.addr, align 4
  %185 = load i32, i32* %width.addr, align 4
  %186 = load i32, i32* %bytes.addr, align 4
  %arrayidx150 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i32 0, i64 0
  %187 = load i32, i32* %arrayidx150, align 4
  %188 = load i32, i32* %steps.addr, align 4
  %189 = load i32*, i32** %cachex, align 8
  %190 = load i32*, i32** %cachey, align 8
  %191 = load double, double* %delta, align 8
  call void @lighten_bezier_line(i8* %183, i32 %184, i32 %185, i32 %186, i32 0, i32 %187, i32 %188, i32* %189, i32* %190, double %191)
  %192 = load double, double* %sigma, align 8
  %193 = load double, double* %delta, align 8
  %sub151 = fsub double %193, %192
  store double %sub151, double* %delta, align 8
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.143
  %194 = load i32, i32* %j, align 4
  %inc153 = add nsw i32 %194, 1
  store i32 %inc153, i32* %j, align 4
  br label %for.cond.140

for.end.154:                                      ; preds = %for.cond.140
  %195 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %195 to i64
  %196 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 5), align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %196, i64 %idxprom155
  %197 = load i32, i32* %arrayidx156, align 4
  store i32 %197, i32* %x_offset, align 4
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.end.154
  %198 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %198, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond

for.end.159:                                      ; preds = %for.cond
  %199 = load i32*, i32** %cachex, align 8
  %200 = bitcast i32* %199 to i8*
  call void @g_free(i8* %200)
  %201 = load i32*, i32** %cachey, align 8
  %202 = bitcast i32* %201 to i8*
  call void @g_free(i8* %202)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare void @gimp_quit() #4

; Function Attrs: nounwind uwtable
define internal void @generate_bezier(i32* %px, i32* %py, i32 %steps, i32* %cachex, i32* %cachey) #0 {
entry:
  %px.addr = alloca i32*, align 8
  %py.addr = alloca i32*, align 8
  %steps.addr = alloca i32, align 4
  %cachex.addr = alloca i32*, align 8
  %cachey.addr = alloca i32*, align 8
  %t = alloca double, align 8
  %sigma = alloca double, align 8
  %i = alloca i32, align 4
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %t_1 = alloca double, align 8
  store i32* %px, i32** %px.addr, align 8
  store i32* %py, i32** %py.addr, align 8
  store i32 %steps, i32* %steps.addr, align 4
  store i32* %cachex, i32** %cachex.addr, align 8
  store i32* %cachey, i32** %cachey.addr, align 8
  store double 0.000000e+00, double* %t, align 8
  %0 = load i32, i32* %steps.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %sigma, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %sigma, align 8
  %4 = load double, double* %t, align 8
  %add = fadd double %4, %3
  store double %add, double* %t, align 8
  %5 = load double, double* %t, align 8
  %6 = load double, double* %t, align 8
  %mul = fmul double %5, %6
  store double %mul, double* %t2, align 8
  %7 = load double, double* %t2, align 8
  %8 = load double, double* %t, align 8
  %mul2 = fmul double %7, %8
  store double %mul2, double* %t3, align 8
  %9 = load double, double* %t, align 8
  %sub = fsub double 1.000000e+00, %9
  store double %sub, double* %t_1, align 8
  %10 = load double, double* %t_1, align 8
  %11 = load double, double* %t_1, align 8
  %mul3 = fmul double %10, %11
  %12 = load double, double* %t_1, align 8
  %mul4 = fmul double %mul3, %12
  %13 = load i32*, i32** %px.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx, align 4
  %conv5 = sitofp i32 %14 to double
  %mul6 = fmul double %mul4, %conv5
  %15 = load double, double* %t, align 8
  %mul7 = fmul double 3.000000e+00, %15
  %16 = load double, double* %t_1, align 8
  %mul8 = fmul double %mul7, %16
  %17 = load double, double* %t_1, align 8
  %mul9 = fmul double %mul8, %17
  %18 = load i32*, i32** %px.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 1
  %19 = load i32, i32* %arrayidx10, align 4
  %conv11 = sitofp i32 %19 to double
  %mul12 = fmul double %mul9, %conv11
  %add13 = fadd double %mul6, %mul12
  %20 = load double, double* %t2, align 8
  %mul14 = fmul double 3.000000e+00, %20
  %21 = load double, double* %t_1, align 8
  %mul15 = fmul double %mul14, %21
  %22 = load i32*, i32** %px.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 2
  %23 = load i32, i32* %arrayidx16, align 4
  %conv17 = sitofp i32 %23 to double
  %mul18 = fmul double %mul15, %conv17
  %add19 = fadd double %add13, %mul18
  %24 = load double, double* %t3, align 8
  %25 = load i32*, i32** %px.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %25, i64 3
  %26 = load i32, i32* %arrayidx20, align 4
  %conv21 = sitofp i32 %26 to double
  %mul22 = fmul double %24, %conv21
  %add23 = fadd double %add19, %mul22
  store double %add23, double* %x, align 8
  %27 = load double, double* %t_1, align 8
  %28 = load double, double* %t_1, align 8
  %mul24 = fmul double %27, %28
  %29 = load double, double* %t_1, align 8
  %mul25 = fmul double %mul24, %29
  %30 = load i32*, i32** %py.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx26, align 4
  %conv27 = sitofp i32 %31 to double
  %mul28 = fmul double %mul25, %conv27
  %32 = load double, double* %t, align 8
  %mul29 = fmul double 3.000000e+00, %32
  %33 = load double, double* %t_1, align 8
  %mul30 = fmul double %mul29, %33
  %34 = load double, double* %t_1, align 8
  %mul31 = fmul double %mul30, %34
  %35 = load i32*, i32** %py.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %35, i64 1
  %36 = load i32, i32* %arrayidx32, align 4
  %conv33 = sitofp i32 %36 to double
  %mul34 = fmul double %mul31, %conv33
  %add35 = fadd double %mul28, %mul34
  %37 = load double, double* %t2, align 8
  %mul36 = fmul double 3.000000e+00, %37
  %38 = load double, double* %t_1, align 8
  %mul37 = fmul double %mul36, %38
  %39 = load i32*, i32** %py.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %39, i64 2
  %40 = load i32, i32* %arrayidx38, align 4
  %conv39 = sitofp i32 %40 to double
  %mul40 = fmul double %mul37, %conv39
  %add41 = fadd double %add35, %mul40
  %41 = load double, double* %t3, align 8
  %42 = load i32*, i32** %py.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %42, i64 3
  %43 = load i32, i32* %arrayidx42, align 4
  %conv43 = sitofp i32 %43 to double
  %mul44 = fmul double %41, %conv43
  %add45 = fadd double %add41, %mul44
  store double %add45, double* %y, align 8
  %44 = load double, double* %x, align 8
  %add46 = fadd double %44, 2.000000e-01
  %conv47 = fptosi double %add46 to i32
  %45 = load i32, i32* %i, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load i32*, i32** %cachex.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %46, i64 %idxprom
  store i32 %conv47, i32* %arrayidx48, align 4
  %47 = load double, double* %y, align 8
  %add49 = fadd double %47, 2.000000e-01
  %conv50 = fptosi double %add49 to i32
  %48 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %48 to i64
  %49 = load i32*, i32** %cachey.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %49, i64 %idxprom51
  store i32 %conv50, i32* %arrayidx52, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @g_random_int_range(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @draw_vertical_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32* %px, i32* %py) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %px.addr = alloca i32*, align 8
  %py.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %index = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32* %px, i32** %px.addr, align 8
  store i32* %py, i32** %py.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32*, i32** %px.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %5 = load i32, i32* %rowstride, align 4
  %6 = load i32*, i32** %py.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %mul3 = mul nsw i32 %5, %7
  %add = add nsw i32 %mul1, %mul3
  store i32 %add, i32* %index, align 4
  %8 = load i32*, i32** %py.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %py.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %sub = sub nsw i32 %9, %11
  %add6 = add nsw i32 %sub, 1
  store i32 %add6, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %15, 2
  %16 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom = sext i32 %add10 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 30, i8* %arrayidx11, align 1
  %19 = load i32, i32* %index, align 4
  %add12 = add nsw i32 %19, 1
  %idxprom13 = sext i32 %add12 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  store i8 30, i8* %arrayidx14, align 1
  %21 = load i32, i32* %index, align 4
  %add15 = add nsw i32 %21, 2
  %idxprom16 = sext i32 %add15 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 %idxprom16
  store i8 30, i8* %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %23 = load i32, i32* %rowstride, align 4
  %24 = load i32, i32* %index, align 4
  %add18 = add nsw i32 %24, %23
  store i32 %add18, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @darken_vertical_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32* %px, i32* %py, double %delta) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %px.addr = alloca i32*, align 8
  %py.addr = alloca i32*, align 8
  %delta.addr = alloca double, align 8
  %i = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %index = alloca i32, align 4
  %length = alloca i32, align 4
  %temp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32* %px, i32** %px.addr, align 8
  store i32* %py, i32** %py.addr, align 8
  store double %delta, double* %delta.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32*, i32** %px.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %5 = load i32*, i32** %py.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %rowstride, align 4
  %mul3 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul1, %mul3
  store i32 %add, i32* %index, align 4
  %8 = load i32*, i32** %py.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %py.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %sub = sub nsw i32 %9, %11
  %add6 = add nsw i32 %sub, 1
  store i32 %add6, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %15, 2
  %16 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom = sext i32 %add10 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %19 to i32
  %conv12 = sitofp i32 %conv to double
  %20 = load double, double* %delta.addr, align 8
  %sub13 = fsub double 1.000000e+00, %20
  %mul14 = fmul double %conv12, %sub13
  %cmp15 = fcmp ogt double %mul14, 0.000000e+00
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %21 = load i32, i32* %index, align 4
  %add17 = add nsw i32 %21, 0
  %idxprom18 = sext i32 %add17 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom18
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %conv21 = sitofp i32 %conv20 to double
  %24 = load double, double* %delta.addr, align 8
  %sub22 = fsub double 1.000000e+00, %24
  %mul23 = fmul double %conv21, %sub22
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul23, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv24 = fptosi double %cond to i32
  store i32 %conv24, i32* %temp, align 4
  %25 = load i32, i32* %temp, align 4
  %conv25 = trunc i32 %25 to i8
  %26 = load i32, i32* %index, align 4
  %add26 = add nsw i32 %26, 0
  %idxprom27 = sext i32 %add26 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  store i8 %conv25, i8* %arrayidx28, align 1
  %28 = load i32, i32* %index, align 4
  %add29 = add nsw i32 %28, 1
  %idxprom30 = sext i32 %add29 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %30 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %30 to i32
  %conv33 = sitofp i32 %conv32 to double
  %31 = load double, double* %delta.addr, align 8
  %sub34 = fsub double 1.000000e+00, %31
  %mul35 = fmul double %conv33, %sub34
  %cmp36 = fcmp ogt double %mul35, 0.000000e+00
  br i1 %cmp36, label %cond.true.38, label %cond.false.46

cond.true.38:                                     ; preds = %cond.end
  %32 = load i32, i32* %index, align 4
  %add39 = add nsw i32 %32, 1
  %idxprom40 = sext i32 %add39 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %idxprom40
  %34 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %34 to i32
  %conv43 = sitofp i32 %conv42 to double
  %35 = load double, double* %delta.addr, align 8
  %sub44 = fsub double 1.000000e+00, %35
  %mul45 = fmul double %conv43, %sub44
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.38
  %cond48 = phi double [ %mul45, %cond.true.38 ], [ 0.000000e+00, %cond.false.46 ]
  %conv49 = fptosi double %cond48 to i32
  store i32 %conv49, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv50 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add51 = add nsw i32 %37, 1
  %idxprom52 = sext i32 %add51 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %38, i64 %idxprom52
  store i8 %conv50, i8* %arrayidx53, align 1
  %39 = load i32, i32* %index, align 4
  %add54 = add nsw i32 %39, 2
  %idxprom55 = sext i32 %add54 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %40, i64 %idxprom55
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %conv58 = sitofp i32 %conv57 to double
  %42 = load double, double* %delta.addr, align 8
  %sub59 = fsub double 1.000000e+00, %42
  %mul60 = fmul double %conv58, %sub59
  %cmp61 = fcmp ogt double %mul60, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.71

cond.true.63:                                     ; preds = %cond.end.47
  %43 = load i32, i32* %index, align 4
  %add64 = add nsw i32 %43, 2
  %idxprom65 = sext i32 %add64 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  %45 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %45 to i32
  %conv68 = sitofp i32 %conv67 to double
  %46 = load double, double* %delta.addr, align 8
  %sub69 = fsub double 1.000000e+00, %46
  %mul70 = fmul double %conv68, %sub69
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.47
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.63
  %cond73 = phi double [ %mul70, %cond.true.63 ], [ 0.000000e+00, %cond.false.71 ]
  %conv74 = fptosi double %cond73 to i32
  store i32 %conv74, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv75 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add76 = add nsw i32 %48, 2
  %idxprom77 = sext i32 %add76 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %49, i64 %idxprom77
  store i8 %conv75, i8* %arrayidx78, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.72, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %50 = load i32, i32* %rowstride, align 4
  %51 = load i32, i32* %index, align 4
  %add79 = add nsw i32 %51, %50
  store i32 %add79, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lighten_vertical_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32* %px, i32* %py, double %delta) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %px.addr = alloca i32*, align 8
  %py.addr = alloca i32*, align 8
  %delta.addr = alloca double, align 8
  %i = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %index = alloca i32, align 4
  %length = alloca i32, align 4
  %temp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32* %px, i32** %px.addr, align 8
  store i32* %py, i32** %py.addr, align 8
  store double %delta, double* %delta.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32*, i32** %px.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %5 = load i32*, i32** %py.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %rowstride, align 4
  %mul3 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul1, %mul3
  store i32 %add, i32* %index, align 4
  %8 = load i32*, i32** %py.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %py.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %sub = sub nsw i32 %9, %11
  %add6 = add nsw i32 %sub, 1
  store i32 %add6, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %15, 2
  %16 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom = sext i32 %add10 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %19 to i32
  %conv12 = sitofp i32 %conv to double
  %20 = load double, double* %delta.addr, align 8
  %add13 = fadd double 1.000000e+00, %20
  %mul14 = fmul double %conv12, %add13
  %cmp15 = fcmp olt double %mul14, 2.550000e+02
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %21 = load i32, i32* %index, align 4
  %add17 = add nsw i32 %21, 0
  %idxprom18 = sext i32 %add17 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom18
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %conv21 = sitofp i32 %conv20 to double
  %24 = load double, double* %delta.addr, align 8
  %add22 = fadd double 1.000000e+00, %24
  %mul23 = fmul double %conv21, %add22
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul23, %cond.true ], [ 2.550000e+02, %cond.false ]
  %conv24 = fptosi double %cond to i32
  store i32 %conv24, i32* %temp, align 4
  %25 = load i32, i32* %temp, align 4
  %conv25 = trunc i32 %25 to i8
  %26 = load i32, i32* %index, align 4
  %add26 = add nsw i32 %26, 0
  %idxprom27 = sext i32 %add26 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  store i8 %conv25, i8* %arrayidx28, align 1
  %28 = load i32, i32* %index, align 4
  %add29 = add nsw i32 %28, 1
  %idxprom30 = sext i32 %add29 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %30 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %30 to i32
  %conv33 = sitofp i32 %conv32 to double
  %31 = load double, double* %delta.addr, align 8
  %add34 = fadd double 1.000000e+00, %31
  %mul35 = fmul double %conv33, %add34
  %cmp36 = fcmp olt double %mul35, 2.550000e+02
  br i1 %cmp36, label %cond.true.38, label %cond.false.46

cond.true.38:                                     ; preds = %cond.end
  %32 = load i32, i32* %index, align 4
  %add39 = add nsw i32 %32, 1
  %idxprom40 = sext i32 %add39 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %idxprom40
  %34 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %34 to i32
  %conv43 = sitofp i32 %conv42 to double
  %35 = load double, double* %delta.addr, align 8
  %add44 = fadd double 1.000000e+00, %35
  %mul45 = fmul double %conv43, %add44
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.38
  %cond48 = phi double [ %mul45, %cond.true.38 ], [ 2.550000e+02, %cond.false.46 ]
  %conv49 = fptosi double %cond48 to i32
  store i32 %conv49, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv50 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add51 = add nsw i32 %37, 1
  %idxprom52 = sext i32 %add51 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %38, i64 %idxprom52
  store i8 %conv50, i8* %arrayidx53, align 1
  %39 = load i32, i32* %index, align 4
  %add54 = add nsw i32 %39, 2
  %idxprom55 = sext i32 %add54 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %40, i64 %idxprom55
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %conv58 = sitofp i32 %conv57 to double
  %42 = load double, double* %delta.addr, align 8
  %add59 = fadd double 1.000000e+00, %42
  %mul60 = fmul double %conv58, %add59
  %cmp61 = fcmp olt double %mul60, 2.550000e+02
  br i1 %cmp61, label %cond.true.63, label %cond.false.71

cond.true.63:                                     ; preds = %cond.end.47
  %43 = load i32, i32* %index, align 4
  %add64 = add nsw i32 %43, 2
  %idxprom65 = sext i32 %add64 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  %45 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %45 to i32
  %conv68 = sitofp i32 %conv67 to double
  %46 = load double, double* %delta.addr, align 8
  %add69 = fadd double 1.000000e+00, %46
  %mul70 = fmul double %conv68, %add69
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.47
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.63
  %cond73 = phi double [ %mul70, %cond.true.63 ], [ 2.550000e+02, %cond.false.71 ]
  %conv74 = fptosi double %cond73 to i32
  store i32 %conv74, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv75 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add76 = add nsw i32 %48, 2
  %idxprom77 = sext i32 %add76 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %49, i64 %idxprom77
  store i8 %conv75, i8* %arrayidx78, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.72, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %50 = load i32, i32* %rowstride, align 4
  %51 = load i32, i32* %index, align 4
  %add79 = add nsw i32 %51, %50
  store i32 %add79, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_right_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %curve_start_offset, i32 %steps) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 1), align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %x_offset.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %x, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 1), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load i32, i32* %curve_start_offset.addr, align 4
  %add3 = add nsw i32 %10, %11
  store i32 %add3, i32* %y, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %12, %13
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %add6 = add nsw i32 %mul4, %mul5
  store i32 %add6, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %16 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %16, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %17 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %17, 2
  %18 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %18
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %19, 0
  %idxprom11 = sext i32 %add10 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom11
  store i8 30, i8* %arrayidx12, align 1
  %21 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %21, 1
  %idxprom14 = sext i32 %add13 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %22, i64 %idxprom14
  store i8 30, i8* %arrayidx15, align 1
  %23 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %23, 2
  %idxprom17 = sext i32 %add16 to i64
  %24 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %24, i64 %idxprom17
  store i8 30, i8* %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 1), align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom19
  %27 = load i32, i32* %arrayidx20, align 4
  %28 = load i32, i32* %x_offset.addr, align 4
  %add21 = add nsw i32 %27, %28
  store i32 %add21, i32* %x, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 1), align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load i32, i32* %curve_start_offset.addr, align 4
  %add24 = add nsw i32 %31, %32
  store i32 %add24, i32* %y, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %rowstride, align 4
  %mul25 = mul nsw i32 %33, %34
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %bytes.addr, align 4
  %mul26 = mul nsw i32 %35, %36
  %add27 = add nsw i32 %mul25, %mul26
  store i32 %add27, i32* %index, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %do.end
  %37 = load i32, i32* %index, align 4
  %cmp29 = icmp sge i32 %37, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.43

land.lhs.true.30:                                 ; preds = %do.body.28
  %38 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %38, 2
  %39 = load i32, i32* %bufsize.addr, align 4
  %cmp32 = icmp slt i32 %add31, %39
  br i1 %cmp32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %land.lhs.true.30
  %40 = load i32, i32* %index, align 4
  %add34 = add nsw i32 %40, 0
  %idxprom35 = sext i32 %add34 to i64
  %41 = load i8*, i8** %buffer.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 %idxprom35
  store i8 30, i8* %arrayidx36, align 1
  %42 = load i32, i32* %index, align 4
  %add37 = add nsw i32 %42, 1
  %idxprom38 = sext i32 %add37 to i64
  %43 = load i8*, i8** %buffer.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %43, i64 %idxprom38
  store i8 30, i8* %arrayidx39, align 1
  %44 = load i32, i32* %index, align 4
  %add40 = add nsw i32 %44, 2
  %idxprom41 = sext i32 %add40 to i64
  %45 = load i8*, i8** %buffer.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  store i8 30, i8* %arrayidx42, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.33, %land.lhs.true.30, %do.body.28
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %do.end.44
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @darken_right_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 1), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %curve_start_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 1), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.178

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %conv = sitofp i32 %23 to double
  %24 = load i32, i32* %steps.addr, align 4
  %conv12 = sitofp i32 %24 to double
  %div = fdiv double %conv12, 1.300000e+00
  %cmp13 = fcmp olt double %conv, %div
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %25 = load i32, i32* %index, align 4
  %cmp16 = icmp sge i32 %25, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %26 = load i32, i32* %index, align 4
  %add18 = add nsw i32 %26, 2
  %27 = load i32, i32* %bufsize.addr, align 4
  %cmp19 = icmp slt i32 %add18, %27
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %index, align 4
  %add22 = add nsw i32 %28, 0
  %idxprom23 = sext i32 %add22 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 %idxprom23
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  %conv26 = sitofp i32 %conv25 to double
  %31 = load double, double* %delta.addr, align 8
  %add27 = fadd double 1.000000e+00, %31
  %mul28 = fmul double %conv26, %add27
  %cmp29 = fcmp olt double %mul28, 2.550000e+02
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %32 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %32, 0
  %idxprom32 = sext i32 %add31 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 %idxprom32
  %34 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %34 to i32
  %conv35 = sitofp i32 %conv34 to double
  %35 = load double, double* %delta.addr, align 8
  %add36 = fadd double 1.000000e+00, %35
  %mul37 = fmul double %conv35, %add36
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul37, %cond.true ], [ 2.550000e+02, %cond.false ]
  %conv38 = fptosi double %cond to i32
  store i32 %conv38, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv39 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add40 = add nsw i32 %37, 0
  %idxprom41 = sext i32 %add40 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %38, i64 %idxprom41
  store i8 %conv39, i8* %arrayidx42, align 1
  %39 = load i32, i32* %index, align 4
  %add43 = add nsw i32 %39, 1
  %idxprom44 = sext i32 %add43 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 %idxprom44
  %41 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %41 to i32
  %conv47 = sitofp i32 %conv46 to double
  %42 = load double, double* %delta.addr, align 8
  %add48 = fadd double 1.000000e+00, %42
  %mul49 = fmul double %conv47, %add48
  %cmp50 = fcmp olt double %mul49, 2.550000e+02
  br i1 %cmp50, label %cond.true.52, label %cond.false.60

cond.true.52:                                     ; preds = %cond.end
  %43 = load i32, i32* %index, align 4
  %add53 = add nsw i32 %43, 1
  %idxprom54 = sext i32 %add53 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %44, i64 %idxprom54
  %45 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %45 to i32
  %conv57 = sitofp i32 %conv56 to double
  %46 = load double, double* %delta.addr, align 8
  %add58 = fadd double 1.000000e+00, %46
  %mul59 = fmul double %conv57, %add58
  br label %cond.end.61

cond.false.60:                                    ; preds = %cond.end
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.52
  %cond62 = phi double [ %mul59, %cond.true.52 ], [ 2.550000e+02, %cond.false.60 ]
  %conv63 = fptosi double %cond62 to i32
  store i32 %conv63, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv64 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add65 = add nsw i32 %48, 1
  %idxprom66 = sext i32 %add65 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %49, i64 %idxprom66
  store i8 %conv64, i8* %arrayidx67, align 1
  %50 = load i32, i32* %index, align 4
  %add68 = add nsw i32 %50, 2
  %idxprom69 = sext i32 %add68 to i64
  %51 = load i8*, i8** %buffer.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %51, i64 %idxprom69
  %52 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %52 to i32
  %conv72 = sitofp i32 %conv71 to double
  %53 = load double, double* %delta.addr, align 8
  %add73 = fadd double 1.000000e+00, %53
  %mul74 = fmul double %conv72, %add73
  %cmp75 = fcmp olt double %mul74, 2.550000e+02
  br i1 %cmp75, label %cond.true.77, label %cond.false.85

cond.true.77:                                     ; preds = %cond.end.61
  %54 = load i32, i32* %index, align 4
  %add78 = add nsw i32 %54, 2
  %idxprom79 = sext i32 %add78 to i64
  %55 = load i8*, i8** %buffer.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %55, i64 %idxprom79
  %56 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %56 to i32
  %conv82 = sitofp i32 %conv81 to double
  %57 = load double, double* %delta.addr, align 8
  %add83 = fadd double 1.000000e+00, %57
  %mul84 = fmul double %conv82, %add83
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.end.61
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.77
  %cond87 = phi double [ %mul84, %cond.true.77 ], [ 2.550000e+02, %cond.false.85 ]
  %conv88 = fptosi double %cond87 to i32
  store i32 %conv88, i32* %temp, align 4
  %58 = load i32, i32* %temp, align 4
  %conv89 = trunc i32 %58 to i8
  %59 = load i32, i32* %index, align 4
  %add90 = add nsw i32 %59, 2
  %idxprom91 = sext i32 %add90 to i64
  %60 = load i8*, i8** %buffer.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %60, i64 %idxprom91
  store i8 %conv89, i8* %arrayidx92, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.86, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.177

if.else:                                          ; preds = %if.then
  br label %do.body.93

do.body.93:                                       ; preds = %if.else
  %61 = load i32, i32* %index, align 4
  %cmp94 = icmp sge i32 %61, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.175

land.lhs.true.96:                                 ; preds = %do.body.93
  %62 = load i32, i32* %index, align 4
  %add97 = add nsw i32 %62, 2
  %63 = load i32, i32* %bufsize.addr, align 4
  %cmp98 = icmp slt i32 %add97, %63
  br i1 %cmp98, label %if.then.100, label %if.end.175

if.then.100:                                      ; preds = %land.lhs.true.96
  %64 = load i32, i32* %index, align 4
  %add101 = add nsw i32 %64, 0
  %idxprom102 = sext i32 %add101 to i64
  %65 = load i8*, i8** %buffer.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %65, i64 %idxprom102
  %66 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %66 to i32
  %conv105 = sitofp i32 %conv104 to double
  %67 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %67
  %mul106 = fmul double %conv105, %sub
  %cmp107 = fcmp ogt double %mul106, 0.000000e+00
  br i1 %cmp107, label %cond.true.109, label %cond.false.117

cond.true.109:                                    ; preds = %if.then.100
  %68 = load i32, i32* %index, align 4
  %add110 = add nsw i32 %68, 0
  %idxprom111 = sext i32 %add110 to i64
  %69 = load i8*, i8** %buffer.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %69, i64 %idxprom111
  %70 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %70 to i32
  %conv114 = sitofp i32 %conv113 to double
  %71 = load double, double* %delta.addr, align 8
  %sub115 = fsub double 1.000000e+00, %71
  %mul116 = fmul double %conv114, %sub115
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.then.100
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.109
  %cond119 = phi double [ %mul116, %cond.true.109 ], [ 0.000000e+00, %cond.false.117 ]
  %conv120 = fptosi double %cond119 to i32
  store i32 %conv120, i32* %temp, align 4
  %72 = load i32, i32* %temp, align 4
  %conv121 = trunc i32 %72 to i8
  %73 = load i32, i32* %index, align 4
  %add122 = add nsw i32 %73, 0
  %idxprom123 = sext i32 %add122 to i64
  %74 = load i8*, i8** %buffer.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %74, i64 %idxprom123
  store i8 %conv121, i8* %arrayidx124, align 1
  %75 = load i32, i32* %index, align 4
  %add125 = add nsw i32 %75, 1
  %idxprom126 = sext i32 %add125 to i64
  %76 = load i8*, i8** %buffer.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %76, i64 %idxprom126
  %77 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %77 to i32
  %conv129 = sitofp i32 %conv128 to double
  %78 = load double, double* %delta.addr, align 8
  %sub130 = fsub double 1.000000e+00, %78
  %mul131 = fmul double %conv129, %sub130
  %cmp132 = fcmp ogt double %mul131, 0.000000e+00
  br i1 %cmp132, label %cond.true.134, label %cond.false.142

cond.true.134:                                    ; preds = %cond.end.118
  %79 = load i32, i32* %index, align 4
  %add135 = add nsw i32 %79, 1
  %idxprom136 = sext i32 %add135 to i64
  %80 = load i8*, i8** %buffer.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %80, i64 %idxprom136
  %81 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %81 to i32
  %conv139 = sitofp i32 %conv138 to double
  %82 = load double, double* %delta.addr, align 8
  %sub140 = fsub double 1.000000e+00, %82
  %mul141 = fmul double %conv139, %sub140
  br label %cond.end.143

cond.false.142:                                   ; preds = %cond.end.118
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.134
  %cond144 = phi double [ %mul141, %cond.true.134 ], [ 0.000000e+00, %cond.false.142 ]
  %conv145 = fptosi double %cond144 to i32
  store i32 %conv145, i32* %temp, align 4
  %83 = load i32, i32* %temp, align 4
  %conv146 = trunc i32 %83 to i8
  %84 = load i32, i32* %index, align 4
  %add147 = add nsw i32 %84, 1
  %idxprom148 = sext i32 %add147 to i64
  %85 = load i8*, i8** %buffer.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %85, i64 %idxprom148
  store i8 %conv146, i8* %arrayidx149, align 1
  %86 = load i32, i32* %index, align 4
  %add150 = add nsw i32 %86, 2
  %idxprom151 = sext i32 %add150 to i64
  %87 = load i8*, i8** %buffer.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %87, i64 %idxprom151
  %88 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %88 to i32
  %conv154 = sitofp i32 %conv153 to double
  %89 = load double, double* %delta.addr, align 8
  %sub155 = fsub double 1.000000e+00, %89
  %mul156 = fmul double %conv154, %sub155
  %cmp157 = fcmp ogt double %mul156, 0.000000e+00
  br i1 %cmp157, label %cond.true.159, label %cond.false.167

cond.true.159:                                    ; preds = %cond.end.143
  %90 = load i32, i32* %index, align 4
  %add160 = add nsw i32 %90, 2
  %idxprom161 = sext i32 %add160 to i64
  %91 = load i8*, i8** %buffer.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %91, i64 %idxprom161
  %92 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %92 to i32
  %conv164 = sitofp i32 %conv163 to double
  %93 = load double, double* %delta.addr, align 8
  %sub165 = fsub double 1.000000e+00, %93
  %mul166 = fmul double %conv164, %sub165
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.143
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.159
  %cond169 = phi double [ %mul166, %cond.true.159 ], [ 0.000000e+00, %cond.false.167 ]
  %conv170 = fptosi double %cond169 to i32
  store i32 %conv170, i32* %temp, align 4
  %94 = load i32, i32* %temp, align 4
  %conv171 = trunc i32 %94 to i8
  %95 = load i32, i32* %index, align 4
  %add172 = add nsw i32 %95, 2
  %idxprom173 = sext i32 %add172 to i64
  %96 = load i8*, i8** %buffer.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %96, i64 %idxprom173
  store i8 %conv171, i8* %arrayidx174, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %cond.end.168, %land.lhs.true.96, %do.body.93
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.end
  %97 = load i32, i32* %index, align 4
  store i32 %97, i32* %last_index1, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.body
  %98 = load i32, i32* %x_offset.addr, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %100 to i64
  %101 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 1), align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %101, i64 %idxprom180
  %102 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %102, i64 %idxprom179
  %103 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %98, %103
  store i32 %add183, i32* %x, align 4
  %104 = load i32, i32* %curve_start_offset.addr, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %106 to i64
  %107 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 1), align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %107, i64 %idxprom185
  %108 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %108, i64 %idxprom184
  %109 = load i32, i32* %arrayidx187, align 4
  %add188 = add nsw i32 %104, %109
  store i32 %add188, i32* %y, align 4
  %110 = load i32, i32* %y, align 4
  %111 = load i32, i32* %rowstride, align 4
  %mul189 = mul nsw i32 %110, %111
  %112 = load i32, i32* %x, align 4
  %113 = load i32, i32* %bytes.addr, align 4
  %mul190 = mul nsw i32 %112, %113
  %add191 = add nsw i32 %mul189, %mul190
  store i32 %add191, i32* %index, align 4
  %114 = load i32, i32* %index, align 4
  %115 = load i32, i32* %last_index2, align 4
  %cmp192 = icmp ne i32 %114, %115
  br i1 %cmp192, label %if.then.194, label %if.end.280

if.then.194:                                      ; preds = %if.end.178
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %116 = load i32, i32* %index, align 4
  %cmp196 = icmp sge i32 %116, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.278

land.lhs.true.198:                                ; preds = %do.body.195
  %117 = load i32, i32* %index, align 4
  %add199 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp200 = icmp slt i32 %add199, %118
  br i1 %cmp200, label %if.then.202, label %if.end.278

if.then.202:                                      ; preds = %land.lhs.true.198
  %119 = load i32, i32* %index, align 4
  %add203 = add nsw i32 %119, 0
  %idxprom204 = sext i32 %add203 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %120, i64 %idxprom204
  %121 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %121 to i32
  %conv207 = sitofp i32 %conv206 to double
  %122 = load double, double* %delta.addr, align 8
  %sub208 = fsub double 1.000000e+00, %122
  %mul209 = fmul double %conv207, %sub208
  %cmp210 = fcmp ogt double %mul209, 0.000000e+00
  br i1 %cmp210, label %cond.true.212, label %cond.false.220

cond.true.212:                                    ; preds = %if.then.202
  %123 = load i32, i32* %index, align 4
  %add213 = add nsw i32 %123, 0
  %idxprom214 = sext i32 %add213 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %124, i64 %idxprom214
  %125 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %125 to i32
  %conv217 = sitofp i32 %conv216 to double
  %126 = load double, double* %delta.addr, align 8
  %sub218 = fsub double 1.000000e+00, %126
  %mul219 = fmul double %conv217, %sub218
  br label %cond.end.221

cond.false.220:                                   ; preds = %if.then.202
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.220, %cond.true.212
  %cond222 = phi double [ %mul219, %cond.true.212 ], [ 0.000000e+00, %cond.false.220 ]
  %conv223 = fptosi double %cond222 to i32
  store i32 %conv223, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv224 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add225 = add nsw i32 %128, 0
  %idxprom226 = sext i32 %add225 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %129, i64 %idxprom226
  store i8 %conv224, i8* %arrayidx227, align 1
  %130 = load i32, i32* %index, align 4
  %add228 = add nsw i32 %130, 1
  %idxprom229 = sext i32 %add228 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %131, i64 %idxprom229
  %132 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %132 to i32
  %conv232 = sitofp i32 %conv231 to double
  %133 = load double, double* %delta.addr, align 8
  %sub233 = fsub double 1.000000e+00, %133
  %mul234 = fmul double %conv232, %sub233
  %cmp235 = fcmp ogt double %mul234, 0.000000e+00
  br i1 %cmp235, label %cond.true.237, label %cond.false.245

cond.true.237:                                    ; preds = %cond.end.221
  %134 = load i32, i32* %index, align 4
  %add238 = add nsw i32 %134, 1
  %idxprom239 = sext i32 %add238 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %135, i64 %idxprom239
  %136 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %136 to i32
  %conv242 = sitofp i32 %conv241 to double
  %137 = load double, double* %delta.addr, align 8
  %sub243 = fsub double 1.000000e+00, %137
  %mul244 = fmul double %conv242, %sub243
  br label %cond.end.246

cond.false.245:                                   ; preds = %cond.end.221
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.237
  %cond247 = phi double [ %mul244, %cond.true.237 ], [ 0.000000e+00, %cond.false.245 ]
  %conv248 = fptosi double %cond247 to i32
  store i32 %conv248, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv249 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add250 = add nsw i32 %139, 1
  %idxprom251 = sext i32 %add250 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %140, i64 %idxprom251
  store i8 %conv249, i8* %arrayidx252, align 1
  %141 = load i32, i32* %index, align 4
  %add253 = add nsw i32 %141, 2
  %idxprom254 = sext i32 %add253 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %142, i64 %idxprom254
  %143 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %143 to i32
  %conv257 = sitofp i32 %conv256 to double
  %144 = load double, double* %delta.addr, align 8
  %sub258 = fsub double 1.000000e+00, %144
  %mul259 = fmul double %conv257, %sub258
  %cmp260 = fcmp ogt double %mul259, 0.000000e+00
  br i1 %cmp260, label %cond.true.262, label %cond.false.270

cond.true.262:                                    ; preds = %cond.end.246
  %145 = load i32, i32* %index, align 4
  %add263 = add nsw i32 %145, 2
  %idxprom264 = sext i32 %add263 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %146, i64 %idxprom264
  %147 = load i8, i8* %arrayidx265, align 1
  %conv266 = zext i8 %147 to i32
  %conv267 = sitofp i32 %conv266 to double
  %148 = load double, double* %delta.addr, align 8
  %sub268 = fsub double 1.000000e+00, %148
  %mul269 = fmul double %conv267, %sub268
  br label %cond.end.271

cond.false.270:                                   ; preds = %cond.end.246
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.262
  %cond272 = phi double [ %mul269, %cond.true.262 ], [ 0.000000e+00, %cond.false.270 ]
  %conv273 = fptosi double %cond272 to i32
  store i32 %conv273, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv274 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add275 = add nsw i32 %150, 2
  %idxprom276 = sext i32 %add275 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %151, i64 %idxprom276
  store i8 %conv274, i8* %arrayidx277, align 1
  br label %if.end.278

if.end.278:                                       ; preds = %cond.end.271, %land.lhs.true.198, %do.body.195
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %do.end.279, %if.end.178
  br label %for.inc

for.inc:                                          ; preds = %if.end.280
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lighten_right_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 1), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %curve_start_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 1), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.178

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %conv = sitofp i32 %23 to double
  %24 = load i32, i32* %steps.addr, align 4
  %conv12 = sitofp i32 %24 to double
  %div = fdiv double %conv12, 1.300000e+00
  %cmp13 = fcmp olt double %conv, %div
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %25 = load i32, i32* %index, align 4
  %cmp16 = icmp sge i32 %25, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %26 = load i32, i32* %index, align 4
  %add18 = add nsw i32 %26, 2
  %27 = load i32, i32* %bufsize.addr, align 4
  %cmp19 = icmp slt i32 %add18, %27
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %index, align 4
  %add22 = add nsw i32 %28, 0
  %idxprom23 = sext i32 %add22 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 %idxprom23
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  %conv26 = sitofp i32 %conv25 to double
  %31 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %31
  %mul27 = fmul double %conv26, %sub
  %cmp28 = fcmp ogt double %mul27, 0.000000e+00
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %32 = load i32, i32* %index, align 4
  %add30 = add nsw i32 %32, 0
  %idxprom31 = sext i32 %add30 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %33, i64 %idxprom31
  %34 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %34 to i32
  %conv34 = sitofp i32 %conv33 to double
  %35 = load double, double* %delta.addr, align 8
  %sub35 = fsub double 1.000000e+00, %35
  %mul36 = fmul double %conv34, %sub35
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul36, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv37 = fptosi double %cond to i32
  store i32 %conv37, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv38 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add39 = add nsw i32 %37, 0
  %idxprom40 = sext i32 %add39 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %38, i64 %idxprom40
  store i8 %conv38, i8* %arrayidx41, align 1
  %39 = load i32, i32* %index, align 4
  %add42 = add nsw i32 %39, 1
  %idxprom43 = sext i32 %add42 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %40, i64 %idxprom43
  %41 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %41 to i32
  %conv46 = sitofp i32 %conv45 to double
  %42 = load double, double* %delta.addr, align 8
  %sub47 = fsub double 1.000000e+00, %42
  %mul48 = fmul double %conv46, %sub47
  %cmp49 = fcmp ogt double %mul48, 0.000000e+00
  br i1 %cmp49, label %cond.true.51, label %cond.false.59

cond.true.51:                                     ; preds = %cond.end
  %43 = load i32, i32* %index, align 4
  %add52 = add nsw i32 %43, 1
  %idxprom53 = sext i32 %add52 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %44, i64 %idxprom53
  %45 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %45 to i32
  %conv56 = sitofp i32 %conv55 to double
  %46 = load double, double* %delta.addr, align 8
  %sub57 = fsub double 1.000000e+00, %46
  %mul58 = fmul double %conv56, %sub57
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.end
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.51
  %cond61 = phi double [ %mul58, %cond.true.51 ], [ 0.000000e+00, %cond.false.59 ]
  %conv62 = fptosi double %cond61 to i32
  store i32 %conv62, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv63 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add64 = add nsw i32 %48, 1
  %idxprom65 = sext i32 %add64 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %49, i64 %idxprom65
  store i8 %conv63, i8* %arrayidx66, align 1
  %50 = load i32, i32* %index, align 4
  %add67 = add nsw i32 %50, 2
  %idxprom68 = sext i32 %add67 to i64
  %51 = load i8*, i8** %buffer.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %51, i64 %idxprom68
  %52 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %52 to i32
  %conv71 = sitofp i32 %conv70 to double
  %53 = load double, double* %delta.addr, align 8
  %sub72 = fsub double 1.000000e+00, %53
  %mul73 = fmul double %conv71, %sub72
  %cmp74 = fcmp ogt double %mul73, 0.000000e+00
  br i1 %cmp74, label %cond.true.76, label %cond.false.84

cond.true.76:                                     ; preds = %cond.end.60
  %54 = load i32, i32* %index, align 4
  %add77 = add nsw i32 %54, 2
  %idxprom78 = sext i32 %add77 to i64
  %55 = load i8*, i8** %buffer.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %55, i64 %idxprom78
  %56 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %56 to i32
  %conv81 = sitofp i32 %conv80 to double
  %57 = load double, double* %delta.addr, align 8
  %sub82 = fsub double 1.000000e+00, %57
  %mul83 = fmul double %conv81, %sub82
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.60
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.76
  %cond86 = phi double [ %mul83, %cond.true.76 ], [ 0.000000e+00, %cond.false.84 ]
  %conv87 = fptosi double %cond86 to i32
  store i32 %conv87, i32* %temp, align 4
  %58 = load i32, i32* %temp, align 4
  %conv88 = trunc i32 %58 to i8
  %59 = load i32, i32* %index, align 4
  %add89 = add nsw i32 %59, 2
  %idxprom90 = sext i32 %add89 to i64
  %60 = load i8*, i8** %buffer.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %60, i64 %idxprom90
  store i8 %conv88, i8* %arrayidx91, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.85, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.177

if.else:                                          ; preds = %if.then
  br label %do.body.92

do.body.92:                                       ; preds = %if.else
  %61 = load i32, i32* %index, align 4
  %cmp93 = icmp sge i32 %61, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.175

land.lhs.true.95:                                 ; preds = %do.body.92
  %62 = load i32, i32* %index, align 4
  %add96 = add nsw i32 %62, 2
  %63 = load i32, i32* %bufsize.addr, align 4
  %cmp97 = icmp slt i32 %add96, %63
  br i1 %cmp97, label %if.then.99, label %if.end.175

if.then.99:                                       ; preds = %land.lhs.true.95
  %64 = load i32, i32* %index, align 4
  %add100 = add nsw i32 %64, 0
  %idxprom101 = sext i32 %add100 to i64
  %65 = load i8*, i8** %buffer.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %65, i64 %idxprom101
  %66 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %66 to i32
  %conv104 = sitofp i32 %conv103 to double
  %67 = load double, double* %delta.addr, align 8
  %add105 = fadd double 1.000000e+00, %67
  %mul106 = fmul double %conv104, %add105
  %cmp107 = fcmp olt double %mul106, 2.550000e+02
  br i1 %cmp107, label %cond.true.109, label %cond.false.117

cond.true.109:                                    ; preds = %if.then.99
  %68 = load i32, i32* %index, align 4
  %add110 = add nsw i32 %68, 0
  %idxprom111 = sext i32 %add110 to i64
  %69 = load i8*, i8** %buffer.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %69, i64 %idxprom111
  %70 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %70 to i32
  %conv114 = sitofp i32 %conv113 to double
  %71 = load double, double* %delta.addr, align 8
  %add115 = fadd double 1.000000e+00, %71
  %mul116 = fmul double %conv114, %add115
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.then.99
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.109
  %cond119 = phi double [ %mul116, %cond.true.109 ], [ 2.550000e+02, %cond.false.117 ]
  %conv120 = fptosi double %cond119 to i32
  store i32 %conv120, i32* %temp, align 4
  %72 = load i32, i32* %temp, align 4
  %conv121 = trunc i32 %72 to i8
  %73 = load i32, i32* %index, align 4
  %add122 = add nsw i32 %73, 0
  %idxprom123 = sext i32 %add122 to i64
  %74 = load i8*, i8** %buffer.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %74, i64 %idxprom123
  store i8 %conv121, i8* %arrayidx124, align 1
  %75 = load i32, i32* %index, align 4
  %add125 = add nsw i32 %75, 1
  %idxprom126 = sext i32 %add125 to i64
  %76 = load i8*, i8** %buffer.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %76, i64 %idxprom126
  %77 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %77 to i32
  %conv129 = sitofp i32 %conv128 to double
  %78 = load double, double* %delta.addr, align 8
  %add130 = fadd double 1.000000e+00, %78
  %mul131 = fmul double %conv129, %add130
  %cmp132 = fcmp olt double %mul131, 2.550000e+02
  br i1 %cmp132, label %cond.true.134, label %cond.false.142

cond.true.134:                                    ; preds = %cond.end.118
  %79 = load i32, i32* %index, align 4
  %add135 = add nsw i32 %79, 1
  %idxprom136 = sext i32 %add135 to i64
  %80 = load i8*, i8** %buffer.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %80, i64 %idxprom136
  %81 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %81 to i32
  %conv139 = sitofp i32 %conv138 to double
  %82 = load double, double* %delta.addr, align 8
  %add140 = fadd double 1.000000e+00, %82
  %mul141 = fmul double %conv139, %add140
  br label %cond.end.143

cond.false.142:                                   ; preds = %cond.end.118
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.134
  %cond144 = phi double [ %mul141, %cond.true.134 ], [ 2.550000e+02, %cond.false.142 ]
  %conv145 = fptosi double %cond144 to i32
  store i32 %conv145, i32* %temp, align 4
  %83 = load i32, i32* %temp, align 4
  %conv146 = trunc i32 %83 to i8
  %84 = load i32, i32* %index, align 4
  %add147 = add nsw i32 %84, 1
  %idxprom148 = sext i32 %add147 to i64
  %85 = load i8*, i8** %buffer.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %85, i64 %idxprom148
  store i8 %conv146, i8* %arrayidx149, align 1
  %86 = load i32, i32* %index, align 4
  %add150 = add nsw i32 %86, 2
  %idxprom151 = sext i32 %add150 to i64
  %87 = load i8*, i8** %buffer.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %87, i64 %idxprom151
  %88 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %88 to i32
  %conv154 = sitofp i32 %conv153 to double
  %89 = load double, double* %delta.addr, align 8
  %add155 = fadd double 1.000000e+00, %89
  %mul156 = fmul double %conv154, %add155
  %cmp157 = fcmp olt double %mul156, 2.550000e+02
  br i1 %cmp157, label %cond.true.159, label %cond.false.167

cond.true.159:                                    ; preds = %cond.end.143
  %90 = load i32, i32* %index, align 4
  %add160 = add nsw i32 %90, 2
  %idxprom161 = sext i32 %add160 to i64
  %91 = load i8*, i8** %buffer.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %91, i64 %idxprom161
  %92 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %92 to i32
  %conv164 = sitofp i32 %conv163 to double
  %93 = load double, double* %delta.addr, align 8
  %add165 = fadd double 1.000000e+00, %93
  %mul166 = fmul double %conv164, %add165
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.143
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.159
  %cond169 = phi double [ %mul166, %cond.true.159 ], [ 2.550000e+02, %cond.false.167 ]
  %conv170 = fptosi double %cond169 to i32
  store i32 %conv170, i32* %temp, align 4
  %94 = load i32, i32* %temp, align 4
  %conv171 = trunc i32 %94 to i8
  %95 = load i32, i32* %index, align 4
  %add172 = add nsw i32 %95, 2
  %idxprom173 = sext i32 %add172 to i64
  %96 = load i8*, i8** %buffer.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %96, i64 %idxprom173
  store i8 %conv171, i8* %arrayidx174, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %cond.end.168, %land.lhs.true.95, %do.body.92
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.end
  %97 = load i32, i32* %index, align 4
  store i32 %97, i32* %last_index1, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.body
  %98 = load i32, i32* %x_offset.addr, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %100 to i64
  %101 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 1), align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %101, i64 %idxprom180
  %102 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %102, i64 %idxprom179
  %103 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %98, %103
  store i32 %add183, i32* %x, align 4
  %104 = load i32, i32* %curve_start_offset.addr, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %106 to i64
  %107 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 1), align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %107, i64 %idxprom185
  %108 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %108, i64 %idxprom184
  %109 = load i32, i32* %arrayidx187, align 4
  %add188 = add nsw i32 %104, %109
  store i32 %add188, i32* %y, align 4
  %110 = load i32, i32* %y, align 4
  %111 = load i32, i32* %rowstride, align 4
  %mul189 = mul nsw i32 %110, %111
  %112 = load i32, i32* %x, align 4
  %113 = load i32, i32* %bytes.addr, align 4
  %mul190 = mul nsw i32 %112, %113
  %add191 = add nsw i32 %mul189, %mul190
  store i32 %add191, i32* %index, align 4
  %114 = load i32, i32* %index, align 4
  %115 = load i32, i32* %last_index2, align 4
  %cmp192 = icmp ne i32 %114, %115
  br i1 %cmp192, label %if.then.194, label %if.end.280

if.then.194:                                      ; preds = %if.end.178
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %116 = load i32, i32* %index, align 4
  %cmp196 = icmp sge i32 %116, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.278

land.lhs.true.198:                                ; preds = %do.body.195
  %117 = load i32, i32* %index, align 4
  %add199 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp200 = icmp slt i32 %add199, %118
  br i1 %cmp200, label %if.then.202, label %if.end.278

if.then.202:                                      ; preds = %land.lhs.true.198
  %119 = load i32, i32* %index, align 4
  %add203 = add nsw i32 %119, 0
  %idxprom204 = sext i32 %add203 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %120, i64 %idxprom204
  %121 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %121 to i32
  %conv207 = sitofp i32 %conv206 to double
  %122 = load double, double* %delta.addr, align 8
  %add208 = fadd double 1.000000e+00, %122
  %mul209 = fmul double %conv207, %add208
  %cmp210 = fcmp olt double %mul209, 2.550000e+02
  br i1 %cmp210, label %cond.true.212, label %cond.false.220

cond.true.212:                                    ; preds = %if.then.202
  %123 = load i32, i32* %index, align 4
  %add213 = add nsw i32 %123, 0
  %idxprom214 = sext i32 %add213 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %124, i64 %idxprom214
  %125 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %125 to i32
  %conv217 = sitofp i32 %conv216 to double
  %126 = load double, double* %delta.addr, align 8
  %add218 = fadd double 1.000000e+00, %126
  %mul219 = fmul double %conv217, %add218
  br label %cond.end.221

cond.false.220:                                   ; preds = %if.then.202
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.220, %cond.true.212
  %cond222 = phi double [ %mul219, %cond.true.212 ], [ 2.550000e+02, %cond.false.220 ]
  %conv223 = fptosi double %cond222 to i32
  store i32 %conv223, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv224 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add225 = add nsw i32 %128, 0
  %idxprom226 = sext i32 %add225 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %129, i64 %idxprom226
  store i8 %conv224, i8* %arrayidx227, align 1
  %130 = load i32, i32* %index, align 4
  %add228 = add nsw i32 %130, 1
  %idxprom229 = sext i32 %add228 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %131, i64 %idxprom229
  %132 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %132 to i32
  %conv232 = sitofp i32 %conv231 to double
  %133 = load double, double* %delta.addr, align 8
  %add233 = fadd double 1.000000e+00, %133
  %mul234 = fmul double %conv232, %add233
  %cmp235 = fcmp olt double %mul234, 2.550000e+02
  br i1 %cmp235, label %cond.true.237, label %cond.false.245

cond.true.237:                                    ; preds = %cond.end.221
  %134 = load i32, i32* %index, align 4
  %add238 = add nsw i32 %134, 1
  %idxprom239 = sext i32 %add238 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %135, i64 %idxprom239
  %136 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %136 to i32
  %conv242 = sitofp i32 %conv241 to double
  %137 = load double, double* %delta.addr, align 8
  %add243 = fadd double 1.000000e+00, %137
  %mul244 = fmul double %conv242, %add243
  br label %cond.end.246

cond.false.245:                                   ; preds = %cond.end.221
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.237
  %cond247 = phi double [ %mul244, %cond.true.237 ], [ 2.550000e+02, %cond.false.245 ]
  %conv248 = fptosi double %cond247 to i32
  store i32 %conv248, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv249 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add250 = add nsw i32 %139, 1
  %idxprom251 = sext i32 %add250 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %140, i64 %idxprom251
  store i8 %conv249, i8* %arrayidx252, align 1
  %141 = load i32, i32* %index, align 4
  %add253 = add nsw i32 %141, 2
  %idxprom254 = sext i32 %add253 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %142, i64 %idxprom254
  %143 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %143 to i32
  %conv257 = sitofp i32 %conv256 to double
  %144 = load double, double* %delta.addr, align 8
  %add258 = fadd double 1.000000e+00, %144
  %mul259 = fmul double %conv257, %add258
  %cmp260 = fcmp olt double %mul259, 2.550000e+02
  br i1 %cmp260, label %cond.true.262, label %cond.false.270

cond.true.262:                                    ; preds = %cond.end.246
  %145 = load i32, i32* %index, align 4
  %add263 = add nsw i32 %145, 2
  %idxprom264 = sext i32 %add263 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %146, i64 %idxprom264
  %147 = load i8, i8* %arrayidx265, align 1
  %conv266 = zext i8 %147 to i32
  %conv267 = sitofp i32 %conv266 to double
  %148 = load double, double* %delta.addr, align 8
  %add268 = fadd double 1.000000e+00, %148
  %mul269 = fmul double %conv267, %add268
  br label %cond.end.271

cond.false.270:                                   ; preds = %cond.end.246
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.262
  %cond272 = phi double [ %mul269, %cond.true.262 ], [ 2.550000e+02, %cond.false.270 ]
  %conv273 = fptosi double %cond272 to i32
  store i32 %conv273, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv274 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add275 = add nsw i32 %150, 2
  %idxprom276 = sext i32 %add275 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %151, i64 %idxprom276
  store i8 %conv274, i8* %arrayidx277, align 1
  br label %if.end.278

if.end.278:                                       ; preds = %cond.end.271, %land.lhs.true.198, %do.body.195
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %do.end.279, %if.end.178
  br label %for.inc

for.inc:                                          ; preds = %if.end.280
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_left_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %curve_start_offset, i32 %steps) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 0), align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %x_offset.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %x, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 0), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load i32, i32* %curve_start_offset.addr, align 4
  %add3 = add nsw i32 %10, %11
  store i32 %add3, i32* %y, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %12, %13
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %add6 = add nsw i32 %mul4, %mul5
  store i32 %add6, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %16 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %16, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %17 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %17, 2
  %18 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %18
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %19, 0
  %idxprom11 = sext i32 %add10 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom11
  store i8 30, i8* %arrayidx12, align 1
  %21 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %21, 1
  %idxprom14 = sext i32 %add13 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %22, i64 %idxprom14
  store i8 30, i8* %arrayidx15, align 1
  %23 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %23, 2
  %idxprom17 = sext i32 %add16 to i64
  %24 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %24, i64 %idxprom17
  store i8 30, i8* %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 0), align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom19
  %27 = load i32, i32* %arrayidx20, align 4
  %28 = load i32, i32* %x_offset.addr, align 4
  %add21 = add nsw i32 %27, %28
  store i32 %add21, i32* %x, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 0), align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load i32, i32* %curve_start_offset.addr, align 4
  %add24 = add nsw i32 %31, %32
  store i32 %add24, i32* %y, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %rowstride, align 4
  %mul25 = mul nsw i32 %33, %34
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %bytes.addr, align 4
  %mul26 = mul nsw i32 %35, %36
  %add27 = add nsw i32 %mul25, %mul26
  store i32 %add27, i32* %index, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %do.end
  %37 = load i32, i32* %index, align 4
  %cmp29 = icmp sge i32 %37, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.43

land.lhs.true.30:                                 ; preds = %do.body.28
  %38 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %38, 2
  %39 = load i32, i32* %bufsize.addr, align 4
  %cmp32 = icmp slt i32 %add31, %39
  br i1 %cmp32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %land.lhs.true.30
  %40 = load i32, i32* %index, align 4
  %add34 = add nsw i32 %40, 0
  %idxprom35 = sext i32 %add34 to i64
  %41 = load i8*, i8** %buffer.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 %idxprom35
  store i8 30, i8* %arrayidx36, align 1
  %42 = load i32, i32* %index, align 4
  %add37 = add nsw i32 %42, 1
  %idxprom38 = sext i32 %add37 to i64
  %43 = load i8*, i8** %buffer.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %43, i64 %idxprom38
  store i8 30, i8* %arrayidx39, align 1
  %44 = load i32, i32* %index, align 4
  %add40 = add nsw i32 %44, 2
  %idxprom41 = sext i32 %add40 to i64
  %45 = load i8*, i8** %buffer.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  store i8 30, i8* %arrayidx42, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.33, %land.lhs.true.30, %do.body.28
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %do.end.44
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @darken_left_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 0), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %curve_start_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 0), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.85

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %23 = load i32, i32* %index, align 4
  %cmp12 = icmp sge i32 %23, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %24 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %24, 2
  %25 = load i32, i32* %bufsize.addr, align 4
  %cmp14 = icmp slt i32 %add13, %25
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %26, 0
  %idxprom17 = sext i32 %add16 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 %idxprom17
  %28 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %28 to i32
  %conv19 = sitofp i32 %conv to double
  %29 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %29
  %mul20 = fmul double %conv19, %sub
  %cmp21 = fcmp ogt double %mul20, 0.000000e+00
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  %30 = load i32, i32* %index, align 4
  %add23 = add nsw i32 %30, 0
  %idxprom24 = sext i32 %add23 to i64
  %31 = load i8*, i8** %buffer.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %31, i64 %idxprom24
  %32 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %32 to i32
  %conv27 = sitofp i32 %conv26 to double
  %33 = load double, double* %delta.addr, align 8
  %sub28 = fsub double 1.000000e+00, %33
  %mul29 = fmul double %conv27, %sub28
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul29, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv30 = fptosi double %cond to i32
  store i32 %conv30, i32* %temp, align 4
  %34 = load i32, i32* %temp, align 4
  %conv31 = trunc i32 %34 to i8
  %35 = load i32, i32* %index, align 4
  %add32 = add nsw i32 %35, 0
  %idxprom33 = sext i32 %add32 to i64
  %36 = load i8*, i8** %buffer.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %36, i64 %idxprom33
  store i8 %conv31, i8* %arrayidx34, align 1
  %37 = load i32, i32* %index, align 4
  %add35 = add nsw i32 %37, 1
  %idxprom36 = sext i32 %add35 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %38, i64 %idxprom36
  %39 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %39 to i32
  %conv39 = sitofp i32 %conv38 to double
  %40 = load double, double* %delta.addr, align 8
  %sub40 = fsub double 1.000000e+00, %40
  %mul41 = fmul double %conv39, %sub40
  %cmp42 = fcmp ogt double %mul41, 0.000000e+00
  br i1 %cmp42, label %cond.true.44, label %cond.false.52

cond.true.44:                                     ; preds = %cond.end
  %41 = load i32, i32* %index, align 4
  %add45 = add nsw i32 %41, 1
  %idxprom46 = sext i32 %add45 to i64
  %42 = load i8*, i8** %buffer.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %42, i64 %idxprom46
  %43 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %43 to i32
  %conv49 = sitofp i32 %conv48 to double
  %44 = load double, double* %delta.addr, align 8
  %sub50 = fsub double 1.000000e+00, %44
  %mul51 = fmul double %conv49, %sub50
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.44
  %cond54 = phi double [ %mul51, %cond.true.44 ], [ 0.000000e+00, %cond.false.52 ]
  %conv55 = fptosi double %cond54 to i32
  store i32 %conv55, i32* %temp, align 4
  %45 = load i32, i32* %temp, align 4
  %conv56 = trunc i32 %45 to i8
  %46 = load i32, i32* %index, align 4
  %add57 = add nsw i32 %46, 1
  %idxprom58 = sext i32 %add57 to i64
  %47 = load i8*, i8** %buffer.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %47, i64 %idxprom58
  store i8 %conv56, i8* %arrayidx59, align 1
  %48 = load i32, i32* %index, align 4
  %add60 = add nsw i32 %48, 2
  %idxprom61 = sext i32 %add60 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %49, i64 %idxprom61
  %50 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %50 to i32
  %conv64 = sitofp i32 %conv63 to double
  %51 = load double, double* %delta.addr, align 8
  %sub65 = fsub double 1.000000e+00, %51
  %mul66 = fmul double %conv64, %sub65
  %cmp67 = fcmp ogt double %mul66, 0.000000e+00
  br i1 %cmp67, label %cond.true.69, label %cond.false.77

cond.true.69:                                     ; preds = %cond.end.53
  %52 = load i32, i32* %index, align 4
  %add70 = add nsw i32 %52, 2
  %idxprom71 = sext i32 %add70 to i64
  %53 = load i8*, i8** %buffer.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %53, i64 %idxprom71
  %54 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %54 to i32
  %conv74 = sitofp i32 %conv73 to double
  %55 = load double, double* %delta.addr, align 8
  %sub75 = fsub double 1.000000e+00, %55
  %mul76 = fmul double %conv74, %sub75
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.end.53
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.69
  %cond79 = phi double [ %mul76, %cond.true.69 ], [ 0.000000e+00, %cond.false.77 ]
  %conv80 = fptosi double %cond79 to i32
  store i32 %conv80, i32* %temp, align 4
  %56 = load i32, i32* %temp, align 4
  %conv81 = trunc i32 %56 to i8
  %57 = load i32, i32* %index, align 4
  %add82 = add nsw i32 %57, 2
  %idxprom83 = sext i32 %add82 to i64
  %58 = load i8*, i8** %buffer.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %58, i64 %idxprom83
  store i8 %conv81, i8* %arrayidx84, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.78, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %59 = load i32, i32* %index, align 4
  store i32 %59, i32* %last_index1, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %do.end, %for.body
  %60 = load i32, i32* %x_offset.addr, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %61 to i64
  %62 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %62 to i64
  %63 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 0), align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %63, i64 %idxprom87
  %64 = load i32*, i32** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %64, i64 %idxprom86
  %65 = load i32, i32* %arrayidx89, align 4
  %add90 = add nsw i32 %60, %65
  store i32 %add90, i32* %x, align 4
  %66 = load i32, i32* %curve_start_offset.addr, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %68 to i64
  %69 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 0), align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %69, i64 %idxprom92
  %70 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %70, i64 %idxprom91
  %71 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %66, %71
  store i32 %add95, i32* %y, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %rowstride, align 4
  %mul96 = mul nsw i32 %72, %73
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %bytes.addr, align 4
  %mul97 = mul nsw i32 %74, %75
  %add98 = add nsw i32 %mul96, %mul97
  store i32 %add98, i32* %index, align 4
  %76 = load i32, i32* %index, align 4
  %77 = load i32, i32* %last_index2, align 4
  %cmp99 = icmp ne i32 %76, %77
  br i1 %cmp99, label %if.then.101, label %if.end.276

if.then.101:                                      ; preds = %if.end.85
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %steps.addr, align 4
  %div = sdiv i32 %79, 4
  %cmp102 = icmp slt i32 %78, %div
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.then.101
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %80 = load i32, i32* %index, align 4
  %cmp106 = icmp sge i32 %80, 0
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.188

land.lhs.true.108:                                ; preds = %do.body.105
  %81 = load i32, i32* %index, align 4
  %add109 = add nsw i32 %81, 2
  %82 = load i32, i32* %bufsize.addr, align 4
  %cmp110 = icmp slt i32 %add109, %82
  br i1 %cmp110, label %if.then.112, label %if.end.188

if.then.112:                                      ; preds = %land.lhs.true.108
  %83 = load i32, i32* %index, align 4
  %add113 = add nsw i32 %83, 0
  %idxprom114 = sext i32 %add113 to i64
  %84 = load i8*, i8** %buffer.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %84, i64 %idxprom114
  %85 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %85 to i32
  %conv117 = sitofp i32 %conv116 to double
  %86 = load double, double* %delta.addr, align 8
  %sub118 = fsub double 1.000000e+00, %86
  %mul119 = fmul double %conv117, %sub118
  %cmp120 = fcmp ogt double %mul119, 0.000000e+00
  br i1 %cmp120, label %cond.true.122, label %cond.false.130

cond.true.122:                                    ; preds = %if.then.112
  %87 = load i32, i32* %index, align 4
  %add123 = add nsw i32 %87, 0
  %idxprom124 = sext i32 %add123 to i64
  %88 = load i8*, i8** %buffer.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %88, i64 %idxprom124
  %89 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %89 to i32
  %conv127 = sitofp i32 %conv126 to double
  %90 = load double, double* %delta.addr, align 8
  %sub128 = fsub double 1.000000e+00, %90
  %mul129 = fmul double %conv127, %sub128
  br label %cond.end.131

cond.false.130:                                   ; preds = %if.then.112
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.122
  %cond132 = phi double [ %mul129, %cond.true.122 ], [ 0.000000e+00, %cond.false.130 ]
  %conv133 = fptosi double %cond132 to i32
  store i32 %conv133, i32* %temp, align 4
  %91 = load i32, i32* %temp, align 4
  %conv134 = trunc i32 %91 to i8
  %92 = load i32, i32* %index, align 4
  %add135 = add nsw i32 %92, 0
  %idxprom136 = sext i32 %add135 to i64
  %93 = load i8*, i8** %buffer.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %93, i64 %idxprom136
  store i8 %conv134, i8* %arrayidx137, align 1
  %94 = load i32, i32* %index, align 4
  %add138 = add nsw i32 %94, 1
  %idxprom139 = sext i32 %add138 to i64
  %95 = load i8*, i8** %buffer.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %95, i64 %idxprom139
  %96 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %96 to i32
  %conv142 = sitofp i32 %conv141 to double
  %97 = load double, double* %delta.addr, align 8
  %sub143 = fsub double 1.000000e+00, %97
  %mul144 = fmul double %conv142, %sub143
  %cmp145 = fcmp ogt double %mul144, 0.000000e+00
  br i1 %cmp145, label %cond.true.147, label %cond.false.155

cond.true.147:                                    ; preds = %cond.end.131
  %98 = load i32, i32* %index, align 4
  %add148 = add nsw i32 %98, 1
  %idxprom149 = sext i32 %add148 to i64
  %99 = load i8*, i8** %buffer.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %99, i64 %idxprom149
  %100 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %100 to i32
  %conv152 = sitofp i32 %conv151 to double
  %101 = load double, double* %delta.addr, align 8
  %sub153 = fsub double 1.000000e+00, %101
  %mul154 = fmul double %conv152, %sub153
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.end.131
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.147
  %cond157 = phi double [ %mul154, %cond.true.147 ], [ 0.000000e+00, %cond.false.155 ]
  %conv158 = fptosi double %cond157 to i32
  store i32 %conv158, i32* %temp, align 4
  %102 = load i32, i32* %temp, align 4
  %conv159 = trunc i32 %102 to i8
  %103 = load i32, i32* %index, align 4
  %add160 = add nsw i32 %103, 1
  %idxprom161 = sext i32 %add160 to i64
  %104 = load i8*, i8** %buffer.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %104, i64 %idxprom161
  store i8 %conv159, i8* %arrayidx162, align 1
  %105 = load i32, i32* %index, align 4
  %add163 = add nsw i32 %105, 2
  %idxprom164 = sext i32 %add163 to i64
  %106 = load i8*, i8** %buffer.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %106, i64 %idxprom164
  %107 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %107 to i32
  %conv167 = sitofp i32 %conv166 to double
  %108 = load double, double* %delta.addr, align 8
  %sub168 = fsub double 1.000000e+00, %108
  %mul169 = fmul double %conv167, %sub168
  %cmp170 = fcmp ogt double %mul169, 0.000000e+00
  br i1 %cmp170, label %cond.true.172, label %cond.false.180

cond.true.172:                                    ; preds = %cond.end.156
  %109 = load i32, i32* %index, align 4
  %add173 = add nsw i32 %109, 2
  %idxprom174 = sext i32 %add173 to i64
  %110 = load i8*, i8** %buffer.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %110, i64 %idxprom174
  %111 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %111 to i32
  %conv177 = sitofp i32 %conv176 to double
  %112 = load double, double* %delta.addr, align 8
  %sub178 = fsub double 1.000000e+00, %112
  %mul179 = fmul double %conv177, %sub178
  br label %cond.end.181

cond.false.180:                                   ; preds = %cond.end.156
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.true.172
  %cond182 = phi double [ %mul179, %cond.true.172 ], [ 0.000000e+00, %cond.false.180 ]
  %conv183 = fptosi double %cond182 to i32
  store i32 %conv183, i32* %temp, align 4
  %113 = load i32, i32* %temp, align 4
  %conv184 = trunc i32 %113 to i8
  %114 = load i32, i32* %index, align 4
  %add185 = add nsw i32 %114, 2
  %idxprom186 = sext i32 %add185 to i64
  %115 = load i8*, i8** %buffer.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %115, i64 %idxprom186
  store i8 %conv184, i8* %arrayidx187, align 1
  br label %if.end.188

if.end.188:                                       ; preds = %cond.end.181, %land.lhs.true.108, %do.body.105
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  br label %if.end.275

if.else:                                          ; preds = %if.then.101
  br label %do.body.190

do.body.190:                                      ; preds = %if.else
  %116 = load i32, i32* %index, align 4
  %cmp191 = icmp sge i32 %116, 0
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.273

land.lhs.true.193:                                ; preds = %do.body.190
  %117 = load i32, i32* %index, align 4
  %add194 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp195 = icmp slt i32 %add194, %118
  br i1 %cmp195, label %if.then.197, label %if.end.273

if.then.197:                                      ; preds = %land.lhs.true.193
  %119 = load i32, i32* %index, align 4
  %add198 = add nsw i32 %119, 0
  %idxprom199 = sext i32 %add198 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %120, i64 %idxprom199
  %121 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %121 to i32
  %conv202 = sitofp i32 %conv201 to double
  %122 = load double, double* %delta.addr, align 8
  %add203 = fadd double 1.000000e+00, %122
  %mul204 = fmul double %conv202, %add203
  %cmp205 = fcmp olt double %mul204, 2.550000e+02
  br i1 %cmp205, label %cond.true.207, label %cond.false.215

cond.true.207:                                    ; preds = %if.then.197
  %123 = load i32, i32* %index, align 4
  %add208 = add nsw i32 %123, 0
  %idxprom209 = sext i32 %add208 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %124, i64 %idxprom209
  %125 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %125 to i32
  %conv212 = sitofp i32 %conv211 to double
  %126 = load double, double* %delta.addr, align 8
  %add213 = fadd double 1.000000e+00, %126
  %mul214 = fmul double %conv212, %add213
  br label %cond.end.216

cond.false.215:                                   ; preds = %if.then.197
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.215, %cond.true.207
  %cond217 = phi double [ %mul214, %cond.true.207 ], [ 2.550000e+02, %cond.false.215 ]
  %conv218 = fptosi double %cond217 to i32
  store i32 %conv218, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv219 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add220 = add nsw i32 %128, 0
  %idxprom221 = sext i32 %add220 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %129, i64 %idxprom221
  store i8 %conv219, i8* %arrayidx222, align 1
  %130 = load i32, i32* %index, align 4
  %add223 = add nsw i32 %130, 1
  %idxprom224 = sext i32 %add223 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %131, i64 %idxprom224
  %132 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %132 to i32
  %conv227 = sitofp i32 %conv226 to double
  %133 = load double, double* %delta.addr, align 8
  %add228 = fadd double 1.000000e+00, %133
  %mul229 = fmul double %conv227, %add228
  %cmp230 = fcmp olt double %mul229, 2.550000e+02
  br i1 %cmp230, label %cond.true.232, label %cond.false.240

cond.true.232:                                    ; preds = %cond.end.216
  %134 = load i32, i32* %index, align 4
  %add233 = add nsw i32 %134, 1
  %idxprom234 = sext i32 %add233 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %135, i64 %idxprom234
  %136 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %136 to i32
  %conv237 = sitofp i32 %conv236 to double
  %137 = load double, double* %delta.addr, align 8
  %add238 = fadd double 1.000000e+00, %137
  %mul239 = fmul double %conv237, %add238
  br label %cond.end.241

cond.false.240:                                   ; preds = %cond.end.216
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %cond.true.232
  %cond242 = phi double [ %mul239, %cond.true.232 ], [ 2.550000e+02, %cond.false.240 ]
  %conv243 = fptosi double %cond242 to i32
  store i32 %conv243, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv244 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add245 = add nsw i32 %139, 1
  %idxprom246 = sext i32 %add245 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %140, i64 %idxprom246
  store i8 %conv244, i8* %arrayidx247, align 1
  %141 = load i32, i32* %index, align 4
  %add248 = add nsw i32 %141, 2
  %idxprom249 = sext i32 %add248 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %142, i64 %idxprom249
  %143 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %143 to i32
  %conv252 = sitofp i32 %conv251 to double
  %144 = load double, double* %delta.addr, align 8
  %add253 = fadd double 1.000000e+00, %144
  %mul254 = fmul double %conv252, %add253
  %cmp255 = fcmp olt double %mul254, 2.550000e+02
  br i1 %cmp255, label %cond.true.257, label %cond.false.265

cond.true.257:                                    ; preds = %cond.end.241
  %145 = load i32, i32* %index, align 4
  %add258 = add nsw i32 %145, 2
  %idxprom259 = sext i32 %add258 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %146, i64 %idxprom259
  %147 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %147 to i32
  %conv262 = sitofp i32 %conv261 to double
  %148 = load double, double* %delta.addr, align 8
  %add263 = fadd double 1.000000e+00, %148
  %mul264 = fmul double %conv262, %add263
  br label %cond.end.266

cond.false.265:                                   ; preds = %cond.end.241
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.265, %cond.true.257
  %cond267 = phi double [ %mul264, %cond.true.257 ], [ 2.550000e+02, %cond.false.265 ]
  %conv268 = fptosi double %cond267 to i32
  store i32 %conv268, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv269 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add270 = add nsw i32 %150, 2
  %idxprom271 = sext i32 %add270 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %151, i64 %idxprom271
  store i8 %conv269, i8* %arrayidx272, align 1
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.266, %land.lhs.true.193, %do.body.190
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  br label %if.end.275

if.end.275:                                       ; preds = %do.end.274, %do.end.189
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.276
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lighten_left_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 0), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %curve_start_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 0), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.86

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %23 = load i32, i32* %index, align 4
  %cmp12 = icmp sge i32 %23, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %24 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %24, 2
  %25 = load i32, i32* %bufsize.addr, align 4
  %cmp14 = icmp slt i32 %add13, %25
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %26, 0
  %idxprom17 = sext i32 %add16 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 %idxprom17
  %28 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %28 to i32
  %conv19 = sitofp i32 %conv to double
  %29 = load double, double* %delta.addr, align 8
  %add20 = fadd double 1.000000e+00, %29
  %mul21 = fmul double %conv19, %add20
  %cmp22 = fcmp olt double %mul21, 2.550000e+02
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  %30 = load i32, i32* %index, align 4
  %add24 = add nsw i32 %30, 0
  %idxprom25 = sext i32 %add24 to i64
  %31 = load i8*, i8** %buffer.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %31, i64 %idxprom25
  %32 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %32 to i32
  %conv28 = sitofp i32 %conv27 to double
  %33 = load double, double* %delta.addr, align 8
  %add29 = fadd double 1.000000e+00, %33
  %mul30 = fmul double %conv28, %add29
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul30, %cond.true ], [ 2.550000e+02, %cond.false ]
  %conv31 = fptosi double %cond to i32
  store i32 %conv31, i32* %temp, align 4
  %34 = load i32, i32* %temp, align 4
  %conv32 = trunc i32 %34 to i8
  %35 = load i32, i32* %index, align 4
  %add33 = add nsw i32 %35, 0
  %idxprom34 = sext i32 %add33 to i64
  %36 = load i8*, i8** %buffer.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %36, i64 %idxprom34
  store i8 %conv32, i8* %arrayidx35, align 1
  %37 = load i32, i32* %index, align 4
  %add36 = add nsw i32 %37, 1
  %idxprom37 = sext i32 %add36 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 %idxprom37
  %39 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %39 to i32
  %conv40 = sitofp i32 %conv39 to double
  %40 = load double, double* %delta.addr, align 8
  %add41 = fadd double 1.000000e+00, %40
  %mul42 = fmul double %conv40, %add41
  %cmp43 = fcmp olt double %mul42, 2.550000e+02
  br i1 %cmp43, label %cond.true.45, label %cond.false.53

cond.true.45:                                     ; preds = %cond.end
  %41 = load i32, i32* %index, align 4
  %add46 = add nsw i32 %41, 1
  %idxprom47 = sext i32 %add46 to i64
  %42 = load i8*, i8** %buffer.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %42, i64 %idxprom47
  %43 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %conv50 = sitofp i32 %conv49 to double
  %44 = load double, double* %delta.addr, align 8
  %add51 = fadd double 1.000000e+00, %44
  %mul52 = fmul double %conv50, %add51
  br label %cond.end.54

cond.false.53:                                    ; preds = %cond.end
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.45
  %cond55 = phi double [ %mul52, %cond.true.45 ], [ 2.550000e+02, %cond.false.53 ]
  %conv56 = fptosi double %cond55 to i32
  store i32 %conv56, i32* %temp, align 4
  %45 = load i32, i32* %temp, align 4
  %conv57 = trunc i32 %45 to i8
  %46 = load i32, i32* %index, align 4
  %add58 = add nsw i32 %46, 1
  %idxprom59 = sext i32 %add58 to i64
  %47 = load i8*, i8** %buffer.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %47, i64 %idxprom59
  store i8 %conv57, i8* %arrayidx60, align 1
  %48 = load i32, i32* %index, align 4
  %add61 = add nsw i32 %48, 2
  %idxprom62 = sext i32 %add61 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %49, i64 %idxprom62
  %50 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %50 to i32
  %conv65 = sitofp i32 %conv64 to double
  %51 = load double, double* %delta.addr, align 8
  %add66 = fadd double 1.000000e+00, %51
  %mul67 = fmul double %conv65, %add66
  %cmp68 = fcmp olt double %mul67, 2.550000e+02
  br i1 %cmp68, label %cond.true.70, label %cond.false.78

cond.true.70:                                     ; preds = %cond.end.54
  %52 = load i32, i32* %index, align 4
  %add71 = add nsw i32 %52, 2
  %idxprom72 = sext i32 %add71 to i64
  %53 = load i8*, i8** %buffer.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %53, i64 %idxprom72
  %54 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %54 to i32
  %conv75 = sitofp i32 %conv74 to double
  %55 = load double, double* %delta.addr, align 8
  %add76 = fadd double 1.000000e+00, %55
  %mul77 = fmul double %conv75, %add76
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.end.54
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.70
  %cond80 = phi double [ %mul77, %cond.true.70 ], [ 2.550000e+02, %cond.false.78 ]
  %conv81 = fptosi double %cond80 to i32
  store i32 %conv81, i32* %temp, align 4
  %56 = load i32, i32* %temp, align 4
  %conv82 = trunc i32 %56 to i8
  %57 = load i32, i32* %index, align 4
  %add83 = add nsw i32 %57, 2
  %idxprom84 = sext i32 %add83 to i64
  %58 = load i8*, i8** %buffer.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %58, i64 %idxprom84
  store i8 %conv82, i8* %arrayidx85, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.79, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %59 = load i32, i32* %index, align 4
  store i32 %59, i32* %last_index1, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %do.end, %for.body
  %60 = load i32, i32* %x_offset.addr, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %61 to i64
  %62 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %62 to i64
  %63 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 0), align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %63, i64 %idxprom88
  %64 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %64, i64 %idxprom87
  %65 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %60, %65
  store i32 %add91, i32* %x, align 4
  %66 = load i32, i32* %curve_start_offset.addr, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %68 to i64
  %69 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 0), align 8
  %arrayidx94 = getelementptr inbounds i32*, i32** %69, i64 %idxprom93
  %70 = load i32*, i32** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %70, i64 %idxprom92
  %71 = load i32, i32* %arrayidx95, align 4
  %add96 = add nsw i32 %66, %71
  store i32 %add96, i32* %y, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %rowstride, align 4
  %mul97 = mul nsw i32 %72, %73
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %bytes.addr, align 4
  %mul98 = mul nsw i32 %74, %75
  %add99 = add nsw i32 %mul97, %mul98
  store i32 %add99, i32* %index, align 4
  %76 = load i32, i32* %index, align 4
  %77 = load i32, i32* %last_index2, align 4
  %cmp100 = icmp ne i32 %76, %77
  br i1 %cmp100, label %if.then.102, label %if.end.276

if.then.102:                                      ; preds = %if.end.86
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %steps.addr, align 4
  %div = sdiv i32 %79, 4
  %cmp103 = icmp slt i32 %78, %div
  br i1 %cmp103, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %if.then.102
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %80 = load i32, i32* %index, align 4
  %cmp107 = icmp sge i32 %80, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.189

land.lhs.true.109:                                ; preds = %do.body.106
  %81 = load i32, i32* %index, align 4
  %add110 = add nsw i32 %81, 2
  %82 = load i32, i32* %bufsize.addr, align 4
  %cmp111 = icmp slt i32 %add110, %82
  br i1 %cmp111, label %if.then.113, label %if.end.189

if.then.113:                                      ; preds = %land.lhs.true.109
  %83 = load i32, i32* %index, align 4
  %add114 = add nsw i32 %83, 0
  %idxprom115 = sext i32 %add114 to i64
  %84 = load i8*, i8** %buffer.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %84, i64 %idxprom115
  %85 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %85 to i32
  %conv118 = sitofp i32 %conv117 to double
  %86 = load double, double* %delta.addr, align 8
  %add119 = fadd double 1.000000e+00, %86
  %mul120 = fmul double %conv118, %add119
  %cmp121 = fcmp olt double %mul120, 2.550000e+02
  br i1 %cmp121, label %cond.true.123, label %cond.false.131

cond.true.123:                                    ; preds = %if.then.113
  %87 = load i32, i32* %index, align 4
  %add124 = add nsw i32 %87, 0
  %idxprom125 = sext i32 %add124 to i64
  %88 = load i8*, i8** %buffer.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %88, i64 %idxprom125
  %89 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %89 to i32
  %conv128 = sitofp i32 %conv127 to double
  %90 = load double, double* %delta.addr, align 8
  %add129 = fadd double 1.000000e+00, %90
  %mul130 = fmul double %conv128, %add129
  br label %cond.end.132

cond.false.131:                                   ; preds = %if.then.113
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.123
  %cond133 = phi double [ %mul130, %cond.true.123 ], [ 2.550000e+02, %cond.false.131 ]
  %conv134 = fptosi double %cond133 to i32
  store i32 %conv134, i32* %temp, align 4
  %91 = load i32, i32* %temp, align 4
  %conv135 = trunc i32 %91 to i8
  %92 = load i32, i32* %index, align 4
  %add136 = add nsw i32 %92, 0
  %idxprom137 = sext i32 %add136 to i64
  %93 = load i8*, i8** %buffer.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %93, i64 %idxprom137
  store i8 %conv135, i8* %arrayidx138, align 1
  %94 = load i32, i32* %index, align 4
  %add139 = add nsw i32 %94, 1
  %idxprom140 = sext i32 %add139 to i64
  %95 = load i8*, i8** %buffer.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %95, i64 %idxprom140
  %96 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %96 to i32
  %conv143 = sitofp i32 %conv142 to double
  %97 = load double, double* %delta.addr, align 8
  %add144 = fadd double 1.000000e+00, %97
  %mul145 = fmul double %conv143, %add144
  %cmp146 = fcmp olt double %mul145, 2.550000e+02
  br i1 %cmp146, label %cond.true.148, label %cond.false.156

cond.true.148:                                    ; preds = %cond.end.132
  %98 = load i32, i32* %index, align 4
  %add149 = add nsw i32 %98, 1
  %idxprom150 = sext i32 %add149 to i64
  %99 = load i8*, i8** %buffer.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %99, i64 %idxprom150
  %100 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %100 to i32
  %conv153 = sitofp i32 %conv152 to double
  %101 = load double, double* %delta.addr, align 8
  %add154 = fadd double 1.000000e+00, %101
  %mul155 = fmul double %conv153, %add154
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.132
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.148
  %cond158 = phi double [ %mul155, %cond.true.148 ], [ 2.550000e+02, %cond.false.156 ]
  %conv159 = fptosi double %cond158 to i32
  store i32 %conv159, i32* %temp, align 4
  %102 = load i32, i32* %temp, align 4
  %conv160 = trunc i32 %102 to i8
  %103 = load i32, i32* %index, align 4
  %add161 = add nsw i32 %103, 1
  %idxprom162 = sext i32 %add161 to i64
  %104 = load i8*, i8** %buffer.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %104, i64 %idxprom162
  store i8 %conv160, i8* %arrayidx163, align 1
  %105 = load i32, i32* %index, align 4
  %add164 = add nsw i32 %105, 2
  %idxprom165 = sext i32 %add164 to i64
  %106 = load i8*, i8** %buffer.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %106, i64 %idxprom165
  %107 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %107 to i32
  %conv168 = sitofp i32 %conv167 to double
  %108 = load double, double* %delta.addr, align 8
  %add169 = fadd double 1.000000e+00, %108
  %mul170 = fmul double %conv168, %add169
  %cmp171 = fcmp olt double %mul170, 2.550000e+02
  br i1 %cmp171, label %cond.true.173, label %cond.false.181

cond.true.173:                                    ; preds = %cond.end.157
  %109 = load i32, i32* %index, align 4
  %add174 = add nsw i32 %109, 2
  %idxprom175 = sext i32 %add174 to i64
  %110 = load i8*, i8** %buffer.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %110, i64 %idxprom175
  %111 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %111 to i32
  %conv178 = sitofp i32 %conv177 to double
  %112 = load double, double* %delta.addr, align 8
  %add179 = fadd double 1.000000e+00, %112
  %mul180 = fmul double %conv178, %add179
  br label %cond.end.182

cond.false.181:                                   ; preds = %cond.end.157
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.173
  %cond183 = phi double [ %mul180, %cond.true.173 ], [ 2.550000e+02, %cond.false.181 ]
  %conv184 = fptosi double %cond183 to i32
  store i32 %conv184, i32* %temp, align 4
  %113 = load i32, i32* %temp, align 4
  %conv185 = trunc i32 %113 to i8
  %114 = load i32, i32* %index, align 4
  %add186 = add nsw i32 %114, 2
  %idxprom187 = sext i32 %add186 to i64
  %115 = load i8*, i8** %buffer.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %115, i64 %idxprom187
  store i8 %conv185, i8* %arrayidx188, align 1
  br label %if.end.189

if.end.189:                                       ; preds = %cond.end.182, %land.lhs.true.109, %do.body.106
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  br label %if.end.275

if.else:                                          ; preds = %if.then.102
  br label %do.body.191

do.body.191:                                      ; preds = %if.else
  %116 = load i32, i32* %index, align 4
  %cmp192 = icmp sge i32 %116, 0
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.273

land.lhs.true.194:                                ; preds = %do.body.191
  %117 = load i32, i32* %index, align 4
  %add195 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp196 = icmp slt i32 %add195, %118
  br i1 %cmp196, label %if.then.198, label %if.end.273

if.then.198:                                      ; preds = %land.lhs.true.194
  %119 = load i32, i32* %index, align 4
  %add199 = add nsw i32 %119, 0
  %idxprom200 = sext i32 %add199 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %120, i64 %idxprom200
  %121 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %121 to i32
  %conv203 = sitofp i32 %conv202 to double
  %122 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %122
  %mul204 = fmul double %conv203, %sub
  %cmp205 = fcmp ogt double %mul204, 0.000000e+00
  br i1 %cmp205, label %cond.true.207, label %cond.false.215

cond.true.207:                                    ; preds = %if.then.198
  %123 = load i32, i32* %index, align 4
  %add208 = add nsw i32 %123, 0
  %idxprom209 = sext i32 %add208 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %124, i64 %idxprom209
  %125 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %125 to i32
  %conv212 = sitofp i32 %conv211 to double
  %126 = load double, double* %delta.addr, align 8
  %sub213 = fsub double 1.000000e+00, %126
  %mul214 = fmul double %conv212, %sub213
  br label %cond.end.216

cond.false.215:                                   ; preds = %if.then.198
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.215, %cond.true.207
  %cond217 = phi double [ %mul214, %cond.true.207 ], [ 0.000000e+00, %cond.false.215 ]
  %conv218 = fptosi double %cond217 to i32
  store i32 %conv218, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv219 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add220 = add nsw i32 %128, 0
  %idxprom221 = sext i32 %add220 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %129, i64 %idxprom221
  store i8 %conv219, i8* %arrayidx222, align 1
  %130 = load i32, i32* %index, align 4
  %add223 = add nsw i32 %130, 1
  %idxprom224 = sext i32 %add223 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %131, i64 %idxprom224
  %132 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %132 to i32
  %conv227 = sitofp i32 %conv226 to double
  %133 = load double, double* %delta.addr, align 8
  %sub228 = fsub double 1.000000e+00, %133
  %mul229 = fmul double %conv227, %sub228
  %cmp230 = fcmp ogt double %mul229, 0.000000e+00
  br i1 %cmp230, label %cond.true.232, label %cond.false.240

cond.true.232:                                    ; preds = %cond.end.216
  %134 = load i32, i32* %index, align 4
  %add233 = add nsw i32 %134, 1
  %idxprom234 = sext i32 %add233 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %135, i64 %idxprom234
  %136 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %136 to i32
  %conv237 = sitofp i32 %conv236 to double
  %137 = load double, double* %delta.addr, align 8
  %sub238 = fsub double 1.000000e+00, %137
  %mul239 = fmul double %conv237, %sub238
  br label %cond.end.241

cond.false.240:                                   ; preds = %cond.end.216
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %cond.true.232
  %cond242 = phi double [ %mul239, %cond.true.232 ], [ 0.000000e+00, %cond.false.240 ]
  %conv243 = fptosi double %cond242 to i32
  store i32 %conv243, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv244 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add245 = add nsw i32 %139, 1
  %idxprom246 = sext i32 %add245 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %140, i64 %idxprom246
  store i8 %conv244, i8* %arrayidx247, align 1
  %141 = load i32, i32* %index, align 4
  %add248 = add nsw i32 %141, 2
  %idxprom249 = sext i32 %add248 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %142, i64 %idxprom249
  %143 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %143 to i32
  %conv252 = sitofp i32 %conv251 to double
  %144 = load double, double* %delta.addr, align 8
  %sub253 = fsub double 1.000000e+00, %144
  %mul254 = fmul double %conv252, %sub253
  %cmp255 = fcmp ogt double %mul254, 0.000000e+00
  br i1 %cmp255, label %cond.true.257, label %cond.false.265

cond.true.257:                                    ; preds = %cond.end.241
  %145 = load i32, i32* %index, align 4
  %add258 = add nsw i32 %145, 2
  %idxprom259 = sext i32 %add258 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %146, i64 %idxprom259
  %147 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %147 to i32
  %conv262 = sitofp i32 %conv261 to double
  %148 = load double, double* %delta.addr, align 8
  %sub263 = fsub double 1.000000e+00, %148
  %mul264 = fmul double %conv262, %sub263
  br label %cond.end.266

cond.false.265:                                   ; preds = %cond.end.241
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.265, %cond.true.257
  %cond267 = phi double [ %mul264, %cond.true.257 ], [ 0.000000e+00, %cond.false.265 ]
  %conv268 = fptosi double %cond267 to i32
  store i32 %conv268, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv269 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add270 = add nsw i32 %150, 2
  %idxprom271 = sext i32 %add270 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %151, i64 %idxprom271
  store i8 %conv269, i8* %arrayidx272, align 1
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.266, %land.lhs.true.194, %do.body.191
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  br label %if.end.275

if.end.275:                                       ; preds = %do.end.274, %do.end.190
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.86
  br label %for.inc

for.inc:                                          ; preds = %if.end.276
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_horizontal_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32* %px, i32* %py) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %px.addr = alloca i32*, align 8
  %py.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %index = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32* %px, i32** %px.addr, align 8
  store i32* %py, i32** %py.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32*, i32** %px.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %5 = load i32, i32* %rowstride, align 4
  %6 = load i32*, i32** %py.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %mul3 = mul nsw i32 %5, %7
  %add = add nsw i32 %mul1, %mul3
  store i32 %add, i32* %index, align 4
  %8 = load i32*, i32** %px.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %px.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %sub = sub nsw i32 %9, %11
  %add6 = add nsw i32 %sub, 1
  store i32 %add6, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %15, 2
  %16 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom = sext i32 %add10 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 30, i8* %arrayidx11, align 1
  %19 = load i32, i32* %index, align 4
  %add12 = add nsw i32 %19, 1
  %idxprom13 = sext i32 %add12 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  store i8 30, i8* %arrayidx14, align 1
  %21 = load i32, i32* %index, align 4
  %add15 = add nsw i32 %21, 2
  %idxprom16 = sext i32 %add15 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 %idxprom16
  store i8 30, i8* %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %23 = load i32, i32* %bytes.addr, align 4
  %24 = load i32, i32* %index, align 4
  %add18 = add nsw i32 %24, %23
  store i32 %add18, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @darken_horizontal_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32* %px, i32* %py, double %delta) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %px.addr = alloca i32*, align 8
  %py.addr = alloca i32*, align 8
  %delta.addr = alloca double, align 8
  %i = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %index = alloca i32, align 4
  %length = alloca i32, align 4
  %temp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32* %px, i32** %px.addr, align 8
  store i32* %py, i32** %py.addr, align 8
  store double %delta, double* %delta.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32*, i32** %px.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %5 = load i32*, i32** %py.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %rowstride, align 4
  %mul3 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul1, %mul3
  store i32 %add, i32* %index, align 4
  %8 = load i32*, i32** %px.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %px.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %sub = sub nsw i32 %9, %11
  %add6 = add nsw i32 %sub, 1
  store i32 %add6, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %15, 2
  %16 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom = sext i32 %add10 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %19 to i32
  %conv12 = sitofp i32 %conv to double
  %20 = load double, double* %delta.addr, align 8
  %sub13 = fsub double 1.000000e+00, %20
  %mul14 = fmul double %conv12, %sub13
  %cmp15 = fcmp ogt double %mul14, 0.000000e+00
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %21 = load i32, i32* %index, align 4
  %add17 = add nsw i32 %21, 0
  %idxprom18 = sext i32 %add17 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom18
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %conv21 = sitofp i32 %conv20 to double
  %24 = load double, double* %delta.addr, align 8
  %sub22 = fsub double 1.000000e+00, %24
  %mul23 = fmul double %conv21, %sub22
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul23, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv24 = fptosi double %cond to i32
  store i32 %conv24, i32* %temp, align 4
  %25 = load i32, i32* %temp, align 4
  %conv25 = trunc i32 %25 to i8
  %26 = load i32, i32* %index, align 4
  %add26 = add nsw i32 %26, 0
  %idxprom27 = sext i32 %add26 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  store i8 %conv25, i8* %arrayidx28, align 1
  %28 = load i32, i32* %index, align 4
  %add29 = add nsw i32 %28, 1
  %idxprom30 = sext i32 %add29 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %30 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %30 to i32
  %conv33 = sitofp i32 %conv32 to double
  %31 = load double, double* %delta.addr, align 8
  %sub34 = fsub double 1.000000e+00, %31
  %mul35 = fmul double %conv33, %sub34
  %cmp36 = fcmp ogt double %mul35, 0.000000e+00
  br i1 %cmp36, label %cond.true.38, label %cond.false.46

cond.true.38:                                     ; preds = %cond.end
  %32 = load i32, i32* %index, align 4
  %add39 = add nsw i32 %32, 1
  %idxprom40 = sext i32 %add39 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %idxprom40
  %34 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %34 to i32
  %conv43 = sitofp i32 %conv42 to double
  %35 = load double, double* %delta.addr, align 8
  %sub44 = fsub double 1.000000e+00, %35
  %mul45 = fmul double %conv43, %sub44
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.38
  %cond48 = phi double [ %mul45, %cond.true.38 ], [ 0.000000e+00, %cond.false.46 ]
  %conv49 = fptosi double %cond48 to i32
  store i32 %conv49, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv50 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add51 = add nsw i32 %37, 1
  %idxprom52 = sext i32 %add51 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %38, i64 %idxprom52
  store i8 %conv50, i8* %arrayidx53, align 1
  %39 = load i32, i32* %index, align 4
  %add54 = add nsw i32 %39, 2
  %idxprom55 = sext i32 %add54 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %40, i64 %idxprom55
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %conv58 = sitofp i32 %conv57 to double
  %42 = load double, double* %delta.addr, align 8
  %sub59 = fsub double 1.000000e+00, %42
  %mul60 = fmul double %conv58, %sub59
  %cmp61 = fcmp ogt double %mul60, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.71

cond.true.63:                                     ; preds = %cond.end.47
  %43 = load i32, i32* %index, align 4
  %add64 = add nsw i32 %43, 2
  %idxprom65 = sext i32 %add64 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  %45 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %45 to i32
  %conv68 = sitofp i32 %conv67 to double
  %46 = load double, double* %delta.addr, align 8
  %sub69 = fsub double 1.000000e+00, %46
  %mul70 = fmul double %conv68, %sub69
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.47
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.63
  %cond73 = phi double [ %mul70, %cond.true.63 ], [ 0.000000e+00, %cond.false.71 ]
  %conv74 = fptosi double %cond73 to i32
  store i32 %conv74, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv75 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add76 = add nsw i32 %48, 2
  %idxprom77 = sext i32 %add76 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %49, i64 %idxprom77
  store i8 %conv75, i8* %arrayidx78, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.72, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %50 = load i32, i32* %bytes.addr, align 4
  %51 = load i32, i32* %index, align 4
  %add79 = add nsw i32 %51, %50
  store i32 %add79, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lighten_horizontal_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32* %px, i32* %py, double %delta) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %px.addr = alloca i32*, align 8
  %py.addr = alloca i32*, align 8
  %delta.addr = alloca double, align 8
  %i = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %index = alloca i32, align 4
  %length = alloca i32, align 4
  %temp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32* %px, i32** %px.addr, align 8
  store i32* %py, i32** %py.addr, align 8
  store double %delta, double* %delta.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32*, i32** %px.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %mul1 = mul nsw i32 %3, %4
  %5 = load i32*, i32** %py.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %rowstride, align 4
  %mul3 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul1, %mul3
  store i32 %add, i32* %index, align 4
  %8 = load i32*, i32** %px.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %px.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx5, align 4
  %sub = sub nsw i32 %9, %11
  %add6 = add nsw i32 %sub, 1
  store i32 %add6, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %15, 2
  %16 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom = sext i32 %add10 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %19 to i32
  %conv12 = sitofp i32 %conv to double
  %20 = load double, double* %delta.addr, align 8
  %add13 = fadd double 1.000000e+00, %20
  %mul14 = fmul double %conv12, %add13
  %cmp15 = fcmp olt double %mul14, 2.550000e+02
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %21 = load i32, i32* %index, align 4
  %add17 = add nsw i32 %21, 0
  %idxprom18 = sext i32 %add17 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %idxprom18
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %conv21 = sitofp i32 %conv20 to double
  %24 = load double, double* %delta.addr, align 8
  %add22 = fadd double 1.000000e+00, %24
  %mul23 = fmul double %conv21, %add22
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul23, %cond.true ], [ 2.550000e+02, %cond.false ]
  %conv24 = fptosi double %cond to i32
  store i32 %conv24, i32* %temp, align 4
  %25 = load i32, i32* %temp, align 4
  %conv25 = trunc i32 %25 to i8
  %26 = load i32, i32* %index, align 4
  %add26 = add nsw i32 %26, 0
  %idxprom27 = sext i32 %add26 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  store i8 %conv25, i8* %arrayidx28, align 1
  %28 = load i32, i32* %index, align 4
  %add29 = add nsw i32 %28, 1
  %idxprom30 = sext i32 %add29 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %30 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %30 to i32
  %conv33 = sitofp i32 %conv32 to double
  %31 = load double, double* %delta.addr, align 8
  %add34 = fadd double 1.000000e+00, %31
  %mul35 = fmul double %conv33, %add34
  %cmp36 = fcmp olt double %mul35, 2.550000e+02
  br i1 %cmp36, label %cond.true.38, label %cond.false.46

cond.true.38:                                     ; preds = %cond.end
  %32 = load i32, i32* %index, align 4
  %add39 = add nsw i32 %32, 1
  %idxprom40 = sext i32 %add39 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %idxprom40
  %34 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %34 to i32
  %conv43 = sitofp i32 %conv42 to double
  %35 = load double, double* %delta.addr, align 8
  %add44 = fadd double 1.000000e+00, %35
  %mul45 = fmul double %conv43, %add44
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.38
  %cond48 = phi double [ %mul45, %cond.true.38 ], [ 2.550000e+02, %cond.false.46 ]
  %conv49 = fptosi double %cond48 to i32
  store i32 %conv49, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv50 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add51 = add nsw i32 %37, 1
  %idxprom52 = sext i32 %add51 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %38, i64 %idxprom52
  store i8 %conv50, i8* %arrayidx53, align 1
  %39 = load i32, i32* %index, align 4
  %add54 = add nsw i32 %39, 2
  %idxprom55 = sext i32 %add54 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %40, i64 %idxprom55
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %conv58 = sitofp i32 %conv57 to double
  %42 = load double, double* %delta.addr, align 8
  %add59 = fadd double 1.000000e+00, %42
  %mul60 = fmul double %conv58, %add59
  %cmp61 = fcmp olt double %mul60, 2.550000e+02
  br i1 %cmp61, label %cond.true.63, label %cond.false.71

cond.true.63:                                     ; preds = %cond.end.47
  %43 = load i32, i32* %index, align 4
  %add64 = add nsw i32 %43, 2
  %idxprom65 = sext i32 %add64 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  %45 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %45 to i32
  %conv68 = sitofp i32 %conv67 to double
  %46 = load double, double* %delta.addr, align 8
  %add69 = fadd double 1.000000e+00, %46
  %mul70 = fmul double %conv68, %add69
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.47
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.63
  %cond73 = phi double [ %mul70, %cond.true.63 ], [ 2.550000e+02, %cond.false.71 ]
  %conv74 = fptosi double %cond73 to i32
  store i32 %conv74, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv75 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add76 = add nsw i32 %48, 2
  %idxprom77 = sext i32 %add76 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %49, i64 %idxprom77
  store i8 %conv75, i8* %arrayidx78, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.72, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %50 = load i32, i32* %bytes.addr, align 4
  %51 = load i32, i32* %index, align 4
  %add79 = add nsw i32 %51, %50
  store i32 %add79, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_up_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %y_offset, i32 %curve_start_offset, i32 %steps) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 2), align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %curve_start_offset.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %x, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 2), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %add3 = add nsw i32 %10, %11
  store i32 %add3, i32* %y, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %12, %13
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %add6 = add nsw i32 %mul4, %mul5
  store i32 %add6, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %16 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %16, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %17 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %17, 2
  %18 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %18
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %19, 0
  %idxprom11 = sext i32 %add10 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom11
  store i8 30, i8* %arrayidx12, align 1
  %21 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %21, 1
  %idxprom14 = sext i32 %add13 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %22, i64 %idxprom14
  store i8 30, i8* %arrayidx15, align 1
  %23 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %23, 2
  %idxprom17 = sext i32 %add16 to i64
  %24 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %24, i64 %idxprom17
  store i8 30, i8* %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 2), align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom19
  %27 = load i32, i32* %arrayidx20, align 4
  %28 = load i32, i32* %curve_start_offset.addr, align 4
  %add21 = add nsw i32 %27, %28
  store i32 %add21, i32* %x, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 2), align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load i32, i32* %y_offset.addr, align 4
  %add24 = add nsw i32 %31, %32
  store i32 %add24, i32* %y, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %rowstride, align 4
  %mul25 = mul nsw i32 %33, %34
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %bytes.addr, align 4
  %mul26 = mul nsw i32 %35, %36
  %add27 = add nsw i32 %mul25, %mul26
  store i32 %add27, i32* %index, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %do.end
  %37 = load i32, i32* %index, align 4
  %cmp29 = icmp sge i32 %37, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.43

land.lhs.true.30:                                 ; preds = %do.body.28
  %38 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %38, 2
  %39 = load i32, i32* %bufsize.addr, align 4
  %cmp32 = icmp slt i32 %add31, %39
  br i1 %cmp32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %land.lhs.true.30
  %40 = load i32, i32* %index, align 4
  %add34 = add nsw i32 %40, 0
  %idxprom35 = sext i32 %add34 to i64
  %41 = load i8*, i8** %buffer.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 %idxprom35
  store i8 30, i8* %arrayidx36, align 1
  %42 = load i32, i32* %index, align 4
  %add37 = add nsw i32 %42, 1
  %idxprom38 = sext i32 %add37 to i64
  %43 = load i8*, i8** %buffer.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %43, i64 %idxprom38
  store i8 30, i8* %arrayidx39, align 1
  %44 = load i32, i32* %index, align 4
  %add40 = add nsw i32 %44, 2
  %idxprom41 = sext i32 %add40 to i64
  %45 = load i8*, i8** %buffer.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  store i8 30, i8* %arrayidx42, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.33, %land.lhs.true.30, %do.body.28
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %do.end.44
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @darken_up_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %y_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %curve_start_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 2), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 2), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.85

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %23 = load i32, i32* %index, align 4
  %cmp12 = icmp sge i32 %23, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %24 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %24, 2
  %25 = load i32, i32* %bufsize.addr, align 4
  %cmp14 = icmp slt i32 %add13, %25
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %26, 0
  %idxprom17 = sext i32 %add16 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 %idxprom17
  %28 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %28 to i32
  %conv19 = sitofp i32 %conv to double
  %29 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %29
  %mul20 = fmul double %conv19, %sub
  %cmp21 = fcmp ogt double %mul20, 0.000000e+00
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  %30 = load i32, i32* %index, align 4
  %add23 = add nsw i32 %30, 0
  %idxprom24 = sext i32 %add23 to i64
  %31 = load i8*, i8** %buffer.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %31, i64 %idxprom24
  %32 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %32 to i32
  %conv27 = sitofp i32 %conv26 to double
  %33 = load double, double* %delta.addr, align 8
  %sub28 = fsub double 1.000000e+00, %33
  %mul29 = fmul double %conv27, %sub28
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul29, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv30 = fptosi double %cond to i32
  store i32 %conv30, i32* %temp, align 4
  %34 = load i32, i32* %temp, align 4
  %conv31 = trunc i32 %34 to i8
  %35 = load i32, i32* %index, align 4
  %add32 = add nsw i32 %35, 0
  %idxprom33 = sext i32 %add32 to i64
  %36 = load i8*, i8** %buffer.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %36, i64 %idxprom33
  store i8 %conv31, i8* %arrayidx34, align 1
  %37 = load i32, i32* %index, align 4
  %add35 = add nsw i32 %37, 1
  %idxprom36 = sext i32 %add35 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %38, i64 %idxprom36
  %39 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %39 to i32
  %conv39 = sitofp i32 %conv38 to double
  %40 = load double, double* %delta.addr, align 8
  %sub40 = fsub double 1.000000e+00, %40
  %mul41 = fmul double %conv39, %sub40
  %cmp42 = fcmp ogt double %mul41, 0.000000e+00
  br i1 %cmp42, label %cond.true.44, label %cond.false.52

cond.true.44:                                     ; preds = %cond.end
  %41 = load i32, i32* %index, align 4
  %add45 = add nsw i32 %41, 1
  %idxprom46 = sext i32 %add45 to i64
  %42 = load i8*, i8** %buffer.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %42, i64 %idxprom46
  %43 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %43 to i32
  %conv49 = sitofp i32 %conv48 to double
  %44 = load double, double* %delta.addr, align 8
  %sub50 = fsub double 1.000000e+00, %44
  %mul51 = fmul double %conv49, %sub50
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.44
  %cond54 = phi double [ %mul51, %cond.true.44 ], [ 0.000000e+00, %cond.false.52 ]
  %conv55 = fptosi double %cond54 to i32
  store i32 %conv55, i32* %temp, align 4
  %45 = load i32, i32* %temp, align 4
  %conv56 = trunc i32 %45 to i8
  %46 = load i32, i32* %index, align 4
  %add57 = add nsw i32 %46, 1
  %idxprom58 = sext i32 %add57 to i64
  %47 = load i8*, i8** %buffer.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %47, i64 %idxprom58
  store i8 %conv56, i8* %arrayidx59, align 1
  %48 = load i32, i32* %index, align 4
  %add60 = add nsw i32 %48, 2
  %idxprom61 = sext i32 %add60 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %49, i64 %idxprom61
  %50 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %50 to i32
  %conv64 = sitofp i32 %conv63 to double
  %51 = load double, double* %delta.addr, align 8
  %sub65 = fsub double 1.000000e+00, %51
  %mul66 = fmul double %conv64, %sub65
  %cmp67 = fcmp ogt double %mul66, 0.000000e+00
  br i1 %cmp67, label %cond.true.69, label %cond.false.77

cond.true.69:                                     ; preds = %cond.end.53
  %52 = load i32, i32* %index, align 4
  %add70 = add nsw i32 %52, 2
  %idxprom71 = sext i32 %add70 to i64
  %53 = load i8*, i8** %buffer.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %53, i64 %idxprom71
  %54 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %54 to i32
  %conv74 = sitofp i32 %conv73 to double
  %55 = load double, double* %delta.addr, align 8
  %sub75 = fsub double 1.000000e+00, %55
  %mul76 = fmul double %conv74, %sub75
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.end.53
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.69
  %cond79 = phi double [ %mul76, %cond.true.69 ], [ 0.000000e+00, %cond.false.77 ]
  %conv80 = fptosi double %cond79 to i32
  store i32 %conv80, i32* %temp, align 4
  %56 = load i32, i32* %temp, align 4
  %conv81 = trunc i32 %56 to i8
  %57 = load i32, i32* %index, align 4
  %add82 = add nsw i32 %57, 2
  %idxprom83 = sext i32 %add82 to i64
  %58 = load i8*, i8** %buffer.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %58, i64 %idxprom83
  store i8 %conv81, i8* %arrayidx84, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.78, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %59 = load i32, i32* %index, align 4
  store i32 %59, i32* %last_index1, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %do.end, %for.body
  %60 = load i32, i32* %curve_start_offset.addr, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %61 to i64
  %62 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %62 to i64
  %63 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 2), align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %63, i64 %idxprom87
  %64 = load i32*, i32** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %64, i64 %idxprom86
  %65 = load i32, i32* %arrayidx89, align 4
  %add90 = add nsw i32 %60, %65
  store i32 %add90, i32* %x, align 4
  %66 = load i32, i32* %y_offset.addr, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %68 to i64
  %69 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 2), align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %69, i64 %idxprom92
  %70 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %70, i64 %idxprom91
  %71 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %66, %71
  store i32 %add95, i32* %y, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %rowstride, align 4
  %mul96 = mul nsw i32 %72, %73
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %bytes.addr, align 4
  %mul97 = mul nsw i32 %74, %75
  %add98 = add nsw i32 %mul96, %mul97
  store i32 %add98, i32* %index, align 4
  %76 = load i32, i32* %index, align 4
  %77 = load i32, i32* %last_index2, align 4
  %cmp99 = icmp ne i32 %76, %77
  br i1 %cmp99, label %if.then.101, label %if.end.276

if.then.101:                                      ; preds = %if.end.85
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %steps.addr, align 4
  %div = sdiv i32 %79, 4
  %cmp102 = icmp slt i32 %78, %div
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.then.101
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %80 = load i32, i32* %index, align 4
  %cmp106 = icmp sge i32 %80, 0
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.188

land.lhs.true.108:                                ; preds = %do.body.105
  %81 = load i32, i32* %index, align 4
  %add109 = add nsw i32 %81, 2
  %82 = load i32, i32* %bufsize.addr, align 4
  %cmp110 = icmp slt i32 %add109, %82
  br i1 %cmp110, label %if.then.112, label %if.end.188

if.then.112:                                      ; preds = %land.lhs.true.108
  %83 = load i32, i32* %index, align 4
  %add113 = add nsw i32 %83, 0
  %idxprom114 = sext i32 %add113 to i64
  %84 = load i8*, i8** %buffer.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %84, i64 %idxprom114
  %85 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %85 to i32
  %conv117 = sitofp i32 %conv116 to double
  %86 = load double, double* %delta.addr, align 8
  %sub118 = fsub double 1.000000e+00, %86
  %mul119 = fmul double %conv117, %sub118
  %cmp120 = fcmp ogt double %mul119, 0.000000e+00
  br i1 %cmp120, label %cond.true.122, label %cond.false.130

cond.true.122:                                    ; preds = %if.then.112
  %87 = load i32, i32* %index, align 4
  %add123 = add nsw i32 %87, 0
  %idxprom124 = sext i32 %add123 to i64
  %88 = load i8*, i8** %buffer.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %88, i64 %idxprom124
  %89 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %89 to i32
  %conv127 = sitofp i32 %conv126 to double
  %90 = load double, double* %delta.addr, align 8
  %sub128 = fsub double 1.000000e+00, %90
  %mul129 = fmul double %conv127, %sub128
  br label %cond.end.131

cond.false.130:                                   ; preds = %if.then.112
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.122
  %cond132 = phi double [ %mul129, %cond.true.122 ], [ 0.000000e+00, %cond.false.130 ]
  %conv133 = fptosi double %cond132 to i32
  store i32 %conv133, i32* %temp, align 4
  %91 = load i32, i32* %temp, align 4
  %conv134 = trunc i32 %91 to i8
  %92 = load i32, i32* %index, align 4
  %add135 = add nsw i32 %92, 0
  %idxprom136 = sext i32 %add135 to i64
  %93 = load i8*, i8** %buffer.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %93, i64 %idxprom136
  store i8 %conv134, i8* %arrayidx137, align 1
  %94 = load i32, i32* %index, align 4
  %add138 = add nsw i32 %94, 1
  %idxprom139 = sext i32 %add138 to i64
  %95 = load i8*, i8** %buffer.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %95, i64 %idxprom139
  %96 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %96 to i32
  %conv142 = sitofp i32 %conv141 to double
  %97 = load double, double* %delta.addr, align 8
  %sub143 = fsub double 1.000000e+00, %97
  %mul144 = fmul double %conv142, %sub143
  %cmp145 = fcmp ogt double %mul144, 0.000000e+00
  br i1 %cmp145, label %cond.true.147, label %cond.false.155

cond.true.147:                                    ; preds = %cond.end.131
  %98 = load i32, i32* %index, align 4
  %add148 = add nsw i32 %98, 1
  %idxprom149 = sext i32 %add148 to i64
  %99 = load i8*, i8** %buffer.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %99, i64 %idxprom149
  %100 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %100 to i32
  %conv152 = sitofp i32 %conv151 to double
  %101 = load double, double* %delta.addr, align 8
  %sub153 = fsub double 1.000000e+00, %101
  %mul154 = fmul double %conv152, %sub153
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.end.131
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.147
  %cond157 = phi double [ %mul154, %cond.true.147 ], [ 0.000000e+00, %cond.false.155 ]
  %conv158 = fptosi double %cond157 to i32
  store i32 %conv158, i32* %temp, align 4
  %102 = load i32, i32* %temp, align 4
  %conv159 = trunc i32 %102 to i8
  %103 = load i32, i32* %index, align 4
  %add160 = add nsw i32 %103, 1
  %idxprom161 = sext i32 %add160 to i64
  %104 = load i8*, i8** %buffer.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %104, i64 %idxprom161
  store i8 %conv159, i8* %arrayidx162, align 1
  %105 = load i32, i32* %index, align 4
  %add163 = add nsw i32 %105, 2
  %idxprom164 = sext i32 %add163 to i64
  %106 = load i8*, i8** %buffer.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %106, i64 %idxprom164
  %107 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %107 to i32
  %conv167 = sitofp i32 %conv166 to double
  %108 = load double, double* %delta.addr, align 8
  %sub168 = fsub double 1.000000e+00, %108
  %mul169 = fmul double %conv167, %sub168
  %cmp170 = fcmp ogt double %mul169, 0.000000e+00
  br i1 %cmp170, label %cond.true.172, label %cond.false.180

cond.true.172:                                    ; preds = %cond.end.156
  %109 = load i32, i32* %index, align 4
  %add173 = add nsw i32 %109, 2
  %idxprom174 = sext i32 %add173 to i64
  %110 = load i8*, i8** %buffer.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %110, i64 %idxprom174
  %111 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %111 to i32
  %conv177 = sitofp i32 %conv176 to double
  %112 = load double, double* %delta.addr, align 8
  %sub178 = fsub double 1.000000e+00, %112
  %mul179 = fmul double %conv177, %sub178
  br label %cond.end.181

cond.false.180:                                   ; preds = %cond.end.156
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.true.172
  %cond182 = phi double [ %mul179, %cond.true.172 ], [ 0.000000e+00, %cond.false.180 ]
  %conv183 = fptosi double %cond182 to i32
  store i32 %conv183, i32* %temp, align 4
  %113 = load i32, i32* %temp, align 4
  %conv184 = trunc i32 %113 to i8
  %114 = load i32, i32* %index, align 4
  %add185 = add nsw i32 %114, 2
  %idxprom186 = sext i32 %add185 to i64
  %115 = load i8*, i8** %buffer.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %115, i64 %idxprom186
  store i8 %conv184, i8* %arrayidx187, align 1
  br label %if.end.188

if.end.188:                                       ; preds = %cond.end.181, %land.lhs.true.108, %do.body.105
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  br label %if.end.275

if.else:                                          ; preds = %if.then.101
  br label %do.body.190

do.body.190:                                      ; preds = %if.else
  %116 = load i32, i32* %index, align 4
  %cmp191 = icmp sge i32 %116, 0
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.273

land.lhs.true.193:                                ; preds = %do.body.190
  %117 = load i32, i32* %index, align 4
  %add194 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp195 = icmp slt i32 %add194, %118
  br i1 %cmp195, label %if.then.197, label %if.end.273

if.then.197:                                      ; preds = %land.lhs.true.193
  %119 = load i32, i32* %index, align 4
  %add198 = add nsw i32 %119, 0
  %idxprom199 = sext i32 %add198 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %120, i64 %idxprom199
  %121 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %121 to i32
  %conv202 = sitofp i32 %conv201 to double
  %122 = load double, double* %delta.addr, align 8
  %add203 = fadd double 1.000000e+00, %122
  %mul204 = fmul double %conv202, %add203
  %cmp205 = fcmp olt double %mul204, 2.550000e+02
  br i1 %cmp205, label %cond.true.207, label %cond.false.215

cond.true.207:                                    ; preds = %if.then.197
  %123 = load i32, i32* %index, align 4
  %add208 = add nsw i32 %123, 0
  %idxprom209 = sext i32 %add208 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %124, i64 %idxprom209
  %125 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %125 to i32
  %conv212 = sitofp i32 %conv211 to double
  %126 = load double, double* %delta.addr, align 8
  %add213 = fadd double 1.000000e+00, %126
  %mul214 = fmul double %conv212, %add213
  br label %cond.end.216

cond.false.215:                                   ; preds = %if.then.197
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.215, %cond.true.207
  %cond217 = phi double [ %mul214, %cond.true.207 ], [ 2.550000e+02, %cond.false.215 ]
  %conv218 = fptosi double %cond217 to i32
  store i32 %conv218, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv219 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add220 = add nsw i32 %128, 0
  %idxprom221 = sext i32 %add220 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %129, i64 %idxprom221
  store i8 %conv219, i8* %arrayidx222, align 1
  %130 = load i32, i32* %index, align 4
  %add223 = add nsw i32 %130, 1
  %idxprom224 = sext i32 %add223 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %131, i64 %idxprom224
  %132 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %132 to i32
  %conv227 = sitofp i32 %conv226 to double
  %133 = load double, double* %delta.addr, align 8
  %add228 = fadd double 1.000000e+00, %133
  %mul229 = fmul double %conv227, %add228
  %cmp230 = fcmp olt double %mul229, 2.550000e+02
  br i1 %cmp230, label %cond.true.232, label %cond.false.240

cond.true.232:                                    ; preds = %cond.end.216
  %134 = load i32, i32* %index, align 4
  %add233 = add nsw i32 %134, 1
  %idxprom234 = sext i32 %add233 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %135, i64 %idxprom234
  %136 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %136 to i32
  %conv237 = sitofp i32 %conv236 to double
  %137 = load double, double* %delta.addr, align 8
  %add238 = fadd double 1.000000e+00, %137
  %mul239 = fmul double %conv237, %add238
  br label %cond.end.241

cond.false.240:                                   ; preds = %cond.end.216
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %cond.true.232
  %cond242 = phi double [ %mul239, %cond.true.232 ], [ 2.550000e+02, %cond.false.240 ]
  %conv243 = fptosi double %cond242 to i32
  store i32 %conv243, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv244 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add245 = add nsw i32 %139, 1
  %idxprom246 = sext i32 %add245 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %140, i64 %idxprom246
  store i8 %conv244, i8* %arrayidx247, align 1
  %141 = load i32, i32* %index, align 4
  %add248 = add nsw i32 %141, 2
  %idxprom249 = sext i32 %add248 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %142, i64 %idxprom249
  %143 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %143 to i32
  %conv252 = sitofp i32 %conv251 to double
  %144 = load double, double* %delta.addr, align 8
  %add253 = fadd double 1.000000e+00, %144
  %mul254 = fmul double %conv252, %add253
  %cmp255 = fcmp olt double %mul254, 2.550000e+02
  br i1 %cmp255, label %cond.true.257, label %cond.false.265

cond.true.257:                                    ; preds = %cond.end.241
  %145 = load i32, i32* %index, align 4
  %add258 = add nsw i32 %145, 2
  %idxprom259 = sext i32 %add258 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %146, i64 %idxprom259
  %147 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %147 to i32
  %conv262 = sitofp i32 %conv261 to double
  %148 = load double, double* %delta.addr, align 8
  %add263 = fadd double 1.000000e+00, %148
  %mul264 = fmul double %conv262, %add263
  br label %cond.end.266

cond.false.265:                                   ; preds = %cond.end.241
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.265, %cond.true.257
  %cond267 = phi double [ %mul264, %cond.true.257 ], [ 2.550000e+02, %cond.false.265 ]
  %conv268 = fptosi double %cond267 to i32
  store i32 %conv268, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv269 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add270 = add nsw i32 %150, 2
  %idxprom271 = sext i32 %add270 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %151, i64 %idxprom271
  store i8 %conv269, i8* %arrayidx272, align 1
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.266, %land.lhs.true.193, %do.body.190
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  br label %if.end.275

if.end.275:                                       ; preds = %do.end.274, %do.end.189
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.276
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lighten_up_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %y_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %curve_start_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 2), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 2), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.86

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %23 = load i32, i32* %index, align 4
  %cmp12 = icmp sge i32 %23, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %24 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %24, 2
  %25 = load i32, i32* %bufsize.addr, align 4
  %cmp14 = icmp slt i32 %add13, %25
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %26, 0
  %idxprom17 = sext i32 %add16 to i64
  %27 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 %idxprom17
  %28 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %28 to i32
  %conv19 = sitofp i32 %conv to double
  %29 = load double, double* %delta.addr, align 8
  %add20 = fadd double 1.000000e+00, %29
  %mul21 = fmul double %conv19, %add20
  %cmp22 = fcmp olt double %mul21, 2.550000e+02
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  %30 = load i32, i32* %index, align 4
  %add24 = add nsw i32 %30, 0
  %idxprom25 = sext i32 %add24 to i64
  %31 = load i8*, i8** %buffer.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %31, i64 %idxprom25
  %32 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %32 to i32
  %conv28 = sitofp i32 %conv27 to double
  %33 = load double, double* %delta.addr, align 8
  %add29 = fadd double 1.000000e+00, %33
  %mul30 = fmul double %conv28, %add29
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul30, %cond.true ], [ 2.550000e+02, %cond.false ]
  %conv31 = fptosi double %cond to i32
  store i32 %conv31, i32* %temp, align 4
  %34 = load i32, i32* %temp, align 4
  %conv32 = trunc i32 %34 to i8
  %35 = load i32, i32* %index, align 4
  %add33 = add nsw i32 %35, 0
  %idxprom34 = sext i32 %add33 to i64
  %36 = load i8*, i8** %buffer.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %36, i64 %idxprom34
  store i8 %conv32, i8* %arrayidx35, align 1
  %37 = load i32, i32* %index, align 4
  %add36 = add nsw i32 %37, 1
  %idxprom37 = sext i32 %add36 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 %idxprom37
  %39 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %39 to i32
  %conv40 = sitofp i32 %conv39 to double
  %40 = load double, double* %delta.addr, align 8
  %add41 = fadd double 1.000000e+00, %40
  %mul42 = fmul double %conv40, %add41
  %cmp43 = fcmp olt double %mul42, 2.550000e+02
  br i1 %cmp43, label %cond.true.45, label %cond.false.53

cond.true.45:                                     ; preds = %cond.end
  %41 = load i32, i32* %index, align 4
  %add46 = add nsw i32 %41, 1
  %idxprom47 = sext i32 %add46 to i64
  %42 = load i8*, i8** %buffer.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %42, i64 %idxprom47
  %43 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %conv50 = sitofp i32 %conv49 to double
  %44 = load double, double* %delta.addr, align 8
  %add51 = fadd double 1.000000e+00, %44
  %mul52 = fmul double %conv50, %add51
  br label %cond.end.54

cond.false.53:                                    ; preds = %cond.end
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.45
  %cond55 = phi double [ %mul52, %cond.true.45 ], [ 2.550000e+02, %cond.false.53 ]
  %conv56 = fptosi double %cond55 to i32
  store i32 %conv56, i32* %temp, align 4
  %45 = load i32, i32* %temp, align 4
  %conv57 = trunc i32 %45 to i8
  %46 = load i32, i32* %index, align 4
  %add58 = add nsw i32 %46, 1
  %idxprom59 = sext i32 %add58 to i64
  %47 = load i8*, i8** %buffer.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %47, i64 %idxprom59
  store i8 %conv57, i8* %arrayidx60, align 1
  %48 = load i32, i32* %index, align 4
  %add61 = add nsw i32 %48, 2
  %idxprom62 = sext i32 %add61 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %49, i64 %idxprom62
  %50 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %50 to i32
  %conv65 = sitofp i32 %conv64 to double
  %51 = load double, double* %delta.addr, align 8
  %add66 = fadd double 1.000000e+00, %51
  %mul67 = fmul double %conv65, %add66
  %cmp68 = fcmp olt double %mul67, 2.550000e+02
  br i1 %cmp68, label %cond.true.70, label %cond.false.78

cond.true.70:                                     ; preds = %cond.end.54
  %52 = load i32, i32* %index, align 4
  %add71 = add nsw i32 %52, 2
  %idxprom72 = sext i32 %add71 to i64
  %53 = load i8*, i8** %buffer.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %53, i64 %idxprom72
  %54 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %54 to i32
  %conv75 = sitofp i32 %conv74 to double
  %55 = load double, double* %delta.addr, align 8
  %add76 = fadd double 1.000000e+00, %55
  %mul77 = fmul double %conv75, %add76
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.end.54
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.70
  %cond80 = phi double [ %mul77, %cond.true.70 ], [ 2.550000e+02, %cond.false.78 ]
  %conv81 = fptosi double %cond80 to i32
  store i32 %conv81, i32* %temp, align 4
  %56 = load i32, i32* %temp, align 4
  %conv82 = trunc i32 %56 to i8
  %57 = load i32, i32* %index, align 4
  %add83 = add nsw i32 %57, 2
  %idxprom84 = sext i32 %add83 to i64
  %58 = load i8*, i8** %buffer.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %58, i64 %idxprom84
  store i8 %conv82, i8* %arrayidx85, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.79, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %59 = load i32, i32* %index, align 4
  store i32 %59, i32* %last_index1, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %do.end, %for.body
  %60 = load i32, i32* %curve_start_offset.addr, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %61 to i64
  %62 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %62 to i64
  %63 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 2), align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %63, i64 %idxprom88
  %64 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %64, i64 %idxprom87
  %65 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %60, %65
  store i32 %add91, i32* %x, align 4
  %66 = load i32, i32* %y_offset.addr, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %68 to i64
  %69 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 2), align 8
  %arrayidx94 = getelementptr inbounds i32*, i32** %69, i64 %idxprom93
  %70 = load i32*, i32** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %70, i64 %idxprom92
  %71 = load i32, i32* %arrayidx95, align 4
  %add96 = add nsw i32 %66, %71
  store i32 %add96, i32* %y, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %rowstride, align 4
  %mul97 = mul nsw i32 %72, %73
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %bytes.addr, align 4
  %mul98 = mul nsw i32 %74, %75
  %add99 = add nsw i32 %mul97, %mul98
  store i32 %add99, i32* %index, align 4
  %76 = load i32, i32* %index, align 4
  %77 = load i32, i32* %last_index2, align 4
  %cmp100 = icmp ne i32 %76, %77
  br i1 %cmp100, label %if.then.102, label %if.end.276

if.then.102:                                      ; preds = %if.end.86
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %steps.addr, align 4
  %div = sdiv i32 %79, 4
  %cmp103 = icmp slt i32 %78, %div
  br i1 %cmp103, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %if.then.102
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %80 = load i32, i32* %index, align 4
  %cmp107 = icmp sge i32 %80, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.189

land.lhs.true.109:                                ; preds = %do.body.106
  %81 = load i32, i32* %index, align 4
  %add110 = add nsw i32 %81, 2
  %82 = load i32, i32* %bufsize.addr, align 4
  %cmp111 = icmp slt i32 %add110, %82
  br i1 %cmp111, label %if.then.113, label %if.end.189

if.then.113:                                      ; preds = %land.lhs.true.109
  %83 = load i32, i32* %index, align 4
  %add114 = add nsw i32 %83, 0
  %idxprom115 = sext i32 %add114 to i64
  %84 = load i8*, i8** %buffer.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %84, i64 %idxprom115
  %85 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %85 to i32
  %conv118 = sitofp i32 %conv117 to double
  %86 = load double, double* %delta.addr, align 8
  %add119 = fadd double 1.000000e+00, %86
  %mul120 = fmul double %conv118, %add119
  %cmp121 = fcmp olt double %mul120, 2.550000e+02
  br i1 %cmp121, label %cond.true.123, label %cond.false.131

cond.true.123:                                    ; preds = %if.then.113
  %87 = load i32, i32* %index, align 4
  %add124 = add nsw i32 %87, 0
  %idxprom125 = sext i32 %add124 to i64
  %88 = load i8*, i8** %buffer.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %88, i64 %idxprom125
  %89 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %89 to i32
  %conv128 = sitofp i32 %conv127 to double
  %90 = load double, double* %delta.addr, align 8
  %add129 = fadd double 1.000000e+00, %90
  %mul130 = fmul double %conv128, %add129
  br label %cond.end.132

cond.false.131:                                   ; preds = %if.then.113
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.123
  %cond133 = phi double [ %mul130, %cond.true.123 ], [ 2.550000e+02, %cond.false.131 ]
  %conv134 = fptosi double %cond133 to i32
  store i32 %conv134, i32* %temp, align 4
  %91 = load i32, i32* %temp, align 4
  %conv135 = trunc i32 %91 to i8
  %92 = load i32, i32* %index, align 4
  %add136 = add nsw i32 %92, 0
  %idxprom137 = sext i32 %add136 to i64
  %93 = load i8*, i8** %buffer.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %93, i64 %idxprom137
  store i8 %conv135, i8* %arrayidx138, align 1
  %94 = load i32, i32* %index, align 4
  %add139 = add nsw i32 %94, 1
  %idxprom140 = sext i32 %add139 to i64
  %95 = load i8*, i8** %buffer.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %95, i64 %idxprom140
  %96 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %96 to i32
  %conv143 = sitofp i32 %conv142 to double
  %97 = load double, double* %delta.addr, align 8
  %add144 = fadd double 1.000000e+00, %97
  %mul145 = fmul double %conv143, %add144
  %cmp146 = fcmp olt double %mul145, 2.550000e+02
  br i1 %cmp146, label %cond.true.148, label %cond.false.156

cond.true.148:                                    ; preds = %cond.end.132
  %98 = load i32, i32* %index, align 4
  %add149 = add nsw i32 %98, 1
  %idxprom150 = sext i32 %add149 to i64
  %99 = load i8*, i8** %buffer.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %99, i64 %idxprom150
  %100 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %100 to i32
  %conv153 = sitofp i32 %conv152 to double
  %101 = load double, double* %delta.addr, align 8
  %add154 = fadd double 1.000000e+00, %101
  %mul155 = fmul double %conv153, %add154
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.132
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.148
  %cond158 = phi double [ %mul155, %cond.true.148 ], [ 2.550000e+02, %cond.false.156 ]
  %conv159 = fptosi double %cond158 to i32
  store i32 %conv159, i32* %temp, align 4
  %102 = load i32, i32* %temp, align 4
  %conv160 = trunc i32 %102 to i8
  %103 = load i32, i32* %index, align 4
  %add161 = add nsw i32 %103, 1
  %idxprom162 = sext i32 %add161 to i64
  %104 = load i8*, i8** %buffer.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %104, i64 %idxprom162
  store i8 %conv160, i8* %arrayidx163, align 1
  %105 = load i32, i32* %index, align 4
  %add164 = add nsw i32 %105, 2
  %idxprom165 = sext i32 %add164 to i64
  %106 = load i8*, i8** %buffer.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %106, i64 %idxprom165
  %107 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %107 to i32
  %conv168 = sitofp i32 %conv167 to double
  %108 = load double, double* %delta.addr, align 8
  %add169 = fadd double 1.000000e+00, %108
  %mul170 = fmul double %conv168, %add169
  %cmp171 = fcmp olt double %mul170, 2.550000e+02
  br i1 %cmp171, label %cond.true.173, label %cond.false.181

cond.true.173:                                    ; preds = %cond.end.157
  %109 = load i32, i32* %index, align 4
  %add174 = add nsw i32 %109, 2
  %idxprom175 = sext i32 %add174 to i64
  %110 = load i8*, i8** %buffer.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %110, i64 %idxprom175
  %111 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %111 to i32
  %conv178 = sitofp i32 %conv177 to double
  %112 = load double, double* %delta.addr, align 8
  %add179 = fadd double 1.000000e+00, %112
  %mul180 = fmul double %conv178, %add179
  br label %cond.end.182

cond.false.181:                                   ; preds = %cond.end.157
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.173
  %cond183 = phi double [ %mul180, %cond.true.173 ], [ 2.550000e+02, %cond.false.181 ]
  %conv184 = fptosi double %cond183 to i32
  store i32 %conv184, i32* %temp, align 4
  %113 = load i32, i32* %temp, align 4
  %conv185 = trunc i32 %113 to i8
  %114 = load i32, i32* %index, align 4
  %add186 = add nsw i32 %114, 2
  %idxprom187 = sext i32 %add186 to i64
  %115 = load i8*, i8** %buffer.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %115, i64 %idxprom187
  store i8 %conv185, i8* %arrayidx188, align 1
  br label %if.end.189

if.end.189:                                       ; preds = %cond.end.182, %land.lhs.true.109, %do.body.106
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  br label %if.end.275

if.else:                                          ; preds = %if.then.102
  br label %do.body.191

do.body.191:                                      ; preds = %if.else
  %116 = load i32, i32* %index, align 4
  %cmp192 = icmp sge i32 %116, 0
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.273

land.lhs.true.194:                                ; preds = %do.body.191
  %117 = load i32, i32* %index, align 4
  %add195 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp196 = icmp slt i32 %add195, %118
  br i1 %cmp196, label %if.then.198, label %if.end.273

if.then.198:                                      ; preds = %land.lhs.true.194
  %119 = load i32, i32* %index, align 4
  %add199 = add nsw i32 %119, 0
  %idxprom200 = sext i32 %add199 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %120, i64 %idxprom200
  %121 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %121 to i32
  %conv203 = sitofp i32 %conv202 to double
  %122 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %122
  %mul204 = fmul double %conv203, %sub
  %cmp205 = fcmp ogt double %mul204, 0.000000e+00
  br i1 %cmp205, label %cond.true.207, label %cond.false.215

cond.true.207:                                    ; preds = %if.then.198
  %123 = load i32, i32* %index, align 4
  %add208 = add nsw i32 %123, 0
  %idxprom209 = sext i32 %add208 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %124, i64 %idxprom209
  %125 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %125 to i32
  %conv212 = sitofp i32 %conv211 to double
  %126 = load double, double* %delta.addr, align 8
  %sub213 = fsub double 1.000000e+00, %126
  %mul214 = fmul double %conv212, %sub213
  br label %cond.end.216

cond.false.215:                                   ; preds = %if.then.198
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.215, %cond.true.207
  %cond217 = phi double [ %mul214, %cond.true.207 ], [ 0.000000e+00, %cond.false.215 ]
  %conv218 = fptosi double %cond217 to i32
  store i32 %conv218, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv219 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add220 = add nsw i32 %128, 0
  %idxprom221 = sext i32 %add220 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %129, i64 %idxprom221
  store i8 %conv219, i8* %arrayidx222, align 1
  %130 = load i32, i32* %index, align 4
  %add223 = add nsw i32 %130, 1
  %idxprom224 = sext i32 %add223 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %131, i64 %idxprom224
  %132 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %132 to i32
  %conv227 = sitofp i32 %conv226 to double
  %133 = load double, double* %delta.addr, align 8
  %sub228 = fsub double 1.000000e+00, %133
  %mul229 = fmul double %conv227, %sub228
  %cmp230 = fcmp ogt double %mul229, 0.000000e+00
  br i1 %cmp230, label %cond.true.232, label %cond.false.240

cond.true.232:                                    ; preds = %cond.end.216
  %134 = load i32, i32* %index, align 4
  %add233 = add nsw i32 %134, 1
  %idxprom234 = sext i32 %add233 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %135, i64 %idxprom234
  %136 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %136 to i32
  %conv237 = sitofp i32 %conv236 to double
  %137 = load double, double* %delta.addr, align 8
  %sub238 = fsub double 1.000000e+00, %137
  %mul239 = fmul double %conv237, %sub238
  br label %cond.end.241

cond.false.240:                                   ; preds = %cond.end.216
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %cond.true.232
  %cond242 = phi double [ %mul239, %cond.true.232 ], [ 0.000000e+00, %cond.false.240 ]
  %conv243 = fptosi double %cond242 to i32
  store i32 %conv243, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv244 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add245 = add nsw i32 %139, 1
  %idxprom246 = sext i32 %add245 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %140, i64 %idxprom246
  store i8 %conv244, i8* %arrayidx247, align 1
  %141 = load i32, i32* %index, align 4
  %add248 = add nsw i32 %141, 2
  %idxprom249 = sext i32 %add248 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %142, i64 %idxprom249
  %143 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %143 to i32
  %conv252 = sitofp i32 %conv251 to double
  %144 = load double, double* %delta.addr, align 8
  %sub253 = fsub double 1.000000e+00, %144
  %mul254 = fmul double %conv252, %sub253
  %cmp255 = fcmp ogt double %mul254, 0.000000e+00
  br i1 %cmp255, label %cond.true.257, label %cond.false.265

cond.true.257:                                    ; preds = %cond.end.241
  %145 = load i32, i32* %index, align 4
  %add258 = add nsw i32 %145, 2
  %idxprom259 = sext i32 %add258 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %146, i64 %idxprom259
  %147 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %147 to i32
  %conv262 = sitofp i32 %conv261 to double
  %148 = load double, double* %delta.addr, align 8
  %sub263 = fsub double 1.000000e+00, %148
  %mul264 = fmul double %conv262, %sub263
  br label %cond.end.266

cond.false.265:                                   ; preds = %cond.end.241
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.265, %cond.true.257
  %cond267 = phi double [ %mul264, %cond.true.257 ], [ 0.000000e+00, %cond.false.265 ]
  %conv268 = fptosi double %cond267 to i32
  store i32 %conv268, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv269 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add270 = add nsw i32 %150, 2
  %idxprom271 = sext i32 %add270 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %151, i64 %idxprom271
  store i8 %conv269, i8* %arrayidx272, align 1
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.266, %land.lhs.true.194, %do.body.191
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  br label %if.end.275

if.end.275:                                       ; preds = %do.end.274, %do.end.190
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.86
  br label %for.inc

for.inc:                                          ; preds = %if.end.276
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_down_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %y_offset, i32 %curve_start_offset, i32 %steps) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 0, i64 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %curve_start_offset.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %x, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 2, i64 3), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %add3 = add nsw i32 %10, %11
  store i32 %add3, i32* %y, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %12, %13
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %add6 = add nsw i32 %mul4, %mul5
  store i32 %add6, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %16 = load i32, i32* %index, align 4
  %cmp7 = icmp sge i32 %16, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %17 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %17, 2
  %18 = load i32, i32* %bufsize.addr, align 4
  %cmp9 = icmp slt i32 %add8, %18
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %19, 0
  %idxprom11 = sext i32 %add10 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom11
  store i8 30, i8* %arrayidx12, align 1
  %21 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %21, 1
  %idxprom14 = sext i32 %add13 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %22, i64 %idxprom14
  store i8 30, i8* %arrayidx15, align 1
  %23 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %23, 2
  %idxprom17 = sext i32 %add16 to i64
  %24 = load i8*, i8** %buffer.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %24, i64 %idxprom17
  store i8 30, i8* %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 1, i64 3), align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom19
  %27 = load i32, i32* %arrayidx20, align 4
  %28 = load i32, i32* %curve_start_offset.addr, align 4
  %add21 = add nsw i32 %27, %28
  store i32 %add21, i32* %x, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32*, i32** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 3, i64 3), align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load i32, i32* %y_offset.addr, align 4
  %add24 = add nsw i32 %31, %32
  store i32 %add24, i32* %y, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %rowstride, align 4
  %mul25 = mul nsw i32 %33, %34
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %bytes.addr, align 4
  %mul26 = mul nsw i32 %35, %36
  %add27 = add nsw i32 %mul25, %mul26
  store i32 %add27, i32* %index, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %do.end
  %37 = load i32, i32* %index, align 4
  %cmp29 = icmp sge i32 %37, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.43

land.lhs.true.30:                                 ; preds = %do.body.28
  %38 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %38, 2
  %39 = load i32, i32* %bufsize.addr, align 4
  %cmp32 = icmp slt i32 %add31, %39
  br i1 %cmp32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %land.lhs.true.30
  %40 = load i32, i32* %index, align 4
  %add34 = add nsw i32 %40, 0
  %idxprom35 = sext i32 %add34 to i64
  %41 = load i8*, i8** %buffer.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 %idxprom35
  store i8 30, i8* %arrayidx36, align 1
  %42 = load i32, i32* %index, align 4
  %add37 = add nsw i32 %42, 1
  %idxprom38 = sext i32 %add37 to i64
  %43 = load i8*, i8** %buffer.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %43, i64 %idxprom38
  store i8 30, i8* %arrayidx39, align 1
  %44 = load i32, i32* %index, align 4
  %add40 = add nsw i32 %44, 2
  %idxprom41 = sext i32 %add40 to i64
  %45 = load i8*, i8** %buffer.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  store i8 30, i8* %arrayidx42, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.33, %land.lhs.true.30, %do.body.28
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %do.end.44
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @darken_down_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %y_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %curve_start_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 11, i64 3), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 13, i64 3), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.178

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %conv = sitofp i32 %23 to double
  %24 = load i32, i32* %steps.addr, align 4
  %conv12 = sitofp i32 %24 to double
  %div = fdiv double %conv12, 1.200000e+00
  %cmp13 = fcmp olt double %conv, %div
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %25 = load i32, i32* %index, align 4
  %cmp16 = icmp sge i32 %25, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %26 = load i32, i32* %index, align 4
  %add18 = add nsw i32 %26, 2
  %27 = load i32, i32* %bufsize.addr, align 4
  %cmp19 = icmp slt i32 %add18, %27
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %index, align 4
  %add22 = add nsw i32 %28, 0
  %idxprom23 = sext i32 %add22 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 %idxprom23
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  %conv26 = sitofp i32 %conv25 to double
  %31 = load double, double* %delta.addr, align 8
  %add27 = fadd double 1.000000e+00, %31
  %mul28 = fmul double %conv26, %add27
  %cmp29 = fcmp olt double %mul28, 2.550000e+02
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %32 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %32, 0
  %idxprom32 = sext i32 %add31 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 %idxprom32
  %34 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %34 to i32
  %conv35 = sitofp i32 %conv34 to double
  %35 = load double, double* %delta.addr, align 8
  %add36 = fadd double 1.000000e+00, %35
  %mul37 = fmul double %conv35, %add36
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul37, %cond.true ], [ 2.550000e+02, %cond.false ]
  %conv38 = fptosi double %cond to i32
  store i32 %conv38, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv39 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add40 = add nsw i32 %37, 0
  %idxprom41 = sext i32 %add40 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %38, i64 %idxprom41
  store i8 %conv39, i8* %arrayidx42, align 1
  %39 = load i32, i32* %index, align 4
  %add43 = add nsw i32 %39, 1
  %idxprom44 = sext i32 %add43 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 %idxprom44
  %41 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %41 to i32
  %conv47 = sitofp i32 %conv46 to double
  %42 = load double, double* %delta.addr, align 8
  %add48 = fadd double 1.000000e+00, %42
  %mul49 = fmul double %conv47, %add48
  %cmp50 = fcmp olt double %mul49, 2.550000e+02
  br i1 %cmp50, label %cond.true.52, label %cond.false.60

cond.true.52:                                     ; preds = %cond.end
  %43 = load i32, i32* %index, align 4
  %add53 = add nsw i32 %43, 1
  %idxprom54 = sext i32 %add53 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %44, i64 %idxprom54
  %45 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %45 to i32
  %conv57 = sitofp i32 %conv56 to double
  %46 = load double, double* %delta.addr, align 8
  %add58 = fadd double 1.000000e+00, %46
  %mul59 = fmul double %conv57, %add58
  br label %cond.end.61

cond.false.60:                                    ; preds = %cond.end
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.52
  %cond62 = phi double [ %mul59, %cond.true.52 ], [ 2.550000e+02, %cond.false.60 ]
  %conv63 = fptosi double %cond62 to i32
  store i32 %conv63, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv64 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add65 = add nsw i32 %48, 1
  %idxprom66 = sext i32 %add65 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %49, i64 %idxprom66
  store i8 %conv64, i8* %arrayidx67, align 1
  %50 = load i32, i32* %index, align 4
  %add68 = add nsw i32 %50, 2
  %idxprom69 = sext i32 %add68 to i64
  %51 = load i8*, i8** %buffer.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %51, i64 %idxprom69
  %52 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %52 to i32
  %conv72 = sitofp i32 %conv71 to double
  %53 = load double, double* %delta.addr, align 8
  %add73 = fadd double 1.000000e+00, %53
  %mul74 = fmul double %conv72, %add73
  %cmp75 = fcmp olt double %mul74, 2.550000e+02
  br i1 %cmp75, label %cond.true.77, label %cond.false.85

cond.true.77:                                     ; preds = %cond.end.61
  %54 = load i32, i32* %index, align 4
  %add78 = add nsw i32 %54, 2
  %idxprom79 = sext i32 %add78 to i64
  %55 = load i8*, i8** %buffer.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %55, i64 %idxprom79
  %56 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %56 to i32
  %conv82 = sitofp i32 %conv81 to double
  %57 = load double, double* %delta.addr, align 8
  %add83 = fadd double 1.000000e+00, %57
  %mul84 = fmul double %conv82, %add83
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.end.61
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.77
  %cond87 = phi double [ %mul84, %cond.true.77 ], [ 2.550000e+02, %cond.false.85 ]
  %conv88 = fptosi double %cond87 to i32
  store i32 %conv88, i32* %temp, align 4
  %58 = load i32, i32* %temp, align 4
  %conv89 = trunc i32 %58 to i8
  %59 = load i32, i32* %index, align 4
  %add90 = add nsw i32 %59, 2
  %idxprom91 = sext i32 %add90 to i64
  %60 = load i8*, i8** %buffer.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %60, i64 %idxprom91
  store i8 %conv89, i8* %arrayidx92, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.86, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.177

if.else:                                          ; preds = %if.then
  br label %do.body.93

do.body.93:                                       ; preds = %if.else
  %61 = load i32, i32* %index, align 4
  %cmp94 = icmp sge i32 %61, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.175

land.lhs.true.96:                                 ; preds = %do.body.93
  %62 = load i32, i32* %index, align 4
  %add97 = add nsw i32 %62, 2
  %63 = load i32, i32* %bufsize.addr, align 4
  %cmp98 = icmp slt i32 %add97, %63
  br i1 %cmp98, label %if.then.100, label %if.end.175

if.then.100:                                      ; preds = %land.lhs.true.96
  %64 = load i32, i32* %index, align 4
  %add101 = add nsw i32 %64, 0
  %idxprom102 = sext i32 %add101 to i64
  %65 = load i8*, i8** %buffer.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %65, i64 %idxprom102
  %66 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %66 to i32
  %conv105 = sitofp i32 %conv104 to double
  %67 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %67
  %mul106 = fmul double %conv105, %sub
  %cmp107 = fcmp ogt double %mul106, 0.000000e+00
  br i1 %cmp107, label %cond.true.109, label %cond.false.117

cond.true.109:                                    ; preds = %if.then.100
  %68 = load i32, i32* %index, align 4
  %add110 = add nsw i32 %68, 0
  %idxprom111 = sext i32 %add110 to i64
  %69 = load i8*, i8** %buffer.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %69, i64 %idxprom111
  %70 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %70 to i32
  %conv114 = sitofp i32 %conv113 to double
  %71 = load double, double* %delta.addr, align 8
  %sub115 = fsub double 1.000000e+00, %71
  %mul116 = fmul double %conv114, %sub115
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.then.100
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.109
  %cond119 = phi double [ %mul116, %cond.true.109 ], [ 0.000000e+00, %cond.false.117 ]
  %conv120 = fptosi double %cond119 to i32
  store i32 %conv120, i32* %temp, align 4
  %72 = load i32, i32* %temp, align 4
  %conv121 = trunc i32 %72 to i8
  %73 = load i32, i32* %index, align 4
  %add122 = add nsw i32 %73, 0
  %idxprom123 = sext i32 %add122 to i64
  %74 = load i8*, i8** %buffer.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %74, i64 %idxprom123
  store i8 %conv121, i8* %arrayidx124, align 1
  %75 = load i32, i32* %index, align 4
  %add125 = add nsw i32 %75, 1
  %idxprom126 = sext i32 %add125 to i64
  %76 = load i8*, i8** %buffer.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %76, i64 %idxprom126
  %77 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %77 to i32
  %conv129 = sitofp i32 %conv128 to double
  %78 = load double, double* %delta.addr, align 8
  %sub130 = fsub double 1.000000e+00, %78
  %mul131 = fmul double %conv129, %sub130
  %cmp132 = fcmp ogt double %mul131, 0.000000e+00
  br i1 %cmp132, label %cond.true.134, label %cond.false.142

cond.true.134:                                    ; preds = %cond.end.118
  %79 = load i32, i32* %index, align 4
  %add135 = add nsw i32 %79, 1
  %idxprom136 = sext i32 %add135 to i64
  %80 = load i8*, i8** %buffer.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %80, i64 %idxprom136
  %81 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %81 to i32
  %conv139 = sitofp i32 %conv138 to double
  %82 = load double, double* %delta.addr, align 8
  %sub140 = fsub double 1.000000e+00, %82
  %mul141 = fmul double %conv139, %sub140
  br label %cond.end.143

cond.false.142:                                   ; preds = %cond.end.118
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.134
  %cond144 = phi double [ %mul141, %cond.true.134 ], [ 0.000000e+00, %cond.false.142 ]
  %conv145 = fptosi double %cond144 to i32
  store i32 %conv145, i32* %temp, align 4
  %83 = load i32, i32* %temp, align 4
  %conv146 = trunc i32 %83 to i8
  %84 = load i32, i32* %index, align 4
  %add147 = add nsw i32 %84, 1
  %idxprom148 = sext i32 %add147 to i64
  %85 = load i8*, i8** %buffer.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %85, i64 %idxprom148
  store i8 %conv146, i8* %arrayidx149, align 1
  %86 = load i32, i32* %index, align 4
  %add150 = add nsw i32 %86, 2
  %idxprom151 = sext i32 %add150 to i64
  %87 = load i8*, i8** %buffer.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %87, i64 %idxprom151
  %88 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %88 to i32
  %conv154 = sitofp i32 %conv153 to double
  %89 = load double, double* %delta.addr, align 8
  %sub155 = fsub double 1.000000e+00, %89
  %mul156 = fmul double %conv154, %sub155
  %cmp157 = fcmp ogt double %mul156, 0.000000e+00
  br i1 %cmp157, label %cond.true.159, label %cond.false.167

cond.true.159:                                    ; preds = %cond.end.143
  %90 = load i32, i32* %index, align 4
  %add160 = add nsw i32 %90, 2
  %idxprom161 = sext i32 %add160 to i64
  %91 = load i8*, i8** %buffer.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %91, i64 %idxprom161
  %92 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %92 to i32
  %conv164 = sitofp i32 %conv163 to double
  %93 = load double, double* %delta.addr, align 8
  %sub165 = fsub double 1.000000e+00, %93
  %mul166 = fmul double %conv164, %sub165
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.143
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.159
  %cond169 = phi double [ %mul166, %cond.true.159 ], [ 0.000000e+00, %cond.false.167 ]
  %conv170 = fptosi double %cond169 to i32
  store i32 %conv170, i32* %temp, align 4
  %94 = load i32, i32* %temp, align 4
  %conv171 = trunc i32 %94 to i8
  %95 = load i32, i32* %index, align 4
  %add172 = add nsw i32 %95, 2
  %idxprom173 = sext i32 %add172 to i64
  %96 = load i8*, i8** %buffer.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %96, i64 %idxprom173
  store i8 %conv171, i8* %arrayidx174, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %cond.end.168, %land.lhs.true.96, %do.body.93
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.end
  %97 = load i32, i32* %index, align 4
  store i32 %97, i32* %last_index1, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.body
  %98 = load i32, i32* %curve_start_offset.addr, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %100 to i64
  %101 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 12, i64 3), align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %101, i64 %idxprom180
  %102 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %102, i64 %idxprom179
  %103 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %98, %103
  store i32 %add183, i32* %x, align 4
  %104 = load i32, i32* %y_offset.addr, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %106 to i64
  %107 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 14, i64 3), align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %107, i64 %idxprom185
  %108 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %108, i64 %idxprom184
  %109 = load i32, i32* %arrayidx187, align 4
  %add188 = add nsw i32 %104, %109
  store i32 %add188, i32* %y, align 4
  %110 = load i32, i32* %y, align 4
  %111 = load i32, i32* %rowstride, align 4
  %mul189 = mul nsw i32 %110, %111
  %112 = load i32, i32* %x, align 4
  %113 = load i32, i32* %bytes.addr, align 4
  %mul190 = mul nsw i32 %112, %113
  %add191 = add nsw i32 %mul189, %mul190
  store i32 %add191, i32* %index, align 4
  %114 = load i32, i32* %index, align 4
  %115 = load i32, i32* %last_index2, align 4
  %cmp192 = icmp ne i32 %114, %115
  br i1 %cmp192, label %if.then.194, label %if.end.280

if.then.194:                                      ; preds = %if.end.178
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %116 = load i32, i32* %index, align 4
  %cmp196 = icmp sge i32 %116, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.278

land.lhs.true.198:                                ; preds = %do.body.195
  %117 = load i32, i32* %index, align 4
  %add199 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp200 = icmp slt i32 %add199, %118
  br i1 %cmp200, label %if.then.202, label %if.end.278

if.then.202:                                      ; preds = %land.lhs.true.198
  %119 = load i32, i32* %index, align 4
  %add203 = add nsw i32 %119, 0
  %idxprom204 = sext i32 %add203 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %120, i64 %idxprom204
  %121 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %121 to i32
  %conv207 = sitofp i32 %conv206 to double
  %122 = load double, double* %delta.addr, align 8
  %sub208 = fsub double 1.000000e+00, %122
  %mul209 = fmul double %conv207, %sub208
  %cmp210 = fcmp ogt double %mul209, 0.000000e+00
  br i1 %cmp210, label %cond.true.212, label %cond.false.220

cond.true.212:                                    ; preds = %if.then.202
  %123 = load i32, i32* %index, align 4
  %add213 = add nsw i32 %123, 0
  %idxprom214 = sext i32 %add213 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %124, i64 %idxprom214
  %125 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %125 to i32
  %conv217 = sitofp i32 %conv216 to double
  %126 = load double, double* %delta.addr, align 8
  %sub218 = fsub double 1.000000e+00, %126
  %mul219 = fmul double %conv217, %sub218
  br label %cond.end.221

cond.false.220:                                   ; preds = %if.then.202
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.220, %cond.true.212
  %cond222 = phi double [ %mul219, %cond.true.212 ], [ 0.000000e+00, %cond.false.220 ]
  %conv223 = fptosi double %cond222 to i32
  store i32 %conv223, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv224 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add225 = add nsw i32 %128, 0
  %idxprom226 = sext i32 %add225 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %129, i64 %idxprom226
  store i8 %conv224, i8* %arrayidx227, align 1
  %130 = load i32, i32* %index, align 4
  %add228 = add nsw i32 %130, 1
  %idxprom229 = sext i32 %add228 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %131, i64 %idxprom229
  %132 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %132 to i32
  %conv232 = sitofp i32 %conv231 to double
  %133 = load double, double* %delta.addr, align 8
  %sub233 = fsub double 1.000000e+00, %133
  %mul234 = fmul double %conv232, %sub233
  %cmp235 = fcmp ogt double %mul234, 0.000000e+00
  br i1 %cmp235, label %cond.true.237, label %cond.false.245

cond.true.237:                                    ; preds = %cond.end.221
  %134 = load i32, i32* %index, align 4
  %add238 = add nsw i32 %134, 1
  %idxprom239 = sext i32 %add238 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %135, i64 %idxprom239
  %136 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %136 to i32
  %conv242 = sitofp i32 %conv241 to double
  %137 = load double, double* %delta.addr, align 8
  %sub243 = fsub double 1.000000e+00, %137
  %mul244 = fmul double %conv242, %sub243
  br label %cond.end.246

cond.false.245:                                   ; preds = %cond.end.221
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.237
  %cond247 = phi double [ %mul244, %cond.true.237 ], [ 0.000000e+00, %cond.false.245 ]
  %conv248 = fptosi double %cond247 to i32
  store i32 %conv248, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv249 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add250 = add nsw i32 %139, 1
  %idxprom251 = sext i32 %add250 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %140, i64 %idxprom251
  store i8 %conv249, i8* %arrayidx252, align 1
  %141 = load i32, i32* %index, align 4
  %add253 = add nsw i32 %141, 2
  %idxprom254 = sext i32 %add253 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %142, i64 %idxprom254
  %143 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %143 to i32
  %conv257 = sitofp i32 %conv256 to double
  %144 = load double, double* %delta.addr, align 8
  %sub258 = fsub double 1.000000e+00, %144
  %mul259 = fmul double %conv257, %sub258
  %cmp260 = fcmp ogt double %mul259, 0.000000e+00
  br i1 %cmp260, label %cond.true.262, label %cond.false.270

cond.true.262:                                    ; preds = %cond.end.246
  %145 = load i32, i32* %index, align 4
  %add263 = add nsw i32 %145, 2
  %idxprom264 = sext i32 %add263 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %146, i64 %idxprom264
  %147 = load i8, i8* %arrayidx265, align 1
  %conv266 = zext i8 %147 to i32
  %conv267 = sitofp i32 %conv266 to double
  %148 = load double, double* %delta.addr, align 8
  %sub268 = fsub double 1.000000e+00, %148
  %mul269 = fmul double %conv267, %sub268
  br label %cond.end.271

cond.false.270:                                   ; preds = %cond.end.246
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.262
  %cond272 = phi double [ %mul269, %cond.true.262 ], [ 0.000000e+00, %cond.false.270 ]
  %conv273 = fptosi double %cond272 to i32
  store i32 %conv273, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv274 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add275 = add nsw i32 %150, 2
  %idxprom276 = sext i32 %add275 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %151, i64 %idxprom276
  store i8 %conv274, i8* %arrayidx277, align 1
  br label %if.end.278

if.end.278:                                       ; preds = %cond.end.271, %land.lhs.true.198, %do.body.195
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %do.end.279, %if.end.178
  br label %for.inc

for.inc:                                          ; preds = %if.end.280
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lighten_down_bump(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %y_offset, i32 %curve_start_offset, i32 %steps, double %delta, i32 %counter) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %curve_start_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %counter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index1 = alloca i32, align 4
  %last_index2 = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %curve_start_offset, i32* %curve_start_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i32 -1, i32* %last_index1, align 4
  store i32 -1, i32* %last_index2, align 4
  %0 = load i32, i32* %counter.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %curve_start_offset.addr, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 7, i64 3), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom1
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %5, %10
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 9, i64 3), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %14, i64 %idxprom4
  %15 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %11, %16
  store i32 %add7, i32* %y, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %bytes.addr, align 4
  %mul9 = mul nsw i32 %19, %20
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  %22 = load i32, i32* %last_index1, align 4
  %cmp11 = icmp ne i32 %21, %22
  br i1 %cmp11, label %if.then, label %if.end.178

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %conv = sitofp i32 %23 to double
  %24 = load i32, i32* %steps.addr, align 4
  %conv12 = sitofp i32 %24 to double
  %div = fdiv double %conv12, 1.200000e+00
  %cmp13 = fcmp olt double %conv, %div
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %25 = load i32, i32* %index, align 4
  %cmp16 = icmp sge i32 %25, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %26 = load i32, i32* %index, align 4
  %add18 = add nsw i32 %26, 2
  %27 = load i32, i32* %bufsize.addr, align 4
  %cmp19 = icmp slt i32 %add18, %27
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %index, align 4
  %add22 = add nsw i32 %28, 0
  %idxprom23 = sext i32 %add22 to i64
  %29 = load i8*, i8** %buffer.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %29, i64 %idxprom23
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  %conv26 = sitofp i32 %conv25 to double
  %31 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %31
  %mul27 = fmul double %conv26, %sub
  %cmp28 = fcmp ogt double %mul27, 0.000000e+00
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %32 = load i32, i32* %index, align 4
  %add30 = add nsw i32 %32, 0
  %idxprom31 = sext i32 %add30 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %33, i64 %idxprom31
  %34 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %34 to i32
  %conv34 = sitofp i32 %conv33 to double
  %35 = load double, double* %delta.addr, align 8
  %sub35 = fsub double 1.000000e+00, %35
  %mul36 = fmul double %conv34, %sub35
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul36, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv37 = fptosi double %cond to i32
  store i32 %conv37, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %conv38 = trunc i32 %36 to i8
  %37 = load i32, i32* %index, align 4
  %add39 = add nsw i32 %37, 0
  %idxprom40 = sext i32 %add39 to i64
  %38 = load i8*, i8** %buffer.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %38, i64 %idxprom40
  store i8 %conv38, i8* %arrayidx41, align 1
  %39 = load i32, i32* %index, align 4
  %add42 = add nsw i32 %39, 1
  %idxprom43 = sext i32 %add42 to i64
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %40, i64 %idxprom43
  %41 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %41 to i32
  %conv46 = sitofp i32 %conv45 to double
  %42 = load double, double* %delta.addr, align 8
  %sub47 = fsub double 1.000000e+00, %42
  %mul48 = fmul double %conv46, %sub47
  %cmp49 = fcmp ogt double %mul48, 0.000000e+00
  br i1 %cmp49, label %cond.true.51, label %cond.false.59

cond.true.51:                                     ; preds = %cond.end
  %43 = load i32, i32* %index, align 4
  %add52 = add nsw i32 %43, 1
  %idxprom53 = sext i32 %add52 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %44, i64 %idxprom53
  %45 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %45 to i32
  %conv56 = sitofp i32 %conv55 to double
  %46 = load double, double* %delta.addr, align 8
  %sub57 = fsub double 1.000000e+00, %46
  %mul58 = fmul double %conv56, %sub57
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.end
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.51
  %cond61 = phi double [ %mul58, %cond.true.51 ], [ 0.000000e+00, %cond.false.59 ]
  %conv62 = fptosi double %cond61 to i32
  store i32 %conv62, i32* %temp, align 4
  %47 = load i32, i32* %temp, align 4
  %conv63 = trunc i32 %47 to i8
  %48 = load i32, i32* %index, align 4
  %add64 = add nsw i32 %48, 1
  %idxprom65 = sext i32 %add64 to i64
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %49, i64 %idxprom65
  store i8 %conv63, i8* %arrayidx66, align 1
  %50 = load i32, i32* %index, align 4
  %add67 = add nsw i32 %50, 2
  %idxprom68 = sext i32 %add67 to i64
  %51 = load i8*, i8** %buffer.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %51, i64 %idxprom68
  %52 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %52 to i32
  %conv71 = sitofp i32 %conv70 to double
  %53 = load double, double* %delta.addr, align 8
  %sub72 = fsub double 1.000000e+00, %53
  %mul73 = fmul double %conv71, %sub72
  %cmp74 = fcmp ogt double %mul73, 0.000000e+00
  br i1 %cmp74, label %cond.true.76, label %cond.false.84

cond.true.76:                                     ; preds = %cond.end.60
  %54 = load i32, i32* %index, align 4
  %add77 = add nsw i32 %54, 2
  %idxprom78 = sext i32 %add77 to i64
  %55 = load i8*, i8** %buffer.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %55, i64 %idxprom78
  %56 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %56 to i32
  %conv81 = sitofp i32 %conv80 to double
  %57 = load double, double* %delta.addr, align 8
  %sub82 = fsub double 1.000000e+00, %57
  %mul83 = fmul double %conv81, %sub82
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.60
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.76
  %cond86 = phi double [ %mul83, %cond.true.76 ], [ 0.000000e+00, %cond.false.84 ]
  %conv87 = fptosi double %cond86 to i32
  store i32 %conv87, i32* %temp, align 4
  %58 = load i32, i32* %temp, align 4
  %conv88 = trunc i32 %58 to i8
  %59 = load i32, i32* %index, align 4
  %add89 = add nsw i32 %59, 2
  %idxprom90 = sext i32 %add89 to i64
  %60 = load i8*, i8** %buffer.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %60, i64 %idxprom90
  store i8 %conv88, i8* %arrayidx91, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.85, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.177

if.else:                                          ; preds = %if.then
  br label %do.body.92

do.body.92:                                       ; preds = %if.else
  %61 = load i32, i32* %index, align 4
  %cmp93 = icmp sge i32 %61, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.175

land.lhs.true.95:                                 ; preds = %do.body.92
  %62 = load i32, i32* %index, align 4
  %add96 = add nsw i32 %62, 2
  %63 = load i32, i32* %bufsize.addr, align 4
  %cmp97 = icmp slt i32 %add96, %63
  br i1 %cmp97, label %if.then.99, label %if.end.175

if.then.99:                                       ; preds = %land.lhs.true.95
  %64 = load i32, i32* %index, align 4
  %add100 = add nsw i32 %64, 0
  %idxprom101 = sext i32 %add100 to i64
  %65 = load i8*, i8** %buffer.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %65, i64 %idxprom101
  %66 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %66 to i32
  %conv104 = sitofp i32 %conv103 to double
  %67 = load double, double* %delta.addr, align 8
  %add105 = fadd double 1.000000e+00, %67
  %mul106 = fmul double %conv104, %add105
  %cmp107 = fcmp olt double %mul106, 2.550000e+02
  br i1 %cmp107, label %cond.true.109, label %cond.false.117

cond.true.109:                                    ; preds = %if.then.99
  %68 = load i32, i32* %index, align 4
  %add110 = add nsw i32 %68, 0
  %idxprom111 = sext i32 %add110 to i64
  %69 = load i8*, i8** %buffer.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %69, i64 %idxprom111
  %70 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %70 to i32
  %conv114 = sitofp i32 %conv113 to double
  %71 = load double, double* %delta.addr, align 8
  %add115 = fadd double 1.000000e+00, %71
  %mul116 = fmul double %conv114, %add115
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.then.99
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.109
  %cond119 = phi double [ %mul116, %cond.true.109 ], [ 2.550000e+02, %cond.false.117 ]
  %conv120 = fptosi double %cond119 to i32
  store i32 %conv120, i32* %temp, align 4
  %72 = load i32, i32* %temp, align 4
  %conv121 = trunc i32 %72 to i8
  %73 = load i32, i32* %index, align 4
  %add122 = add nsw i32 %73, 0
  %idxprom123 = sext i32 %add122 to i64
  %74 = load i8*, i8** %buffer.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %74, i64 %idxprom123
  store i8 %conv121, i8* %arrayidx124, align 1
  %75 = load i32, i32* %index, align 4
  %add125 = add nsw i32 %75, 1
  %idxprom126 = sext i32 %add125 to i64
  %76 = load i8*, i8** %buffer.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %76, i64 %idxprom126
  %77 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %77 to i32
  %conv129 = sitofp i32 %conv128 to double
  %78 = load double, double* %delta.addr, align 8
  %add130 = fadd double 1.000000e+00, %78
  %mul131 = fmul double %conv129, %add130
  %cmp132 = fcmp olt double %mul131, 2.550000e+02
  br i1 %cmp132, label %cond.true.134, label %cond.false.142

cond.true.134:                                    ; preds = %cond.end.118
  %79 = load i32, i32* %index, align 4
  %add135 = add nsw i32 %79, 1
  %idxprom136 = sext i32 %add135 to i64
  %80 = load i8*, i8** %buffer.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %80, i64 %idxprom136
  %81 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %81 to i32
  %conv139 = sitofp i32 %conv138 to double
  %82 = load double, double* %delta.addr, align 8
  %add140 = fadd double 1.000000e+00, %82
  %mul141 = fmul double %conv139, %add140
  br label %cond.end.143

cond.false.142:                                   ; preds = %cond.end.118
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.134
  %cond144 = phi double [ %mul141, %cond.true.134 ], [ 2.550000e+02, %cond.false.142 ]
  %conv145 = fptosi double %cond144 to i32
  store i32 %conv145, i32* %temp, align 4
  %83 = load i32, i32* %temp, align 4
  %conv146 = trunc i32 %83 to i8
  %84 = load i32, i32* %index, align 4
  %add147 = add nsw i32 %84, 1
  %idxprom148 = sext i32 %add147 to i64
  %85 = load i8*, i8** %buffer.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %85, i64 %idxprom148
  store i8 %conv146, i8* %arrayidx149, align 1
  %86 = load i32, i32* %index, align 4
  %add150 = add nsw i32 %86, 2
  %idxprom151 = sext i32 %add150 to i64
  %87 = load i8*, i8** %buffer.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %87, i64 %idxprom151
  %88 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %88 to i32
  %conv154 = sitofp i32 %conv153 to double
  %89 = load double, double* %delta.addr, align 8
  %add155 = fadd double 1.000000e+00, %89
  %mul156 = fmul double %conv154, %add155
  %cmp157 = fcmp olt double %mul156, 2.550000e+02
  br i1 %cmp157, label %cond.true.159, label %cond.false.167

cond.true.159:                                    ; preds = %cond.end.143
  %90 = load i32, i32* %index, align 4
  %add160 = add nsw i32 %90, 2
  %idxprom161 = sext i32 %add160 to i64
  %91 = load i8*, i8** %buffer.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %91, i64 %idxprom161
  %92 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %92 to i32
  %conv164 = sitofp i32 %conv163 to double
  %93 = load double, double* %delta.addr, align 8
  %add165 = fadd double 1.000000e+00, %93
  %mul166 = fmul double %conv164, %add165
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.143
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.159
  %cond169 = phi double [ %mul166, %cond.true.159 ], [ 2.550000e+02, %cond.false.167 ]
  %conv170 = fptosi double %cond169 to i32
  store i32 %conv170, i32* %temp, align 4
  %94 = load i32, i32* %temp, align 4
  %conv171 = trunc i32 %94 to i8
  %95 = load i32, i32* %index, align 4
  %add172 = add nsw i32 %95, 2
  %idxprom173 = sext i32 %add172 to i64
  %96 = load i8*, i8** %buffer.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %96, i64 %idxprom173
  store i8 %conv171, i8* %arrayidx174, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %cond.end.168, %land.lhs.true.95, %do.body.92
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.end
  %97 = load i32, i32* %index, align 4
  store i32 %97, i32* %last_index1, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.body
  %98 = load i32, i32* %curve_start_offset.addr, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %100 to i64
  %101 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 8, i64 3), align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %101, i64 %idxprom180
  %102 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %102, i64 %idxprom179
  %103 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %98, %103
  store i32 %add183, i32* %x, align 4
  %104 = load i32, i32* %y_offset.addr, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %106 to i64
  %107 = load i32**, i32*** getelementptr inbounds (%struct.globals_tag, %struct.globals_tag* @globals, i32 0, i32 10, i64 3), align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %107, i64 %idxprom185
  %108 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %108, i64 %idxprom184
  %109 = load i32, i32* %arrayidx187, align 4
  %add188 = add nsw i32 %104, %109
  store i32 %add188, i32* %y, align 4
  %110 = load i32, i32* %y, align 4
  %111 = load i32, i32* %rowstride, align 4
  %mul189 = mul nsw i32 %110, %111
  %112 = load i32, i32* %x, align 4
  %113 = load i32, i32* %bytes.addr, align 4
  %mul190 = mul nsw i32 %112, %113
  %add191 = add nsw i32 %mul189, %mul190
  store i32 %add191, i32* %index, align 4
  %114 = load i32, i32* %index, align 4
  %115 = load i32, i32* %last_index2, align 4
  %cmp192 = icmp ne i32 %114, %115
  br i1 %cmp192, label %if.then.194, label %if.end.280

if.then.194:                                      ; preds = %if.end.178
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %116 = load i32, i32* %index, align 4
  %cmp196 = icmp sge i32 %116, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.278

land.lhs.true.198:                                ; preds = %do.body.195
  %117 = load i32, i32* %index, align 4
  %add199 = add nsw i32 %117, 2
  %118 = load i32, i32* %bufsize.addr, align 4
  %cmp200 = icmp slt i32 %add199, %118
  br i1 %cmp200, label %if.then.202, label %if.end.278

if.then.202:                                      ; preds = %land.lhs.true.198
  %119 = load i32, i32* %index, align 4
  %add203 = add nsw i32 %119, 0
  %idxprom204 = sext i32 %add203 to i64
  %120 = load i8*, i8** %buffer.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %120, i64 %idxprom204
  %121 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %121 to i32
  %conv207 = sitofp i32 %conv206 to double
  %122 = load double, double* %delta.addr, align 8
  %add208 = fadd double 1.000000e+00, %122
  %mul209 = fmul double %conv207, %add208
  %cmp210 = fcmp olt double %mul209, 2.550000e+02
  br i1 %cmp210, label %cond.true.212, label %cond.false.220

cond.true.212:                                    ; preds = %if.then.202
  %123 = load i32, i32* %index, align 4
  %add213 = add nsw i32 %123, 0
  %idxprom214 = sext i32 %add213 to i64
  %124 = load i8*, i8** %buffer.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %124, i64 %idxprom214
  %125 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %125 to i32
  %conv217 = sitofp i32 %conv216 to double
  %126 = load double, double* %delta.addr, align 8
  %add218 = fadd double 1.000000e+00, %126
  %mul219 = fmul double %conv217, %add218
  br label %cond.end.221

cond.false.220:                                   ; preds = %if.then.202
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.220, %cond.true.212
  %cond222 = phi double [ %mul219, %cond.true.212 ], [ 2.550000e+02, %cond.false.220 ]
  %conv223 = fptosi double %cond222 to i32
  store i32 %conv223, i32* %temp, align 4
  %127 = load i32, i32* %temp, align 4
  %conv224 = trunc i32 %127 to i8
  %128 = load i32, i32* %index, align 4
  %add225 = add nsw i32 %128, 0
  %idxprom226 = sext i32 %add225 to i64
  %129 = load i8*, i8** %buffer.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %129, i64 %idxprom226
  store i8 %conv224, i8* %arrayidx227, align 1
  %130 = load i32, i32* %index, align 4
  %add228 = add nsw i32 %130, 1
  %idxprom229 = sext i32 %add228 to i64
  %131 = load i8*, i8** %buffer.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %131, i64 %idxprom229
  %132 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %132 to i32
  %conv232 = sitofp i32 %conv231 to double
  %133 = load double, double* %delta.addr, align 8
  %add233 = fadd double 1.000000e+00, %133
  %mul234 = fmul double %conv232, %add233
  %cmp235 = fcmp olt double %mul234, 2.550000e+02
  br i1 %cmp235, label %cond.true.237, label %cond.false.245

cond.true.237:                                    ; preds = %cond.end.221
  %134 = load i32, i32* %index, align 4
  %add238 = add nsw i32 %134, 1
  %idxprom239 = sext i32 %add238 to i64
  %135 = load i8*, i8** %buffer.addr, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %135, i64 %idxprom239
  %136 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %136 to i32
  %conv242 = sitofp i32 %conv241 to double
  %137 = load double, double* %delta.addr, align 8
  %add243 = fadd double 1.000000e+00, %137
  %mul244 = fmul double %conv242, %add243
  br label %cond.end.246

cond.false.245:                                   ; preds = %cond.end.221
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.237
  %cond247 = phi double [ %mul244, %cond.true.237 ], [ 2.550000e+02, %cond.false.245 ]
  %conv248 = fptosi double %cond247 to i32
  store i32 %conv248, i32* %temp, align 4
  %138 = load i32, i32* %temp, align 4
  %conv249 = trunc i32 %138 to i8
  %139 = load i32, i32* %index, align 4
  %add250 = add nsw i32 %139, 1
  %idxprom251 = sext i32 %add250 to i64
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %140, i64 %idxprom251
  store i8 %conv249, i8* %arrayidx252, align 1
  %141 = load i32, i32* %index, align 4
  %add253 = add nsw i32 %141, 2
  %idxprom254 = sext i32 %add253 to i64
  %142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %142, i64 %idxprom254
  %143 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %143 to i32
  %conv257 = sitofp i32 %conv256 to double
  %144 = load double, double* %delta.addr, align 8
  %add258 = fadd double 1.000000e+00, %144
  %mul259 = fmul double %conv257, %add258
  %cmp260 = fcmp olt double %mul259, 2.550000e+02
  br i1 %cmp260, label %cond.true.262, label %cond.false.270

cond.true.262:                                    ; preds = %cond.end.246
  %145 = load i32, i32* %index, align 4
  %add263 = add nsw i32 %145, 2
  %idxprom264 = sext i32 %add263 to i64
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %146, i64 %idxprom264
  %147 = load i8, i8* %arrayidx265, align 1
  %conv266 = zext i8 %147 to i32
  %conv267 = sitofp i32 %conv266 to double
  %148 = load double, double* %delta.addr, align 8
  %add268 = fadd double 1.000000e+00, %148
  %mul269 = fmul double %conv267, %add268
  br label %cond.end.271

cond.false.270:                                   ; preds = %cond.end.246
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.262
  %cond272 = phi double [ %mul269, %cond.true.262 ], [ 2.550000e+02, %cond.false.270 ]
  %conv273 = fptosi double %cond272 to i32
  store i32 %conv273, i32* %temp, align 4
  %149 = load i32, i32* %temp, align 4
  %conv274 = trunc i32 %149 to i8
  %150 = load i32, i32* %index, align 4
  %add275 = add nsw i32 %150, 2
  %idxprom276 = sext i32 %add275 to i64
  %151 = load i8*, i8** %buffer.addr, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %151, i64 %idxprom276
  store i8 %conv274, i8* %arrayidx277, align 1
  br label %if.end.278

if.end.278:                                       ; preds = %cond.end.271, %land.lhs.true.198, %do.body.195
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.278
  %152 = load i32, i32* %index, align 4
  store i32 %152, i32* %last_index2, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %do.end.279, %if.end.178
  br label %for.inc

for.inc:                                          ; preds = %if.end.280
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_bezier_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %steps, i32* %cx, i32* %cy) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %cx.addr = alloca i32*, align 8
  %cy.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store i32* %cx, i32** %cx.addr, align 8
  store i32* %cy, i32** %cy.addr, align 8
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %cx.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %x, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i32*, i32** %cy.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  store i32 %9, i32* %y, align 4
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %rowstride, align 4
  %mul3 = mul nsw i32 %10, %11
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %bytes.addr, align 4
  %mul4 = mul nsw i32 %12, %13
  %add = add nsw i32 %mul3, %mul4
  store i32 %add, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %14 = load i32, i32* %index, align 4
  %cmp5 = icmp sge i32 %14, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %index, align 4
  %add6 = add nsw i32 %15, 2
  %16 = load i32, i32* %bufsize.addr, align 4
  %cmp7 = icmp slt i32 %add6, %16
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %add8 = add nsw i32 %17, 0
  %idxprom9 = sext i32 %add8 to i64
  %18 = load i8*, i8** %buffer.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %idxprom9
  store i8 30, i8* %arrayidx10, align 1
  %19 = load i32, i32* %index, align 4
  %add11 = add nsw i32 %19, 1
  %idxprom12 = sext i32 %add11 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %20, i64 %idxprom12
  store i8 30, i8* %arrayidx13, align 1
  %21 = load i32, i32* %index, align 4
  %add14 = add nsw i32 %21, 2
  %idxprom15 = sext i32 %add14 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 %idxprom15
  store i8 30, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @darken_bezier_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %y_offset, i32 %steps, i32* %cx, i32* %cy, double %delta) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %cx.addr = alloca i32*, align 8
  %cy.addr = alloca i32*, align 8
  %delta.addr = alloca double, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store i32* %cx, i32** %cx.addr, align 8
  store i32* %cy, i32** %cy.addr, align 8
  store double %delta, double* %delta.addr, align 8
  store i32 -1, i32* %last_index, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %cx.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %x_offset.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %x, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32*, i32** %cy.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %add3 = add nsw i32 %10, %11
  store i32 %add3, i32* %y, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %12, %13
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %add6 = add nsw i32 %mul4, %mul5
  store i32 %add6, i32* %index, align 4
  %16 = load i32, i32* %index, align 4
  %17 = load i32, i32* %last_index, align 4
  %cmp7 = icmp ne i32 %16, %17
  br i1 %cmp7, label %if.then, label %if.end.81

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %18 = load i32, i32* %index, align 4
  %cmp8 = icmp sge i32 %18, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %19 = load i32, i32* %index, align 4
  %add9 = add nsw i32 %19, 2
  %20 = load i32, i32* %bufsize.addr, align 4
  %cmp10 = icmp slt i32 %add9, %20
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %index, align 4
  %add12 = add nsw i32 %21, 0
  %idxprom13 = sext i32 %add12 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 %idxprom13
  %23 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %23 to i32
  %conv15 = sitofp i32 %conv to double
  %24 = load double, double* %delta.addr, align 8
  %sub = fsub double 1.000000e+00, %24
  %mul16 = fmul double %conv15, %sub
  %cmp17 = fcmp ogt double %mul16, 0.000000e+00
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %25 = load i32, i32* %index, align 4
  %add19 = add nsw i32 %25, 0
  %idxprom20 = sext i32 %add19 to i64
  %26 = load i8*, i8** %buffer.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %26, i64 %idxprom20
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %27 to i32
  %conv23 = sitofp i32 %conv22 to double
  %28 = load double, double* %delta.addr, align 8
  %sub24 = fsub double 1.000000e+00, %28
  %mul25 = fmul double %conv23, %sub24
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul25, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv26 = fptosi double %cond to i32
  store i32 %conv26, i32* %temp, align 4
  %29 = load i32, i32* %temp, align 4
  %conv27 = trunc i32 %29 to i8
  %30 = load i32, i32* %index, align 4
  %add28 = add nsw i32 %30, 0
  %idxprom29 = sext i32 %add28 to i64
  %31 = load i8*, i8** %buffer.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %31, i64 %idxprom29
  store i8 %conv27, i8* %arrayidx30, align 1
  %32 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %32, 1
  %idxprom32 = sext i32 %add31 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 %idxprom32
  %34 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %34 to i32
  %conv35 = sitofp i32 %conv34 to double
  %35 = load double, double* %delta.addr, align 8
  %sub36 = fsub double 1.000000e+00, %35
  %mul37 = fmul double %conv35, %sub36
  %cmp38 = fcmp ogt double %mul37, 0.000000e+00
  br i1 %cmp38, label %cond.true.40, label %cond.false.48

cond.true.40:                                     ; preds = %cond.end
  %36 = load i32, i32* %index, align 4
  %add41 = add nsw i32 %36, 1
  %idxprom42 = sext i32 %add41 to i64
  %37 = load i8*, i8** %buffer.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %37, i64 %idxprom42
  %38 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %38 to i32
  %conv45 = sitofp i32 %conv44 to double
  %39 = load double, double* %delta.addr, align 8
  %sub46 = fsub double 1.000000e+00, %39
  %mul47 = fmul double %conv45, %sub46
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.40
  %cond50 = phi double [ %mul47, %cond.true.40 ], [ 0.000000e+00, %cond.false.48 ]
  %conv51 = fptosi double %cond50 to i32
  store i32 %conv51, i32* %temp, align 4
  %40 = load i32, i32* %temp, align 4
  %conv52 = trunc i32 %40 to i8
  %41 = load i32, i32* %index, align 4
  %add53 = add nsw i32 %41, 1
  %idxprom54 = sext i32 %add53 to i64
  %42 = load i8*, i8** %buffer.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %42, i64 %idxprom54
  store i8 %conv52, i8* %arrayidx55, align 1
  %43 = load i32, i32* %index, align 4
  %add56 = add nsw i32 %43, 2
  %idxprom57 = sext i32 %add56 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %44, i64 %idxprom57
  %45 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %45 to i32
  %conv60 = sitofp i32 %conv59 to double
  %46 = load double, double* %delta.addr, align 8
  %sub61 = fsub double 1.000000e+00, %46
  %mul62 = fmul double %conv60, %sub61
  %cmp63 = fcmp ogt double %mul62, 0.000000e+00
  br i1 %cmp63, label %cond.true.65, label %cond.false.73

cond.true.65:                                     ; preds = %cond.end.49
  %47 = load i32, i32* %index, align 4
  %add66 = add nsw i32 %47, 2
  %idxprom67 = sext i32 %add66 to i64
  %48 = load i8*, i8** %buffer.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %48, i64 %idxprom67
  %49 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %49 to i32
  %conv70 = sitofp i32 %conv69 to double
  %50 = load double, double* %delta.addr, align 8
  %sub71 = fsub double 1.000000e+00, %50
  %mul72 = fmul double %conv70, %sub71
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.49
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.65
  %cond75 = phi double [ %mul72, %cond.true.65 ], [ 0.000000e+00, %cond.false.73 ]
  %conv76 = fptosi double %cond75 to i32
  store i32 %conv76, i32* %temp, align 4
  %51 = load i32, i32* %temp, align 4
  %conv77 = trunc i32 %51 to i8
  %52 = load i32, i32* %index, align 4
  %add78 = add nsw i32 %52, 2
  %idxprom79 = sext i32 %add78 to i64
  %53 = load i8*, i8** %buffer.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %53, i64 %idxprom79
  store i8 %conv77, i8* %arrayidx80, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.74, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %54 = load i32, i32* %index, align 4
  store i32 %54, i32* %last_index, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lighten_bezier_line(i8* %buffer, i32 %bufsize, i32 %width, i32 %bytes, i32 %x_offset, i32 %y_offset, i32 %steps, i32* %cx, i32* %cy, double %delta) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %steps.addr = alloca i32, align 4
  %cx.addr = alloca i32*, align 8
  %cy.addr = alloca i32*, align 8
  %delta.addr = alloca double, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  %last_index = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %temp = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %x_offset, i32* %x_offset.addr, align 4
  store i32 %y_offset, i32* %y_offset.addr, align 4
  store i32 %steps, i32* %steps.addr, align 4
  store i32* %cx, i32** %cx.addr, align 8
  store i32* %cy, i32** %cy.addr, align 8
  store double %delta, double* %delta.addr, align 8
  store i32 -1, i32* %last_index, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %steps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %cx.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %x_offset.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %x, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32*, i32** %cy.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  %11 = load i32, i32* %y_offset.addr, align 4
  %add3 = add nsw i32 %10, %11
  store i32 %add3, i32* %y, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %12, %13
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %mul5 = mul nsw i32 %14, %15
  %add6 = add nsw i32 %mul4, %mul5
  store i32 %add6, i32* %index, align 4
  %16 = load i32, i32* %index, align 4
  %17 = load i32, i32* %last_index, align 4
  %cmp7 = icmp ne i32 %16, %17
  br i1 %cmp7, label %if.then, label %if.end.82

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %18 = load i32, i32* %index, align 4
  %cmp8 = icmp sge i32 %18, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %19 = load i32, i32* %index, align 4
  %add9 = add nsw i32 %19, 2
  %20 = load i32, i32* %bufsize.addr, align 4
  %cmp10 = icmp slt i32 %add9, %20
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %index, align 4
  %add12 = add nsw i32 %21, 0
  %idxprom13 = sext i32 %add12 to i64
  %22 = load i8*, i8** %buffer.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 %idxprom13
  %23 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %23 to i32
  %conv15 = sitofp i32 %conv to double
  %24 = load double, double* %delta.addr, align 8
  %add16 = fadd double 1.000000e+00, %24
  %mul17 = fmul double %conv15, %add16
  %cmp18 = fcmp olt double %mul17, 2.550000e+02
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %25 = load i32, i32* %index, align 4
  %add20 = add nsw i32 %25, 0
  %idxprom21 = sext i32 %add20 to i64
  %26 = load i8*, i8** %buffer.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %26, i64 %idxprom21
  %27 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %27 to i32
  %conv24 = sitofp i32 %conv23 to double
  %28 = load double, double* %delta.addr, align 8
  %add25 = fadd double 1.000000e+00, %28
  %mul26 = fmul double %conv24, %add25
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul26, %cond.true ], [ 2.550000e+02, %cond.false ]
  %conv27 = fptosi double %cond to i32
  store i32 %conv27, i32* %temp, align 4
  %29 = load i32, i32* %temp, align 4
  %conv28 = trunc i32 %29 to i8
  %30 = load i32, i32* %index, align 4
  %add29 = add nsw i32 %30, 0
  %idxprom30 = sext i32 %add29 to i64
  %31 = load i8*, i8** %buffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 %idxprom30
  store i8 %conv28, i8* %arrayidx31, align 1
  %32 = load i32, i32* %index, align 4
  %add32 = add nsw i32 %32, 1
  %idxprom33 = sext i32 %add32 to i64
  %33 = load i8*, i8** %buffer.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %33, i64 %idxprom33
  %34 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %34 to i32
  %conv36 = sitofp i32 %conv35 to double
  %35 = load double, double* %delta.addr, align 8
  %add37 = fadd double 1.000000e+00, %35
  %mul38 = fmul double %conv36, %add37
  %cmp39 = fcmp olt double %mul38, 2.550000e+02
  br i1 %cmp39, label %cond.true.41, label %cond.false.49

cond.true.41:                                     ; preds = %cond.end
  %36 = load i32, i32* %index, align 4
  %add42 = add nsw i32 %36, 1
  %idxprom43 = sext i32 %add42 to i64
  %37 = load i8*, i8** %buffer.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %37, i64 %idxprom43
  %38 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %38 to i32
  %conv46 = sitofp i32 %conv45 to double
  %39 = load double, double* %delta.addr, align 8
  %add47 = fadd double 1.000000e+00, %39
  %mul48 = fmul double %conv46, %add47
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.41
  %cond51 = phi double [ %mul48, %cond.true.41 ], [ 2.550000e+02, %cond.false.49 ]
  %conv52 = fptosi double %cond51 to i32
  store i32 %conv52, i32* %temp, align 4
  %40 = load i32, i32* %temp, align 4
  %conv53 = trunc i32 %40 to i8
  %41 = load i32, i32* %index, align 4
  %add54 = add nsw i32 %41, 1
  %idxprom55 = sext i32 %add54 to i64
  %42 = load i8*, i8** %buffer.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %42, i64 %idxprom55
  store i8 %conv53, i8* %arrayidx56, align 1
  %43 = load i32, i32* %index, align 4
  %add57 = add nsw i32 %43, 2
  %idxprom58 = sext i32 %add57 to i64
  %44 = load i8*, i8** %buffer.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %44, i64 %idxprom58
  %45 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %45 to i32
  %conv61 = sitofp i32 %conv60 to double
  %46 = load double, double* %delta.addr, align 8
  %add62 = fadd double 1.000000e+00, %46
  %mul63 = fmul double %conv61, %add62
  %cmp64 = fcmp olt double %mul63, 2.550000e+02
  br i1 %cmp64, label %cond.true.66, label %cond.false.74

cond.true.66:                                     ; preds = %cond.end.50
  %47 = load i32, i32* %index, align 4
  %add67 = add nsw i32 %47, 2
  %idxprom68 = sext i32 %add67 to i64
  %48 = load i8*, i8** %buffer.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i64 %idxprom68
  %49 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %49 to i32
  %conv71 = sitofp i32 %conv70 to double
  %50 = load double, double* %delta.addr, align 8
  %add72 = fadd double 1.000000e+00, %50
  %mul73 = fmul double %conv71, %add72
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.end.50
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.66
  %cond76 = phi double [ %mul73, %cond.true.66 ], [ 2.550000e+02, %cond.false.74 ]
  %conv77 = fptosi double %cond76 to i32
  store i32 %conv77, i32* %temp, align 4
  %51 = load i32, i32* %temp, align 4
  %conv78 = trunc i32 %51 to i8
  %52 = load i32, i32* %index, align 4
  %add79 = add nsw i32 %52, 2
  %idxprom80 = sext i32 %add79 to i64
  %53 = load i8*, i8** %buffer.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %53, i64 %idxprom80
  store i8 %conv78, i8* %arrayidx81, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.75, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %54 = load i32, i32* %index, align 4
  store i32 %54, i32* %last_index, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

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

declare %struct._GtkWidget* @gimp_aspect_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
