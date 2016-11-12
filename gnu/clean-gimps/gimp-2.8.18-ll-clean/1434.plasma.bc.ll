; ModuleID = './plug-ins/common/plasma.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.PlasmaValues = type { i32, double, i32 }
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelFetcher = type opaque
%struct._GRand = type opaque
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Random seed\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"turbulence\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Turbulence of plasma\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"plug-in-plasma\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Create a random plasma texture\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"More help\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Stephen Norris & (ported to 1.0 by) Eiichi Takamori\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Stephen Norris\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"_Plasma...\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"<Image>/Filters/Render/Clouds\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.PlasmaValues { i32 0, double 1.000000e+00, i32 0 }, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"Plasma\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"plasma\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"gimp-plasma\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Random _seed:\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"T_urbulence:\00", align 1
@ix1 = internal global i32 0, align 4
@ix2 = internal global i32 0, align 4
@iy1 = internal global i32 0, align 4
@iy2 = internal global i32 0, align 4
@preview_width = internal global i32 0, align 4
@preview_height = internal global i32 0, align 4
@preview_buffer = internal global i8* null, align 8
@bpp = internal global i32 0, align 4
@has_alpha = internal global i32 0, align 4
@alpha = internal global i32 0, align 4
@progress = internal global i64 0, align 8
@max_progress = internal global i64 0, align 8
@do_plasma.count = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #4
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
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.PlasmaValues* @pvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @plasma_dialog(%struct._GimpDrawable* %8)
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
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.19

if.else:                                          ; preds = %sw.bb.9
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  %12 = load i32, i32* %d_int3213, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 0), align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 4
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data15 to double*
  %14 = load double, double* %d_float, align 8
  store double %14, double* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 1), align 8
  %15 = load double, double* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 1), align 8
  %cmp16 = fcmp ole double %15, 0.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.10
  br label %sw.epilog

sw.bb.20:                                         ; preds = %do.end
  %call21 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.PlasmaValues* @pvals to i8*))
  %16 = load i32, i32* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 2), align 4
  %tobool22 = icmp ne i32 %16, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.bb.20
  %call24 = call i32 @g_random_int()
  store i32 %call24, i32* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 0), align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %sw.bb.20
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.25, %if.end.19, %if.end
  %17 = load i32, i32* %status, align 4
  %cmp26 = icmp eq i32 %17, 3
  br i1 %cmp26, label %if.then.27, label %if.end.48

if.then.27:                                       ; preds = %sw.epilog
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id, align 4
  %call28 = call i32 @gimp_drawable_is_rgb(i32 %19)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.27
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id30, align 4
  %call31 = call i32 @gimp_drawable_is_gray(i32 %21)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.46

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.27
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #4
  %call35 = call i32 @gimp_progress_init(i8* %call34)
  call void @gimp_tile_cache_ntiles(i64 32)
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @plasma(%struct._GimpDrawable* %22, i32 0)
  %23 = load i32, i32* %run_mode, align 4
  %cmp36 = icmp ne i32 %23, 1
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.33
  %call38 = call i32 @gimp_displays_flush()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.33
  %24 = load i32, i32* %run_mode, align 4
  %cmp40 = icmp eq i32 %24, 0
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.39
  %25 = load i32, i32* %run_mode, align 4
  %cmp42 = icmp eq i32 %25, 2
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %lor.lhs.false.41, %if.end.39
  %call44 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.PlasmaValues* @pvals to i8*), i32 24)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %lor.lhs.false.41
  br label %if.end.47

if.else.46:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %sw.epilog
  %26 = load i32, i32* %status, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %27)
  br label %return

