; ModuleID = './plug-ins/common/blinds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.data = type { i32, i32, i32, i32 }
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
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"angle-dsp\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Angle of Displacement\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"num-segments\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Number of segments in blinds\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"The orientation { ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) }\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"bg-transparent\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Background transparent { FALSE, TRUE }\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"plug-in-blinds\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Simulate an image painted on window blinds\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"More here later\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"_Blinds...\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@bvals = internal global %struct.data { i32 30, i32 3, i32 0, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"Adding blinds\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"blinds\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Blinds\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"gimp-blinds\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"_Horizontal\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"_Vertical\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"_Transparent\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"_Displacement:\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"_Number of segments:\00", align 1
@fanwidths = internal global [100 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
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
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.data* @bvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @blinds_dialog(%struct._GimpDrawable* %8)
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
  %cmp = icmp ne i32 %10, 7
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %11 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %11, 3
  br i1 %cmp12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 0), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 4
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 1), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 5
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %17 = load i32, i32* %d_int3222, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 2), align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 6
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_int3225 = bitcast %union._GimpParamData* %data24 to i32*
  %19 = load i32, i32* %d_int3225, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 3), align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.13, %if.end.11
  br label %sw.epilog

sw.bb.27:                                         ; preds = %do.end
  %call28 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.data* @bvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %if.end.26, %if.end
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id, align 4
  %call29 = call i32 @gimp_drawable_is_rgb(i32 %21)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 0
  %23 = load i32, i32* %drawable_id31, align 4
  %call32 = call i32 @gimp_drawable_is_gray(i32 %23)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false, %sw.epilog
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #4
  %call36 = call i32 @gimp_progress_init(i8* %call35)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @apply_blinds(%struct._GimpDrawable* %24)
  %25 = load i32, i32* %run_mode, align 4
  %cmp37 = icmp ne i32 %25, 1
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.34
  %call39 = call i32 @gimp_displays_flush()
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.34
  %26 = load i32, i32* %run_mode, align 4
  %cmp41 = icmp eq i32 %26, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %call43 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.data* @bvals to i8*), i32 16)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  br label %if.end.45

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.end.44
  %27 = load i32, i32* %status, align 4
  store i32 %27, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %28)
  br label %return

