; ModuleID = './plug-ins/common/shift.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.ShiftValues = type { i32, i32 }
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
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GRand = type opaque
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"shift-amount\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"shift amount (0 <= shift_amount_x <= 200)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"vertical, horizontal orientation\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"plug-in-shift\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Shift each row of pixels by a random amount\00", align 1
@.str.12 = private unnamed_addr constant [98 x i8] c"Shifts the pixels of the specified drawable. Each row will be displaced a random value of pixels.\00", align 1
@.str.13 = private unnamed_addr constant [88 x i8] c"Spencer Kimball and Peter Mattis, ported by Brian Degenhardt and Federico Mena Quintero\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Brian Degenhardt\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"_Shift...\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@shvals = internal global %struct.ShiftValues { i32 5, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gimp-shift\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Shift _horizontally\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Shift _vertically\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Shift _amount:\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
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
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int323 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int323, align 4
  store i32 %3, i32* %image_ID, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #5
  %call5 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %call6 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %5)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_tile_cache_ntiles(i64 16)
  %6 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %7, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %do.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.ShiftValues* @shvals to i8*))
  %10 = load i32, i32* %image_ID, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @shift_dialog(i32 %10, %struct._GimpDrawable* %11)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %12, 5
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %sw.bb.12
  store i32 1, i32* %status, align 4
  br label %if.end.25

if.else:                                          ; preds = %sw.bb.12
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %14 = load i32, i32* %d_int3216, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 0), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %16 = load i32, i32* %d_int3219, align 4
  %tobool20 = icmp ne i32 %16, 0
  %cond = select i1 %tobool20, i32 0, i32 1
  store i32 %cond, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 0), align 4
  %cmp21 = icmp slt i32 %17, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 0), align 4
  %cmp22 = icmp sgt i32 %18, 200
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.lhs.false
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.13
  br label %sw.epilog

sw.bb.26:                                         ; preds = %do.end
  %call27 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.ShiftValues* @shvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %if.end.25, %if.end
  %19 = load i32, i32* %status, align 4
  %cmp28 = icmp eq i32 %19, 3
  br i1 %cmp28, label %if.then.29, label %if.end.49

if.then.29:                                       ; preds = %sw.epilog
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id, align 4
  %call30 = call i32 @gimp_drawable_is_rgb(i32 %21)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.then.29
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 0
  %23 = load i32, i32* %drawable_id33, align 4
  %call34 = call i32 @gimp_drawable_is_gray(i32 %23)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.47

if.then.36:                                       ; preds = %lor.lhs.false.32, %if.then.29
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #5
  %call38 = call i32 @gimp_progress_init(i8* %call37)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @shift(%struct._GimpDrawable* %24, %struct._GimpPreview* null)
  %25 = load i32, i32* %run_mode, align 4
  %cmp39 = icmp ne i32 %25, 1
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.36
  %call41 = call i32 @gimp_displays_flush()
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.36
  %26 = load i32, i32* %run_mode, align 4
  %cmp43 = icmp eq i32 %26, 0
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.42
  %call45 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.ShiftValues* @shvals to i8*), i32 8)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  br label %if.end.48

if.else.47:                                       ; preds = %lor.lhs.false.32
  store i32 0, i32* %status, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.end.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %sw.epilog
  %27 = load i32, i32* %status, align 4
  store i32 %27, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %28)
  br label %return

