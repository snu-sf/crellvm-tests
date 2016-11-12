; ModuleID = './plug-ins/common/lens-apply.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.LensValues = type { double, i32, i32, i32 }
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
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"refraction\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Lens refraction index\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"keep-surroundings\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Keep lens surroundings { TRUE, FALSE }\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"set-background\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Set lens surroundings to BG value { TRUE, FALSE }\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"set-transparent\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Set lens surroundings transparent { TRUE, FALSE }\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"plug-in-applylens\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Simulate an elliptical lens over the image\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"This plug-in uses Snell's law to draw an ellipsoid lens over the image\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Morten Eriksen\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Apply _Lens...\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@lvals = internal global %struct.LensValues { double 1.700000e+00, i32 1, i32 0, i32 0 }, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"Applying lens\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"lens-apply\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Lens Effect\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"gimp-lens-apply\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"_Keep original surroundings\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"_Set surroundings to index 0\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"_Set surroundings to background color\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"_Make surroundings transparent\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"_Lens refraction index:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
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
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.LensValues* @lvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @lens_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 7
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %10 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %10, 3
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %if.end.11
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data15 to double*
  %12 = load double, double* %d_float, align 8
  store double %12, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 0), align 8
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 4
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %14 = load i32, i32* %d_int3218, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 1), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 5
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_int3221 = bitcast %union._GimpParamData* %data20 to i32*
  %16 = load i32, i32* %d_int3221, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 2), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 6
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %18 = load i32, i32* %d_int3224, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 3), align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.13, %if.end.11
  %19 = load i32, i32* %status, align 4
  %cmp26 = icmp eq i32 %19, 3
  br i1 %cmp26, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.25
  %20 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 0), align 8
  %cmp27 = fcmp olt double %20, 1.000000e+00
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true, %if.end.25
  br label %sw.epilog

sw.bb.30:                                         ; preds = %do.end
  %call31 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.LensValues* @lvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.30, %if.end.29, %if.end
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width, align 4
  %call32 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %22, %call32
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0)) #5
  %call34 = call i32 @gimp_progress_init(i8* %call33)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @drawlens(%struct._GimpDrawable* %23, %struct._GimpPreview* null)
  %24 = load i32, i32* %run_mode, align 4
  %cmp35 = icmp ne i32 %24, 1
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %sw.epilog
  %call38 = call i32 @gimp_displays_flush()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %sw.epilog
  %25 = load i32, i32* %run_mode, align 4
  %cmp40 = icmp eq i32 %25, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %call43 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.LensValues* @lvals to i8*), i32 24)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.39
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %27)
  br label %return

