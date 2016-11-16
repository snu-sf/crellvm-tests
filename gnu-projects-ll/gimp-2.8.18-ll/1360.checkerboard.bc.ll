; ModuleID = './plug-ins/common/checkerboard.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.data = type { i32, i32 }
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
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.CheckerboardParam_t = type { [4 x i8], [4 x i8] }
%struct._GimpRgnIterator = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"check-mode\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Check mode { REGULAR (0), PSYCHOBILY (1) }\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"check-size\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Size of the checks\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"plug-in-checkerboard\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Create a checkerboard pattern\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"More here later\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Brent Burton & the Edward Blevins\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"_Checkerboard...\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@cvals = internal global %struct.data { i32 0, i32 10 }, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"Adding checkerboard\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"checkerboard\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Checkerboard\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"gimp-checkerboard\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"_Size:\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"_Psychobilly\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@inblock.in = internal global i32* null, align 8
@inblock.len = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int326 = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_int326, align 4
  store i32 %3, i32* %image_ID, align 4
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %do.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.data* @cvals to i8*))
  %10 = load i32, i32* %image_ID, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @checkerboard_dialog(i32 %10, %struct._GimpDrawable* %11)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %12)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  %13 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %13, 5
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb.12
  store i32 1, i32* %status, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %sw.bb.12
  %14 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %14, 3
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end.14
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %16 = load i32, i32* %d_int3219, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 0), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 4
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %18 = load i32, i32* %d_int3222, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.end.14
  br label %sw.epilog

sw.bb.24:                                         ; preds = %do.end
  %call25 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.data* @cvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %if.end.23, %if.end
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id, align 4
  %call26 = call i32 @gimp_drawable_is_rgb(i32 %20)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id28, align 4
  %call29 = call i32 @gimp_drawable_is_gray(i32 %22)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %lor.lhs.false, %sw.epilog
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #5
  %call33 = call i32 @gimp_progress_init(i8* %call32)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @do_checkerboard_pattern(%struct._GimpDrawable* %23, %struct._GimpPreview* null)
  %24 = load i32, i32* %run_mode, align 4
  %cmp34 = icmp ne i32 %24, 1
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.31
  %call36 = call i32 @gimp_displays_flush()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.then.31
  %25 = load i32, i32* %run_mode, align 4
  %cmp38 = icmp eq i32 %25, 0
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %call40 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.data* @cvals to i8*), i32 8)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  br label %if.end.42

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.end.41
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %27)
  br label %return