return:                                           ; preds = %if.end.48, %if.then
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
define internal i32 @plasma_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %seed = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -5, i8* null)
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
  store %struct._GtkWidget* %call14, %struct._GtkWidget** @preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, i8*)* @plasma_seed_changed_callback to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
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
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call25 = call %struct._GtkWidget* @gimp_random_seed_new(i32* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 0), i32* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 2))
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %seed, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)) #4
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %seed, align 8
  %call29 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %39, i32 0, i32 0, i8* %call28, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %40, i32 2, i32 1)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %label, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_label_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkLabel*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %seed, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call i8* @g_object_get_data(%struct._GObject* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0))
  %47 = bitcast i8* %call33 to %struct._GtkWidget*
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %43, %struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %seed, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %call35 = call i8* @g_object_get_data(%struct._GObject* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0))
  %51 = bitcast i8* %call35 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_spin_button_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call36)
  %52 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkSpinButton*
  %call38 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %52)
  %53 = bitcast %struct._GtkAdjustment* %call38 to i8*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 2)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call40)
  %58 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #4
  %59 = load double, double* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 1), align 8
  %call43 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %58, i32 0, i32 1, i8* %call42, i32 48, i32 0, double %59, double 1.000000e-01, double 7.000000e+00, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call43, %struct._GtkObject** %adj, align 8
  %60 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %61 = bitcast %struct._GtkObject* %60 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %63 = bitcast %struct._GtkObject* %62 to i8*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 2)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_dialog_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call46)
  %69 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpDialog*
  %call48 = call i32 @gimp_dialog_run(%struct._GimpDialog* %69)
  %cmp = icmp eq i32 %call48, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %70)
  %71 = load i32, i32* %run, align 4
  ret i32 %71
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @g_random_int() #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @plasma(%struct._GimpDrawable* %drawable, i32 %preview_mode) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview_mode.addr = alloca i32, align 4
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %depth = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %preview_mode, i32* %preview_mode.addr, align 4
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load i32, i32* %preview_mode.addr, align 4
  %2 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call1 = call %struct._GimpPixelFetcher* @init_plasma(%struct._GimpDrawable* %0, i32 %1, %struct._GRand* %2)
  store %struct._GimpPixelFetcher* %call1, %struct._GimpPixelFetcher** %pft, align 8
  %3 = load i32, i32* %preview_mode.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %tobool2 = icmp ne %struct._GimpPixelFetcher* %4, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* @ix1, align 4
  %6 = load i32, i32* @ix2, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %land.lhs.true.3, label %if.end.16

land.lhs.true.3:                                  ; preds = %if.end
  %7 = load i32, i32* @iy1, align 4
  %8 = load i32, i32* @iy2, align 4
  %cmp4 = icmp ne i32 %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %land.lhs.true.3
  %9 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %10 = load i32, i32* @ix1, align 4
  %11 = load i32, i32* @iy1, align 4
  %12 = load i32, i32* @ix2, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load i32, i32* @iy2, align 4
  %sub6 = sub nsw i32 %13, 1
  %14 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call7 = call i32 @do_plasma(%struct._GimpPixelFetcher* %9, i32 %10, i32 %11, i32 %sub, i32 %sub6, i32 -1, i32 0, %struct._GRand* %14)
  store i32 1, i32* %depth, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %15 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %16 = load i32, i32* @ix1, align 4
  %17 = load i32, i32* @iy1, align 4
  %18 = load i32, i32* @ix2, align 4
  %sub8 = sub nsw i32 %18, 1
  %19 = load i32, i32* @iy2, align 4
  %sub9 = sub nsw i32 %19, 1
  %20 = load i32, i32* %depth, align 4
  %21 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call10 = call i32 @do_plasma(%struct._GimpPixelFetcher* %15, i32 %16, i32 %17, i32 %sub8, i32 %sub9, i32 %20, i32 0, %struct._GRand* %21)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %depth, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %tobool12 = icmp ne %struct._GimpPixelFetcher* %23, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %while.end
  %call14 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %while.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true.3, %if.end
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %26 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @end_plasma(%struct._GimpDrawable* %24, %struct._GimpPixelFetcher* %25, %struct._GRand* %26)
  br label %return

