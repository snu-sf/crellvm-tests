; ModuleID = './plug-ins/common/engrave.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.EngraveValues = type { i32, i32 }
%struct.PixelArea = type { i32, i32, i32, i32, i8* }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Resolution in pixels\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Limit line width { TRUE, FALSE }\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"plug-in-engrave\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Simulate an antique engraving\00", align 1
@.str.12 = private unnamed_addr constant [86 x i8] c"Creates a black-and-white 'engraved' version of an image as seen in old illustrations\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Spencer Kimball & Peter Mattis, Eiichi Takamori, Torsten Martinsen\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"1995,1996,1997\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"En_grave...\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"RGBA, GRAYA\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.EngraveValues { i32 10, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"Engraving\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"engrave\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Engrave\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"gimp-engrave\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"_Limit line width\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@area = internal global %struct.PixelArea zeroinitializer, align 8
@__func__.engrave_sub = private unnamed_addr constant [12 x i8] c"engrave_sub\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"(num_channels == 1) || (num_channels == 3)\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #5
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
  call void @gimp_tile_cache_ntiles(i64 16)
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.EngraveValues* @pvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @engrave_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %9)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %10 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %10, 5
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %11 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %11, 3
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 0), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 4
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  %tobool20 = icmp ne i32 %15, 0
  %cond = select i1 %tobool20, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 1), align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.13, %if.end.11
  %16 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %16, 3
  br i1 %cmp22, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.21
  %17 = load i32, i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 0), align 4
  %cmp23 = icmp slt i32 %17, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.21
  br label %sw.epilog

sw.bb.26:                                         ; preds = %do.end
  %call27 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.EngraveValues* @pvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %if.end.25, %if.end
  %18 = load i32, i32* %status, align 4
  %cmp28 = icmp eq i32 %18, 3
  br i1 %cmp28, label %if.then.29, label %if.end.40

if.then.29:                                       ; preds = %sw.epilog
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #5
  %call31 = call i32 @gimp_progress_init(i8* %call30)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @engrave(%struct._GimpDrawable* %19, %struct._GimpPreview* null)
  %20 = load i32, i32* %run_mode, align 4
  %cmp32 = icmp ne i32 %20, 1
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.29
  %call34 = call i32 @gimp_displays_flush()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.29
  %21 = load i32, i32* %run_mode, align 4
  %cmp36 = icmp eq i32 %21, 0
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  %call38 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.EngraveValues* @pvals to i8*), i32 8)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %sw.epilog
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %23)
  br label %return