return:                                           ; preds = %if.end.44, %if.then
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
define internal i32 @lens_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_aspect_preview_new(%struct._GimpDrawable* %16, i32* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @drawlens to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0)) #5
  %call22 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* null, i8* %call21)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %toggle, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call23)
  %33 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 0, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_toggle_button_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkToggleButton*
  %38 = load i32, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %37, i32 %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 2)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_radio_button_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call29)
  %48 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkRadioButton*
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id, align 4
  %call31 = call i32 @gimp_drawable_is_indexed(i32 %50)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call32, %cond.true ], [ %call33, %cond.false ]
  %call34 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %48, i8* %cond)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %toggle, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call35)
  %53 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_toggle_button_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call37)
  %57 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkToggleButton*
  %58 = load i32, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %57, i32 %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 2)
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id41 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %66, i32 0, i32 0
  %67 = load i32, i32* %drawable_id41, align 4
  %call42 = call i32 @gimp_drawable_has_alpha(i32 %67)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_radio_button_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call44)
  %70 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkRadioButton*
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0)) #5
  %call47 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton* %70, i8* %call46)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %toggle, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call48)
  %73 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 0, i32 0, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_toggle_button_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call50)
  %77 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkToggleButton*
  %78 = load i32, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %77, i32 %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call54 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %hbox, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call55)
  %88 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0)) #5
  %call58 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call57)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %label, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_box_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call59)
  %92 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkBox*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %92, %struct._GtkWidget* %93, i32 0, i32 0, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %95 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 0), align 8
  %call61 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %95, double 1.000000e+00, double 1.000000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %spinbutton, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #4
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call62)
  %98 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %98, %struct._GtkWidget* %99, i32 0, i32 0, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_label_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call64)
  %103 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkLabel*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %103, %struct._GtkWidget* %104)
  %105 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %106 = bitcast %struct._GtkObject* %105 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.LensValues* @lvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %107 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %108 = bitcast %struct._GtkObject* %107 to i8*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %110 = bitcast %struct._GtkWidget* %109 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %110, void (i8*, %struct._GClosure*)* null, i32 2)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_dialog_get_type() #4
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call68)
  %115 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpDialog*
  %call70 = call i32 @gimp_dialog_run(%struct._GimpDialog* %115)
  %cmp = icmp eq i32 %call70, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %116)
  %117 = load i32, i32* %run, align 4
  ret i32 %117
}

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @drawlens(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawtype = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %row = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %i = alloca i32, align 4
  %col = alloca i32, align 4
  %regionwidth = alloca i64, align 8
  %regionheight = alloca i64, align 8
  %dx = alloca float, align 4
  %dy = alloca float, align 4
  %xsqr = alloca float, align 4
  %ysqr = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %asqr = alloca float, align 4
  %bsqr = alloca float, align 4
  %csqr = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %pixelpos = alloca i64, align 8
  %pos = alloca i64, align 8
  %background = alloca %struct._GimpRGB, align 8
  %bgr_red = alloca i8, align 1
  %bgr_blue = alloca i8, align 1
  %bgr_green = alloca i8, align 1
  %alphaval = alloca i8, align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call, i32* %drawtype, align 4
  %call1 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %background, i8* %bgr_red, i8* %bgr_green, i8* %bgr_blue)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 3
  %3 = load i32, i32* %bpp, align 4
  store i32 %3, i32* %bytes, align 4
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %5, i32* %x1, i32* %y1)
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %6, i32* %width, i32* %height)
  %7 = load i32, i32* %x1, align 4
  %8 = load i32, i32* %width, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %x2, align 4
  %9 = load i32, i32* %y1, align 4
  %10 = load i32, i32* %height, align 4
  %add2 = add nsw i32 %9, %10
  store i32 %add2, i32* %y2, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id3, align 4
  %call4 = call i8* @gimp_drawable_get_thumbnail_data(i32 %12, i32* %width, i32* %height, i32* %bytes)
  store i8* %call4, i8** %src, align 8
  %13 = load i32, i32* %width, align 4
  %conv = sext i32 %13 to i64
  store i64 %conv, i64* %regionwidth, align 8
  %14 = load i32, i32* %height, align 4
  %conv5 = sext i32 %14 to i64
  store i64 %conv5, i64* %regionheight, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_mask_bounds(i32 %16, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %17, %18
  %conv8 = sext i32 %sub to i64
  store i64 %conv8, i64* %regionwidth, align 8
  %19 = load i32, i32* %y2, align 4
  %20 = load i32, i32* %y1, align 4
  %sub9 = sub nsw i32 %19, %20
  %conv10 = sext i32 %sub9 to i64
  store i64 %conv10, i64* %regionheight, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width11, align 4
  store i32 %22, i32* %width, align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 2
  %24 = load i32, i32* %height12, align 4
  store i32 %24, i32* %height, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %26, i32 %27, i32 0, i32 0)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %28, i32 0, i32 0, i32 %29, i32 %30, i32 1, i32 1)
  %31 = load i64, i64* %regionwidth, align 8
  %32 = load i64, i64* %regionheight, align 8
  %mul = mul nsw i64 %31, %32
  %33 = load i32, i32* %bytes, align 4
  %conv13 = sext i32 %33 to i64
  %mul14 = mul nsw i64 %mul, %conv13
  %call15 = call noalias i8* @g_malloc_n(i64 %mul14, i64 1)
  store i8* %call15, i8** %src, align 8
  %34 = load i8*, i8** %src, align 8
  %35 = load i32, i32* %x1, align 4
  %36 = load i32, i32* %y1, align 4
  %37 = load i64, i64* %regionwidth, align 8
  %conv16 = trunc i64 %37 to i32
  %38 = load i64, i64* %regionheight, align 8
  %conv17 = trunc i64 %38 to i32
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %srcPR, i8* %34, i32 %35, i32 %36, i32 %conv16, i32 %conv17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %39 = load i64, i64* %regionwidth, align 8
  %40 = load i64, i64* %regionheight, align 8
  %mul18 = mul nsw i64 %39, %40
  %41 = load i32, i32* %bytes, align 4
  %conv19 = sext i32 %41 to i64
  %mul20 = mul nsw i64 %mul18, %conv19
  %call21 = call noalias i8* @g_malloc_n(i64 %mul20, i64 1)
  store i8* %call21, i8** %dest, align 8
  %42 = load i64, i64* %regionwidth, align 8
  %div = sdiv i64 %42, 2
  %conv22 = sitofp i64 %div to float
  store float %conv22, float* %a, align 4
  %43 = load i64, i64* %regionheight, align 8
  %div23 = sdiv i64 %43, 2
  %conv24 = sitofp i64 %div23 to float
  store float %conv24, float* %b, align 4
  %44 = load float, float* %a, align 4
  %45 = load float, float* %b, align 4
  %cmp = fcmp olt float %44, %45
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %46 = load float, float* %a, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %47 = load float, float* %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %46, %cond.true ], [ %47, %cond.false ]
  store float %cond, float* %c, align 4
  %48 = load float, float* %a, align 4
  %49 = load float, float* %a, align 4
  %mul26 = fmul float %48, %49
  store float %mul26, float* %asqr, align 4
  %50 = load float, float* %b, align 4
  %51 = load float, float* %b, align 4
  %mul27 = fmul float %50, %51
  store float %mul27, float* %bsqr, align 4
  %52 = load float, float* %c, align 4
  %53 = load float, float* %c, align 4
  %mul28 = fmul float %52, %53
  store float %mul28, float* %csqr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.143, %cond.end
  %54 = load i32, i32* %col, align 4
  %conv29 = sext i32 %54 to i64
  %55 = load i64, i64* %regionwidth, align 8
  %cmp30 = icmp slt i64 %conv29, %55
  br i1 %cmp30, label %for.body, label %for.end.145

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %col, align 4
  %conv32 = sitofp i32 %56 to float
  %57 = load float, float* %a, align 4
  %sub33 = fsub float %conv32, %57
  %conv34 = fpext float %sub33 to double
  %add35 = fadd double %conv34, 5.000000e-01
  %conv36 = fptrunc double %add35 to float
  store float %conv36, float* %dx, align 4
  %58 = load float, float* %dx, align 4
  %59 = load float, float* %dx, align 4
  %mul37 = fmul float %58, %59
  store float %mul37, float* %xsqr, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.126, %for.body
  %60 = load i32, i32* %row, align 4
  %conv39 = sext i32 %60 to i64
  %61 = load i64, i64* %regionheight, align 8
  %cmp40 = icmp slt i64 %conv39, %61
  br i1 %cmp40, label %for.body.42, label %for.end.128