return:                                           ; preds = %if.end.16, %if.then
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
define internal void @plasma_seed_changed_callback(%struct._GimpDrawable* %drawable, i8* %data) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @plasma(%struct._GimpDrawable* %0, i32 1)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_random_seed_new(i32*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GRand* @g_rand_new() #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpPixelFetcher* @init_plasma(%struct._GimpDrawable* %drawable, i32 %preview_mode, %struct._GRand* %gr) #0 {
entry:
  %retval = alloca %struct._GimpPixelFetcher*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview_mode.addr = alloca i32, align 4
  %gr.addr = alloca %struct._GRand*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %preview_mode, i32* %preview_mode.addr, align 4
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  %0 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 0), align 4
  call void @g_rand_set_seed(%struct._GRand* %0, i32 %1)
  %2 = load i32, i32* %preview_mode.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @iy1, align 4
  store i32 0, i32* @ix1, align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  call void @gimp_preview_get_size(%struct._GimpPreview* %5, i32* @preview_width, i32* @preview_height)
  %6 = load i32, i32* @preview_width, align 4
  store i32 %6, i32* @ix2, align 4
  %7 = load i32, i32* @preview_height, align 4
  store i32 %7, i32* @iy2, align 4
  %8 = load i32, i32* @ix2, align 4
  %9 = load i32, i32* @iy2, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  %mul2 = mul i32 %mul, %11
  %conv = zext i32 %mul2 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** @preview_buffer, align 8
  store %struct._GimpPixelFetcher* null, %struct._GimpPixelFetcher** %pft, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id, align 4
  %call4 = call i32 @gimp_drawable_mask_intersect(i32 %13, i32* @ix1, i32* @iy1, i32* @ix2, i32* @iy2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %14 = load i32, i32* @ix1, align 4
  %15 = load i32, i32* @ix2, align 4
  %add = add nsw i32 %15, %14
  store i32 %add, i32* @ix2, align 4
  %16 = load i32, i32* @iy1, align 4
  %17 = load i32, i32* @iy2, align 4
  %add7 = add nsw i32 %17, %16
  store i32 %add7, i32* @iy2, align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call8 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %18, i32 1)
  store %struct._GimpPixelFetcher* %call8, %struct._GimpPixelFetcher** %pft, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else
  store %struct._GimpPixelFetcher* null, %struct._GimpPixelFetcher** %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 3
  %20 = load i32, i32* %bpp11, align 4
  store i32 %20, i32* @bpp, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_has_alpha(i32 %22)
  store i32 %call13, i32* @has_alpha, align 4
  %23 = load i32, i32* @has_alpha, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %24 = load i32, i32* @bpp, align 4
  %sub = sub nsw i32 %24, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %25 = load i32, i32* @bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* @alpha, align 4
  store i64 0, i64* @progress, align 8
  %26 = load i32, i32* @ix2, align 4
  %27 = load i32, i32* @ix1, align 4
  %sub15 = sub nsw i32 %26, %27
  %28 = load i32, i32* @iy2, align 4
  %29 = load i32, i32* @iy1, align 4
  %sub16 = sub nsw i32 %28, %29
  %mul17 = mul nsw i32 %sub15, %sub16
  %conv18 = sext i32 %mul17 to i64
  store i64 %conv18, i64* @max_progress, align 8
  %30 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  store %struct._GimpPixelFetcher* %30, %struct._GimpPixelFetcher** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  %31 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %retval
  ret %struct._GimpPixelFetcher* %31
}