return:                                           ; preds = %if.end.40, %if.then
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
define internal i32 @engrave_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @engrave to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #5
  %37 = load i32, i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %37 to double
  %call26 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %36, i32 0, i32 0, i8* %call25, i32 125, i32 0, double %conv, double 2.000000e+00, double 1.600000e+01, double 1.000000e+00, double 4.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call26, %struct._GtkObject** %adj, align 8
  %38 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %39 = bitcast %struct._GtkObject* %38 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.EngraveValues* @pvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %41 = bitcast %struct._GtkObject* %40 to i8*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 2)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #5
  %call30 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %toggle, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_toggle_button_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkToggleButton*
  %51 = load i32, i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %50, i32 %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 2)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_dialog_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call37)
  %62 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDialog*
  %call39 = call i32 @gimp_dialog_run(%struct._GimpDialog* %62)
  %cmp = icmp eq i32 %call39, -5
  %conv40 = zext i1 %cmp to i32
  store i32 %conv40, i32* %run, align 4
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %63)
  %64 = load i32, i32* %run, align 4
  ret i32 %64
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @engrave(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %tile_width = alloca i32, align 4
  %height = alloca i32, align 4
  %limit = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %call = call i32 @gimp_tile_width() #4
  store i32 %call, i32* %tile_width, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 0), align 4
  store i32 %0, i32* %height, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.EngraveValues, %struct.EngraveValues* @pvals, i32 0, i32 1), align 4
  store i32 %1, i32* %limit, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = load i32, i32* %height, align 4
  %4 = load i32, i32* %limit, align 4
  %5 = load i32, i32* %tile_width, align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @engrave_small(%struct._GimpDrawable* %2, i32 %3, i32 %4, i32 %5, %struct._GimpPreview* %6)
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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @engrave_small(%struct._GimpDrawable* %drawable, i32 %line_height, i32 %limit, i32 %tile_width, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %line_height.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %tile_width.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bpp = alloca i32, align 4
  %num_channels = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %line_height, i32* %line_height.addr, align 4
  store i32 %limit, i32* %limit.addr, align 4
  store i32 %tile_width, i32* %tile_width.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %x1, i32* %y1)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %width, i32* %height)
  %3 = load i32, i32* %x1, align 4
  %4 = load i32, i32* %width, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %x2, align 4
  %5 = load i32, i32* %y1, align 4
  %6 = load i32, i32* %height, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %y2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %8, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %9 = load i32, i32* %x2, align 4
  %10 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %width, align 4
  %11 = load i32, i32* %y2, align 4
  %12 = load i32, i32* %y1, align 4
  %sub2 = sub nsw i32 %11, %12
  store i32 %sub2, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load i32, i32* %x1, align 4
  %15 = load i32, i32* %y1, align 4
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 0, i32 0)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = load i32, i32* %x1, align 4
  %20 = load i32, i32* %y1, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  %23 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %23, null
  %conv = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %conv, i32 1)
  store i32 0, i32* %progress, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %24, %25
  store i32 %mul, i32* %max_progress, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 3
  %27 = load i32, i32* %bpp3, align 4
  store i32 %27, i32* %bpp, align 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 0
  %29 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_is_rgb(i32 %29)
  %tobool6 = icmp ne i32 %call5, 0
  %cond = select i1 %tobool6, i32 3, i32 1
  store i32 %cond, i32* %num_channels, align 4
  %30 = load i32, i32* %tile_width.addr, align 4
  %31 = load i32, i32* %line_height.addr, align 4
  %div = sdiv i32 %30, %31
  %32 = load i32, i32* %line_height.addr, align 4
  %mul7 = mul nsw i32 %div, %32
  store i32 %mul7, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %33 = load i32, i32* %bpp, align 4
  %conv8 = sext i32 %33 to i64
  %34 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %conv9 = sext i32 %34 to i64
  %mul10 = mul nsw i64 %conv8, %conv9
  %35 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %conv11 = sext i32 %35 to i64
  %mul12 = mul nsw i64 %mul10, %conv11
  %call13 = call noalias i8* @g_malloc_n(i64 %mul12, i64 1)
  store i8* %call13, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 8
  %36 = load i32, i32* %y1, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %if.end
  %37 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %38 = load i32, i32* %y2, align 4
  %cmp14 = icmp slt i32 %37, %38
  br i1 %cmp14, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %rem = srem i32 %40, %41
  %sub16 = sub nsw i32 %39, %rem
  store i32 %sub16, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %43 = load i32, i32* %y2, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub17 = sub nsw i32 %43, %44
  %cmp18 = icmp slt i32 %42, %sub17
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %45 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %46 = load i32, i32* %y2, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub20 = sub nsw i32 %46, %47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i32 [ %45, %cond.true ], [ %sub20, %cond.false ]
  store i32 %cond21, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %48 = load i32, i32* %x1, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %cond.end
  %49 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %50 = load i32, i32* %x2, align 4
  %cmp23 = icmp slt i32 %49, %50
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %51 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %51, i32 %52, i32 %53, i32 1, i32 %54)
  %55 = load i32, i32* %line_height.addr, align 4
  %56 = load i32, i32* %limit.addr, align 4
  %57 = load i32, i32* %bpp, align 4
  %58 = load i32, i32* %num_channels, align 4
  call void @engrave_sub(i32 %55, i32 %56, i32 %57, i32 %58)
  %59 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dest_rgn, i8* %59, i32 %60, i32 %61, i32 1, i32 %62)
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %63 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %64 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool26 = icmp ne %struct._GimpPreview* %64, null
  br i1 %tobool26, label %if.end.34, label %if.then.27