return:                                           ; preds = %if.end.42, %if.then
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
define internal i32 @checkerboard_dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %size_entry = alloca %struct._GtkWidget*, align 8
  %size = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -5, i8* null)
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
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @do_checkerboard_pattern to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %hbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load i32, i32* %image_ID.addr, align 4
  %call21 = call i32 @gimp_image_get_resolution(i32 %31, double* %xres, double* %yres)
  %32 = load i32, i32* %image_ID.addr, align 4
  %call22 = call i32 @gimp_image_get_unit(i32 %32)
  store i32 %call22, i32* %unit, align 4
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id, align 4
  %call23 = call i32 @gimp_drawable_width(i32 %34)
  store i32 %call23, i32* %width, align 4
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id24, align 4
  %call25 = call i32 @gimp_drawable_height(i32 %36)
  store i32 %call25, i32* %height, align 4
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %37, %38
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %39 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %40 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %40, %cond.false ]
  store i32 %cond, i32* %size, align 4
  %41 = load i32, i32* %unit, align 4
  %call26 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 1, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %size_entry, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call27)
  %44 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %44, i32 0, i32 4)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call29)
  %47 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %47, i32 1, i32 4)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call31)
  %50 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_size_entry_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call33)
  %55 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %55, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_size_entry_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call35)
  %58 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpSizeEntry*
  %59 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %58, i32 0, double %59, i32 1)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_size_entry_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call37)
  %62 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpSizeEntry*
  %63 = load i32, i32* %size, align 4
  %conv = sitofp i32 %63 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %62, i32 0, double 0.000000e+00, double %conv)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_size_entry_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call39)
  %66 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpSizeEntry*
  %67 = load i32, i32* %size, align 4
  %conv41 = sitofp i32 %67 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %66, i32 0, double 1.000000e+00, double %conv41)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_size_entry_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call42)
  %70 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpSizeEntry*
  %71 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  %conv44 = sitofp i32 %71 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %70, i32 0, double %conv44)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_size_entry_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call45)
  %74 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpSizeEntry*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #5
  %call48 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %74, i8* %call47, i32 1, i32 0, float 0.000000e+00)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @check_size_update_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %78 = bitcast %struct._GtkWidget* %77 to i8*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 2)
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #5
  %call52 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call51)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %toggle, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call53)
  %83 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_toggle_button_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call55)
  %87 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkToggleButton*
  %88 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %87, i32 %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (%struct.data* @cvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %95, void (i8*, %struct._GClosure*)* null, i32 2)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_dialog_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call59)
  %99 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpDialog*
  %call61 = call i32 @gimp_dialog_run(%struct._GimpDialog* %99)
  %cmp62 = icmp eq i32 %call61, -5
  %conv63 = zext i1 %cmp62 to i32
  store i32 %conv63, i32* %run, align 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %100)
  %101 = load i32, i32* %run, align 4
  ret i32 %101
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @do_checkerboard_pattern(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %param = alloca %struct.CheckerboardParam_t, align 1
  %iter = alloca %struct._GimpRgnIterator*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %bpp = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %call = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %bg = getelementptr inbounds %struct.CheckerboardParam_t, %struct.CheckerboardParam_t* %param, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @gimp_drawable_get_color_uchar(i32 %1, %struct._GimpRGB* %color, i8* %arraydecay)
  %call1 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id2, align 4
  %fg = getelementptr inbounds %struct.CheckerboardParam_t, %struct.CheckerboardParam_t* %param, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %fg, i32 0, i32 0
  call void @gimp_drawable_get_color_uchar(i32 %3, %struct._GimpRGB* %color, i8* %arraydecay3)
  %4 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %5, null
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %6, i32* %x1, i32* %y1)
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %7, i32* %width, i32* %height)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp5, align 4
  store i32 %9, i32* %bpp, align 4
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %10, %11
  %12 = load i32, i32* %bpp, align 4
  %mul6 = mul nsw i32 %mul, %12
  %conv = sext i32 %mul6 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call7, i8** %buffer, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %mul8 = mul nsw i32 %14, %15
  %cmp9 = icmp slt i32 %13, %mul8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %x1, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %width, align 4
  %rem = srem i32 %17, %18
  %add = add nsw i32 %16, %rem
  %19 = load i32, i32* %y1, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %width, align 4
  %div = sdiv i32 %20, %21
  %add11 = add nsw i32 %19, %div
  %22 = load i8*, i8** %buffer, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %bpp, align 4
  %mul12 = mul nsw i32 %23, %24
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %25 = load i32, i32* %bpp, align 4
  %26 = bitcast %struct.CheckerboardParam_t* %param to i8*
  call void @checkerboard_func(i32 %add, i32 %add11, i8* %add.ptr, i32 %25, i8* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %29 = load i8*, i8** %buffer, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %bpp, align 4
  %mul13 = mul nsw i32 %30, %31
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %28, i8* %29, i32 %mul13)
  %32 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %32)
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %33, i32 0)
  store %struct._GimpRgnIterator* %call14, %struct._GimpRgnIterator** %iter, align 8
  %34 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %35 = bitcast %struct.CheckerboardParam_t* %param to i8*
  call void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator* %34, void (i32, i32, i8*, i32, i8*)* @checkerboard_func, i8* %35)
  %36 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %36)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %for.end
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

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_get_unit(i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #1

; Function Attrs: nounwind uwtable
define internal void @check_size_update_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  %conv = fptosi double %call2 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  ret void
}

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

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_drawable_get_color_uchar(i32, %struct._GimpRGB*, i8*) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @checkerboard_func(i32 %x, i32 %y, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.CheckerboardParam_t*, align 8
  %val = alloca i32, align 4
  %xp = alloca i32, align 4
  %yp = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.CheckerboardParam_t*
  store %struct.CheckerboardParam_t* %1, %struct.CheckerboardParam_t** %param, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  %call = call i32 @inblock(i32 %3, i32 %4)
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  %call1 = call i32 @inblock(i32 %5, i32 %6)
  %cmp = icmp ne i32 %call, %call1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  %div = sdiv i32 %7, %8
  store i32 %div, i32* %xp, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @cvals, i32 0, i32 1), align 4
  %div2 = sdiv i32 %9, %10
  store i32 %div2, i32* %yp, align 4
  %11 = load i32, i32* %xp, align 4
  %and = and i32 %11, 1
  %12 = load i32, i32* %yp, align 4
  %and3 = and i32 %12, 1
  %cmp4 = icmp ne i32 %and, %and3
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %bpp.addr, align 4
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %val, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load i32, i32* %b, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.CheckerboardParam_t*, %struct.CheckerboardParam_t** %param, align 8
  %fg = getelementptr inbounds %struct.CheckerboardParam_t, %struct.CheckerboardParam_t* %17, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %fg, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %19 = load i32, i32* %b, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.CheckerboardParam_t*, %struct.CheckerboardParam_t** %param, align 8
  %bg = getelementptr inbounds %struct.CheckerboardParam_t, %struct.CheckerboardParam_t* %20, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i64 %idxprom10
  %21 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %21 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv12, %cond.false ]
  %conv13 = trunc i32 %cond to i8
  %22 = load i32, i32* %b, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load i8*, i8** %dest.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %24 = load i32, i32* %b, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator*, void (i32, i32, i8*, i32, i8*)*, i8*) #1

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