for.body.42:                                      ; preds = %for.cond.38
  %62 = load i32, i32* %col, align 4
  %conv43 = sext i32 %62 to i64
  %63 = load i32, i32* %row, align 4
  %conv44 = sext i32 %63 to i64
  %64 = load i64, i64* %regionwidth, align 8
  %mul45 = mul nsw i64 %conv44, %64
  %add46 = add nsw i64 %conv43, %mul45
  %65 = load i32, i32* %bytes, align 4
  %conv47 = sext i32 %65 to i64
  %mul48 = mul nsw i64 %add46, %conv47
  store i64 %mul48, i64* %pixelpos, align 8
  %66 = load i32, i32* %row, align 4
  %conv49 = sitofp i32 %66 to float
  %67 = load float, float* %b, align 4
  %sub50 = fsub float %conv49, %67
  %sub51 = fsub float -0.000000e+00, %sub50
  %conv52 = fpext float %sub51 to double
  %sub53 = fsub double %conv52, 5.000000e-01
  %conv54 = fptrunc double %sub53 to float
  store float %conv54, float* %dy, align 4
  %68 = load float, float* %dy, align 4
  %69 = load float, float* %dy, align 4
  %mul55 = fmul float %68, %69
  store float %mul55, float* %ysqr, align 4
  %70 = load float, float* %ysqr, align 4
  %71 = load float, float* %bsqr, align 4
  %72 = load float, float* %bsqr, align 4
  %73 = load float, float* %xsqr, align 4
  %mul56 = fmul float %72, %73
  %74 = load float, float* %asqr, align 4
  %div57 = fdiv float %mul56, %74
  %sub58 = fsub float %71, %div57
  %cmp59 = fcmp olt float %70, %sub58
  br i1 %cmp59, label %if.then.61, label %if.else.82