if.then.27:                                       ; preds = %for.end
  %65 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %66 = load i32, i32* %width, align 4
  %mul28 = mul nsw i32 %65, %66
  %67 = load i32, i32* %progress, align 4
  %add29 = add nsw i32 %67, %mul28
  store i32 %add29, i32* %progress, align 4
  %68 = load i32, i32* %progress, align 4
  %conv30 = sitofp i32 %68 to double
  %69 = load i32, i32* %max_progress, align 4
  %conv31 = sitofp i32 %69 to double
  %div32 = fdiv double %conv30, %conv31
  %call33 = call i32 @gimp_progress_update(double %div32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %for.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %70 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %rem36 = srem i32 %71, %72
  %sub37 = sub nsw i32 %70, %rem36
  %73 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %add38 = add nsw i32 %73, %sub37
  store i32 %add38, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %74 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 8
  call void @g_free(i8* %74)
  %75 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool40 = icmp ne %struct._GimpPreview* %75, null
  br i1 %tobool40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %for.end.39
  %76 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %77 = bitcast %struct._GimpPreview* %76 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_drawable_preview_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call42)
  %78 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %78, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.52

if.else.44:                                       ; preds = %for.end.39
  %call45 = call i32 @gimp_progress_update(double 1.000000e+00)
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %79)
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %80, i32 0, i32 0
  %81 = load i32, i32* %drawable_id46, align 4
  %call47 = call i32 @gimp_drawable_merge_shadow(i32 %81, i32 1)
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 0
  %83 = load i32, i32* %drawable_id48, align 4
  %84 = load i32, i32* %x1, align 4
  %85 = load i32, i32* %y1, align 4
  %86 = load i32, i32* %x2, align 4
  %87 = load i32, i32* %x1, align 4
  %sub49 = sub nsw i32 %86, %87
  %88 = load i32, i32* %y2, align 4
  %89 = load i32, i32* %y1, align 4
  %sub50 = sub nsw i32 %88, %89
  %call51 = call i32 @gimp_drawable_update(i32 %83, i32 %84, i32 %85, i32 %sub49, i32 %sub50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.44, %if.then.41
  ret void
}

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @engrave_sub(i32 %height, i32 %limit, i32 %bpp, i32 %num_channels) #0 {
entry:
  %height.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %num_channels.addr = alloca i32, align 4
  %average = alloca [3 x i64], align 16
  %y = alloca i32, align 4
  %h = alloca i32, align 4
  %inten = alloca i32, align 4
  %v = alloca i32, align 4
  %buf_row = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %row = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %limit, i32* %limit.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %num_channels, i32* %num_channels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %num_channels.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %num_channels.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.engrave_sub, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0))
  br label %for.end.114

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, i32* %bpp.addr, align 4
  store i32 %2, i32* %rowstride, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  store i32 %3, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %do.end
  %4 = load i32, i32* %y, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %add = add nsw i32 %5, %6
  %cmp2 = icmp slt i32 %4, %add
  br i1 %cmp2, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %height.addr, align 4
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %height.addr, align 4
  %rem = srem i32 %8, %9
  %sub = sub nsw i32 %7, %rem
  store i32 %sub, i32* %h, align 4
  %10 = load i32, i32* %h, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %add3 = add nsw i32 %11, %12
  %13 = load i32, i32* %y, align 4
  %sub4 = sub nsw i32 %add3, %13
  %cmp5 = icmp slt i32 %10, %sub4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i32, i32* %h, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %add6 = add nsw i32 %15, %16
  %17 = load i32, i32* %y, align 4
  %sub7 = sub nsw i32 %add6, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %sub7, %cond.false ]
  store i32 %cond, i32* %h, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %cond.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %num_channels.addr, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %average, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  store i32 0, i32* %count, align 4
  %22 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 8
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub11 = sub nsw i32 %23, %24
  %25 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %sub11, %25
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %buf_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.29, %for.end
  %26 = load i32, i32* %row, align 4
  %27 = load i32, i32* %h, align 4
  %cmp13 = icmp slt i32 %26, %27
  br i1 %cmp13, label %for.body.14, label %for.end.31

