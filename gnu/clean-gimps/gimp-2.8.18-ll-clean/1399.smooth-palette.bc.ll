; ModuleID = './plug-ins/common/smooth-palette.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.anon = type { i32, i32, i32, i32, i32 }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GRand = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ntries\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Search Depth\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"show-image\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Show Image?\00", align 1
@query.return_vals = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"new-image\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"new-layer\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Output layer\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"plug-in-smooth-palette\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Derive a smooth color palette from the image\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"help!\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Scott Draves\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Smoo_th Palette...\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"<Image>/Colors/Info\00", align 1
@run.values = internal global [3 x %struct._GimpParam] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@config = internal global %struct.anon { i32 256, i32 64, i32 50, i32 10000, i32 1 }, align 4
@.str.28 = private unnamed_addr constant [24 x i8] c"Deriving smooth palette\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"smooth-palette\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Smooth Palette\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"gimp-smooth-palette\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"_Search depth:\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Background\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 7, i32 2, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 3, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 13, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  store i32 14, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.anon* @config to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 7
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.24

if.else:                                          ; preds = %sw.bb.9
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  %11 = load i32, i32* %d_int3213, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 6
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %17 = load i32, i32* %d_int3222, align 4
  %tobool23 = icmp ne i32 %17, 0
  %cond = select i1 %tobool23, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 4), align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.10
  %18 = load i32, i32* %status, align 4
  %cmp25 = icmp eq i32 %18, 3
  br i1 %cmp25, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.24
  %19 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %cmp26 = icmp sle i32 %19, 0
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %cmp27 = icmp sle i32 %20, 0
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %cmp29 = icmp sle i32 %21, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %lor.lhs.false.28, %if.end.24
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end
  %call33 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.anon* @config to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.32, %if.end.31, %if.end
  %22 = load i32, i32* %status, align 4
  %cmp34 = icmp eq i32 %22, 3
  br i1 %cmp34, label %if.then.35, label %if.end.54

if.then.35:                                       ; preds = %sw.epilog
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id, align 4
  %call36 = call i32 @gimp_drawable_is_rgb(i32 %24)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.52

if.then.38:                                       ; preds = %if.then.35
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0)) #4
  %call40 = call i32 @gimp_progress_init(i8* %call39)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load i32, i32* %width, align 4
  %add = add i32 %26, 1
  %mul = mul i32 2, %add
  %call41 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %mul, %call41
  %conv = zext i32 %div to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call42 = call i32 @smooth_palette(%struct._GimpDrawable* %27, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32*))
  store i32 %call42, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %28 = load i32, i32* %run_mode, align 4
  %cmp43 = icmp eq i32 %28, 0
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.38
  %call46 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.anon* @config to i8*), i32 20)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.38
  %29 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 4), align 4
  %tobool48 = icmp ne i32 %29, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %30 = load i32, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %call50 = call i32 @gimp_display_new(i32 %30)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  br label %if.end.53