return:                                           ; preds = %if.end.45, %if.then
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
define internal i32 @blinds_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %size_data = alloca %struct._GtkObject*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %horizontal = alloca %struct._GtkWidget*, align 8
  %vertical = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @dialog_update_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %hbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #4
  %31 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 2), align 4
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)) #4
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #4
  %call24 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call21, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 2) to i8*), i32 %31, i8* %call22, i32 0, %struct._GtkWidget** %horizontal, i8* %call23, i32 1, %struct._GtkWidget** %vertical, i8* null)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %frame, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call25)
  %34 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %horizontal, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 2)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vertical, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 2)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #4
  %call30 = call %struct._GtkWidget* @gimp_frame_new(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %frame, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call31)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %toggle, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_container_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call35)
  %52 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkContainer*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_container_add(%struct._GtkContainer* %52, %struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %60, void (i8*, %struct._GClosure*)* null, i32 2)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_toggle_button_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call39)
  %63 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkToggleButton*
  %64 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %63, i32 %64)
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %65, i32 0, i32 0
  %66 = load i32, i32* %drawable_id, align 4
  %call41 = call i32 @gimp_drawable_has_alpha(i32 %66)
  %tobool = icmp ne i32 %call41, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %67, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_toggle_button_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call42)
  %70 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %70, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call44 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %table, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call45)
  %73 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %73, i32 6)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call47)
  %76 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %76, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call49)
  %79 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %79, %struct._GtkWidget* %80, i32 0, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call51)
  %84 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0)) #4
  %85 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %85 to double
  %call54 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %84, i32 0, i32 0, i8* %call53, i32 150, i32 0, double %conv, double 1.000000e+00, double 9.000000e+01, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call54, %struct._GtkObject** %size_data, align 8
  %86 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %87 = bitcast %struct._GtkObject* %86 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.data* @bvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %88 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %89 = bitcast %struct._GtkObject* %88 to i8*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %91, void (i8*, %struct._GClosure*)* null, i32 2)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_table_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call57)
  %94 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkTable*
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0)) #4
  %95 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 1), align 4
  %conv60 = sitofp i32 %95 to double
  %call61 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %94, i32 0, i32 1, i8* %call59, i32 150, i32 0, double %conv60, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 2.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call61, %struct._GtkObject** %size_data, align 8
  %96 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %97 = bitcast %struct._GtkObject* %96 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GtkObject*, %struct._GtkObject** %size_data, align 8
  %99 = bitcast %struct._GtkObject* %98 to i8*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %101, void (i8*, %struct._GClosure*)* null, i32 2)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_dialog_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call64)
  %105 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpDialog*
  %call66 = call i32 @gimp_dialog_run(%struct._GimpDialog* %105)
  %cmp = icmp eq i32 %call66, -5
  %conv67 = zext i1 %cmp to i32
  store i32 %conv67, i32* %run, align 4
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %106)
  %107 = load i32, i32* %run, align 4
  ret i32 %107
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @apply_blinds(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %des_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_rows = alloca i8*, align 8
  %des_rows = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %background = alloca %struct._GimpRGB, align 8
  %bg = alloca [4 x i8], align 1
  %sel_x1 = alloca i32, align 4
  %sel_y1 = alloca i32, align 4
  %sel_width = alloca i32, align 4
  %sel_height = alloca i32, align 4
  %rr = alloca i32, align 4
  %step = alloca i32, align 4
  %i = alloca i32, align 4
  %sr = alloca i32*, align 8
  %dr = alloca i32*, align 8
  %dst = alloca i8*, align 8
  %dummybg = alloca [4 x i8], align 1
  %j = alloca i32, align 4
  %bgdst = alloca i8*, align 8
  %rr94 = alloca i32, align 4
  %step95 = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %0 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @gimp_drawable_get_color_uchar(i32 %2, %struct._GimpRGB* %background, i8* %arraydecay)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_mask_intersect(i32 %4, i32* %sel_x1, i32* %sel_y1, i32* %sel_width, i32* %sel_height)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load i32, i32* %sel_x1, align 4
  %7 = load i32, i32* %sel_y1, align 4
  %8 = load i32, i32* %sel_width, align 4
  %9 = load i32, i32* %sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 0, i32 0)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = load i32, i32* %sel_x1, align 4
  %12 = load i32, i32* %sel_y1, align 4
  %13 = load i32, i32* %sel_width, align 4
  %14 = load i32, i32* %sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %des_rgn, %struct._GimpDrawable* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 1, i32 1)
  %15 = load i32, i32* %sel_width, align 4
  %16 = load i32, i32* %sel_height, align 4
  %cmp = icmp sgt i32 %15, %16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %17 = load i32, i32* %sel_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %18 = load i32, i32* %sel_height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  %mul = mul nsw i32 %cond, 4
  %mul6 = mul nsw i32 %mul, 40
  %conv = sext i32 %mul6 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call7, i8** %src_rows, align 8
  %19 = load i32, i32* %sel_width, align 4
  %20 = load i32, i32* %sel_height, align 4
  %cmp8 = icmp sgt i32 %19, %20
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  %21 = load i32, i32* %sel_width, align 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  %22 = load i32, i32* %sel_height, align 4
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i32 [ %21, %cond.true.10 ], [ %22, %cond.false.11 ]
  %mul14 = mul nsw i32 %cond13, 4
  %mul15 = mul nsw i32 %mul14, 40
  %conv16 = sext i32 %mul15 to i64
  %call17 = call noalias i8* @g_malloc_n(i64 %conv16, i64 1)
  store i8* %call17, i8** %des_rows, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 2), align 4
  %cmp18 = icmp eq i32 %23, 1
  br i1 %cmp18, label %if.then.20, label %if.else.48

if.then.20:                                       ; preds = %cond.end.12
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %if.then.20
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %sel_height, align 4
  %cmp21 = icmp slt i32 %24, %25
  br i1 %cmp21, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %y, align 4
  %add = add nsw i32 %26, 40
  %27 = load i32, i32* %sel_height, align 4
  %cmp23 = icmp sgt i32 %add, %27
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.body
  %28 = load i32, i32* %sel_height, align 4
  %29 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %step, align 4
  br label %if.end.26

if.else:                                          ; preds = %for.body
  store i32 40, i32* %step, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  %30 = load i8*, i8** %src_rows, align 8
  %31 = load i32, i32* %sel_x1, align 4
  %32 = load i32, i32* %sel_y1, align 4
  %33 = load i32, i32* %y, align 4
  %add27 = add nsw i32 %32, %33
  %34 = load i32, i32* %sel_width, align 4
  %35 = load i32, i32* %step, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %30, i32 %31, i32 %add27, i32 %34, i32 %35)
  store i32 0, i32* %rr, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.end.26
  %36 = load i32, i32* %rr, align 4
  %cmp29 = icmp slt i32 %36, 40
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %37 = load i8*, i8** %src_rows, align 8
  %38 = load i32, i32* %sel_width, align 4
  %39 = load i32, i32* %rr, align 4
  %mul32 = mul nsw i32 %38, %39
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %40 = load i32, i32* %bpp, align 4
  %mul33 = mul nsw i32 %mul32, %40
  %idx.ext = sext i32 %mul33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %41 = load i8*, i8** %des_rows, align 8
  %42 = load i32, i32* %sel_width, align 4
  %43 = load i32, i32* %rr, align 4
  %mul34 = mul nsw i32 %42, %43
  %bpp35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %44 = load i32, i32* %bpp35, align 4
  %mul36 = mul nsw i32 %mul34, %44
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %41, i64 %idx.ext37
  %45 = load i32, i32* %sel_width, align 4
  %bpp39 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %46 = load i32, i32* %bpp39, align 4
  %arraydecay40 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @blindsapply(i8* %add.ptr, i8* %add.ptr38, i32 %45, i32 %46, i8* %arraydecay40)
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %47 = load i32, i32* %rr, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %rr, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %48 = load i8*, i8** %des_rows, align 8
  %49 = load i32, i32* %sel_x1, align 4
  %50 = load i32, i32* %sel_y1, align 4
  %51 = load i32, i32* %y, align 4
  %add41 = add nsw i32 %50, %51
  %52 = load i32, i32* %sel_width, align 4
  %53 = load i32, i32* %step, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %des_rgn, i8* %48, i32 %49, i32 %add41, i32 %52, i32 %53)
  %54 = load i32, i32* %y, align 4
  %conv42 = sitofp i32 %54 to double
  %55 = load i32, i32* %sel_height, align 4
  %conv43 = sitofp i32 %55 to double
  %div = fdiv double %conv42, %conv43
  %call44 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %56 = load i32, i32* %y, align 4
  %add46 = add nsw i32 %56, 40
  store i32 %add46, i32* %y, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  br label %if.end.142