for.body.14:                                      ; preds = %for.cond.12
  %28 = load i8*, i8** %buf_row, align 8
  store i8* %28, i8** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.body.14
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %num_channels.addr, align 4
  %cmp16 = icmp slt i32 %29, %30
  br i1 %cmp16, label %for.body.17, label %for.end.25

for.body.17:                                      ; preds = %for.cond.15
  %31 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load i8*, i8** %buf, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %32, i64 %idxprom18
  %33 = load i8, i8* %arrayidx19, align 1
  %conv = zext i8 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds [3 x i64], [3 x i64]* %average, i32 0, i64 %idxprom20
  %35 = load i64, i64* %arrayidx21, align 8
  %add22 = add nsw i64 %35, %conv
  store i64 %add22, i64* %arrayidx21, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.17
  %36 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %36, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  %37 = load i32, i32* %count, align 4
  %inc26 = add nsw i32 %37, 1
  store i32 %inc26, i32* %count, align 4
  %38 = load i32, i32* %rowstride, align 4
  %39 = load i8*, i8** %buf_row, align 8
  %idx.ext27 = sext i32 %38 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %39, i64 %idx.ext27
  store i8* %add.ptr28, i8** %buf_row, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.25
  %40 = load i32, i32* %row, align 4
  %inc30 = add nsw i32 %40, 1
  store i32 %inc30, i32* %row, align 4
  br label %for.cond.12

for.end.31:                                       ; preds = %for.cond.12
  %41 = load i32, i32* %count, align 4
  %cmp32 = icmp sgt i32 %41, 0
  br i1 %cmp32, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %for.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.42, %if.then.34
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %num_channels.addr, align 4
  %cmp36 = icmp slt i32 %42, %43
  br i1 %cmp36, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.35
  %44 = load i32, i32* %count, align 4
  %conv39 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds [3 x i64], [3 x i64]* %average, i32 0, i64 %idxprom40
  %46 = load i64, i64* %arrayidx41, align 8
  %div = sdiv i64 %46, %conv39
  store i64 %div, i64* %arrayidx41, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.38
  %47 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %47, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.35

for.end.44:                                       ; preds = %for.cond.35
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.44, %for.end.31
  %48 = load i32, i32* %num_channels.addr, align 4
  %cmp46 = icmp eq i32 %48, 1
  br i1 %cmp46, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %if.end.45
  %arrayidx49 = getelementptr inbounds [3 x i64], [3 x i64]* %average, i32 0, i64 0
  %49 = load i64, i64* %arrayidx49, align 8
  %conv50 = sitofp i64 %49 to double
  %div51 = fdiv double %conv50, 2.540000e+02
  %50 = load i32, i32* %height.addr, align 4
  %conv52 = sitofp i32 %50 to double
  %mul53 = fmul double %div51, %conv52
  %conv54 = fptosi double %mul53 to i32
  store i32 %conv54, i32* %inten, align 4
  br label %if.end.71