if.else.52:                                       ; preds = %if.then.35
  store i32 0, i32* %status, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.51
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %31)
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %sw.epilog
  %32 = load i32, i32* %status, align 4
  store i32 %32, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.54, %if.then
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
define internal i32 @dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dlg = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %sizeentry = alloca %struct._GtkWidget*, align 8
  %image_id = alloca i32, align 4
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call6 = call i32 @gimp_item_get_image(i32 %7)
  store i32 %call6, i32* %image_id, align 4
  %8 = load i32, i32* %image_id, align 4
  %call7 = call i32 @gimp_image_get_unit(i32 %8)
  store i32 %call7, i32* %unit, align 4
  %9 = load i32, i32* %image_id, align 4
  %call8 = call i32 @gimp_image_get_resolution(i32 %9, double* %xres, double* %yres)
  %10 = load i32, i32* %unit, align 4
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #4
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %conv = sitofp i32 %11 to double
  %12 = load double, double* %xres, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #4
  %13 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %conv11 = sitofp i32 %13 to double
  %14 = load double, double* %yres, align 8
  %call12 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 1, i32 0, i32 6, i32 1, i32 0, i32 0, i8* %call9, double %conv, double %12, double 2.000000e+00, double 2.621440e+05, double 2.000000e+00, double 2.621440e+05, i8* %call10, double %conv11, double %14, double 1.000000e+00, double 2.621440e+05, double 1.000000e+00, double 2.621440e+05)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %sizeentry, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %17, i32 12)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  %call17 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %20)
  %21 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %conv20 = sitofp i32 %25 to double
  %call21 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv20, double 1.000000e+00, double 1.024000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %spinbutton, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0)) #4
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call25 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %28, i32 0, i32 2, i8* %call24, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %29, i32 1, i32 0)
  %30 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %31 = bitcast %struct._GtkObject* %30 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_dialog_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpDialog*
  %call29 = call i32 @gimp_dialog_run(%struct._GimpDialog* %35)
  %cmp = icmp eq i32 %call29, -5
  %conv30 = zext i1 %cmp to i32
  store i32 %conv30, i32* %run, align 4
  %36 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_size_entry_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpSizeEntry*
  %call33 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %39, i32 0)
  %conv34 = fptosi double %call33 to i32
  store i32 %conv34, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_size_entry_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpSizeEntry*
  %call37 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %42, i32 1)
  %conv38 = fptosi double %call37 to i32
  store i32 %conv38, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %43)
  %44 = load i32, i32* %run, align 4
  ret i32 %44
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal i32 @smooth_palette(%struct._GimpDrawable* %drawable, i32* %layer_id) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %layer_id.addr = alloca i32*, align 8
  %new_image_id = alloca i32, align 4
  %new_layer = alloca %struct._GimpDrawable*, align 8
  %psize = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pal = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %sel_x1 = alloca i32, align 4
  %sel_x2 = alloca i32, align 4
  %sel_y1 = alloca i32, align 4
  %sel_y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pr = alloca %struct._GimpPixelRgn, align 8
  %gr = alloca %struct._GRand*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pal_best = alloca i8*, align 8
  %original = alloca i8*, align 8
  %len_best = alloca double, align 8
  %try = alloca i32, align 4
  %len = alloca double, align 8
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %as_is = alloca i64, align 8
  %swapd = alloca i64, align 8
  %as_is142 = alloca i64, align 8
  %swapd143 = alloca i64, align 8
  %i0144 = alloca i32, align 4
  %i1148 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %layer_id, i32** %layer_id.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp1, align 4
  store i32 %1, i32* %bpp, align 4
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %call2 = call i32 @gimp_image_new(i32 %2, i32 %3, i32 0)
  store i32 %call2, i32* %new_image_id, align 4
  %4 = load i32, i32* %new_image_id, align 4
  %call3 = call i32 @gimp_image_undo_disable(i32 %4)
  %5 = load i32, i32* %new_image_id, align 4
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)) #4
  %6 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call5 = call i32 @gimp_drawable_type(i32 %9)
  %call6 = call i32 @gimp_layer_new(i32 %5, i8* %call4, i32 %6, i32 %7, i32 %call5, double 1.000000e+02, i32 0)
  %10 = load i32*, i32** %layer_id.addr, align 8
  store i32 %call6, i32* %10, align 4
  %11 = load i32, i32* %new_image_id, align 4
  %12 = load i32*, i32** %layer_id.addr, align 8
  %13 = load i32, i32* %12, align 4
  %call7 = call i32 @gimp_image_insert_layer(i32 %11, i32 %13, i32 -1, i32 0)
  %14 = load i32*, i32** %layer_id.addr, align 8
  %15 = load i32, i32* %14, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %15)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %new_layer, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  store i32 %16, i32* %psize, align 4
  %17 = load i32, i32* %psize, align 4
  %18 = load i32, i32* %bpp, align 4
  %mul = mul i32 %17, %18
  %conv = zext i32 %mul to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call9, i8** %pal, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_mask_bounds(i32 %20, i32* %sel_x1, i32* %sel_y1, i32* %sel_x2, i32* %sel_y2)
  %21 = load i32, i32* %sel_x2, align 4
  %22 = load i32, i32* %sel_x1, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* %width, align 4
  %23 = load i32, i32* %sel_y2, align 4
  %24 = load i32, i32* %sel_y1, align 4
  %sub12 = sub nsw i32 %23, %24
  store i32 %sub12, i32* %height, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load i32, i32* %sel_x1, align 4
  %27 = load i32, i32* %sel_y1, align 4
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pr, %struct._GimpDrawable* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %psize, align 4
  %cmp = icmp slt i32 %30, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %sel_x1, align 4
  %33 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %34 = load i32, i32* %width, align 4
  %call14 = call i32 @g_rand_int_range(%struct._GRand* %33, i32 0, i32 %34)
  %add = add nsw i32 %32, %call14
  store i32 %add, i32* %x, align 4
  %35 = load i32, i32* %sel_y1, align 4
  %36 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %37 = load i32, i32* %height, align 4
  %call15 = call i32 @g_rand_int_range(%struct._GRand* %36, i32 0, i32 %37)
  %add16 = add nsw i32 %35, %call15
  store i32 %add16, i32* %y, align 4
  %38 = load i8*, i8** %pal, align 8
  %39 = load i32, i32* %bpp, align 4
  %40 = load i32, i32* %i, align 4
  %mul17 = mul i32 %39, %40
  %idx.ext = zext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %pr, i8* %add.ptr, i32 %41, i32 %42)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %len_best, align 8
  %44 = load i8*, i8** %pal, align 8
  %45 = load i32, i32* %bpp, align 4
  %46 = load i32, i32* %psize, align 4
  %mul18 = mul i32 %45, %46
  %call19 = call noalias i8* @g_memdup(i8* %44, i32 %mul18)
  store i8* %call19, i8** %pal_best, align 8
  %47 = load i8*, i8** %pal, align 8
  %48 = load i32, i32* %bpp, align 4
  %49 = load i32, i32* %psize, align 4
  %mul20 = mul i32 %48, %49
  %call21 = call noalias i8* @g_memdup(i8* %47, i32 %mul20)
  store i8* %call21, i8** %original, align 8
  store i32 0, i32* %try, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.131, %for.end
  %50 = load i32, i32* %try, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %cmp23 = icmp slt i32 %50, %51
  br i1 %cmp23, label %for.body.25, label %for.end.133