; Function Attrs: nounwind uwtable
define internal i32 @do_plasma(%struct._GimpPixelFetcher* %pft, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %depth, i32 %scale_depth, %struct._GRand* %gr) #0 {
entry:
  %retval = alloca i32, align 4
  %pft.addr = alloca %struct._GimpPixelFetcher*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %scale_depth.addr = alloca i32, align 4
  %gr.addr = alloca %struct._GRand*, align 8
  %tl = alloca [4 x i8], align 1
  %ml = alloca [4 x i8], align 1
  %bl = alloca [4 x i8], align 1
  %mt = alloca [4 x i8], align 1
  %mm = alloca [4 x i8], align 1
  %mb = alloca [4 x i8], align 1
  %tr = alloca [4 x i8], align 1
  %mr = alloca [4 x i8], align 1
  %br = alloca [4 x i8], align 1
  %tmp = alloca [4 x i8], align 1
  %xm = alloca i32, align 4
  %ym = alloca i32, align 4
  %ran = alloca i32, align 4
  store %struct._GimpPixelFetcher* %pft, %struct._GimpPixelFetcher** %pft.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %scale_depth, i32* %scale_depth.addr, align 4
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  %0 = load i32, i32* %x1.addr, align 4
  %1 = load i32, i32* %x2.addr, align 4
  %add = add nsw i32 %0, %1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %xm, align 4
  %2 = load i32, i32* %y1.addr, align 4
  %3 = load i32, i32* %y2.addr, align 4
  %add3 = add nsw i32 %2, %3
  %div4 = sdiv i32 %add3, 2
  store i32 %div4, i32* %ym, align 4
  %4 = load i32, i32* %depth.addr, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %5, i8* %arraydecay)
  %6 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %7 = load i32, i32* %x1.addr, align 4
  %8 = load i32, i32* %y1.addr, align 4
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %6, i32 %7, i32 %8, i8* %arraydecay5)
  %9 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %9, i8* %arraydecay6)
  %10 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %11 = load i32, i32* %x2.addr, align 4
  %12 = load i32, i32* %y1.addr, align 4
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %10, i32 %11, i32 %12, i8* %arraydecay7)
  %13 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %13, i8* %arraydecay8)
  %14 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %15 = load i32, i32* %x1.addr, align 4
  %16 = load i32, i32* %y2.addr, align 4
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %14, i32 %15, i32 %16, i8* %arraydecay9)
  %17 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %17, i8* %arraydecay10)
  %18 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %19 = load i32, i32* %x2.addr, align 4
  %20 = load i32, i32* %y2.addr, align 4
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %18, i32 %19, i32 %20, i8* %arraydecay11)
  %21 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %mm, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %21, i8* %arraydecay12)
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %23 = load i32, i32* %xm, align 4
  %24 = load i32, i32* %ym, align 4
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %mm, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %22, i32 %23, i32 %24, i8* %arraydecay13)
  %25 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %ml, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %25, i8* %arraydecay14)
  %26 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %27 = load i32, i32* %x1.addr, align 4
  %28 = load i32, i32* %ym, align 4
  %arraydecay15 = getelementptr inbounds [4 x i8], [4 x i8]* %ml, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %26, i32 %27, i32 %28, i8* %arraydecay15)
  %29 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %mr, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %29, i8* %arraydecay16)
  %30 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %31 = load i32, i32* %x2.addr, align 4
  %32 = load i32, i32* %ym, align 4
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %mr, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %30, i32 %31, i32 %32, i8* %arraydecay17)
  %33 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %mt, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %33, i8* %arraydecay18)
  %34 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %35 = load i32, i32* %xm, align 4
  %36 = load i32, i32* %y1.addr, align 4
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %mt, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %34, i32 %35, i32 %36, i8* %arraydecay19)
  %37 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay20 = getelementptr inbounds [4 x i8], [4 x i8]* %mb, i32 0, i32 0
  call void @random_rgb(%struct._GRand* %37, i8* %arraydecay20)
  %38 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %39 = load i32, i32* %xm, align 4
  %40 = load i32, i32* %y2.addr, align 4
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %mb, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %38, i32 %39, i32 %40, i8* %arraydecay21)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %41 = load i32, i32* %depth.addr, align 4
  %cmp22 = icmp eq i32 %41, 0
  br i1 %cmp22, label %if.then.23, label %if.end.114