if.then.61:                                       ; preds = %for.body.42
  %75 = load float, float* %asqr, align 4
  %76 = load float, float* %bsqr, align 4
  %77 = load float, float* %csqr, align 4
  %78 = load float, float* %dx, align 4
  %79 = load float, float* %dy, align 4
  call void @find_projected_pos(float %75, float %76, float %77, float %78, float %79, float* %x, float* %y)
  %80 = load float, float* %y, align 4
  %sub62 = fsub float -0.000000e+00, %80
  store float %sub62, float* %y, align 4
  %81 = load float, float* %y, align 4
  %82 = load float, float* %b, align 4
  %add63 = fadd float %81, %82
  %conv64 = fptosi float %add63 to i32
  %conv65 = sext i32 %conv64 to i64
  %83 = load i64, i64* %regionwidth, align 8
  %mul66 = mul nsw i64 %conv65, %83
  %84 = load float, float* %x, align 4
  %85 = load float, float* %a, align 4
  %add67 = fadd float %84, %85
  %conv68 = fptosi float %add67 to i32
  %conv69 = sext i32 %conv68 to i64
  %add70 = add nsw i64 %mul66, %conv69
  %86 = load i32, i32* %bytes, align 4
  %conv71 = sext i32 %86 to i64
  %mul72 = mul nsw i64 %add70, %conv71
  store i64 %mul72, i64* %pos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc, %if.then.61
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %bytes, align 4
  %cmp74 = icmp slt i32 %87, %88
  br i1 %cmp74, label %for.body.76, label %for.end

for.body.76:                                      ; preds = %for.cond.73
  %89 = load i64, i64* %pos, align 8
  %90 = load i32, i32* %i, align 4
  %conv77 = sext i32 %90 to i64
  %add78 = add nsw i64 %89, %conv77
  %91 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %91, i64 %add78
  %92 = load i8, i8* %arrayidx, align 1
  %93 = load i64, i64* %pixelpos, align 8
  %94 = load i32, i32* %i, align 4
  %conv79 = sext i32 %94 to i64
  %add80 = add nsw i64 %93, %conv79
  %95 = load i8*, i8** %dest, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %95, i64 %add80
  store i8 %92, i8* %arrayidx81, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.76
  %96 = load i32, i32* %i, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.73

for.end:                                          ; preds = %for.cond.73
  br label %if.end.125

if.else.82:                                       ; preds = %for.body.42
  %97 = load i32, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 1), align 4
  %tobool83 = icmp ne i32 %97, 0
  br i1 %tobool83, label %if.then.84, label %if.else.98