for.body.25:                                      ; preds = %for.cond.22
  %52 = load i32, i32* %try, align 4
  %rem = srem i32 %52, 5
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.25
  %53 = load i32, i32* %try, align 4
  %conv26 = sitofp i32 %53 to double
  %54 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %conv27 = sitofp i32 %54 to double
  %div = fdiv double %conv26, %conv27
  %call28 = call i32 @gimp_progress_update(double %div)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.25
  %55 = load i8*, i8** %pal, align 8
  %56 = load i8*, i8** %original, align 8
  %57 = load i32, i32* %bpp, align 4
  %58 = load i32, i32* %psize, align 4
  %mul29 = mul i32 %57, %58
  %conv30 = zext i32 %mul29 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 %conv30, i32 1, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.36, %if.end
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %psize, align 4
  %cmp32 = icmp slt i32 %59, %60
  br i1 %cmp32, label %for.body.34, label %for.end.38

for.body.34:                                      ; preds = %for.cond.31
  %61 = load i8*, i8** %pal, align 8
  %62 = load i32, i32* %bpp, align 4
  %63 = load i32, i32* %i, align 4
  %64 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %65 = load i32, i32* %psize, align 4
  %call35 = call i32 @g_rand_int_range(%struct._GRand* %64, i32 0, i32 %65)
  call void @pix_swap(i8* %61, i32 %62, i32 %63, i32 %call35)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.34
  %66 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %66, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.31

for.end.38:                                       ; preds = %for.cond.31
  store double 0.000000e+00, double* %len, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.47, %for.end.38
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %psize, align 4
  %cmp40 = icmp slt i32 %67, %68
  br i1 %cmp40, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.39
  %69 = load i8*, i8** %pal, align 8
  %70 = load i32, i32* %bpp, align 4
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %i, align 4
  %sub43 = sub nsw i32 %72, 1
  %call44 = call i64 @pix_diff(i8* %69, i32 %70, i32 %71, i32 %sub43)
  %conv45 = sitofp i64 %call44 to double
  %73 = load double, double* %len, align 8
  %add46 = fadd double %73, %conv45
  store double %add46, double* %len, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.42
  %74 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %74, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.39