if.then.23:                                       ; preds = %if.end
  %42 = load i32, i32* %x1.addr, align 4
  %43 = load i32, i32* %x2.addr, align 4
  %cmp25 = icmp eq i32 %42, %43
  br i1 %cmp25, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.23
  %44 = load i32, i32* %y1.addr, align 4
  %45 = load i32, i32* %y2.addr, align 4
  %cmp26 = icmp eq i32 %44, %45
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true, %if.then.23
  %46 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %47 = load i32, i32* %x1.addr, align 4
  %48 = load i32, i32* %y1.addr, align 4
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  call void @get_pixel(%struct._GimpPixelFetcher* %46, i32 %47, i32 %48, i8* %arraydecay29)
  %49 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %50 = load i32, i32* %x1.addr, align 4
  %51 = load i32, i32* %y2.addr, align 4
  %arraydecay30 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  call void @get_pixel(%struct._GimpPixelFetcher* %49, i32 %50, i32 %51, i8* %arraydecay30)
  %52 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %53 = load i32, i32* %x2.addr, align 4
  %54 = load i32, i32* %y1.addr, align 4
  %arraydecay31 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  call void @get_pixel(%struct._GimpPixelFetcher* %52, i32 %53, i32 %54, i8* %arraydecay31)
  %55 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %56 = load i32, i32* %x2.addr, align 4
  %57 = load i32, i32* %y2.addr, align 4
  %arraydecay32 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  call void @get_pixel(%struct._GimpPixelFetcher* %55, i32 %56, i32 %57, i8* %arraydecay32)
  %58 = load i32, i32* %scale_depth.addr, align 4
  %conv = sitofp i32 %58 to double
  %mul = fmul double 2.000000e+00, %conv
  %div33 = fdiv double 2.560000e+02, %mul
  %59 = load double, double* getelementptr inbounds (%struct.PlasmaValues, %struct.PlasmaValues* @pvals, i32 0, i32 1), align 8
  %mul34 = fmul double %div33, %59
  %conv35 = fptosi double %mul34 to i32
  store i32 %conv35, i32* %ran, align 4
  %60 = load i32, i32* %xm, align 4
  %61 = load i32, i32* %x1.addr, align 4
  %cmp36 = icmp ne i32 %60, %61
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %62 = load i32, i32* %xm, align 4
  %63 = load i32, i32* %x2.addr, align 4
  %cmp38 = icmp ne i32 %62, %63
  br i1 %cmp38, label %if.then.40, label %if.end.55

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.28
  %arraydecay41 = getelementptr inbounds [4 x i8], [4 x i8]* %ml, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %64 = load i32, i32* @bpp, align 4
  call void @average_pixel(i8* %arraydecay41, i8* %arraydecay42, i8* %arraydecay43, i32 %64)
  %65 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay44 = getelementptr inbounds [4 x i8], [4 x i8]* %ml, i32 0, i32 0
  %66 = load i32, i32* %ran, align 4
  call void @add_random(%struct._GRand* %65, i8* %arraydecay44, i32 %66)
  %67 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %68 = load i32, i32* %x1.addr, align 4
  %69 = load i32, i32* %ym, align 4
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %ml, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %67, i32 %68, i32 %69, i8* %arraydecay45)
  %70 = load i32, i32* %x1.addr, align 4
  %71 = load i32, i32* %x2.addr, align 4
  %cmp46 = icmp ne i32 %70, %71
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.then.40
  %arraydecay49 = getelementptr inbounds [4 x i8], [4 x i8]* %mr, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %arraydecay51 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %72 = load i32, i32* @bpp, align 4
  call void @average_pixel(i8* %arraydecay49, i8* %arraydecay50, i8* %arraydecay51, i32 %72)
  %73 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay52 = getelementptr inbounds [4 x i8], [4 x i8]* %mr, i32 0, i32 0
  %74 = load i32, i32* %ran, align 4
  call void @add_random(%struct._GRand* %73, i8* %arraydecay52, i32 %74)
  %75 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %76 = load i32, i32* %x2.addr, align 4
  %77 = load i32, i32* %ym, align 4
  %arraydecay53 = getelementptr inbounds [4 x i8], [4 x i8]* %mr, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %75, i32 %76, i32 %77, i8* %arraydecay53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.48, %if.then.40
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %lor.lhs.false
  %78 = load i32, i32* %ym, align 4
  %79 = load i32, i32* %y1.addr, align 4
  %cmp56 = icmp ne i32 %78, %79
  br i1 %cmp56, label %if.then.61, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.end.55
  %80 = load i32, i32* %ym, align 4
  %81 = load i32, i32* %y2.addr, align 4
  %cmp59 = icmp ne i32 %80, %81
  br i1 %cmp59, label %if.then.61, label %if.end.83

