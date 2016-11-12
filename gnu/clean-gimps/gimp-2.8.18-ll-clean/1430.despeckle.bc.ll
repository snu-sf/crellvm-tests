; ModuleID = './plug-ins/common/despeckle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
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
%struct.DespeckleHistogram = type { [256 x i32], [256 x %struct.PixelsList], i32, i32, i32, i32 }
%struct.PixelsList = type { [3721 x i8*], i32, i32 }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Filter box radius (default = 3)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [87 x i8] c"Filter type { MEDIAN (0), ADAPTIVE (1), RECURSIVE-MEDIAN (2), RECURSIVE-ADAPTIVE (3) }\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Black level (-1 to 255)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"White level (0 to 256)\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"plug-in-despeckle\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Remove speckle noise from the image\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"This plug-in selectively performs a median or adaptive box filter on an image.\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Michael Sweet <mike@easysw.com>\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Copyright 1997-1998 by Michael Sweet\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"May 2010\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Des_peckle...\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@drawable = internal global %struct._GimpDrawable* null, align 8
@despeckle_vals = internal global [4 x i32] [i32 3, i32 1, i32 7, i32 248], align 16
@.str.25 = private unnamed_addr constant [10 x i8] c"despeckle\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Despeckle\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"gimp-despeckle\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.30 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Median\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"_Adaptive\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"R_ecursive\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"_Black level:\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"_White level:\00", align 1
@histogram = internal global %struct.DespeckleHistogram zeroinitializer, align 8
@hist0 = internal global i32 0, align 4
@histrest = internal global i32 0, align 4
@hist255 = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
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
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** @drawable, align 8
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast ([4 x i32]* @despeckle_vals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call8 = call i32 @gimp_drawable_is_rgb(i32 %9)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_drawable_is_gray(i32 %11)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %call12 = call i32 @despeckle_dialog()
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp slt i32 %12, 4
  br i1 %cmp, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %sw.bb.16
  %13 = load i32, i32* %nparams.addr, align 4
  %cmp18 = icmp sgt i32 %13, 9
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false.17, %sw.bb.16
  store i32 1, i32* %status, align 4
  br label %if.end.62

if.else:                                          ; preds = %lor.lhs.false.17
  %14 = load i32, i32* %nparams.addr, align 4
  %cmp20 = icmp eq i32 %14, 4
  br i1 %cmp20, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.else
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %16 = load i32, i32* %d_int3224, align 4
  store i32 %16, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 0), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  store i32 7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  store i32 248, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  br label %if.end.61

if.else.25:                                       ; preds = %if.else
  %17 = load i32, i32* %nparams.addr, align 4
  %cmp26 = icmp eq i32 %17, 5
  br i1 %cmp26, label %if.then.27, label %if.else.34

if.then.27:                                       ; preds = %if.else.25
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_int3230 = bitcast %union._GimpParamData* %data29 to i32*
  %19 = load i32, i32* %d_int3230, align 4
  store i32 %19, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 0), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int3233 = bitcast %union._GimpParamData* %data32 to i32*
  %21 = load i32, i32* %d_int3233, align 4
  store i32 %21, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  store i32 7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  store i32 248, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  br label %if.end.60

if.else.34:                                       ; preds = %if.else.25
  %22 = load i32, i32* %nparams.addr, align 4
  %cmp35 = icmp eq i32 %22, 6
  br i1 %cmp35, label %if.then.36, label %if.else.46

if.then.36:                                       ; preds = %if.else.34
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 3
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int3239 = bitcast %union._GimpParamData* %data38 to i32*
  %24 = load i32, i32* %d_int3239, align 4
  store i32 %24, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 0), align 4
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 4
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_int3242 = bitcast %union._GimpParamData* %data41 to i32*
  %26 = load i32, i32* %d_int3242, align 4
  store i32 %26, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 5
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_int3245 = bitcast %union._GimpParamData* %data44 to i32*
  %28 = load i32, i32* %d_int3245, align 4
  store i32 %28, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  store i32 248, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  br label %if.end.59

if.else.46:                                       ; preds = %if.else.34
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 3
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_int3249 = bitcast %union._GimpParamData* %data48 to i32*
  %30 = load i32, i32* %d_int3249, align 4
  store i32 %30, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 0), align 4
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 4
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_int3252 = bitcast %union._GimpParamData* %data51 to i32*
  %32 = load i32, i32* %d_int3252, align 4
  store i32 %32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 5
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_int3255 = bitcast %union._GimpParamData* %data54 to i32*
  %34 = load i32, i32* %d_int3255, align 4
  store i32 %34, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 6
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_int3258 = bitcast %union._GimpParamData* %data57 to i32*
  %36 = load i32, i32* %d_int3258, align 4
  store i32 %36, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.46, %if.then.36
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.27
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.21
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.19
  br label %sw.epilog

sw.bb.63:                                         ; preds = %do.end
  br label %do.body.64

do.body.64:                                       ; preds = %sw.bb.63
  %call65 = call i8* @gimp_locale_directory() #6
  %call66 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %call65) #4
  %call67 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #4
  %call68 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %do.end.69