for.end.49:                                       ; preds = %for.cond.39
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.120, %for.end.49
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3), align 4
  %cmp51 = icmp slt i32 %75, %76
  br i1 %cmp51, label %for.body.53, label %for.end.122

for.body.53:                                      ; preds = %for.cond.50
  %77 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %78 = load i32, i32* %psize, align 4
  %sub54 = sub nsw i32 %78, 2
  %call55 = call i32 @g_rand_int_range(%struct._GRand* %77, i32 0, i32 %sub54)
  %add56 = add nsw i32 1, %call55
  store i32 %add56, i32* %i0, align 4
  %79 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %80 = load i32, i32* %psize, align 4
  %sub57 = sub nsw i32 %80, 2
  %call58 = call i32 @g_rand_int_range(%struct._GRand* %79, i32 0, i32 %sub57)
  %add59 = add nsw i32 1, %call58
  store i32 %add59, i32* %i1, align 4
  %81 = load i32, i32* %i0, align 4
  %82 = load i32, i32* %i1, align 4
  %sub60 = sub nsw i32 %81, %82
  %cmp61 = icmp eq i32 1, %sub60
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.body.53
  %83 = load i8*, i8** %pal, align 8
  %84 = load i32, i32* %bpp, align 4
  %85 = load i32, i32* %i1, align 4
  %sub64 = sub nsw i32 %85, 1
  %86 = load i32, i32* %i1, align 4
  %call65 = call i64 @pix_diff(i8* %83, i32 %84, i32 %sub64, i32 %86)
  %87 = load i8*, i8** %pal, align 8
  %88 = load i32, i32* %bpp, align 4
  %89 = load i32, i32* %i0, align 4
  %90 = load i32, i32* %i0, align 4
  %add66 = add nsw i32 %90, 1
  %call67 = call i64 @pix_diff(i8* %87, i32 %88, i32 %89, i32 %add66)
  %add68 = add nsw i64 %call65, %call67
  store i64 %add68, i64* %as_is, align 8
  %91 = load i8*, i8** %pal, align 8
  %92 = load i32, i32* %bpp, align 4
  %93 = load i32, i32* %i1, align 4
  %sub69 = sub nsw i32 %93, 1
  %94 = load i32, i32* %i0, align 4
  %call70 = call i64 @pix_diff(i8* %91, i32 %92, i32 %sub69, i32 %94)
  %95 = load i8*, i8** %pal, align 8
  %96 = load i32, i32* %bpp, align 4
  %97 = load i32, i32* %i1, align 4
  %98 = load i32, i32* %i0, align 4
  %add71 = add nsw i32 %98, 1
  %call72 = call i64 @pix_diff(i8* %95, i32 %96, i32 %97, i32 %add71)
  %add73 = add nsw i64 %call70, %call72
  store i64 %add73, i64* %swapd, align 8
  br label %if.end.112

if.else:                                          ; preds = %for.body.53
  %99 = load i32, i32* %i1, align 4
  %100 = load i32, i32* %i0, align 4
  %sub74 = sub nsw i32 %99, %100
  %cmp75 = icmp eq i32 1, %sub74
  br i1 %cmp75, label %if.then.77, label %if.else.88