if.else.48:                                       ; preds = %cond.end.12
  %57 = load i32, i32* %sel_height, align 4
  %mul49 = mul nsw i32 %57, 4
  %conv50 = sext i32 %mul49 to i64
  %call51 = call noalias i8* @g_malloc_n(i64 %conv50, i64 4)
  %58 = bitcast i8* %call51 to i32*
  store i32* %58, i32** %sr, align 8
  %59 = load i32, i32* %sel_height, align 4
  %mul52 = mul nsw i32 %59, 4
  %conv53 = sext i32 %mul52 to i64
  %call54 = call noalias i8* @g_malloc_n(i64 %conv53, i64 4)
  %60 = bitcast i8* %call54 to i32*
  store i32* %60, i32** %dr, align 8
  %call55 = call noalias i8* @g_malloc_n(i64 160, i64 1)
  store i8* %call55, i8** %dst, align 8
  %61 = bitcast [4 x i8]* %dummybg to i8*
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 4, i32 1, i1 false)
  %62 = load i32*, i32** %dr, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i32, i32* %sel_height, align 4
  %mul56 = mul nsw i32 %64, 4
  %conv57 = sext i32 %mul56 to i64
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 %conv57, i32 4, i1 false)
  store i32 0, i32* %y, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.63, %if.else.48
  %65 = load i32, i32* %y, align 4
  %66 = load i32, i32* %sel_height, align 4
  %cmp59 = icmp slt i32 %65, %66
  br i1 %cmp59, label %for.body.61, label %for.end.65

for.body.61:                                      ; preds = %for.cond.58
  %67 = load i32, i32* %y, align 4
  %add62 = add nsw i32 %67, 1
  %68 = load i32, i32* %y, align 4
  %idxprom = sext i32 %68 to i64
  %69 = load i32*, i32** %sr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %69, i64 %idxprom
  store i32 %add62, i32* %arrayidx, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.61
  %70 = load i32, i32* %y, align 4
  %inc64 = add nsw i32 %70, 1
  store i32 %inc64, i32* %y, align 4
  br label %for.cond.58

for.end.65:                                       ; preds = %for.cond.58
  %71 = load i32*, i32** %sr, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32*, i32** %dr, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = load i32, i32* %sel_height, align 4
  %arraydecay66 = getelementptr inbounds [4 x i8], [4 x i8]* %dummybg, i32 0, i32 0
  call void @blindsapply(i8* %72, i8* %74, i32 %75, i32 4, i8* %arraydecay66)
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.87, %for.end.65
  %76 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %76, 40
  br i1 %cmp68, label %for.body.70, label %for.end.89

for.body.70:                                      ; preds = %for.cond.67
  %77 = load i32, i32* %i, align 4
  %bpp71 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %78 = load i32, i32* %bpp71, align 4
  %mul72 = mul nsw i32 %77, %78
  %idxprom73 = sext i32 %mul72 to i64
  %79 = load i8*, i8** %dst, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %79, i64 %idxprom73
  store i8* %arrayidx74, i8** %bgdst, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.84, %for.body.70
  %80 = load i32, i32* %j, align 4
  %bpp76 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %81 = load i32, i32* %bpp76, align 4
  %cmp77 = icmp slt i32 %80, %81
  br i1 %cmp77, label %for.body.79, label %for.end.86

for.body.79:                                      ; preds = %for.cond.75
  %82 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %82 to i64
  %arrayidx81 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i64 %idxprom80
  %83 = load i8, i8* %arrayidx81, align 1
  %84 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %84 to i64
  %85 = load i8*, i8** %bgdst, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %85, i64 %idxprom82
  store i8 %83, i8* %arrayidx83, align 1
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.79
  %86 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %86, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond.75

for.end.86:                                       ; preds = %for.cond.75
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.86
  %87 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %87, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.67