return:                                           ; preds = %if.end.49, %if.then
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
define internal i32 @shift_dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %size_entry = alloca %struct._GtkWidget*, align 8
  %vertical = alloca %struct._GtkWidget*, align 8
  %horizontal = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @shift to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %26 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 1), align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #5
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #5
  %call20 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 1) to i8*), i32 %26, i8* %call18, i32 0, %struct._GtkWidget** %horizontal, i8* %call19, i32 1, %struct._GtkWidget** %vertical, i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %horizontal, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 2)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vertical, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 2)
  %40 = load i32, i32* %image_ID.addr, align 4
  %call25 = call i32 @gimp_image_get_resolution(i32 %40, double* %xres, double* %yres)
  %41 = load i32, i32* %image_ID.addr, align 4
  %call26 = call i32 @gimp_image_get_unit(i32 %41)
  store i32 %call26, i32* %unit, align 4
  %42 = load i32, i32* %unit, align 4
  %call27 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 1, i32 0, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %size_entry, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_size_entry_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %45, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_size_entry_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call30)
  %48 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpSizeEntry*
  %49 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %48, i32 0, double %49, i32 1)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_size_entry_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call32)
  %52 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %52, i32 0, double 1.000000e+00, double 2.000000e+02)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call34)
  %55 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %55, i32 0, i32 4)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call36)
  %58 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %58, i32 2, i32 12)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_size_entry_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call38)
  %61 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpSizeEntry*
  %62 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %62 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %61, i32 0, double %conv)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_size_entry_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call40)
  %65 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpSizeEntry*
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0)) #5
  %call43 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %65, i8* %call42, i32 1, i32 0, float 0.000000e+00)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @shift_amount_callback to void ()*), i8* %69, void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call45)
  %72 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 0, i32 0, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_dialog_get_type() #4
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call47)
  %78 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDialog*
  %call49 = call i32 @gimp_dialog_run(%struct._GimpDialog* %78)
  %cmp = icmp eq i32 %call49, -5
  %conv50 = zext i1 %cmp to i32
  store i32 %conv50, i32* %run, align 4
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %79)
  %80 = load i32, i32* %run, align 4
  ret i32 %80
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @shift(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %destline = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %offsets = alloca i32*, align 8
  %gr = alloca %struct._GRand*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %x1, i32* %y1)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %width, i32* %height)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %4, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %5 = load i32, i32* %x2, align 4
  %6 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %width, align 4
  %7 = load i32, i32* %y2, align 4
  %8 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %7, %8
  store i32 %sub1, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 3
  %10 = load i32, i32* %bpp, align 4
  store i32 %10, i32* %bytes, align 4
  store i32 0, i32* %progress, align 4
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %11, %12
  store i32 %mul, i32* %max_progress, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 1), align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, i32* %height, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %16 = load i32, i32* %n, align 4
  %conv = sext i32 %16 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %17 = bitcast i8* %call2 to i32*
  store i32* %17, i32** %offsets, align 8
  %call3 = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call3, %struct._GRand** %gr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %18, %19
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 0), align 4
  %add = add nsw i32 %21, 1
  %sub6 = sub nsw i32 0, %add
  %conv7 = sitofp i32 %sub6 to double
  %div = fdiv double %conv7, 2.000000e+00
  %conv8 = fptosi double %div to i32
  %22 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 0), align 4
  %add9 = add nsw i32 %22, 1
  %conv10 = sitofp i32 %add9 to double
  %div11 = fdiv double %conv10, 2.000000e+00
  %conv12 = fptosi double %div11 to i32
  %call13 = call i32 @g_rand_int_range(%struct._GRand* %20, i32 %conv8, i32 %conv12)
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %offsets, align 8
  %arrayidx = getelementptr inbounds i32, i32* %24, i64 %idxprom
  store i32 %call13, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %26)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %27, i32 0)
  store %struct._GimpPixelFetcher* %call14, %struct._GimpPixelFetcher** %pft, align 8
  %28 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %28, i32 1)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = load i32, i32* %x1, align 4
  %31 = load i32, i32* %y1, align 4
  %32 = load i32, i32* %width, align 4
  %33 = load i32, i32* %height, align 4
  %34 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp15 = icmp eq %struct._GimpPreview* %34, null
  %conv16 = zext i1 %cmp15 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %conv16, i32 1)
  %call17 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call17, i8** %pr, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.94, %for.end
  %35 = load i8*, i8** %pr, align 8
  %cmp19 = icmp ne i8* %35, null
  br i1 %cmp19, label %for.body.21, label %for.end.96