if.else.55:                                       ; preds = %if.end.45
  %arrayidx56 = getelementptr inbounds [3 x i64], [3 x i64]* %average, i32 0, i64 0
  %51 = load i64, i64* %arrayidx56, align 8
  %conv57 = sitofp i64 %51 to double
  %mul58 = fmul double %conv57, 2.126000e-01
  %arrayidx59 = getelementptr inbounds [3 x i64], [3 x i64]* %average, i32 0, i64 1
  %52 = load i64, i64* %arrayidx59, align 8
  %conv60 = sitofp i64 %52 to double
  %mul61 = fmul double %conv60, 7.152000e-01
  %add62 = fadd double %mul58, %mul61
  %arrayidx63 = getelementptr inbounds [3 x i64], [3 x i64]* %average, i32 0, i64 2
  %53 = load i64, i64* %arrayidx63, align 8
  %conv64 = sitofp i64 %53 to double
  %mul65 = fmul double %conv64, 7.220000e-02
  %add66 = fadd double %add62, %mul65
  %div67 = fdiv double %add66, 2.540000e+02
  %54 = load i32, i32* %height.addr, align 4
  %conv68 = sitofp i32 %54 to double
  %mul69 = fmul double %div67, %conv68
  %conv70 = fptosi double %mul69 to i32
  store i32 %conv70, i32* %inten, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.55, %if.then.48
  %55 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 8
  %56 = load i32, i32* %y, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub72 = sub nsw i32 %56, %57
  %58 = load i32, i32* %rowstride, align 4
  %mul73 = mul nsw i32 %sub72, %58
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %55, i64 %idx.ext74
  store i8* %add.ptr75, i8** %buf_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.107, %if.end.71
  %59 = load i32, i32* %row, align 4
  %60 = load i32, i32* %h, align 4
  %cmp77 = icmp slt i32 %59, %60
  br i1 %cmp77, label %for.body.79, label %for.end.109

for.body.79:                                      ; preds = %for.cond.76
  %61 = load i8*, i8** %buf_row, align 8
  store i8* %61, i8** %buf, align 8
  %62 = load i32, i32* %inten, align 4
  %63 = load i32, i32* %row, align 4
  %cmp80 = icmp sgt i32 %62, %63
  %cond82 = select i1 %cmp80, i32 255, i32 0
  store i32 %cond82, i32* %v, align 4
  %64 = load i32, i32* %limit.addr, align 4
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.then.83, label %if.end.94

if.then.83:                                       ; preds = %for.body.79
  %65 = load i32, i32* %row, align 4
  %cmp84 = icmp eq i32 %65, 0
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.then.83
  store i32 255, i32* %v, align 4
  br label %if.end.93

if.else.87:                                       ; preds = %if.then.83
  %66 = load i32, i32* %row, align 4
  %67 = load i32, i32* %height.addr, align 4
  %sub88 = sub nsw i32 %67, 1
  %cmp89 = icmp eq i32 %66, %sub88
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.else.87
  store i32 0, i32* %v, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.else.87
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.86
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %for.body.79
  store i32 0, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.102, %if.end.94
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %num_channels.addr, align 4
  %cmp96 = icmp slt i32 %68, %69
  br i1 %cmp96, label %for.body.98, label %for.end.104

for.body.98:                                      ; preds = %for.cond.95
  %70 = load i32, i32* %v, align 4
  %conv99 = trunc i32 %70 to i8
  %71 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %71 to i64
  %72 = load i8*, i8** %buf, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %72, i64 %idxprom100
  store i8 %conv99, i8* %arrayidx101, align 1
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.98
  %73 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %73, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.95

for.end.104:                                      ; preds = %for.cond.95
  %74 = load i32, i32* %rowstride, align 4
  %75 = load i8*, i8** %buf_row, align 8
  %idx.ext105 = sext i32 %74 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %75, i64 %idx.ext105
  store i8* %add.ptr106, i8** %buf_row, align 8
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.104
  %76 = load i32, i32* %row, align 4
  %inc108 = add nsw i32 %76, 1
  store i32 %inc108, i32* %row, align 4
  br label %for.cond.76

for.end.109:                                      ; preds = %for.cond.76
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end.109
  %77 = load i32, i32* %height.addr, align 4
  %78 = load i32, i32* %y, align 4
  %79 = load i32, i32* %height.addr, align 4
  %rem111 = srem i32 %78, %79
  %sub112 = sub nsw i32 %77, %rem111
  %80 = load i32, i32* %y, align 4
  %add113 = add nsw i32 %80, %sub112
  store i32 %add113, i32* %y, align 4
  br label %for.cond

for.end.114:                                      ; preds = %if.else, %for.cond
  ret void
}

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