for.end.89:                                       ; preds = %for.cond.67
  store i32 0, i32* %x, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.139, %for.end.89
  %88 = load i32, i32* %x, align 4
  %89 = load i32, i32* %sel_width, align 4
  %cmp91 = icmp slt i32 %88, %89
  br i1 %cmp91, label %for.body.93, label %for.end.141

for.body.93:                                      ; preds = %for.cond.90
  %90 = load i32, i32* %x, align 4
  %add96 = add nsw i32 %90, 40
  %91 = load i32, i32* %sel_width, align 4
  %cmp97 = icmp sgt i32 %add96, %91
  br i1 %cmp97, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %for.body.93
  %92 = load i32, i32* %sel_width, align 4
  %93 = load i32, i32* %x, align 4
  %sub100 = sub nsw i32 %92, %93
  store i32 %sub100, i32* %step95, align 4
  br label %if.end.102

if.else.101:                                      ; preds = %for.body.93
  store i32 40, i32* %step95, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.99
  %94 = load i8*, i8** %src_rows, align 8
  %95 = load i32, i32* %sel_x1, align 4
  %96 = load i32, i32* %x, align 4
  %add103 = add nsw i32 %95, %96
  %97 = load i32, i32* %sel_y1, align 4
  %98 = load i32, i32* %step95, align 4
  %99 = load i32, i32* %sel_height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %94, i32 %add103, i32 %97, i32 %98, i32 %99)
  store i32 0, i32* %rr94, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.131, %if.end.102
  %100 = load i32, i32* %rr94, align 4
  %101 = load i32, i32* %sel_height, align 4
  %cmp105 = icmp slt i32 %100, %101
  br i1 %cmp105, label %for.body.107, label %for.end.133

for.body.107:                                     ; preds = %for.cond.104
  %102 = load i32, i32* %rr94, align 4
  %idxprom108 = sext i32 %102 to i64
  %103 = load i32*, i32** %dr, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %103, i64 %idxprom108
  %104 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp eq i32 %104, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %for.body.107
  %105 = load i8*, i8** %dst, align 8
  store i8* %105, i8** %p, align 8
  br label %if.end.122

if.else.113:                                      ; preds = %for.body.107
  %106 = load i8*, i8** %src_rows, align 8
  %107 = load i32, i32* %step95, align 4
  %bpp114 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %108 = load i32, i32* %bpp114, align 4
  %mul115 = mul nsw i32 %107, %108
  %109 = load i32, i32* %rr94, align 4
  %idxprom116 = sext i32 %109 to i64
  %110 = load i32*, i32** %dr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %110, i64 %idxprom116
  %111 = load i32, i32* %arrayidx117, align 4
  %sub118 = sub nsw i32 %111, 1
  %mul119 = mul nsw i32 %mul115, %sub118
  %idx.ext120 = sext i32 %mul119 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %106, i64 %idx.ext120
  store i8* %add.ptr121, i8** %p, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.113, %if.then.112
  %112 = load i8*, i8** %des_rows, align 8
  %113 = load i32, i32* %rr94, align 4
  %114 = load i32, i32* %step95, align 4
  %mul123 = mul nsw i32 %113, %114
  %bpp124 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %115 = load i32, i32* %bpp124, align 4
  %mul125 = mul nsw i32 %mul123, %115
  %idx.ext126 = sext i32 %mul125 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %112, i64 %idx.ext126
  %116 = load i8*, i8** %p, align 8
  %117 = load i32, i32* %step95, align 4
  %bpp128 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %118 = load i32, i32* %bpp128, align 4
  %mul129 = mul nsw i32 %117, %118
  %conv130 = sext i32 %mul129 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr127, i8* %116, i64 %conv130, i32 1, i1 false)
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.122
  %119 = load i32, i32* %rr94, align 4
  %inc132 = add nsw i32 %119, 1
  store i32 %inc132, i32* %rr94, align 4
  br label %for.cond.104

for.end.133:                                      ; preds = %for.cond.104
  %120 = load i8*, i8** %des_rows, align 8
  %121 = load i32, i32* %sel_x1, align 4
  %122 = load i32, i32* %x, align 4
  %add134 = add nsw i32 %121, %122
  %123 = load i32, i32* %sel_y1, align 4
  %124 = load i32, i32* %step95, align 4
  %125 = load i32, i32* %sel_height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %des_rgn, i8* %120, i32 %add134, i32 %123, i32 %124, i32 %125)
  %126 = load i32, i32* %x, align 4
  %conv135 = sitofp i32 %126 to double
  %127 = load i32, i32* %sel_width, align 4
  %conv136 = sitofp i32 %127 to double
  %div137 = fdiv double %conv135, %conv136
  %call138 = call i32 @gimp_progress_update(double %div137)
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.end.133
  %128 = load i32, i32* %x, align 4
  %add140 = add nsw i32 %128, 40
  store i32 %add140, i32* %x, align 4
  br label %for.cond.90