; Function Attrs: nounwind uwtable
define internal i32 @inblock(i32 %pos, i32 %size) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %cell = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32*, i32** @inblock.in, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @inblock.len, align 4
  %3 = load i32, i32* %size.addr, align 4
  %4 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %3, %4
  %cmp1 = icmp ne i32 %2, %mul
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load i32*, i32** @inblock.in, align 8
  %6 = bitcast i32* %5 to i8*
  call void @g_free(i8* %6)
  store i32* null, i32** @inblock.in, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %7 = load i32, i32* %size.addr, align 4
  %8 = load i32, i32* %size.addr, align 4
  %mul4 = mul nsw i32 %7, %8
  store i32 %mul4, i32* @inblock.len, align 4
  %9 = load i32*, i32** @inblock.in, align 8
  %cmp5 = icmp eq i32* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.37

if.then.6:                                        ; preds = %if.end.3
  store i32 1, i32* %cell, align 4
  %10 = load i32, i32* @inblock.len, align 4
  %conv = sext i32 %10 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %11 = bitcast i8* %call to i32*
  store i32* %11, i32** @inblock.in, align 8
  store i32 0, i32* %i, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.then.6
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %size.addr, align 4
  %cmp7 = icmp sle i32 %12, %13
  br i1 %cmp7, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %16 = load i32, i32* %cell, align 4
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** @inblock.in, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %idxprom
  store i32 %16, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %19 = load i32, i32* %k, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %k, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %20 = load i32, i32* %cell, align 4
  %tobool14 = icmp ne i32 %20, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %cell, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %22 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %22, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.35, %for.end.17
  %23 = load i32, i32* %j, align 4
  %cmp19 = icmp sge i32 %23, 1
  br i1 %cmp19, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %k, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.29, %for.body.21
  %24 = load i32, i32* %k, align 4
  %25 = load i32, i32* %j, align 4
  %cmp23 = icmp slt i32 %24, %25
  br i1 %cmp23, label %for.body.25, label %for.end.31

for.body.25:                                      ; preds = %for.cond.22
  %26 = load i32, i32* %cell, align 4
  %27 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load i32*, i32** @inblock.in, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %28, i64 %idxprom27
  store i32 %26, i32* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.25
  %29 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond.22

for.end.31:                                       ; preds = %for.cond.22
  %30 = load i32, i32* %cell, align 4
  %tobool32 = icmp ne i32 %30, 0
  %lnot33 = xor i1 %tobool32, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  store i32 %lnot.ext34, i32* %cell, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.31
  %31 = load i32, i32* %j, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.18

for.end.36:                                       ; preds = %for.cond.18
  br label %if.end.37

if.end.37:                                        ; preds = %for.end.36, %if.end.3
  %32 = load i32, i32* %pos.addr, align 4
  %33 = load i32, i32* @inblock.len, align 4
  %sub38 = sub nsw i32 %33, 1
  %rem = srem i32 %32, %sub38
  %idxprom39 = sext i32 %rem to i64
  %34 = load i32*, i32** @inblock.in, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %34, i64 %idxprom39
  %35 = load i32, i32* %arrayidx40, align 4
  ret i32 %35
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