if.then.84:                                       ; preds = %if.else.82
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.95, %if.then.84
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %bytes, align 4
  %cmp86 = icmp slt i32 %98, %99
  br i1 %cmp86, label %for.body.88, label %for.end.97

for.body.88:                                      ; preds = %for.cond.85
  %100 = load i64, i64* %pixelpos, align 8
  %101 = load i32, i32* %i, align 4
  %conv89 = sext i32 %101 to i64
  %add90 = add nsw i64 %100, %conv89
  %102 = load i8*, i8** %src, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %102, i64 %add90
  %103 = load i8, i8* %arrayidx91, align 1
  %104 = load i64, i64* %pixelpos, align 8
  %105 = load i32, i32* %i, align 4
  %conv92 = sext i32 %105 to i64
  %add93 = add nsw i64 %104, %conv92
  %106 = load i8*, i8** %dest, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %106, i64 %add93
  store i8 %103, i8* %arrayidx94, align 1
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.88
  %107 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %107, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.85

for.end.97:                                       ; preds = %for.cond.85
  br label %if.end.124

if.else.98:                                       ; preds = %if.else.82
  %108 = load i32, i32* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 3), align 4
  %tobool99 = icmp ne i32 %108, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.else.98
  store i8 0, i8* %alphaval, align 1
  br label %if.end.102

if.else.101:                                      ; preds = %if.else.98
  store i8 -1, i8* %alphaval, align 1
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.100
  %109 = load i32, i32* %drawtype, align 4
  switch i32 %109, label %sw.epilog [
    i32 5, label %sw.bb
    i32 4, label %sw.bb.105
    i32 1, label %sw.bb.108
    i32 0, label %sw.bb.111
    i32 3, label %sw.bb.118
    i32 2, label %sw.bb.121
  ]

sw.bb:                                            ; preds = %if.end.102
  %110 = load i8, i8* %alphaval, align 1
  %111 = load i64, i64* %pixelpos, align 8
  %add103 = add nsw i64 %111, 1
  %112 = load i8*, i8** %dest, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %112, i64 %add103
  store i8 %110, i8* %arrayidx104, align 1
  br label %sw.bb.105

sw.bb.105:                                        ; preds = %if.end.102, %sw.bb
  %113 = load i64, i64* %pixelpos, align 8
  %add106 = add nsw i64 %113, 0
  %114 = load i8*, i8** %dest, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %114, i64 %add106
  store i8 0, i8* %arrayidx107, align 1
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.102
  %115 = load i8, i8* %alphaval, align 1
  %116 = load i64, i64* %pixelpos, align 8
  %add109 = add nsw i64 %116, 3
  %117 = load i8*, i8** %dest, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %117, i64 %add109
  store i8 %115, i8* %arrayidx110, align 1
  br label %sw.bb.111

sw.bb.111:                                        ; preds = %if.end.102, %sw.bb.108
  %118 = load i8, i8* %bgr_red, align 1
  %119 = load i64, i64* %pixelpos, align 8
  %add112 = add nsw i64 %119, 0
  %120 = load i8*, i8** %dest, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %120, i64 %add112
  store i8 %118, i8* %arrayidx113, align 1
  %121 = load i8, i8* %bgr_green, align 1
  %122 = load i64, i64* %pixelpos, align 8
  %add114 = add nsw i64 %122, 1
  %123 = load i8*, i8** %dest, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %123, i64 %add114
  store i8 %121, i8* %arrayidx115, align 1
  %124 = load i8, i8* %bgr_blue, align 1
  %125 = load i64, i64* %pixelpos, align 8
  %add116 = add nsw i64 %125, 2
  %126 = load i8*, i8** %dest, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %126, i64 %add116
  store i8 %124, i8* %arrayidx117, align 1
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.end.102
  %127 = load i8, i8* %alphaval, align 1
  %128 = load i64, i64* %pixelpos, align 8
  %add119 = add nsw i64 %128, 1
  %129 = load i8*, i8** %dest, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %129, i64 %add119
  store i8 %127, i8* %arrayidx120, align 1
  br label %sw.bb.121