for.end.141:                                      ; preds = %for.cond.90
  %129 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %129)
  %130 = load i32*, i32** %sr, align 8
  %131 = bitcast i32* %130 to i8*
  call void @g_free(i8* %131)
  %132 = load i32*, i32** %dr, align 8
  %133 = bitcast i32* %132 to i8*
  call void @g_free(i8* %133)
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %for.end.47
  %134 = load i8*, i8** %src_rows, align 8
  call void @g_free(i8* %134)
  %135 = load i8*, i8** %des_rows, align 8
  call void @g_free(i8* %135)
  %call143 = call i32 @gimp_progress_update(double 1.000000e+00)
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %136)
  %137 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id144 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %137, i32 0, i32 0
  %138 = load i32, i32* %drawable_id144, align 4
  %call145 = call i32 @gimp_drawable_merge_shadow(i32 %138, i32 1)
  %139 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id146 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %139, i32 0, i32 0
  %140 = load i32, i32* %drawable_id146, align 4
  %141 = load i32, i32* %sel_x1, align 4
  %142 = load i32, i32* %sel_y1, align 4
  %143 = load i32, i32* %sel_width, align 4
  %144 = load i32, i32* %sel_height, align 4
  %call147 = call i32 @gimp_drawable_update(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  br label %return

return:                                           ; preds = %if.end.142, %if.then.4
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

declare %struct._GtkWidget* @gimp_aspect_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_preview(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %y = alloca i32, align 4
  %p = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %cache = alloca i8*, align 8
  %background = alloca %struct._GimpRGB, align 8
  %bg = alloca [4 x i8], align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  %sr = alloca i8*, align 8
  %dr = alloca i8*, align 8
  %dummybg = alloca [4 x i8], align 1
  %j = alloca i32, align 4
  %bd = alloca i32, align 4
  %dst = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %0, i32* %width, i32* %height)
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_bpp(i32 %2)
  store i32 %call, i32* %bpp, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id1, align 4
  %call2 = call i8* @gimp_drawable_get_thumbnail_data(i32 %4, i32* %width, i32* %height, i32* %bpp)
  store i8* %call2, i8** %cache, align 8
  %5 = load i8*, i8** %cache, align 8
  store i8* %5, i8** %p, align 8
  %call3 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %6 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id4, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @gimp_drawable_get_color_uchar(i32 %8, %struct._GimpRGB* %background, i8* %arraydecay)
  %9 = load i32, i32* %width, align 4
  %10 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %bpp, align 4
  %mul5 = mul nsw i32 %mul, %11
  %conv = sext i32 %mul5 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call6, i8** %buffer, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %height, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %p, align 8
  %16 = load i8*, i8** %buffer, align 8
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %width, align 4
  %mul11 = mul nsw i32 %17, %18
  %19 = load i32, i32* %bpp, align 4
  %mul12 = mul nsw i32 %mul11, %19
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %bpp, align 4
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @blindsapply(i8* %15, i8* %add.ptr, i32 %20, i32 %21, i8* %arraydecay13)
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %bpp, align 4
  %mul14 = mul nsw i32 %22, %23
  %24 = load i8*, i8** %p, align 8
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %24, i64 %idx.ext15
  store i8* %add.ptr16, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %y, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.81

if.else:                                          ; preds = %if.end
  %26 = load i32, i32* %height, align 4
  %mul17 = mul nsw i32 %26, 4
  %conv18 = sext i32 %mul17 to i64
  %call19 = call noalias i8* @g_malloc_n(i64 %conv18, i64 1)
  store i8* %call19, i8** %sr, align 8
  %27 = load i32, i32* %height, align 4
  %mul20 = mul nsw i32 %27, 4
  %conv21 = sext i32 %mul20 to i64
  %call22 = call noalias i8* @g_malloc0_n(i64 %conv21, i64 1)
  store i8* %call22, i8** %dr, align 8
  %28 = bitcast [4 x i8]* %dummybg to i8*
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 4, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.39, %if.else
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %width, align 4
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body.26, label %for.end.41

for.body.26:                                      ; preds = %for.cond.23
  %31 = load i32, i32* %bpp, align 4
  store i32 %31, i32* %bd, align 4
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %bd, align 4
  %mul27 = mul nsw i32 %32, %33
  %idxprom = sext i32 %mul27 to i64
  %34 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 %idxprom
  store i8* %arrayidx, i8** %dst, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.36, %for.body.26
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %bd, align 4
  %cmp29 = icmp slt i32 %35, %36
  br i1 %cmp29, label %for.body.31, label %for.end.38

for.body.31:                                      ; preds = %for.cond.28
  %37 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i64 %idxprom32
  %38 = load i8, i8* %arrayidx33, align 1
  %39 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %39 to i64
  %40 = load i8*, i8** %dst, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %40, i64 %idxprom34
  store i8 %38, i8* %arrayidx35, align 1
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.31
  %41 = load i32, i32* %j, align 4
  %inc37 = add nsw i32 %41, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond.28

for.end.38:                                       ; preds = %for.cond.28
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %42 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %42, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.23

for.end.41:                                       ; preds = %for.cond.23
  store i32 0, i32* %y, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.49, %for.end.41
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %height, align 4
  %cmp43 = icmp slt i32 %43, %44
  br i1 %cmp43, label %for.body.45, label %for.end.51

for.body.45:                                      ; preds = %for.cond.42
  %45 = load i32, i32* %y, align 4
  %add = add nsw i32 %45, 1
  %conv46 = trunc i32 %add to i8
  %46 = load i32, i32* %y, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load i8*, i8** %sr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %47, i64 %idxprom47
  store i8 %conv46, i8* %arrayidx48, align 1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.45
  %48 = load i32, i32* %y, align 4
  %inc50 = add nsw i32 %48, 1
  store i32 %inc50, i32* %y, align 4
  br label %for.cond.42

for.end.51:                                       ; preds = %for.cond.42
  %49 = load i8*, i8** %sr, align 8
  %50 = load i8*, i8** %dr, align 8
  %51 = load i32, i32* %height, align 4
  %arraydecay52 = getelementptr inbounds [4 x i8], [4 x i8]* %dummybg, i32 0, i32 0
  call void @blindsapply(i8* %49, i8* %50, i32 %51, i32 1, i8* %arraydecay52)
  store i32 0, i32* %y, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.78, %for.end.51
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %height, align 4
  %cmp54 = icmp slt i32 %52, %53
  br i1 %cmp54, label %for.body.56, label %for.end.80

for.body.56:                                      ; preds = %for.cond.53
  %54 = load i32, i32* %y, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load i8*, i8** %dr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %55, i64 %idxprom57
  %56 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %56 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %for.body.56
  %57 = load i8*, i8** %buffer, align 8
  store i8* %57, i8** %p, align 8
  br label %if.end.71

if.else.63:                                       ; preds = %for.body.56
  %58 = load i8*, i8** %cache, align 8
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %bpp, align 4
  %mul64 = mul nsw i32 %59, %60
  %61 = load i32, i32* %y, align 4
  %idxprom65 = sext i32 %61 to i64
  %62 = load i8*, i8** %dr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %62, i64 %idxprom65
  %63 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %63 to i32
  %sub = sub nsw i32 %conv67, 1
  %mul68 = mul nsw i32 %mul64, %sub
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %58, i64 %idx.ext69
  store i8* %add.ptr70, i8** %p, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.63, %if.then.62
  %64 = load i8*, i8** %buffer, align 8
  %65 = load i32, i32* %y, align 4
  %66 = load i32, i32* %width, align 4
  %mul72 = mul nsw i32 %65, %66
  %67 = load i32, i32* %bpp, align 4
  %mul73 = mul nsw i32 %mul72, %67
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %64, i64 %idx.ext74
  %68 = load i8*, i8** %p, align 8
  %69 = load i32, i32* %width, align 4
  %70 = load i32, i32* %bpp, align 4
  %mul76 = mul nsw i32 %69, %70
  %conv77 = sext i32 %mul76 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr75, i8* %68, i64 %conv77, i32 1, i1 false)
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.71
  %71 = load i32, i32* %y, align 4
  %inc79 = add nsw i32 %71, 1
  store i32 %inc79, i32* %y, align 4
  br label %for.cond.53