if.then.77:                                       ; preds = %if.else
  %101 = load i8*, i8** %pal, align 8
  %102 = load i32, i32* %bpp, align 4
  %103 = load i32, i32* %i0, align 4
  %sub78 = sub nsw i32 %103, 1
  %104 = load i32, i32* %i0, align 4
  %call79 = call i64 @pix_diff(i8* %101, i32 %102, i32 %sub78, i32 %104)
  %105 = load i8*, i8** %pal, align 8
  %106 = load i32, i32* %bpp, align 4
  %107 = load i32, i32* %i1, align 4
  %108 = load i32, i32* %i1, align 4
  %add80 = add nsw i32 %108, 1
  %call81 = call i64 @pix_diff(i8* %105, i32 %106, i32 %107, i32 %add80)
  %add82 = add nsw i64 %call79, %call81
  store i64 %add82, i64* %as_is, align 8
  %109 = load i8*, i8** %pal, align 8
  %110 = load i32, i32* %bpp, align 4
  %111 = load i32, i32* %i0, align 4
  %sub83 = sub nsw i32 %111, 1
  %112 = load i32, i32* %i1, align 4
  %call84 = call i64 @pix_diff(i8* %109, i32 %110, i32 %sub83, i32 %112)
  %113 = load i8*, i8** %pal, align 8
  %114 = load i32, i32* %bpp, align 4
  %115 = load i32, i32* %i0, align 4
  %116 = load i32, i32* %i1, align 4
  %add85 = add nsw i32 %116, 1
  %call86 = call i64 @pix_diff(i8* %113, i32 %114, i32 %115, i32 %add85)
  %add87 = add nsw i64 %call84, %call86
  store i64 %add87, i64* %swapd, align 8
  br label %if.end.111

if.else.88:                                       ; preds = %if.else
  %117 = load i8*, i8** %pal, align 8
  %118 = load i32, i32* %bpp, align 4
  %119 = load i32, i32* %i0, align 4
  %120 = load i32, i32* %i0, align 4
  %add89 = add nsw i32 %120, 1
  %call90 = call i64 @pix_diff(i8* %117, i32 %118, i32 %119, i32 %add89)
  %121 = load i8*, i8** %pal, align 8
  %122 = load i32, i32* %bpp, align 4
  %123 = load i32, i32* %i0, align 4
  %124 = load i32, i32* %i0, align 4
  %sub91 = sub nsw i32 %124, 1
  %call92 = call i64 @pix_diff(i8* %121, i32 %122, i32 %123, i32 %sub91)
  %add93 = add nsw i64 %call90, %call92
  %125 = load i8*, i8** %pal, align 8
  %126 = load i32, i32* %bpp, align 4
  %127 = load i32, i32* %i1, align 4
  %128 = load i32, i32* %i1, align 4
  %add94 = add nsw i32 %128, 1
  %call95 = call i64 @pix_diff(i8* %125, i32 %126, i32 %127, i32 %add94)
  %add96 = add nsw i64 %add93, %call95
  %129 = load i8*, i8** %pal, align 8
  %130 = load i32, i32* %bpp, align 4
  %131 = load i32, i32* %i1, align 4
  %132 = load i32, i32* %i1, align 4
  %sub97 = sub nsw i32 %132, 1
  %call98 = call i64 @pix_diff(i8* %129, i32 %130, i32 %131, i32 %sub97)
  %add99 = add nsw i64 %add96, %call98
  store i64 %add99, i64* %as_is, align 8
  %133 = load i8*, i8** %pal, align 8
  %134 = load i32, i32* %bpp, align 4
  %135 = load i32, i32* %i1, align 4
  %136 = load i32, i32* %i0, align 4
  %add100 = add nsw i32 %136, 1
  %call101 = call i64 @pix_diff(i8* %133, i32 %134, i32 %135, i32 %add100)
  %137 = load i8*, i8** %pal, align 8
  %138 = load i32, i32* %bpp, align 4
  %139 = load i32, i32* %i1, align 4
  %140 = load i32, i32* %i0, align 4
  %sub102 = sub nsw i32 %140, 1
  %call103 = call i64 @pix_diff(i8* %137, i32 %138, i32 %139, i32 %sub102)
  %add104 = add nsw i64 %call101, %call103
  %141 = load i8*, i8** %pal, align 8
  %142 = load i32, i32* %bpp, align 4
  %143 = load i32, i32* %i0, align 4
  %144 = load i32, i32* %i1, align 4
  %add105 = add nsw i32 %144, 1
  %call106 = call i64 @pix_diff(i8* %141, i32 %142, i32 %143, i32 %add105)
  %add107 = add nsw i64 %add104, %call106
  %145 = load i8*, i8** %pal, align 8
  %146 = load i32, i32* %bpp, align 4
  %147 = load i32, i32* %i0, align 4
  %148 = load i32, i32* %i1, align 4
  %sub108 = sub nsw i32 %148, 1
  %call109 = call i64 @pix_diff(i8* %145, i32 %146, i32 %147, i32 %sub108)
  %add110 = add nsw i64 %add107, %call109
  store i64 %add110, i64* %swapd, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.88, %if.then.77
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.63
  %149 = load i64, i64* %swapd, align 8
  %150 = load i64, i64* %as_is, align 8
  %cmp113 = icmp slt i64 %149, %150
  br i1 %cmp113, label %if.then.115, label %if.end.119