for.body.21:                                      ; preds = %for.cond.18
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %36 = load i8*, i8** %data, align 8
  store i8* %36, i8** %destline, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 1), align 4
  switch i32 %37, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %for.body.21
  %y22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %38 = load i32, i32* %y22, align 4
  store i32 %38, i32* %y, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.45, %sw.bb
  %39 = load i32, i32* %y, align 4
  %y24 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %40 = load i32, i32* %y24, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %41 = load i32, i32* %h, align 4
  %add25 = add nsw i32 %40, %41
  %cmp26 = icmp slt i32 %39, %add25
  br i1 %cmp26, label %for.body.28, label %for.end.47

for.body.28:                                      ; preds = %for.cond.23
  %42 = load i8*, i8** %destline, align 8
  store i8* %42, i8** %dest, align 8
  %x29 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %43 = load i32, i32* %x29, align 4
  store i32 %43, i32* %x, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %for.body.28
  %44 = load i32, i32* %x, align 4
  %x31 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %45 = load i32, i32* %x31, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %46 = load i32, i32* %w, align 4
  %add32 = add nsw i32 %45, %46
  %cmp33 = icmp slt i32 %44, %add32
  br i1 %cmp33, label %for.body.35, label %for.end.42

for.body.35:                                      ; preds = %for.cond.30
  %47 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %y, align 4
  %50 = load i32, i32* %y1, align 4
  %sub36 = sub nsw i32 %49, %50
  %idxprom37 = sext i32 %sub36 to i64
  %51 = load i32*, i32** %offsets, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %51, i64 %idxprom37
  %52 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %48, %52
  %53 = load i32, i32* %y, align 4
  %54 = load i8*, i8** %dest, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %47, i32 %add39, i32 %53, i8* %54)
  %55 = load i32, i32* %bytes, align 4
  %56 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.35
  %57 = load i32, i32* %x, align 4
  %inc41 = add nsw i32 %57, 1
  store i32 %inc41, i32* %x, align 4
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %58 = load i32, i32* %rowstride, align 4
  %59 = load i8*, i8** %destline, align 8
  %idx.ext43 = sext i32 %58 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %59, i64 %idx.ext43
  store i8* %add.ptr44, i8** %destline, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.42
  %60 = load i32, i32* %y, align 4
  %inc46 = add nsw i32 %60, 1
  store i32 %inc46, i32* %y, align 4
  br label %for.cond.23

for.end.47:                                       ; preds = %for.cond.23
  br label %sw.epilog

sw.bb.48:                                         ; preds = %for.body.21
  %x49 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %61 = load i32, i32* %x49, align 4
  store i32 %61, i32* %x, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.77, %sw.bb.48
  %62 = load i32, i32* %x, align 4
  %x51 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %63 = load i32, i32* %x51, align 4
  %w52 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %64 = load i32, i32* %w52, align 4
  %add53 = add nsw i32 %63, %64
  %cmp54 = icmp slt i32 %62, %add53
  br i1 %cmp54, label %for.body.56, label %for.end.79

for.body.56:                                      ; preds = %for.cond.50
  %65 = load i8*, i8** %destline, align 8
  store i8* %65, i8** %dest, align 8
  %y57 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %66 = load i32, i32* %y57, align 4
  store i32 %66, i32* %y, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.72, %for.body.56
  %67 = load i32, i32* %y, align 4
  %y59 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %68 = load i32, i32* %y59, align 4
  %h60 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %69 = load i32, i32* %h60, align 4
  %add61 = add nsw i32 %68, %69
  %cmp62 = icmp slt i32 %67, %add61
  br i1 %cmp62, label %for.body.64, label %for.end.74