for.end.80:                                       ; preds = %for.cond.53
  %72 = load i8*, i8** %sr, align 8
  call void @g_free(i8* %72)
  %73 = load i8*, i8** %dr, align 8
  call void @g_free(i8* %73)
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %for.end
  %74 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %75 = load i8*, i8** %buffer, align 8
  %76 = load i32, i32* %width, align 4
  %77 = load i32, i32* %bpp, align 4
  %mul82 = mul nsw i32 %76, %77
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %74, i8* %75, i32 %mul82)
  %78 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %78)
  %79 = load i8*, i8** %cache, align 8
  call void @g_free(i8* %79)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i8* @gimp_drawable_get_thumbnail_data(i32, i32*, i32*, i32*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_drawable_get_color_uchar(i32, %struct._GimpRGB*, i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @blindsapply(i8* %srow, i8* %drow, i32 %width, i32 %bpp, i8* %bg) #0 {
entry:
  %srow.addr = alloca i8*, align 8
  %drow.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %bg.addr = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ang = alloca double, align 8
  %available = alloca i32, align 4
  %point = alloca i32, align 4
  %dx = alloca i32, align 4
  %fw = alloca i32, align 4
  store i8* %srow, i8** %srow.addr, align 8
  store i8* %drow, i8** %drow.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %bg, i8** %bg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %bpp.addr, align 4
  %mul = mul nsw i32 %2, %3
  %idxprom = sext i32 %mul to i64
  %4 = load i8*, i8** %drow.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8* %arrayidx, i8** %dst, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %bpp.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i8*, i8** %bg.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i8*, i8** %dst, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  store i8 %9, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %14 = load i32, i32* %width.addr, align 4
  store i32 %14, i32* %available, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.19, %for.end.10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 1), align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body.13, label %for.end.21

for.body.13:                                      ; preds = %for.cond.11
  %17 = load i32, i32* %available, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 1), align 4
  %19 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %18, %19
  %div = sdiv i32 %17, %sub
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom14
  store i32 %div, i32* %arrayidx15, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom16
  %22 = load i32, i32* %arrayidx17, align 4
  %23 = load i32, i32* %available, align 4
  %sub18 = sub nsw i32 %23, %22
  store i32 %sub18, i32* %available, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.13
  %24 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %24, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  store i32 0, i32* %available, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.49, %for.end.21
  %25 = load i32, i32* %k, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 1), align 4
  %cmp23 = icmp sle i32 %25, %26
  br i1 %cmp23, label %for.body.24, label %for.end.51