if.then.115:                                      ; preds = %if.end.112
  %151 = load i8*, i8** %pal, align 8
  %152 = load i32, i32* %bpp, align 4
  %153 = load i32, i32* %i0, align 4
  %154 = load i32, i32* %i1, align 4
  call void @pix_swap(i8* %151, i32 %152, i32 %153, i32 %154)
  %155 = load i64, i64* %swapd, align 8
  %156 = load i64, i64* %as_is, align 8
  %sub116 = sub nsw i64 %155, %156
  %conv117 = sitofp i64 %sub116 to double
  %157 = load double, double* %len, align 8
  %add118 = fadd double %157, %conv117
  store double %add118, double* %len, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.115, %if.end.112
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %158 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %158, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.50

for.end.122:                                      ; preds = %for.cond.50
  %159 = load i32, i32* %try, align 4
  %cmp123 = icmp eq i32 0, %159
  br i1 %cmp123, label %if.then.127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.122
  %160 = load double, double* %len, align 8
  %161 = load double, double* %len_best, align 8
  %cmp125 = fcmp olt double %160, %161
  br i1 %cmp125, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %lor.lhs.false, %for.end.122
  %162 = load i8*, i8** %pal_best, align 8
  %163 = load i8*, i8** %pal, align 8
  %164 = load i32, i32* %bpp, align 4
  %165 = load i32, i32* %psize, align 4
  %mul128 = mul i32 %164, %165
  %conv129 = zext i32 %mul128 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 %conv129, i32 1, i1 false)
  %166 = load double, double* %len, align 8
  store double %166, double* %len_best, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %lor.lhs.false
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %167 = load i32, i32* %try, align 4
  %inc132 = add nsw i32 %167, 1
  store i32 %inc132, i32* %try, align 4
  br label %for.cond.22

for.end.133:                                      ; preds = %for.cond.22
  %call134 = call i32 @gimp_progress_update(double 1.000000e+00)
  %168 = load i8*, i8** %pal, align 8
  %169 = load i8*, i8** %pal_best, align 8
  %170 = load i32, i32* %bpp, align 4
  %171 = load i32, i32* %psize, align 4
  %mul135 = mul i32 %170, %171
  %conv136 = zext i32 %mul135 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* %169, i64 %conv136, i32 1, i1 false)
  %172 = load i8*, i8** %pal_best, align 8
  call void @g_free(i8* %172)
  %173 = load i8*, i8** %original, align 8
  call void @g_free(i8* %173)
  store i32 1, i32* %i, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.167, %for.end.133
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %psize, align 4
  %mul138 = mul nsw i32 4, %175
  %cmp139 = icmp slt i32 %174, %mul138
  br i1 %cmp139, label %for.body.141, label %for.end.169