do.end.69:                                        ; preds = %do.body.64
  %call70 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast ([4 x i32]* @despeckle_vals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.69, %if.end.62, %if.end.15
  %37 = load i32, i32* %status, align 4
  %cmp71 = icmp eq i32 %37, 3
  br i1 %cmp71, label %if.then.72, label %if.end.91

if.then.72:                                       ; preds = %sw.epilog
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id73 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 0
  %39 = load i32, i32* %drawable_id73, align 4
  %call74 = call i32 @gimp_drawable_is_rgb(i32 %39)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.80, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.then.72
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id77 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 0
  %41 = load i32, i32* %drawable_id77, align 4
  %call78 = call i32 @gimp_drawable_is_gray(i32 %41)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.89

if.then.80:                                       ; preds = %lor.lhs.false.76, %if.then.72
  call void @despeckle()
  %42 = load i32, i32* %run_mode, align 4
  %cmp81 = icmp ne i32 %42, 1
  br i1 %cmp81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.80
  %call83 = call i32 @gimp_displays_flush()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.then.80
  %43 = load i32, i32* %run_mode, align 4
  %cmp85 = icmp eq i32 %43, 0
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.84
  %call87 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast ([4 x i32]* @despeckle_vals to i8*), i32 16)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.84
  br label %if.end.90

if.else.89:                                       ; preds = %lor.lhs.false.76
  store i32 0, i32* %status, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.end.88
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %sw.epilog
  %44 = load i32, i32* %status, align 4
  store i32 %44, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %45)
  br label %return

return:                                           ; preds = %if.end.91, %if.then.14
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

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @despeckle_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 -5, i8* null)
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
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** @preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @preview_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)) #4
  %call19 = call %struct._GtkWidget* @gimp_frame_new(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call22 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %vbox, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #4
  %call26 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %button, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_toggle_button_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkToggleButton*
  %41 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %and = and i32 %41, 1
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %40, i32 %and)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_adaptive_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #4
  %call33 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call34)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call36)
  %51 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %52 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %and38 = and i32 %52, 2
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %51, i32 %and38)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_recursive_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call40 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %table, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call41)
  %58 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %58, i32 6)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call43)
  %61 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %61, i32 6)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call45)
  %64 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call47)
  %69 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)) #4
  %70 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 0), align 4
  %conv = sitofp i32 %70 to double
  %call50 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %69, i32 0, i32 0, i8* %call49, i32 100, i32 3, double %conv, double 1.000000e+00, double 3.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call50, %struct._GtkObject** %adj, align 8
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast ([4 x i32]* @despeckle_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %74 = bitcast %struct._GtkObject* %73 to i8*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call53)
  %79 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)) #4
  %80 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  %conv56 = sitofp i32 %80 to double
  %call57 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %79, i32 0, i32 1, i8* %call55, i32 100, i32 3, double %conv56, double -1.000000e+00, double 2.550000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call57, %struct._GtkObject** %adj, align 8
  %81 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %82 = bitcast %struct._GtkObject* %81 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %84 = bitcast %struct._GtkObject* %83 to i8*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %86 = bitcast %struct._GtkWidget* %85 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 2)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call60)
  %89 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0)) #4
  %90 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  %conv63 = sitofp i32 %90 to double
  %call64 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %89, i32 0, i32 2, i8* %call62, i32 100, i32 3, double %conv63, double 0.000000e+00, double 2.560000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call64, %struct._GtkObject** %adj, align 8
  %91 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %92 = bitcast %struct._GtkObject* %91 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %93 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %94 = bitcast %struct._GtkObject* %93 to i8*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 2)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_dialog_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call67)
  %100 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpDialog*
  %call69 = call i32 @gimp_dialog_run(%struct._GimpDialog* %100)
  %cmp = icmp eq i32 %call69, -5
  %conv70 = zext i1 %cmp to i32
  store i32 %conv70, i32* %run, align 4
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %101)
  %102 = load i32, i32* %run, align 4
  ret i32 %102
}

; Function Attrs: nounwind uwtable
define internal void @despeckle() #0 {
entry:
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dst_rgn = alloca %struct._GimpPixelRgn, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %img_bpp = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_bpp(i32 %1)
  store i32 %call, i32* %img_bpp, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_mask_intersect(i32 %3, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 0, i32 0)
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_rgn, %struct._GimpDrawable* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 1, i32 1)
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %img_bpp, align 4
  %mul3 = mul nsw i32 %mul, %16
  %conv = sext i32 %mul3 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %src, align 8
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %mul5 = mul nsw i32 %17, %18
  %19 = load i32, i32* %img_bpp, align 4
  %mul6 = mul nsw i32 %mul5, %19
  %conv7 = sext i32 %mul6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 1)
  store i8* %call8, i8** %dst, align 8
  %20 = load i8*, i8** %src, align 8
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %25 = load i8*, i8** %src, align 8
  %26 = load i8*, i8** %dst, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %29 = load i32, i32* %img_bpp, align 4
  %30 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 0), align 4
  call void @despeckle_median(i8* %25, i8* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 0)
  %31 = load i8*, i8** %dst, align 8
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_rgn, i8* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %36)
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 0
  %38 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_drawable_merge_shadow(i32 %38, i32 1)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 0
  %40 = load i32, i32* %drawable_id11, align 4
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %y, align 4
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %height, align 4
  %call12 = call i32 @gimp_drawable_update(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %45 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %45)
  %46 = load i8*, i8** %src, align 8
  call void @g_free(i8* %46)
  br label %return