for.body.24:                                      ; preds = %for.cond.22
  %27 = load i32, i32* %available, align 4
  %28 = load i32, i32* %k, align 4
  %sub25 = sub nsw i32 %28, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom26
  %29 = load i32, i32* %arrayidx27, align 4
  %div28 = sdiv i32 %29, 2
  %add = add nsw i32 %27, %div28
  store i32 %add, i32* %point, align 4
  %30 = load i32, i32* %k, align 4
  %sub29 = sub nsw i32 %30, 1
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom30
  %31 = load i32, i32* %arrayidx31, align 4
  %32 = load i32, i32* %available, align 4
  %add32 = add nsw i32 %32, %31
  store i32 %add32, i32* %available, align 4
  %33 = load i32, i32* %point, align 4
  %34 = load i32, i32* %bpp.addr, align 4
  %mul33 = mul nsw i32 %33, %34
  %idxprom34 = sext i32 %mul33 to i64
  %35 = load i8*, i8** %srow.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %35, i64 %idxprom34
  store i8* %arrayidx35, i8** %src, align 8
  %36 = load i32, i32* %point, align 4
  %37 = load i32, i32* %bpp.addr, align 4
  %mul36 = mul nsw i32 %36, %37
  %idxprom37 = sext i32 %mul36 to i64
  %38 = load i8*, i8** %drow.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 %idxprom37
  store i8* %arrayidx38, i8** %dst, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.46, %for.body.24
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %bpp.addr, align 4
  %cmp40 = icmp slt i32 %39, %40
  br i1 %cmp40, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.39
  %41 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load i8*, i8** %src, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %42, i64 %idxprom42
  %43 = load i8, i8* %arrayidx43, align 1
  %44 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %44 to i64
  %45 = load i8*, i8** %dst, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %45, i64 %idxprom44
  store i8 %43, i8* %arrayidx45, align 1
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.41
  %46 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %46, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond.39

for.end.48:                                       ; preds = %for.cond.39
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %47 = load i32, i32* %k, align 4
  %inc50 = add nsw i32 %47, 1
  store i32 %inc50, i32* %k, align 4
  br label %for.cond.22

for.end.51:                                       ; preds = %for.cond.22
  %48 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 0), align 4
  %mul52 = mul nsw i32 %48, 2
  %conv = sitofp i32 %mul52 to double
  %mul53 = fmul double %conv, 0x400921FB54442D18
  %div54 = fdiv double %mul53, 3.600000e+02
  store double %div54, double* %ang, align 8
  %49 = load double, double* %ang, align 8
  %call = call double @cos(double %49) #4
  %call55 = call double @fabs(double %call) #5
  %sub56 = fsub double 1.000000e+00, %call55
  store double %sub56, double* %ang, align 8
  store i32 0, i32* %available, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.137, %for.end.51
  %50 = load i32, i32* %k, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @bvals, i32 0, i32 1), align 4
  %cmp58 = icmp slt i32 %50, %51
  br i1 %cmp58, label %for.body.60, label %for.end.139

for.body.60:                                      ; preds = %for.cond.57
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.131, %for.body.60
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %53 to i64
  %arrayidx63 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom62
  %54 = load i32, i32* %arrayidx63, align 4
  %div64 = sdiv i32 %54, 2
  %cmp65 = icmp slt i32 %52, %div64
  br i1 %cmp65, label %for.body.67, label %for.end.133

for.body.67:                                      ; preds = %for.cond.61
  %55 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %55 to i64
  %arrayidx69 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom68
  %56 = load i32, i32* %arrayidx69, align 4
  %div70 = sdiv i32 %56, 2
  store i32 %div70, i32* %fw, align 4
  %57 = load double, double* %ang, align 8
  %58 = load i32, i32* %fw, align 4
  %conv71 = sitofp i32 %58 to double
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %fw, align 4
  %rem = srem i32 %59, %60
  %conv72 = sitofp i32 %rem to double
  %sub73 = fsub double %conv71, %conv72
  %mul74 = fmul double %57, %sub73
  %conv75 = fptosi double %mul74 to i32
  store i32 %conv75, i32* %dx, align 4
  %61 = load i32, i32* %available, align 4
  %62 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %61, %62
  %63 = load i32, i32* %bpp.addr, align 4
  %mul77 = mul nsw i32 %add76, %63
  %idxprom78 = sext i32 %mul77 to i64
  %64 = load i8*, i8** %srow.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %64, i64 %idxprom78
  store i8* %arrayidx79, i8** %src, align 8
  %65 = load i32, i32* %available, align 4
  %66 = load i32, i32* %i, align 4
  %add80 = add nsw i32 %65, %66
  %67 = load i32, i32* %dx, align 4
  %add81 = add nsw i32 %add80, %67
  %68 = load i32, i32* %bpp.addr, align 4
  %mul82 = mul nsw i32 %add81, %68
  %idxprom83 = sext i32 %mul82 to i64
  %69 = load i8*, i8** %drow.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %69, i64 %idxprom83
  store i8* %arrayidx84, i8** %dst, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.93, %for.body.67
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %bpp.addr, align 4
  %cmp86 = icmp slt i32 %70, %71
  br i1 %cmp86, label %for.body.88, label %for.end.95