for.body.141:                                     ; preds = %for.cond.137
  %176 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %177 = load i32, i32* %psize, align 4
  %sub145 = sub nsw i32 %177, 2
  %call146 = call i32 @g_rand_int_range(%struct._GRand* %176, i32 0, i32 %sub145)
  %add147 = add nsw i32 1, %call146
  store i32 %add147, i32* %i0144, align 4
  %178 = load i32, i32* %i0144, align 4
  %add149 = add nsw i32 %178, 1
  store i32 %add149, i32* %i1148, align 4
  %179 = load i8*, i8** %pal, align 8
  %180 = load i32, i32* %bpp, align 4
  %181 = load i32, i32* %i0144, align 4
  %sub150 = sub nsw i32 %181, 1
  %182 = load i32, i32* %i0144, align 4
  %call151 = call i64 @pix_diff(i8* %179, i32 %180, i32 %sub150, i32 %182)
  %183 = load i8*, i8** %pal, align 8
  %184 = load i32, i32* %bpp, align 4
  %185 = load i32, i32* %i1148, align 4
  %186 = load i32, i32* %i1148, align 4
  %add152 = add nsw i32 %186, 1
  %call153 = call i64 @pix_diff(i8* %183, i32 %184, i32 %185, i32 %add152)
  %add154 = add nsw i64 %call151, %call153
  store i64 %add154, i64* %as_is142, align 8
  %187 = load i8*, i8** %pal, align 8
  %188 = load i32, i32* %bpp, align 4
  %189 = load i32, i32* %i0144, align 4
  %sub155 = sub nsw i32 %189, 1
  %190 = load i32, i32* %i1148, align 4
  %call156 = call i64 @pix_diff(i8* %187, i32 %188, i32 %sub155, i32 %190)
  %191 = load i8*, i8** %pal, align 8
  %192 = load i32, i32* %bpp, align 4
  %193 = load i32, i32* %i0144, align 4
  %194 = load i32, i32* %i1148, align 4
  %add157 = add nsw i32 %194, 1
  %call158 = call i64 @pix_diff(i8* %191, i32 %192, i32 %193, i32 %add157)
  %add159 = add nsw i64 %call156, %call158
  store i64 %add159, i64* %swapd143, align 8
  %195 = load i64, i64* %swapd143, align 8
  %196 = load i64, i64* %as_is142, align 8
  %cmp160 = icmp slt i64 %195, %196
  br i1 %cmp160, label %if.then.162, label %if.end.166

if.then.162:                                      ; preds = %for.body.141
  %197 = load i8*, i8** %pal, align 8
  %198 = load i32, i32* %bpp, align 4
  %199 = load i32, i32* %i0144, align 4
  %200 = load i32, i32* %i1148, align 4
  call void @pix_swap(i8* %197, i32 %198, i32 %199, i32 %200)
  %201 = load i64, i64* %swapd143, align 8
  %202 = load i64, i64* %as_is142, align 8
  %sub163 = sub nsw i64 %201, %202
  %conv164 = sitofp i64 %sub163 to double
  %203 = load double, double* %len_best, align 8
  %add165 = fadd double %203, %conv164
  store double %add165, double* %len_best, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.162, %for.body.141
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %204 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %204, 1
  store i32 %inc168, i32* %i, align 4
  br label %for.cond.137

for.end.169:                                      ; preds = %for.cond.137
  %205 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  %206 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pr, %struct._GimpDrawable* %205, i32 0, i32 0, i32 %206, i32 %207, i32 1, i32 0)
  store i32 0, i32* %j, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.184, %for.end.169
  %208 = load i32, i32* %j, align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %cmp171 = icmp slt i32 %208, %209
  br i1 %cmp171, label %for.body.173, label %for.end.186

for.body.173:                                     ; preds = %for.cond.170
  store i32 0, i32* %i, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.181, %for.body.173
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %cmp175 = icmp slt i32 %210, %211
  br i1 %cmp175, label %for.body.177, label %for.end.183

for.body.177:                                     ; preds = %for.cond.174
  %212 = load i8*, i8** %pal, align 8
  %213 = load i32, i32* %bpp, align 4
  %214 = load i32, i32* %i, align 4
  %mul178 = mul i32 %213, %214
  %idx.ext179 = zext i32 %mul178 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %212, i64 %idx.ext179
  %215 = load i32, i32* %i, align 4
  %216 = load i32, i32* %j, align 4
  call void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* %pr, i8* %add.ptr180, i32 %215, i32 %216)
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.177
  %217 = load i32, i32* %i, align 4
  %inc182 = add nsw i32 %217, 1
  store i32 %inc182, i32* %i, align 4
  br label %for.cond.174

for.end.183:                                      ; preds = %for.cond.174
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %218 = load i32, i32* %j, align 4
  %inc185 = add nsw i32 %218, 1
  store i32 %inc185, i32* %j, align 4
  br label %for.cond.170