if.then.61:                                       ; preds = %lor.lhs.false.58, %if.end.55
  %82 = load i32, i32* %x1.addr, align 4
  %83 = load i32, i32* %xm, align 4
  %cmp62 = icmp ne i32 %82, %83
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.then.61
  %84 = load i32, i32* %ym, align 4
  %85 = load i32, i32* %y2.addr, align 4
  %cmp65 = icmp ne i32 %84, %85
  br i1 %cmp65, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %lor.lhs.false.64, %if.then.61
  %arraydecay68 = getelementptr inbounds [4 x i8], [4 x i8]* %mb, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %86 = load i32, i32* @bpp, align 4
  call void @average_pixel(i8* %arraydecay68, i8* %arraydecay69, i8* %arraydecay70, i32 %86)
  %87 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay71 = getelementptr inbounds [4 x i8], [4 x i8]* %mb, i32 0, i32 0
  %88 = load i32, i32* %ran, align 4
  call void @add_random(%struct._GRand* %87, i8* %arraydecay71, i32 %88)
  %89 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %90 = load i32, i32* %xm, align 4
  %91 = load i32, i32* %y2.addr, align 4
  %arraydecay72 = getelementptr inbounds [4 x i8], [4 x i8]* %mb, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %89, i32 %90, i32 %91, i8* %arraydecay72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.67, %lor.lhs.false.64
  %92 = load i32, i32* %y1.addr, align 4
  %93 = load i32, i32* %y2.addr, align 4
  %cmp74 = icmp ne i32 %92, %93
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %if.end.73
  %arraydecay77 = getelementptr inbounds [4 x i8], [4 x i8]* %mt, i32 0, i32 0
  %arraydecay78 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay79 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %94 = load i32, i32* @bpp, align 4
  call void @average_pixel(i8* %arraydecay77, i8* %arraydecay78, i8* %arraydecay79, i32 %94)
  %95 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay80 = getelementptr inbounds [4 x i8], [4 x i8]* %mt, i32 0, i32 0
  %96 = load i32, i32* %ran, align 4
  call void @add_random(%struct._GRand* %95, i8* %arraydecay80, i32 %96)
  %97 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %98 = load i32, i32* %xm, align 4
  %99 = load i32, i32* %y1.addr, align 4
  %arraydecay81 = getelementptr inbounds [4 x i8], [4 x i8]* %mt, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %97, i32 %98, i32 %99, i8* %arraydecay81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.76, %if.end.73
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %lor.lhs.false.58
  %100 = load i32, i32* %y1.addr, align 4
  %101 = load i32, i32* %y2.addr, align 4
  %cmp84 = icmp ne i32 %100, %101
  br i1 %cmp84, label %if.then.89, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.end.83
  %102 = load i32, i32* %x1.addr, align 4
  %103 = load i32, i32* %x2.addr, align 4
  %cmp87 = icmp ne i32 %102, %103
  br i1 %cmp87, label %if.then.89, label %if.end.101

if.then.89:                                       ; preds = %lor.lhs.false.86, %if.end.83
  %arraydecay90 = getelementptr inbounds [4 x i8], [4 x i8]* %mm, i32 0, i32 0
  %arraydecay91 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay92 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %104 = load i32, i32* @bpp, align 4
  call void @average_pixel(i8* %arraydecay90, i8* %arraydecay91, i8* %arraydecay92, i32 %104)
  %arraydecay93 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %105 = load i32, i32* @bpp, align 4
  call void @average_pixel(i8* %arraydecay93, i8* %arraydecay94, i8* %arraydecay95, i32 %105)
  %arraydecay96 = getelementptr inbounds [4 x i8], [4 x i8]* %mm, i32 0, i32 0
  %arraydecay97 = getelementptr inbounds [4 x i8], [4 x i8]* %mm, i32 0, i32 0
  %arraydecay98 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i32 0
  %106 = load i32, i32* @bpp, align 4
  call void @average_pixel(i8* %arraydecay96, i8* %arraydecay97, i8* %arraydecay98, i32 %106)
  %107 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %arraydecay99 = getelementptr inbounds [4 x i8], [4 x i8]* %mm, i32 0, i32 0
  %108 = load i32, i32* %ran, align 4
  call void @add_random(%struct._GRand* %107, i8* %arraydecay99, i32 %108)
  %109 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %110 = load i32, i32* %xm, align 4
  %111 = load i32, i32* %ym, align 4
  %arraydecay100 = getelementptr inbounds [4 x i8], [4 x i8]* %mm, i32 0, i32 0
  call void @put_pixel(%struct._GimpPixelFetcher* %109, i32 %110, i32 %111, i8* %arraydecay100)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.89, %lor.lhs.false.86
  %112 = load i32, i32* @do_plasma.count, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* @do_plasma.count, align 4
  %113 = load i32, i32* @do_plasma.count, align 4
  %rem = srem i32 %113, 2000
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end.108, label %land.lhs.true.102