sw.bb.121:                                        ; preds = %if.end.102, %sw.bb.118
  %130 = load i8, i8* %bgr_red, align 1
  %131 = load i64, i64* %pixelpos, align 8
  %add122 = add nsw i64 %131, 0
  %132 = load i8*, i8** %dest, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %132, i64 %add122
  store i8 %130, i8* %arrayidx123, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.102, %sw.bb.121, %sw.bb.111, %sw.bb.105
  br label %if.end.124

if.end.124:                                       ; preds = %sw.epilog, %for.end.97
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %for.end
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %133 = load i32, i32* %row, align 4
  %inc127 = add nsw i32 %133, 1
  store i32 %inc127, i32* %row, align 4
  br label %for.cond.38

for.end.128:                                      ; preds = %for.cond.38
  %134 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool129 = icmp ne %struct._GimpPreview* %134, null
  br i1 %tobool129, label %if.end.142, label %if.then.130

if.then.130:                                      ; preds = %for.end.128
  %135 = load i64, i64* %regionwidth, align 8
  %136 = load i32, i32* %col, align 4
  %conv131 = sext i32 %136 to i64
  %sub132 = sub nsw i64 %135, %conv131
  %conv133 = trunc i64 %sub132 to i32
  %rem = srem i32 %conv133, 5
  %cmp134 = icmp eq i32 %rem, 0
  br i1 %cmp134, label %if.then.136, label %if.end.141

if.then.136:                                      ; preds = %if.then.130
  %137 = load i32, i32* %col, align 4
  %conv137 = sitofp i32 %137 to double
  %138 = load i64, i64* %regionwidth, align 8
  %conv138 = sitofp i64 %138 to double
  %div139 = fdiv double %conv137, %conv138
  %call140 = call i32 @gimp_progress_update(double %div139)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.136, %if.then.130
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %for.end.128
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %139 = load i32, i32* %col, align 4
  %inc144 = add nsw i32 %139, 1
  store i32 %inc144, i32* %col, align 4
  br label %for.cond

for.end.145:                                      ; preds = %for.cond
  %140 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool146 = icmp ne %struct._GimpPreview* %140, null
  br i1 %tobool146, label %if.then.147, label %if.else.151

if.then.147:                                      ; preds = %for.end.145
  %141 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %142 = load i8*, i8** %dest, align 8
  %143 = load i32, i32* %bytes, align 4
  %conv148 = sext i32 %143 to i64
  %144 = load i64, i64* %regionwidth, align 8
  %mul149 = mul nsw i64 %conv148, %144
  %conv150 = trunc i64 %mul149 to i32
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %141, i8* %142, i32 %conv150)
  br label %if.end.161

if.else.151:                                      ; preds = %for.end.145
  %call152 = call i32 @gimp_progress_update(double 1.000000e+00)
  %145 = load i8*, i8** %dest, align 8
  %146 = load i32, i32* %x1, align 4
  %147 = load i32, i32* %y1, align 4
  %148 = load i64, i64* %regionwidth, align 8
  %conv153 = trunc i64 %148 to i32
  %149 = load i64, i64* %regionheight, align 8
  %conv154 = trunc i64 %149 to i32
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %destPR, i8* %145, i32 %146, i32 %147, i32 %conv153, i32 %conv154)
  %150 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %150)
  %151 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id155 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %151, i32 0, i32 0
  %152 = load i32, i32* %drawable_id155, align 4
  %call156 = call i32 @gimp_drawable_merge_shadow(i32 %152, i32 1)
  %153 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id157 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %153, i32 0, i32 0
  %154 = load i32, i32* %drawable_id157, align 4
  %155 = load i32, i32* %x1, align 4
  %156 = load i32, i32* %y1, align 4
  %157 = load i32, i32* %x2, align 4
  %158 = load i32, i32* %x1, align 4
  %sub158 = sub nsw i32 %157, %158
  %159 = load i32, i32* %y2, align 4
  %160 = load i32, i32* %y1, align 4
  %sub159 = sub nsw i32 %159, %160
  %call160 = call i32 @gimp_drawable_update(i32 %154, i32 %155, i32 %156, i32 %sub158, i32 %sub159)
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.151, %if.then.147
  %161 = load i8*, i8** %src, align 8
  call void @g_free(i8* %161)
  %162 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %162)
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