for.end.186:                                      ; preds = %for.cond.170
  %219 = load i8*, i8** %pal, align 8
  call void @g_free(i8* %219)
  %220 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %220)
  %221 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %221)
  %222 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  %drawable_id187 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %222, i32 0, i32 0
  %223 = load i32, i32* %drawable_id187, align 4
  %224 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %225 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %call188 = call i32 @gimp_drawable_update(i32 %223, i32 0, i32 0, i32 %224, i32 %225)
  %226 = load i32, i32* %new_image_id, align 4
  %call189 = call i32 @gimp_image_undo_enable(i32 %226)
  %227 = load i32, i32* %new_image_id, align 4
  ret i32 %227
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_display_new(i32) #1

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

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_get_unit(i32) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GRand* @g_rand_new() #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @pix_swap(i8* %pal, i32 %bpp, i32 %i, i32 %j) #0 {
entry:
  %pal.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i8, align 1
  store i8* %pal, i8** %pal.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j.addr, align 4
  %3 = load i32, i32* %bpp.addr, align 4
  %mul = mul i32 %2, %3
  %4 = load i32, i32* %k, align 4
  %add = add i32 %mul, %4
  %idxprom = zext i32 %add to i64
  %5 = load i8*, i8** %pal.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %t, align 1
  %7 = load i32, i32* %i.addr, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %mul1 = mul i32 %7, %8
  %9 = load i32, i32* %k, align 4
  %add2 = add i32 %mul1, %9
  %idxprom3 = zext i32 %add2 to i64
  %10 = load i8*, i8** %pal.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  %11 = load i8, i8* %arrayidx4, align 1
  %12 = load i32, i32* %j.addr, align 4
  %13 = load i32, i32* %bpp.addr, align 4
  %mul5 = mul i32 %12, %13
  %14 = load i32, i32* %k, align 4
  %add6 = add i32 %mul5, %14
  %idxprom7 = zext i32 %add6 to i64
  %15 = load i8*, i8** %pal.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %idxprom7
  store i8 %11, i8* %arrayidx8, align 1
  %16 = load i8, i8* %t, align 1
  %17 = load i32, i32* %i.addr, align 4
  %18 = load i32, i32* %bpp.addr, align 4
  %mul9 = mul i32 %17, %18
  %19 = load i32, i32* %k, align 4
  %add10 = add i32 %mul9, %19
  %idxprom11 = zext i32 %add10 to i64
  %20 = load i8*, i8** %pal.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom11
  store i8 %16, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @pix_diff(i8* %pal, i32 %bpp, i32 %i, i32 %j) #0 {
entry:
  %pal.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %r = alloca i64, align 8
  %k = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  store i8* %pal, i8** %pal.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i64 0, i64* %r, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j.addr, align 4
  %3 = load i32, i32* %bpp.addr, align 4
  %mul = mul i32 %2, %3
  %4 = load i32, i32* %k, align 4
  %add = add i32 %mul, %4
  %idxprom = zext i32 %add to i64
  %5 = load i8*, i8** %pal.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %p1, align 4
  %7 = load i32, i32* %i.addr, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %mul1 = mul i32 %7, %8
  %9 = load i32, i32* %k, align 4
  %add2 = add i32 %mul1, %9
  %idxprom3 = zext i32 %add2 to i64
  %10 = load i8*, i8** %pal.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  %11 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %11 to i32
  store i32 %conv5, i32* %p2, align 4
  %12 = load i32, i32* %p1, align 4
  %13 = load i32, i32* %p2, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* %p1, align 4
  %15 = load i32, i32* %p2, align 4
  %sub6 = sub nsw i32 %14, %15
  %mul7 = mul nsw i32 %sub, %sub6
  %conv8 = sext i32 %mul7 to i64
  %16 = load i64, i64* %r, align 8
  %add9 = add nsw i64 %16, %conv8
  store i64 %add9, i64* %r, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %r, align 8
  ret i64 %18
}

declare void @g_free(i8*) #1

declare void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_undo_enable(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