for.body.64:                                      ; preds = %for.cond.58
  %70 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %71 = load i32, i32* %x, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %x, align 4
  %74 = load i32, i32* %x1, align 4
  %sub65 = sub nsw i32 %73, %74
  %idxprom66 = sext i32 %sub65 to i64
  %75 = load i32*, i32** %offsets, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %75, i64 %idxprom66
  %76 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %72, %76
  %77 = load i8*, i8** %dest, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %70, i32 %71, i32 %add68, i8* %77)
  %rowstride69 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %78 = load i32, i32* %rowstride69, align 4
  %79 = load i8*, i8** %dest, align 8
  %idx.ext70 = sext i32 %78 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %79, i64 %idx.ext70
  store i8* %add.ptr71, i8** %dest, align 8
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.64
  %80 = load i32, i32* %y, align 4
  %inc73 = add nsw i32 %80, 1
  store i32 %inc73, i32* %y, align 4
  br label %for.cond.58

for.end.74:                                       ; preds = %for.cond.58
  %81 = load i32, i32* %bytes, align 4
  %82 = load i8*, i8** %destline, align 8
  %idx.ext75 = sext i32 %81 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %82, i64 %idx.ext75
  store i8* %add.ptr76, i8** %destline, align 8
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.74
  %83 = load i32, i32* %x, align 4
  %inc78 = add nsw i32 %83, 1
  store i32 %inc78, i32* %x, align 4
  br label %for.cond.50

for.end.79:                                       ; preds = %for.cond.50
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.21, %for.end.79, %for.end.47
  %84 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool80 = icmp ne %struct._GimpPreview* %84, null
  br i1 %tobool80, label %if.then.81, label %if.else.84

if.then.81:                                       ; preds = %sw.epilog
  %85 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %86 = bitcast %struct._GimpPreview* %85 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_drawable_preview_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call82)
  %87 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %87, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.93

if.else.84:                                       ; preds = %sw.epilog
  %w85 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %88 = load i32, i32* %w85, align 4
  %h86 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %89 = load i32, i32* %h86, align 4
  %mul87 = mul nsw i32 %88, %89
  %90 = load i32, i32* %progress, align 4
  %add88 = add nsw i32 %90, %mul87
  store i32 %add88, i32* %progress, align 4
  %91 = load i32, i32* %progress, align 4
  %conv89 = sitofp i32 %91 to double
  %92 = load i32, i32* %max_progress, align 4
  %conv90 = sitofp i32 %92 to double
  %div91 = fdiv double %conv89, %conv90
  %call92 = call i32 @gimp_progress_update(double %div91)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.84, %if.then.81
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %93 = load i8*, i8** %pr, align 8
  %call95 = call i8* @gimp_pixel_rgns_process(i8* %93)
  store i8* %call95, i8** %pr, align 8
  br label %for.cond.18

for.end.96:                                       ; preds = %for.cond.18
  %94 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %94)
  %95 = load i32*, i32** %offsets, align 8
  %96 = bitcast i32* %95 to i8*
  call void @g_free(i8* %96)
  %97 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool97 = icmp ne %struct._GimpPreview* %97, null
  br i1 %tobool97, label %if.end.104, label %if.then.98

if.then.98:                                       ; preds = %for.end.96
  %call99 = call i32 @gimp_progress_update(double 1.000000e+00)
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %98)
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id100 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %99, i32 0, i32 0
  %100 = load i32, i32* %drawable_id100, align 4
  %call101 = call i32 @gimp_drawable_merge_shadow(i32 %100, i32 1)
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id102 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %101, i32 0, i32 0
  %102 = load i32, i32* %drawable_id102, align 4
  %103 = load i32, i32* %x1, align 4
  %104 = load i32, i32* %y1, align 4
  %105 = load i32, i32* %width, align 4
  %106 = load i32, i32* %height, align 4
  %call103 = call i32 @gimp_drawable_update(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.98, %for.end.96
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_get_unit(i32) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #1

; Function Attrs: nounwind uwtable
define internal void @shift_amount_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_size_entry_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSizeEntry*
  %call4 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 0)
  %conv = fptosi double %call4 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.ShiftValues, %struct.ShiftValues* @shvals, i32 0, i32 0), align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %6)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GRand* @g_rand_new() #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