for.body.88:                                      ; preds = %for.cond.85
  %72 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %72 to i64
  %73 = load i8*, i8** %src, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %73, i64 %idxprom89
  %74 = load i8, i8* %arrayidx90, align 1
  %75 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %75 to i64
  %76 = load i8*, i8** %dst, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %76, i64 %idxprom91
  store i8 %74, i8* %arrayidx92, align 1
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.88
  %77 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %77, 1
  store i32 %inc94, i32* %j, align 4
  br label %for.cond.85

for.end.95:                                       ; preds = %for.cond.85
  %78 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %78, 1
  store i32 %add96, i32* %j, align 4
  %79 = load i32, i32* %available, align 4
  %80 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %80 to i64
  %arrayidx98 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom97
  %81 = load i32, i32* %arrayidx98, align 4
  %add99 = add nsw i32 %79, %81
  %82 = load i32, i32* %j, align 4
  %sub100 = sub nsw i32 %add99, %82
  %83 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %83 to i64
  %arrayidx102 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom101
  %84 = load i32, i32* %arrayidx102, align 4
  %rem103 = srem i32 %84, 2
  %sub104 = sub nsw i32 %sub100, %rem103
  %85 = load i32, i32* %bpp.addr, align 4
  %mul105 = mul nsw i32 %sub104, %85
  %idxprom106 = sext i32 %mul105 to i64
  %86 = load i8*, i8** %srow.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %86, i64 %idxprom106
  store i8* %arrayidx107, i8** %src, align 8
  %87 = load i32, i32* %available, align 4
  %88 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %88 to i64
  %arrayidx109 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom108
  %89 = load i32, i32* %arrayidx109, align 4
  %add110 = add nsw i32 %87, %89
  %90 = load i32, i32* %j, align 4
  %sub111 = sub nsw i32 %add110, %90
  %91 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %91 to i64
  %arrayidx113 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom112
  %92 = load i32, i32* %arrayidx113, align 4
  %rem114 = srem i32 %92, 2
  %sub115 = sub nsw i32 %sub111, %rem114
  %93 = load i32, i32* %dx, align 4
  %sub116 = sub nsw i32 %sub115, %93
  %94 = load i32, i32* %bpp.addr, align 4
  %mul117 = mul nsw i32 %sub116, %94
  %idxprom118 = sext i32 %mul117 to i64
  %95 = load i8*, i8** %drow.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %95, i64 %idxprom118
  store i8* %arrayidx119, i8** %dst, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.128, %for.end.95
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %bpp.addr, align 4
  %cmp121 = icmp slt i32 %96, %97
  br i1 %cmp121, label %for.body.123, label %for.end.130

for.body.123:                                     ; preds = %for.cond.120
  %98 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %98 to i64
  %99 = load i8*, i8** %src, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %99, i64 %idxprom124
  %100 = load i8, i8* %arrayidx125, align 1
  %101 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %101 to i64
  %102 = load i8*, i8** %dst, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %102, i64 %idxprom126
  store i8 %100, i8* %arrayidx127, align 1
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.123
  %103 = load i32, i32* %j, align 4
  %inc129 = add nsw i32 %103, 1
  store i32 %inc129, i32* %j, align 4
  br label %for.cond.120

for.end.130:                                      ; preds = %for.cond.120
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %104 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %104, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.61

for.end.133:                                      ; preds = %for.cond.61
  %105 = load i32, i32* %k, align 4
  %idxprom134 = sext i32 %105 to i64
  %arrayidx135 = getelementptr inbounds [100 x i32], [100 x i32]* @fanwidths, i32 0, i64 %idxprom134
  %106 = load i32, i32* %arrayidx135, align 4
  %107 = load i32, i32* %available, align 4
  %add136 = add nsw i32 %107, %106
  store i32 %add136, i32* %available, align 4
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end.133
  %108 = load i32, i32* %k, align 4
  %inc138 = add nsw i32 %108, 1
  store i32 %inc138, i32* %k, align 4
  br label %for.cond.57

for.end.139:                                      ; preds = %for.cond.57
  ret void
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @g_free(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @cos(double) #2

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