declare %struct._GtkWidget* @gimp_aspect_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic_from_widget(%struct._GtkRadioButton*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i8* @gimp_drawable_get_thumbnail_data(i32, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_projected_pos(float %a2, float %b2, float %c2, float %x, float %y, float* %projx, float* %projy) #0 {
entry:
  %a2.addr = alloca float, align 4
  %b2.addr = alloca float, align 4
  %c2.addr = alloca float, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %projx.addr = alloca float*, align 8
  %projy.addr = alloca float*, align 8
  %z = alloca float, align 4
  %nxangle = alloca float, align 4
  %nyangle = alloca float, align 4
  %theta1 = alloca float, align 4
  %theta2 = alloca float, align 4
  %ri1 = alloca float, align 4
  %ri2 = alloca float, align 4
  store float %a2, float* %a2.addr, align 4
  store float %b2, float* %b2.addr, align 4
  store float %c2, float* %c2.addr, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  store float* %projx, float** %projx.addr, align 8
  store float* %projy, float** %projy.addr, align 8
  store float 1.000000e+00, float* %ri1, align 4
  %0 = load double, double* getelementptr inbounds (%struct.LensValues, %struct.LensValues* @lvals, i32 0, i32 0), align 8
  %conv = fptrunc double %0 to float
  store float %conv, float* %ri2, align 4
  %1 = load float, float* %x.addr, align 4
  %2 = load float, float* %x.addr, align 4
  %mul = fmul float %1, %2
  %3 = load float, float* %a2.addr, align 4
  %div = fdiv float %mul, %3
  %sub = fsub float 1.000000e+00, %div
  %4 = load float, float* %y.addr, align 4
  %5 = load float, float* %y.addr, align 4
  %mul1 = fmul float %4, %5
  %6 = load float, float* %b2.addr, align 4
  %div2 = fdiv float %mul1, %6
  %sub3 = fsub float %sub, %div2
  %7 = load float, float* %c2.addr, align 4
  %mul4 = fmul float %sub3, %7
  %conv5 = fpext float %mul4 to double
  %call = call double @sqrt(double %conv5) #5
  %conv6 = fptrunc double %call to float
  store float %conv6, float* %z, align 4
  %8 = load float, float* %x.addr, align 4
  %conv7 = fpext float %8 to double
  %9 = load float, float* %x.addr, align 4
  %10 = load float, float* %x.addr, align 4
  %mul8 = fmul float %9, %10
  %11 = load float, float* %z, align 4
  %12 = load float, float* %z, align 4
  %mul9 = fmul float %11, %12
  %add = fadd float %mul8, %mul9
  %conv10 = fpext float %add to double
  %call11 = call double @sqrt(double %conv10) #5
  %div12 = fdiv double %conv7, %call11
  %call13 = call double @acos(double %div12) #5
  %conv14 = fptrunc double %call13 to float
  store float %conv14, float* %nxangle, align 4
  %13 = load float, float* %nxangle, align 4
  %conv15 = fpext float %13 to double
  %sub16 = fsub double 0x3FF921FB54442D18, %conv15
  %conv17 = fptrunc double %sub16 to float
  store float %conv17, float* %theta1, align 4
  %14 = load float, float* %theta1, align 4
  %conv18 = fpext float %14 to double
  %call19 = call double @sin(double %conv18) #5
  %15 = load float, float* %ri1, align 4
  %conv20 = fpext float %15 to double
  %mul21 = fmul double %call19, %conv20
  %16 = load float, float* %ri2, align 4
  %conv22 = fpext float %16 to double
  %div23 = fdiv double %mul21, %conv22
  %call24 = call double @asin(double %div23) #5
  %conv25 = fptrunc double %call24 to float
  store float %conv25, float* %theta2, align 4
  %17 = load float, float* %nxangle, align 4
  %conv26 = fpext float %17 to double
  %sub27 = fsub double 0x3FF921FB54442D18, %conv26
  %18 = load float, float* %theta2, align 4
  %conv28 = fpext float %18 to double
  %sub29 = fsub double %sub27, %conv28
  %conv30 = fptrunc double %sub29 to float
  store float %conv30, float* %theta2, align 4
  %19 = load float, float* %x.addr, align 4
  %conv31 = fpext float %19 to double
  %20 = load float, float* %theta2, align 4
  %conv32 = fpext float %20 to double
  %call33 = call double @tan(double %conv32) #5
  %21 = load float, float* %z, align 4
  %conv34 = fpext float %21 to double
  %mul35 = fmul double %call33, %conv34
  %sub36 = fsub double %conv31, %mul35
  %conv37 = fptrunc double %sub36 to float
  %22 = load float*, float** %projx.addr, align 8
  store float %conv37, float* %22, align 4
  %23 = load float, float* %y.addr, align 4
  %conv38 = fpext float %23 to double
  %24 = load float, float* %y.addr, align 4
  %25 = load float, float* %y.addr, align 4
  %mul39 = fmul float %24, %25
  %26 = load float, float* %z, align 4
  %27 = load float, float* %z, align 4
  %mul40 = fmul float %26, %27
  %add41 = fadd float %mul39, %mul40
  %conv42 = fpext float %add41 to double
  %call43 = call double @sqrt(double %conv42) #5
  %div44 = fdiv double %conv38, %call43
  %call45 = call double @acos(double %div44) #5
  %conv46 = fptrunc double %call45 to float
  store float %conv46, float* %nyangle, align 4
  %28 = load float, float* %nyangle, align 4
  %conv47 = fpext float %28 to double
  %sub48 = fsub double 0x3FF921FB54442D18, %conv47
  %conv49 = fptrunc double %sub48 to float
  store float %conv49, float* %theta1, align 4
  %29 = load float, float* %theta1, align 4
  %conv50 = fpext float %29 to double
  %call51 = call double @sin(double %conv50) #5
  %30 = load float, float* %ri1, align 4
  %conv52 = fpext float %30 to double
  %mul53 = fmul double %call51, %conv52
  %31 = load float, float* %ri2, align 4
  %conv54 = fpext float %31 to double
  %div55 = fdiv double %mul53, %conv54
  %call56 = call double @asin(double %div55) #5
  %conv57 = fptrunc double %call56 to float
  store float %conv57, float* %theta2, align 4
  %32 = load float, float* %nyangle, align 4
  %conv58 = fpext float %32 to double
  %sub59 = fsub double 0x3FF921FB54442D18, %conv58
  %33 = load float, float* %theta2, align 4
  %conv60 = fpext float %33 to double
  %sub61 = fsub double %sub59, %conv60
  %conv62 = fptrunc double %sub61 to float
  store float %conv62, float* %theta2, align 4
  %34 = load float, float* %y.addr, align 4
  %conv63 = fpext float %34 to double
  %35 = load float, float* %theta2, align 4
  %conv64 = fpext float %35 to double
  %call65 = call double @tan(double %conv64) #5
  %36 = load float, float* %z, align 4
  %conv66 = fpext float %36 to double
  %mul67 = fmul double %call65, %conv66
  %sub68 = fsub double %conv63, %mul67
  %conv69 = fptrunc double %sub68 to float
  %37 = load float*, float** %projy.addr, align 8
  store float %conv69, float* %37, align 4
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind
declare double @asin(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @tan(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