land.lhs.true.102:                                ; preds = %if.end.101
  %114 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %tobool103 = icmp ne %struct._GimpPixelFetcher* %114, null
  br i1 %tobool103, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %land.lhs.true.102
  %115 = load i64, i64* @progress, align 8
  %conv105 = sitofp i64 %115 to double
  %116 = load i64, i64* @max_progress, align 8
  %conv106 = sitofp i64 %116 to double
  %div107 = fdiv double %conv105, %conv106
  %call = call i32 @gimp_progress_update(double %div107)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %land.lhs.true.102, %if.end.101
  %117 = load i32, i32* %x2.addr, align 4
  %118 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %117, %118
  %cmp109 = icmp slt i32 %sub, 3
  br i1 %cmp109, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.108
  %119 = load i32, i32* %y2.addr, align 4
  %120 = load i32, i32* %y1.addr, align 4
  %sub111 = sub nsw i32 %119, %120
  %cmp112 = icmp slt i32 %sub111, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.108
  %121 = phi i1 [ false, %if.end.108 ], [ %cmp112, %land.rhs ]
  %land.ext = zext i1 %121 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.114:                                       ; preds = %if.end
  %122 = load i32, i32* %x1.addr, align 4
  %123 = load i32, i32* %x2.addr, align 4
  %cmp115 = icmp slt i32 %122, %123
  br i1 %cmp115, label %if.then.120, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.end.114
  %124 = load i32, i32* %y1.addr, align 4
  %125 = load i32, i32* %y2.addr, align 4
  %cmp118 = icmp slt i32 %124, %125
  br i1 %cmp118, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %lor.lhs.false.117, %if.end.114
  %126 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %127 = load i32, i32* %x1.addr, align 4
  %128 = load i32, i32* %y1.addr, align 4
  %129 = load i32, i32* %xm, align 4
  %130 = load i32, i32* %ym, align 4
  %131 = load i32, i32* %depth.addr, align 4
  %sub121 = sub nsw i32 %131, 1
  %132 = load i32, i32* %scale_depth.addr, align 4
  %add122 = add nsw i32 %132, 1
  %133 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call123 = call i32 @do_plasma(%struct._GimpPixelFetcher* %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %sub121, i32 %add122, %struct._GRand* %133)
  %134 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %135 = load i32, i32* %x1.addr, align 4
  %136 = load i32, i32* %ym, align 4
  %137 = load i32, i32* %xm, align 4
  %138 = load i32, i32* %y2.addr, align 4
  %139 = load i32, i32* %depth.addr, align 4
  %sub124 = sub nsw i32 %139, 1
  %140 = load i32, i32* %scale_depth.addr, align 4
  %add125 = add nsw i32 %140, 1
  %141 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call126 = call i32 @do_plasma(%struct._GimpPixelFetcher* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %sub124, i32 %add125, %struct._GRand* %141)
  %142 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %143 = load i32, i32* %xm, align 4
  %144 = load i32, i32* %y1.addr, align 4
  %145 = load i32, i32* %x2.addr, align 4
  %146 = load i32, i32* %ym, align 4
  %147 = load i32, i32* %depth.addr, align 4
  %sub127 = sub nsw i32 %147, 1
  %148 = load i32, i32* %scale_depth.addr, align 4
  %add128 = add nsw i32 %148, 1
  %149 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call129 = call i32 @do_plasma(%struct._GimpPixelFetcher* %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %sub127, i32 %add128, %struct._GRand* %149)
  %150 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %151 = load i32, i32* %xm, align 4
  %152 = load i32, i32* %ym, align 4
  %153 = load i32, i32* %x2.addr, align 4
  %154 = load i32, i32* %y2.addr, align 4
  %155 = load i32, i32* %depth.addr, align 4
  %sub130 = sub nsw i32 %155, 1
  %156 = load i32, i32* %scale_depth.addr, align 4
  %add131 = add nsw i32 %156, 1
  %157 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call132 = call i32 @do_plasma(%struct._GimpPixelFetcher* %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %sub130, i32 %add131, %struct._GRand* %157)
  store i32 %call132, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.117
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.120, %land.end, %if.then.27, %if.then
  %158 = load i32, i32* %retval
  ret i32 %158
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal void @end_plasma(%struct._GimpDrawable* %drawable, %struct._GimpPixelFetcher* %pft, %struct._GRand* %gr) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %pft.addr = alloca %struct._GimpPixelFetcher*, align 8
  %gr.addr = alloca %struct._GRand*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPixelFetcher* %pft, %struct._GimpPixelFetcher** %pft.addr, align 8
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %tobool = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %1)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_merge_shadow(i32 %4, i32 1)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id1, align 4
  %7 = load i32, i32* @ix1, align 4
  %8 = load i32, i32* @iy1, align 4
  %9 = load i32, i32* @ix2, align 4
  %10 = load i32, i32* @ix1, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* @iy2, align 4
  %12 = load i32, i32* @iy1, align 4
  %sub2 = sub nsw i32 %11, %12
  %call3 = call i32 @gimp_drawable_update(i32 %6, i32 %7, i32 %8, i32 %sub, i32 %sub2)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_preview_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPreview*
  %16 = load i8*, i8** @preview_buffer, align 8
  %17 = load i32, i32* @preview_width, align 4
  %18 = load i32, i32* @bpp, align 4
  %mul = mul nsw i32 %17, %18
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %15, i8* %16, i32 %mul)
  %19 = load i8*, i8** @preview_buffer, align 8
  call void @g_free(i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  call void @g_rand_free(%struct._GRand* %20)
  ret void
}

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal void @random_rgb(%struct._GRand* %gr, i8* %pixel) #0 {
entry:
  %gr.addr = alloca %struct._GRand*, align 8
  %pixel.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  store i8* %pixel, i8** %pixel.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @alpha, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call = call i32 @g_rand_int_range(%struct._GRand* %2, i32 0, i32 256)
  %conv = trunc i32 %call to i8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %pixel.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @has_alpha, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %7 = load i32, i32* @alpha, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i8*, i8** %pixel.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 %idxprom1
  store i8 -1, i8* %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel(%struct._GimpPixelFetcher* %pft, i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %pft.addr = alloca %struct._GimpPixelFetcher*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  store %struct._GimpPixelFetcher* %pft, %struct._GimpPixelFetcher** %pft.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %tobool = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i8*, i8** %pixel.addr, align 8
  call void @gimp_pixel_fetcher_put_pixel(%struct._GimpPixelFetcher* %1, i32 %2, i32 %3, i8* %4)
  %5 = load i64, i64* @progress, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* @progress, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** @preview_buffer, align 8
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %9
  %10 = load i32, i32* @bpp, align 4
  %mul1 = mul nsw i32 %add, %10
  %idx.ext = sext i32 %mul1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %11 = load i8*, i8** %pixel.addr, align 8
  %12 = load i32, i32* @bpp, align 4
  %conv = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %11, i64 %conv, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_pixel(%struct._GimpPixelFetcher* %pft, i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %pft.addr = alloca %struct._GimpPixelFetcher*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  store %struct._GimpPixelFetcher* %pft, %struct._GimpPixelFetcher** %pft.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %tobool = icmp ne %struct._GimpPixelFetcher* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i8*, i8** %pixel.addr, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %1, i32 %2, i32 %3, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %pixel.addr, align 8
  %6 = load i8*, i8** @preview_buffer, align 8
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %9
  %10 = load i32, i32* @bpp, align 4
  %mul1 = mul nsw i32 %add, %10
  %idx.ext = sext i32 %mul1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %11 = load i32, i32* @bpp, align 4
  %conv = sext i32 %11 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %add.ptr, i64 %conv, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @average_pixel(i8* %dest, i8* %src1, i8* %src2, i32 %bpp) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bpp.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %src1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %src1.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %src2.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr1, i8** %src2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv, %conv2
  %div = sdiv i32 %add, 2
  %conv3 = trunc i32 %div to i8
  %5 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %dest.addr, align 8
  store i8 %conv3, i8* %5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %bpp.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %bpp.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_random(%struct._GRand* %gr, i8* %pixel, i32 %amount) #0 {
entry:
  %gr.addr = alloca %struct._GRand*, align 8
  %pixel.addr = alloca i8*, align 8
  %amount.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  store i8* %pixel, i8** %pixel.addr, align 8
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load i32, i32* %amount.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %amount.addr, align 4
  %1 = load i32, i32* %amount.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @alpha, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %pixel.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %8 = load i32, i32* %amount.addr, align 4
  %sub = sub nsw i32 0, %8
  %9 = load i32, i32* %amount.addr, align 4
  %call = call i32 @g_rand_int_range(%struct._GRand* %7, i32 %sub, i32 %9)
  %add = add nsw i32 %conv, %call
  store i32 %add, i32* %tmp, align 4
  %10 = load i32, i32* %tmp, align 4
  %cmp2 = icmp sgt i32 %10, 255
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.8

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %tmp, align 4
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %12 = load i32, i32* %tmp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi i32 [ 0, %cond.true.6 ], [ %12, %cond.false.7 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv10 = trunc i32 %cond9 to i8
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i8*, i8** %pixel.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.8
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @gimp_pixel_fetcher_put_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @g_rand_free(%struct._GRand*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