return:                                           ; preds = %if.end, %if.then
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
define internal void @preview_update(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dst = alloca i8*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  %src = alloca i8*, align 8
  %img_bpp = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_bpp(i32 %4)
  store i32 %call2, i32* %img_bpp, align 4
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %width3 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %5, i32 0, i32 14
  %6 = load i32, i32* %width3, align 4
  store i32 %6, i32* %width, align 4
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %height4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 15
  %8 = load i32, i32* %height4, align 4
  store i32 %8, i32* %height, align 4
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %9, i32* %x1, i32* %y1)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %11 = load i32, i32* %x1, align 4
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 0, i32 0)
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %15, %16
  %17 = load i32, i32* %img_bpp, align 4
  %mul5 = mul nsw i32 %mul, %17
  %conv = sext i32 %mul5 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call6, i8** %dst, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %mul7 = mul nsw i32 %18, %19
  %20 = load i32, i32* %img_bpp, align 4
  %mul8 = mul nsw i32 %mul7, %20
  %conv9 = sext i32 %mul8 to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv9, i64 1)
  store i8* %call10, i8** %src, align 8
  %21 = load i8*, i8** %src, align 8
  %22 = load i32, i32* %x1, align 4
  %23 = load i32, i32* %y1, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %26 = load i8*, i8** %src, align 8
  %27 = load i8*, i8** %dst, align 8
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  %30 = load i32, i32* %img_bpp, align 4
  %31 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 0), align 4
  call void @despeckle_median(i8* %26, i8* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 1)
  %32 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %33 = load i8*, i8** %dst, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %img_bpp, align 4
  %mul11 = mul nsw i32 %34, %35
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %32, i8* %33, i32 %mul11)
  %36 = load i8*, i8** %src, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %37)
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @dialog_adaptive_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %or = or i32 %3, 1
  store i32 %or, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %and = and i32 %4, -2
  store i32 %and, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_preview_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_recursive_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %or = or i32 %3, 2
  store i32 %or, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %and = and i32 %4, -3
  store i32 %and, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_preview_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %7)
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

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @despeckle_median(i8* %src, i8* %dst, i32 %width, i32 %height, i32 %bpp, i32 %radius, i32 %preview) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %radius.addr = alloca i32, align 4
  %preview.addr = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %adapt_radius = alloca i32, align 4
  %pos = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %xmin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %pixel = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %radius, i32* %radius.addr, align 4
  store i32 %preview, i32* %preview.addr, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.DespeckleHistogram* @histogram to i8*), i8 0, i64 7623696, i32 8, i1 false)
  store i32 0, i32* %progress, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %max_progress, align 4
  %2 = load i32, i32* %preview.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)) #4
  %call1 = call i32 @gimp_progress_init(i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %radius.addr, align 4
  store i32 %3, i32* %adapt_radius, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %if.end
  %4 = load i32, i32* %y, align 4
  %5 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %adapt_radius, align 4
  %sub = sub nsw i32 %6, %7
  %cmp2 = icmp sgt i32 0, %sub
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %adapt_radius, align 4
  %sub3 = sub nsw i32 %8, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub3, %cond.false ]
  store i32 %cond, i32* %ymin, align 4
  %10 = load i32, i32* %height.addr, align 4
  %sub4 = sub nsw i32 %10, 1
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %adapt_radius, align 4
  %add = add nsw i32 %11, %12
  %cmp5 = icmp slt i32 %sub4, %add
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %13 = load i32, i32* %height.addr, align 4
  %sub7 = sub nsw i32 %13, 1
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %adapt_radius, align 4
  %add9 = add nsw i32 %14, %15
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.6
  %cond11 = phi i32 [ %sub7, %cond.true.6 ], [ %add9, %cond.false.8 ]
  store i32 %cond11, i32* %ymax, align 4
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %adapt_radius, align 4
  %sub12 = sub nsw i32 %16, %17
  %cmp13 = icmp sgt i32 0, %sub12
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end.10
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.end.10
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %adapt_radius, align 4
  %sub16 = sub nsw i32 %18, %19
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.14
  %cond18 = phi i32 [ 0, %cond.true.14 ], [ %sub16, %cond.false.15 ]
  store i32 %cond18, i32* %xmin, align 4
  %20 = load i32, i32* %width.addr, align 4
  %sub19 = sub nsw i32 %20, 1
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %adapt_radius, align 4
  %add20 = add nsw i32 %21, %22
  %cmp21 = icmp slt i32 %sub19, %add20
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.17
  %23 = load i32, i32* %width.addr, align 4
  %sub23 = sub nsw i32 %23, 1
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end.17
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %adapt_radius, align 4
  %add25 = add nsw i32 %24, %25
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.22
  %cond27 = phi i32 [ %sub23, %cond.true.22 ], [ %add25, %cond.false.24 ]
  store i32 %cond27, i32* %xmax, align 4
  store i32 0, i32* @hist0, align 4
  store i32 0, i32* @histrest, align 4
  store i32 0, i32* @hist255, align 4
  call void @histogram_clean(%struct.DespeckleHistogram* @histogram)
  %26 = load i32, i32* %xmin, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 2), align 4
  %27 = load i32, i32* %ymin, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 3), align 4
  %28 = load i32, i32* %xmax, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 4), align 4
  %29 = load i32, i32* %ymax, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 5), align 4
  %30 = load i8*, i8** %src.addr, align 8
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %bpp.addr, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 2), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 3), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 4), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.DespeckleHistogram, %struct.DespeckleHistogram* @histogram, i32 0, i32 5), align 4
  call void @add_vals(%struct.DespeckleHistogram* @histogram, i8* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %x, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %cond.end.26
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %width.addr, align 4
  %cmp29 = icmp slt i32 %37, %38
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %39 = load i32, i32* %y, align 4
  %40 = load i32, i32* %adapt_radius, align 4
  %sub31 = sub nsw i32 %39, %40
  %cmp32 = icmp sgt i32 0, %sub31
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %for.body.30
  br label %cond.end.36

cond.false.34:                                    ; preds = %for.body.30
  %41 = load i32, i32* %y, align 4
  %42 = load i32, i32* %adapt_radius, align 4
  %sub35 = sub nsw i32 %41, %42
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.33
  %cond37 = phi i32 [ 0, %cond.true.33 ], [ %sub35, %cond.false.34 ]
  store i32 %cond37, i32* %ymin, align 4
  %43 = load i32, i32* %height.addr, align 4
  %sub38 = sub nsw i32 %43, 1
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %adapt_radius, align 4
  %add39 = add nsw i32 %44, %45
  %cmp40 = icmp slt i32 %sub38, %add39
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.end.36
  %46 = load i32, i32* %height.addr, align 4
  %sub42 = sub nsw i32 %46, 1
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.end.36
  %47 = load i32, i32* %y, align 4
  %48 = load i32, i32* %adapt_radius, align 4
  %add44 = add nsw i32 %47, %48
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.41
  %cond46 = phi i32 [ %sub42, %cond.true.41 ], [ %add44, %cond.false.43 ]
  store i32 %cond46, i32* %ymax, align 4
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %adapt_radius, align 4
  %sub47 = sub nsw i32 %49, %50
  %cmp48 = icmp sgt i32 0, %sub47
  br i1 %cmp48, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end.45
  br label %cond.end.52

cond.false.50:                                    ; preds = %cond.end.45
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %adapt_radius, align 4
  %sub51 = sub nsw i32 %51, %52
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.49
  %cond53 = phi i32 [ 0, %cond.true.49 ], [ %sub51, %cond.false.50 ]
  store i32 %cond53, i32* %xmin, align 4
  %53 = load i32, i32* %width.addr, align 4
  %sub54 = sub nsw i32 %53, 1
  %54 = load i32, i32* %x, align 4
  %55 = load i32, i32* %adapt_radius, align 4
  %add55 = add nsw i32 %54, %55
  %cmp56 = icmp slt i32 %sub54, %add55
  br i1 %cmp56, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %cond.end.52
  %56 = load i32, i32* %width.addr, align 4
  %sub58 = sub nsw i32 %56, 1
  br label %cond.end.61

cond.false.59:                                    ; preds = %cond.end.52
  %57 = load i32, i32* %x, align 4
  %58 = load i32, i32* %adapt_radius, align 4
  %add60 = add nsw i32 %57, %58
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.57
  %cond62 = phi i32 [ %sub58, %cond.true.57 ], [ %add60, %cond.false.59 ]
  store i32 %cond62, i32* %xmax, align 4
  %59 = load i8*, i8** %src.addr, align 8
  %60 = load i32, i32* %width.addr, align 4
  %61 = load i32, i32* %bpp.addr, align 4
  %62 = load i32, i32* %xmin, align 4
  %63 = load i32, i32* %ymin, align 4
  %64 = load i32, i32* %xmax, align 4
  %65 = load i32, i32* %ymax, align 4
  call void @update_histogram(%struct.DespeckleHistogram* @histogram, i8* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %66 = load i32, i32* %x, align 4
  %67 = load i32, i32* %y, align 4
  %68 = load i32, i32* %width.addr, align 4
  %mul63 = mul nsw i32 %67, %68
  %add64 = add nsw i32 %66, %mul63
  %69 = load i32, i32* %bpp.addr, align 4
  %mul65 = mul nsw i32 %add64, %69
  store i32 %mul65, i32* %pos, align 4
  %70 = load i8*, i8** %src.addr, align 8
  %71 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %71 to i64
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  %call66 = call i8* @histogram_get_median(%struct.DespeckleHistogram* @histogram, i8* %add.ptr)
  store i8* %call66, i8** %pixel, align 8
  %72 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %and = and i32 %72, 2
  %tobool67 = icmp ne i32 %and, 0
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %cond.end.61
  %73 = load i8*, i8** %src.addr, align 8
  %74 = load i32, i32* %width.addr, align 4
  %75 = load i32, i32* %bpp.addr, align 4
  %76 = load i32, i32* %x, align 4
  %77 = load i32, i32* %y, align 4
  call void @del_val(%struct.DespeckleHistogram* @histogram, i8* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %78 = load i8*, i8** %src.addr, align 8
  %79 = load i32, i32* %pos, align 4
  %idx.ext69 = sext i32 %79 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %78, i64 %idx.ext69
  %80 = load i8*, i8** %pixel, align 8
  %81 = load i32, i32* %bpp.addr, align 4
  call void @pixel_copy(i8* %add.ptr70, i8* %80, i32 %81)
  %82 = load i8*, i8** %src.addr, align 8
  %83 = load i32, i32* %width.addr, align 4
  %84 = load i32, i32* %bpp.addr, align 4
  %85 = load i32, i32* %x, align 4
  %86 = load i32, i32* %y, align 4
  call void @add_val(%struct.DespeckleHistogram* @histogram, i8* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %cond.end.61
  %87 = load i8*, i8** %dst.addr, align 8
  %88 = load i32, i32* %pos, align 4
  %idx.ext72 = sext i32 %88 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %87, i64 %idx.ext72
  %89 = load i8*, i8** %pixel, align 8
  %90 = load i32, i32* %bpp.addr, align 4
  call void @pixel_copy(i8* %add.ptr73, i8* %89, i32 %90)
  %91 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 1), align 4
  %and74 = and i32 %91, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.87

if.then.76:                                       ; preds = %if.end.71
  %92 = load i32, i32* @hist0, align 4
  %93 = load i32, i32* %adapt_radius, align 4
  %cmp77 = icmp sge i32 %92, %93
  br i1 %cmp77, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.76
  %94 = load i32, i32* @hist255, align 4
  %95 = load i32, i32* %adapt_radius, align 4
  %cmp78 = icmp sge i32 %94, %95
  br i1 %cmp78, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %lor.lhs.false, %if.then.76
  %96 = load i32, i32* %adapt_radius, align 4
  %97 = load i32, i32* %radius.addr, align 4
  %cmp80 = icmp slt i32 %96, %97
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.79
  %98 = load i32, i32* %adapt_radius, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %adapt_radius, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.then.79
  br label %if.end.86

if.else:                                          ; preds = %lor.lhs.false
  %99 = load i32, i32* %adapt_radius, align 4
  %cmp83 = icmp sgt i32 %99, 1
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %100 = load i32, i32* %adapt_radius, align 4
  %dec = add nsw i32 %100, -1
  store i32 %dec, i32* %adapt_radius, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.82
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.71
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %101 = load i32, i32* %x, align 4
  %inc88 = add nsw i32 %101, 1
  store i32 %inc88, i32* %x, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %102 = load i32, i32* %width.addr, align 4
  %103 = load i32, i32* %progress, align 4
  %add89 = add i32 %103, %102
  store i32 %add89, i32* %progress, align 4
  %104 = load i32, i32* %preview.addr, align 4
  %tobool90 = icmp ne i32 %104, 0
  br i1 %tobool90, label %if.end.95, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %105 = load i32, i32* %y, align 4
  %rem = srem i32 %105, 32
  %cmp91 = icmp eq i32 %rem, 0
  br i1 %cmp91, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %land.lhs.true
  %106 = load i32, i32* %progress, align 4
  %conv = uitofp i32 %106 to double
  %107 = load i32, i32* %max_progress, align 4
  %conv93 = uitofp i32 %107 to double
  %div = fdiv double %conv, %conv93
  %call94 = call i32 @gimp_progress_update(double %div)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %land.lhs.true, %for.end
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %108 = load i32, i32* %y, align 4
  %inc97 = add nsw i32 %108, 1
  store i32 %inc97, i32* %y, align 4
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  %109 = load i32, i32* %preview.addr, align 4
  %tobool99 = icmp ne i32 %109, 0
  br i1 %tobool99, label %if.end.102, label %if.then.100

if.then.100:                                      ; preds = %for.end.98
  %call101 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %for.end.98
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @histogram_clean(%struct.DespeckleHistogram* %hist) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %i = alloca i32, align 4
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %elems = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %elems, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %origs = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [256 x %struct.PixelsList], [256 x %struct.PixelsList]* %origs, i32 0, i64 %idxprom1
  %count = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %arrayidx2, i32 0, i32 2
  store i32 0, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @add_vals(%struct.DespeckleHistogram* %hist, i8* %src, i32 %width, i32 %bpp, i32 %xmin, i32 %ymin, i32 %xmax, i32 %ymax) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %xmin.addr = alloca i32, align 4
  %ymin.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %xmin, i32* %xmin.addr, align 4
  store i32 %ymin, i32* %ymin.addr, align 4
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  %0 = load i32, i32* %xmin.addr, align 4
  %1 = load i32, i32* %xmax.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.7

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ymin.addr, align 4
  store i32 %2, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %if.end
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* %ymax.addr, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %xmin.addr, align 4
  store i32 %5, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %xmax.addr, align 4
  %cmp3 = icmp sle i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %9 = load i8*, i8** %src.addr, align 8
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %bpp.addr, align 4
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %y, align 4
  call void @add_val(%struct.DespeckleHistogram* %8, i8* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %14 = load i32, i32* %x, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %15 = load i32, i32* %y, align 4
  %inc6 = add nsw i32 %15, 1
  store i32 %inc6, i32* %y, align 4
  br label %for.cond

for.end.7:                                        ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @update_histogram(%struct.DespeckleHistogram* %hist, i8* %src, i32 %width, i32 %bpp, i32 %xmin, i32 %ymin, i32 %xmax, i32 %ymax) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %xmin.addr = alloca i32, align 4
  %ymin.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %xmin, i32* %xmin.addr, align 4
  store i32 %ymin, i32* %ymin.addr, align 4
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  %0 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %bpp.addr, align 4
  %4 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %xmin1 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %4, i32 0, i32 2
  %5 = load i32, i32* %xmin1, align 4
  %6 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymin2 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %6, i32 0, i32 3
  %7 = load i32, i32* %ymin2, align 4
  %8 = load i32, i32* %xmin.addr, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymax3 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %9, i32 0, i32 5
  %10 = load i32, i32* %ymax3, align 4
  call void @del_vals(%struct.DespeckleHistogram* %0, i8* %1, i32 %2, i32 %3, i32 %5, i32 %7, i32 %sub, i32 %10)
  %11 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %12 = load i8*, i8** %src.addr, align 8
  %13 = load i32, i32* %width.addr, align 4
  %14 = load i32, i32* %bpp.addr, align 4
  %15 = load i32, i32* %xmin.addr, align 4
  %16 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymin4 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %16, i32 0, i32 3
  %17 = load i32, i32* %ymin4, align 4
  %18 = load i32, i32* %xmax.addr, align 4
  %19 = load i32, i32* %ymin.addr, align 4
  %sub5 = sub nsw i32 %19, 1
  call void @del_vals(%struct.DespeckleHistogram* %11, i8* %12, i32 %13, i32 %14, i32 %15, i32 %17, i32 %18, i32 %sub5)
  %20 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %21 = load i8*, i8** %src.addr, align 8
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %bpp.addr, align 4
  %24 = load i32, i32* %xmin.addr, align 4
  %25 = load i32, i32* %ymax.addr, align 4
  %add = add nsw i32 %25, 1
  %26 = load i32, i32* %xmax.addr, align 4
  %27 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymax6 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %27, i32 0, i32 5
  %28 = load i32, i32* %ymax6, align 4
  call void @del_vals(%struct.DespeckleHistogram* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %add, i32 %26, i32 %28)
  %29 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %30 = load i8*, i8** %src.addr, align 8
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %bpp.addr, align 4
  %33 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %xmax7 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %33, i32 0, i32 4
  %34 = load i32, i32* %xmax7, align 4
  %add8 = add nsw i32 %34, 1
  %35 = load i32, i32* %ymin.addr, align 4
  %36 = load i32, i32* %xmax.addr, align 4
  %37 = load i32, i32* %ymax.addr, align 4
  call void @add_vals(%struct.DespeckleHistogram* %29, i8* %30, i32 %31, i32 %32, i32 %add8, i32 %35, i32 %36, i32 %37)
  %38 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %39 = load i8*, i8** %src.addr, align 8
  %40 = load i32, i32* %width.addr, align 4
  %41 = load i32, i32* %bpp.addr, align 4
  %42 = load i32, i32* %xmin.addr, align 4
  %43 = load i32, i32* %ymin.addr, align 4
  %44 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %xmax9 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %44, i32 0, i32 4
  %45 = load i32, i32* %xmax9, align 4
  %46 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymin10 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %46, i32 0, i32 3
  %47 = load i32, i32* %ymin10, align 4
  %sub11 = sub nsw i32 %47, 1
  call void @add_vals(%struct.DespeckleHistogram* %38, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %45, i32 %sub11)
  %48 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %49 = load i8*, i8** %src.addr, align 8
  %50 = load i32, i32* %width.addr, align 4
  %51 = load i32, i32* %bpp.addr, align 4
  %52 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %xmin12 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %52, i32 0, i32 2
  %53 = load i32, i32* %xmin12, align 4
  %54 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymax13 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %54, i32 0, i32 5
  %55 = load i32, i32* %ymax13, align 4
  %add14 = add nsw i32 %55, 1
  %56 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %xmax15 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %56, i32 0, i32 4
  %57 = load i32, i32* %xmax15, align 4
  %58 = load i32, i32* %ymax.addr, align 4
  call void @add_vals(%struct.DespeckleHistogram* %48, i8* %49, i32 %50, i32 %51, i32 %53, i32 %add14, i32 %57, i32 %58)
  %59 = load i32, i32* %xmin.addr, align 4
  %60 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %xmin16 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %60, i32 0, i32 2
  store i32 %59, i32* %xmin16, align 4
  %61 = load i32, i32* %ymin.addr, align 4
  %62 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymin17 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %62, i32 0, i32 3
  store i32 %61, i32* %ymin17, align 4
  %63 = load i32, i32* %xmax.addr, align 4
  %64 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %xmax18 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %64, i32 0, i32 4
  store i32 %63, i32* %xmax18, align 4
  %65 = load i32, i32* %ymax.addr, align 4
  %66 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %ymax19 = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %66, i32 0, i32 5
  store i32 %65, i32* %ymax19, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @histogram_get_median(%struct.DespeckleHistogram* %hist, i8* %_default) #5 {
entry:
  %retval = alloca i8*, align 8
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %_default.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8* %_default, i8** %_default.addr, align 8
  %0 = load i32, i32* @histrest, align 4
  store i32 %0, i32* %count, align 4
  store i32 0, i32* %sum, align 4
  %1 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_default.addr, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %count, align 4
  %add = add nsw i32 %3, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %elems = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %elems, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %sum, align 4
  %add1 = add nsw i32 %7, %6
  store i32 %add1, i32* %sum, align 4
  %8 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %add1, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %origs = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %11, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [256 x %struct.PixelsList], [256 x %struct.PixelsList]* %origs, i32 0, i64 %idxprom2
  %call = call i8* @list_get_random_elem(%struct.PixelsList* %arrayidx3)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @del_val(%struct.DespeckleHistogram* %hist, i8* %src, i32 %width, i32 %bpp, i32 %x, i32 %y) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %add = add nsw i32 %0, %mul
  %3 = load i32, i32* %bpp.addr, align 4
  %mul1 = mul nsw i32 %add, %3
  store i32 %mul1, i32* %pos, align 4
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %bpp.addr, align 4
  %call = call zeroext i8 @pixel_luminance(i8* %add.ptr, i32 %6)
  %conv = zext i8 %call to i32
  store i32 %conv, i32* %value, align 4
  %7 = load i32, i32* %value, align 4
  %8 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %value, align 4
  %10 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %12 = load i32, i32* %value, align 4
  %conv5 = trunc i32 %12 to i8
  call void @histogram_remove(%struct.DespeckleHistogram* %11, i8 zeroext %conv5)
  %13 = load i32, i32* @histrest, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* @histrest, align 4
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load i32, i32* %value, align 4
  %15 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  %cmp6 = icmp sle i32 %14, %15
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %16 = load i32, i32* @hist0, align 4
  %dec9 = add nsw i32 %16, -1
  store i32 %dec9, i32* @hist0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  %17 = load i32, i32* %value, align 4
  %18 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  %cmp10 = icmp sge i32 %17, %18
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %19 = load i32, i32* @hist255, align 4
  %dec13 = add nsw i32 %19, -1
  store i32 %dec13, i32* @hist255, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pixel_copy(i8* %dest, i8* %src, i32 %bpp) #5 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %bpp.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.2
    i32 2, label %sw.bb.5
    i32 1, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %2 = load i8, i8* %1, align 1
  %3 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr1, i8** %dest.addr, align 8
  store i8 %2, i8* %3, align 1
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %entry, %sw.bb
  %4 = load i8*, i8** %src.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr3, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %dest.addr, align 8
  store i8 %5, i8* %6, align 1
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb.2
  %7 = load i8*, i8** %src.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %src.addr, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %dest.addr, align 8
  store i8 %8, i8* %9, align 1
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %entry, %sw.bb.5
  %10 = load i8*, i8** %src.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr9, i8** %src.addr, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %dest.addr, align 8
  store i8 %11, i8* %12, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.8, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @add_val(%struct.DespeckleHistogram* %hist, i8* %src, i32 %width, i32 %bpp, i32 %x, i32 %y) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %add = add nsw i32 %0, %mul
  %3 = load i32, i32* %bpp.addr, align 4
  %mul1 = mul nsw i32 %add, %3
  store i32 %mul1, i32* %pos, align 4
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %bpp.addr, align 4
  %call = call zeroext i8 @pixel_luminance(i8* %add.ptr, i32 %6)
  %conv = zext i8 %call to i32
  store i32 %conv, i32* %value, align 4
  %7 = load i32, i32* %value, align 4
  %8 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %value, align 4
  %10 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %12 = load i32, i32* %value, align 4
  %conv5 = trunc i32 %12 to i8
  %13 = load i8*, i8** %src.addr, align 8
  %14 = load i32, i32* %pos, align 4
  %idx.ext6 = sext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 %idx.ext6
  call void @histogram_add(%struct.DespeckleHistogram* %11, i8 zeroext %conv5, i8* %add.ptr7)
  %15 = load i32, i32* @histrest, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @histrest, align 4
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load i32, i32* %value, align 4
  %17 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 2), align 4
  %cmp8 = icmp sle i32 %16, %17
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %18 = load i32, i32* @hist0, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* @hist0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  %19 = load i32, i32* %value, align 4
  %20 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @despeckle_vals, i32 0, i64 3), align 4
  %cmp12 = icmp sge i32 %19, %20
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %21 = load i32, i32* @hist255, align 4
  %inc15 = add nsw i32 %21, 1
  store i32 %inc15, i32* @hist255, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @del_vals(%struct.DespeckleHistogram* %hist, i8* %src, i32 %width, i32 %bpp, i32 %xmin, i32 %ymin, i32 %xmax, i32 %ymax) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %xmin.addr = alloca i32, align 4
  %ymin.addr = alloca i32, align 4
  %xmax.addr = alloca i32, align 4
  %ymax.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %xmin, i32* %xmin.addr, align 4
  store i32 %ymin, i32* %ymin.addr, align 4
  store i32 %xmax, i32* %xmax.addr, align 4
  store i32 %ymax, i32* %ymax.addr, align 4
  %0 = load i32, i32* %xmin.addr, align 4
  %1 = load i32, i32* %xmax.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.7

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ymin.addr, align 4
  store i32 %2, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %if.end
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* %ymax.addr, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %xmin.addr, align 4
  store i32 %5, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %xmax.addr, align 4
  %cmp3 = icmp sle i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %9 = load i8*, i8** %src.addr, align 8
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %bpp.addr, align 4
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %y, align 4
  call void @del_val(%struct.DespeckleHistogram* %8, i8* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %14 = load i32, i32* %x, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %15 = load i32, i32* %y, align 4
  %inc6 = add nsw i32 %15, 1
  store i32 %inc6, i32* %y, align 4
  br label %for.cond

for.end.7:                                        ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_get_random_elem(%struct.PixelsList* %list) #5 {
entry:
  %retval = alloca i8*, align 8
  %list.addr = alloca %struct.PixelsList*, align 8
  %pos = alloca i32, align 4
  store %struct.PixelsList* %list, %struct.PixelsList** %list.addr, align 8
  %0 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %start = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %0, i32 0, i32 1
  %1 = load i32, i32* %start, align 4
  %call = call i32 @rand() #4
  %2 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %count = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %2, i32 0, i32 2
  %3 = load i32, i32* %count, align 4
  %rem = srem i32 %call, %3
  %add = add nsw i32 %1, %rem
  store i32 %add, i32* %pos, align 4
  %4 = load i32, i32* %pos, align 4
  %cmp = icmp sge i32 %4, 3721
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %5, 3721
  %idxprom = sext i32 %sub to i64
  %6 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %elems = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3721 x i8*], [3721 x i8*]* %elems, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %pos, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %elems2 = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %9, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3721 x i8*], [3721 x i8*]* %elems2, i32 0, i64 %idxprom1
  %10 = load i8*, i8** %arrayidx3, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @pixel_luminance(i8* %p, i32 %bpp) #5 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %bpp.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  %3 = load i8*, i8** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %conv3 = sitofp i32 %conv to double
  %mul = fmul double %conv3, 2.126000e-01
  %5 = load i8*, i8** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %conv6 = sitofp i32 %conv5 to double
  %mul7 = fmul double %conv6, 7.152000e-01
  %add = fadd double %mul, %mul7
  %7 = load i8*, i8** %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %conv10 = sitofp i32 %conv9 to double
  %mul11 = fmul double %conv10, 7.220000e-02
  %add12 = fadd double %add, %mul11
  %conv13 = fptoui double %add12 to i8
  store i8 %conv13, i8* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %9 = load i8, i8* %retval
  ret i8 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @histogram_remove(%struct.DespeckleHistogram* %hist, i8 zeroext %val) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %val.addr = alloca i8, align 1
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8 %val, i8* %val.addr, align 1
  %0 = load i8, i8* %val.addr, align 1
  %idxprom = zext i8 %0 to i64
  %1 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %elems = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %elems, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %arrayidx, align 4
  %3 = load i8, i8* %val.addr, align 1
  %idxprom1 = zext i8 %3 to i64
  %4 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %origs = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [256 x %struct.PixelsList], [256 x %struct.PixelsList]* %origs, i32 0, i64 %idxprom1
  call void @list_del_elem(%struct.PixelsList* %arrayidx2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_del_elem(%struct.PixelsList* %list) #5 {
entry:
  %list.addr = alloca %struct.PixelsList*, align 8
  store %struct.PixelsList* %list, %struct.PixelsList** %list.addr, align 8
  %0 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %count = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %0, i32 0, i32 2
  %1 = load i32, i32* %count, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %count, align 4
  %2 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %start = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %2, i32 0, i32 1
  %3 = load i32, i32* %start, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %start, align 4
  %4 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %start1 = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %4, i32 0, i32 1
  %5 = load i32, i32* %start1, align 4
  %cmp = icmp sge i32 %5, 3721
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %start2 = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %6, i32 0, i32 1
  store i32 0, i32* %start2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @histogram_add(%struct.DespeckleHistogram* %hist, i8 zeroext %val, i8* %orig) #5 {
entry:
  %hist.addr = alloca %struct.DespeckleHistogram*, align 8
  %val.addr = alloca i8, align 1
  %orig.addr = alloca i8*, align 8
  store %struct.DespeckleHistogram* %hist, %struct.DespeckleHistogram** %hist.addr, align 8
  store i8 %val, i8* %val.addr, align 1
  store i8* %orig, i8** %orig.addr, align 8
  %0 = load i8, i8* %val.addr, align 1
  %idxprom = zext i8 %0 to i64
  %1 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %elems = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %elems, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %arrayidx, align 4
  %3 = load i8, i8* %val.addr, align 1
  %idxprom1 = zext i8 %3 to i64
  %4 = load %struct.DespeckleHistogram*, %struct.DespeckleHistogram** %hist.addr, align 8
  %origs = getelementptr inbounds %struct.DespeckleHistogram, %struct.DespeckleHistogram* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [256 x %struct.PixelsList], [256 x %struct.PixelsList]* %origs, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %orig.addr, align 8
  call void @list_add_elem(%struct.PixelsList* %arrayidx2, i8* %5)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_add_elem(%struct.PixelsList* %list, i8* %elem) #5 {
entry:
  %list.addr = alloca %struct.PixelsList*, align 8
  %elem.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  store %struct.PixelsList* %list, %struct.PixelsList** %list.addr, align 8
  store i8* %elem, i8** %elem.addr, align 8
  %0 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %start = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %0, i32 0, i32 1
  %1 = load i32, i32* %start, align 4
  %2 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %count = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %2, i32 0, i32 2
  %3 = load i32, i32* %count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %count, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* %pos, align 4
  %4 = load i8*, i8** %elem.addr, align 8
  %5 = load i32, i32* %pos, align 4
  %cmp = icmp sge i32 %5, 3721
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %6, 3721
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %pos, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %7, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %8 = load %struct.PixelsList*, %struct.PixelsList** %list.addr, align 8
  %elems = getelementptr inbounds %struct.PixelsList, %struct.PixelsList* %8, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3721 x i8*], [3721 x i8*]* %elems, i32 0, i64 %idxprom
  store i8* %4, i8** %arrayidx, align 8
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
