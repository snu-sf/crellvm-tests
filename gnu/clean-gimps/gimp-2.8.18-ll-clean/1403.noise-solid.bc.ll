; ModuleID = './plug-ins/common/noise-solid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.SolidNoiseValues = type { i32, i32, i32, i32, double, double, i32 }
%struct._GimpVector2 = type { double, double }
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
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GRand = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"tilable\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Create a tilable output { TRUE, FALSE }\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"turbulent\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Make a turbulent noise { TRUE, FALSE }\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Random seed\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Detail level (0 - 15)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"xsize\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Horizontal texture size\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ysize\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Vertical texture size\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"plug-in-solid-noise\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Create a random cloud-like texture\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"Generates 2D textures using Perlin's classic solid noise function.\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Marcelo de Gomensoro Malheiros\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"May 2004, v1.04\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"_Solid Noise...\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"<Image>/Filters/Render/Clouds\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@snvals = internal global %struct.SolidNoiseValues { i32 0, i32 0, i32 0, i32 1, double 4.000000e+00, double 4.000000e+00, i32 0 }, align 8
@.str.28 = private unnamed_addr constant [12 x i8] c"noise-solid\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Solid Noise\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"gimp-noise-solid\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"_Random seed:\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"_Detail:\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"T_urbulent\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"T_ilable\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"_X size:\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"_Y size:\00", align 1
@xsize = internal global double 0.000000e+00, align 8
@ysize = internal global double 0.000000e+00, align 8
@xclip = internal global i32 0, align 4
@yclip = internal global i32 0, align 4
@offset = internal global double 0.000000e+00, align 8
@factor = internal global double 0.000000e+00, align 8
@perm_tab = internal global [64 x i32] zeroinitializer, align 16
@grad_tab = internal global [64 x %struct._GimpVector2] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)) #5
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
    i32 2, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.SolidNoiseValues* @snvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @solid_noise_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 9
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.32

if.else:                                          ; preds = %sw.bb.9
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  %11 = load i32, i32* %d_int3213, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 0), align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 1), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 2), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 6
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %17 = load i32, i32* %d_int3222, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3), align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 7
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data24 to double*
  %19 = load double, double* %d_float, align 8
  store double %19, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 8
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %21 = load double, double* %d_float27, align 8
  store double %21, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 6), align 4
  %tobool28 = icmp ne i32 %22, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else
  %call30 = call i32 @g_random_int()
  store i32 %call30, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 2), align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.10
  br label %sw.epilog

sw.bb.33:                                         ; preds = %do.end
  %call34 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.SolidNoiseValues* @snvals to i8*))
  %23 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 6), align 4
  %tobool35 = icmp ne i32 %23, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %sw.bb.33
  %call37 = call i32 @g_random_int()
  store i32 %call37, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 2), align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %sw.bb.33
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.38, %if.end.32, %if.end
  %24 = load i32, i32* %status, align 4
  %cmp39 = icmp eq i32 %24, 3
  br i1 %cmp39, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %sw.epilog
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id, align 4
  %call40 = call i32 @gimp_drawable_is_rgb(i32 %26)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id42, align 4
  %call43 = call i32 @gimp_drawable_is_gray(i32 %28)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.56

if.then.45:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @solid_noise(%struct._GimpDrawable* %29, %struct._GimpPreview* null)
  %30 = load i32, i32* %run_mode, align 4
  %cmp46 = icmp ne i32 %30, 1
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.45
  %call48 = call i32 @gimp_displays_flush()
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.45
  %31 = load i32, i32* %run_mode, align 4
  %cmp50 = icmp eq i32 %31, 0
  br i1 %cmp50, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.49
  %32 = load i32, i32* %run_mode, align 4
  %cmp52 = icmp eq i32 %32, 2
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %lor.lhs.false.51, %if.end.49
  %call54 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.SolidNoiseValues* @snvals to i8*), i32 40)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %lor.lhs.false.51
  br label %if.end.57

if.else.56:                                       ; preds = %lor.lhs.false, %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.end.55
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %34)
  br label %return

return:                                           ; preds = %if.end.57, %if.then
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
define internal i32 @solid_noise_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %seed_hbox = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @solid_noise to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call25 = call %struct._GtkWidget* @gimp_random_seed_new(i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 2), i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 6))
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %seed_hbox, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0)) #5
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  %call29 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %39, i32 0, i32 0, i8* %call28, float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %40, i32 1, i32 1)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %label, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_label_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call30)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkLabel*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call i8* @g_object_get_data(%struct._GObject* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0))
  %47 = bitcast i8* %call33 to %struct._GtkWidget*
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %43, %struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %call35 = call i8* @g_object_get_data(%struct._GObject* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0))
  %51 = bitcast i8* %call35 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_spin_button_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call36)
  %52 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkSpinButton*
  %call38 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %52)
  %53 = bitcast %struct._GtkAdjustment* %call38 to i8*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 2)
  %56 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3), align 4
  %conv = sitofp i32 %56 to double
  %call40 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 1.000000e+00, double 1.500000e+01, double 1.000000e+00, double 3.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %spinbutton, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call41)
  %59 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0)) #5
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call44 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %59, i32 0, i32 1, i8* %call43, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %60, i32 1, i32 1)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 2)
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0)) #5
  %call48 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call47)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %toggle, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call49)
  %69 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %69, %struct._GtkWidget* %70, i32 2, i32 3, i32 0, i32 1, i32 6, i32 4, i32 1, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_toggle_button_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call51)
  %73 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkToggleButton*
  %74 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %73, i32 %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 2)
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)) #5
  %call56 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call55)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %toggle, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_table_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call57)
  %84 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkTable*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %84, %struct._GtkWidget* %85, i32 2, i32 3, i32 1, i32 2, i32 6, i32 4, i32 1, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_toggle_button_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call59)
  %88 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkToggleButton*
  %89 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %88, i32 %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %92 = bitcast %struct._GtkWidget* %91 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (%struct.SolidNoiseValues* @snvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %94 = bitcast %struct._GtkWidget* %93 to i8*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %96 = bitcast %struct._GtkWidget* %95 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 2)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call63)
  %99 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #5
  %100 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  %call66 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %99, i32 0, i32 2, i8* %call65, i32 128, i32 0, double %100, double 1.000000e-01, double 1.600000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call66, %struct._GtkObject** %adj, align 8
  %101 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %102 = bitcast %struct._GtkObject* %101 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %104 = bitcast %struct._GtkObject* %103 to i8*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %106, void (i8*, %struct._GClosure*)* null, i32 2)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call69)
  %109 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0)) #5
  %110 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  %call72 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %109, i32 0, i32 3, i8* %call71, i32 128, i32 0, double %110, double 1.000000e-01, double 1.600000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call72, %struct._GtkObject** %adj, align 8
  %111 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %112 = bitcast %struct._GtkObject* %111 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %114 = bitcast %struct._GtkObject* %113 to i8*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %116 = bitcast %struct._GtkWidget* %115 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 2)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_dialog_get_type() #4
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call75)
  %120 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpDialog*
  %call77 = call i32 @gimp_dialog_run(%struct._GimpDialog* %120)
  %cmp = icmp eq i32 %call77, -5
  %conv78 = zext i1 %cmp to i32
  store i32 %conv78, i32* %run, align 4
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %121)
  %122 = load i32, i32* %run, align 4
  ret i32 %122
}

declare i32 @g_random_int() #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal void @solid_noise(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %pr = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %1, i32* %width, i32* %height)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %3, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  br label %if.end.57

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  call void @solid_noise_init()
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool4 = icmp ne %struct._GimpPreview* %4, null
  br i1 %tobool4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #5
  %call7 = call i32 @gimp_progress_init(i8* %call6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  store i32 0, i32* %progress, align 4
  %5 = load i32, i32* %width, align 4
  %6 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %5, %6
  store i32 %mul, i32* %max_progress, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_drawable_bpp(i32 %8)
  store i32 %call10, i32* %bytes, align 4
  %9 = load i32, i32* %width, align 4
  %10 = load i32, i32* %bytes, align 4
  %mul11 = mul nsw i32 %9, %10
  store i32 %mul11, i32* %rowstride, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call13, i32* %has_alpha, align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool14 = icmp ne %struct._GimpPreview* %13, null
  br i1 %tobool14, label %if.then.15, label %if.else.21

if.then.15:                                       ; preds = %if.end.8
  %y16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  store i32 0, i32* %y16, align 4
  %x17 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  store i32 0, i32* %x17, align 4
  %14 = load i32, i32* %width, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  store i32 %14, i32* %w, align 4
  %15 = load i32, i32* %height, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  store i32 %15, i32* %h, align 4
  %16 = load i32, i32* %bytes, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  store i32 %16, i32* %bpp, align 4
  %17 = load i32, i32* %rowstride, align 4
  %rowstride18 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  store i32 %17, i32* %rowstride18, align 4
  %18 = load i32, i32* %rowstride, align 4
  %19 = load i32, i32* %height, align 4
  %mul19 = mul nsw i32 %18, %19
  %conv = sext i32 %mul19 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  store i8* %call20, i8** %data, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.8
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 1, i32 1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.15
  %25 = load i32, i32* %has_alpha, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %26 = load i32, i32* %bytes, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %bytes, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %27 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool26 = icmp ne %struct._GimpPreview* %27, null
  br i1 %tobool26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.end.25
  %28 = load i32, i32* %width, align 4
  %conv28 = sitofp i32 %28 to double
  %29 = load i32, i32* %height, align 4
  %conv29 = sitofp i32 %29 to double
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %bytes, align 4
  %33 = load i32, i32* %has_alpha, align 4
  call void @solid_noise_draw_one_tile(%struct._GimpPixelRgn* %dest_rgn, double %conv28, double %conv29, i32 %30, i32 %31, i32 %32, i32 %33)
  br label %if.end.47

if.else.30:                                       ; preds = %if.end.25
  %call31 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call31, i8** %pr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.30
  %34 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %34, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %width, align 4
  %conv33 = sitofp i32 %35 to double
  %36 = load i32, i32* %height, align 4
  %conv34 = sitofp i32 %36 to double
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %bytes, align 4
  %40 = load i32, i32* %has_alpha, align 4
  call void @solid_noise_draw_one_tile(%struct._GimpPixelRgn* %dest_rgn, double %conv33, double %conv34, i32 %37, i32 %38, i32 %39, i32 %40)
  %w35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %41 = load i32, i32* %w35, align 4
  %h36 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %42 = load i32, i32* %h36, align 4
  %mul37 = mul nsw i32 %41, %42
  %43 = load i32, i32* %progress, align 4
  %add = add nsw i32 %43, %mul37
  store i32 %add, i32* %progress, align 4
  %44 = load i32, i32* %i, align 4
  %rem = srem i32 %44, 16
  %cmp38 = icmp eq i32 %rem, 0
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %for.body
  %45 = load i32, i32* %progress, align 4
  %conv41 = sitofp i32 %45 to double
  %46 = load i32, i32* %max_progress, align 4
  %conv42 = sitofp i32 %46 to double
  %div = fdiv double %conv41, %conv42
  %call43 = call i32 @gimp_progress_update(double %div)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %47 = load i8*, i8** %pr, align 8
  %call45 = call i8* @gimp_pixel_rgns_process(i8* %47)
  store i8* %call45, i8** %pr, align 8
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call46 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %if.then.27
  %49 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool48 = icmp ne %struct._GimpPreview* %49, null
  br i1 %tobool48, label %if.then.49, label %if.else.52

if.then.49:                                       ; preds = %if.end.47
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %data50 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %51 = load i8*, i8** %data50, align 8
  %52 = load i32, i32* %rowstride, align 4
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %50, i8* %51, i32 %52)
  %data51 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %53 = load i8*, i8** %data51, align 8
  call void @g_free(i8* %53)
  br label %if.end.57

if.else.52:                                       ; preds = %if.end.47
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %54)
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id53 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 0
  %56 = load i32, i32* %drawable_id53, align 4
  %call54 = call i32 @gimp_drawable_merge_shadow(i32 %56, i32 1)
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %57, i32 0, i32 0
  %58 = load i32, i32* %drawable_id55, align 4
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* %y, align 4
  %61 = load i32, i32* %width, align 4
  %62 = load i32, i32* %height, align 4
  %call56 = call i32 @gimp_drawable_update(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.2, %if.else.52, %if.then.49
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

declare %struct._GtkWidget* @gimp_aspect_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

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

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @solid_noise_init() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %m = alloca double, align 8
  %gr = alloca %struct._GRand*, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 2), align 4
  call void @g_rand_set_seed(%struct._GRand* %0, i32 %1)
  %2 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3), align 4
  %cmp = icmp sgt i32 %2, 15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3), align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %4 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i32 [ 0, %cond.true.2 ], [ %4, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ 15, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond5, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3), align 4
  %5 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  %cmp6 = fcmp ogt double %5, 1.600000e+01
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end.4
  br label %cond.end.14

cond.false.8:                                     ; preds = %cond.end.4
  %6 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  %cmp9 = fcmp olt double %6, 1.000000e-01
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.false.8
  %7 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi double [ 1.000000e-01, %cond.true.10 ], [ %7, %cond.false.11 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end.12, %cond.true.7
  %cond15 = phi double [ 1.600000e+01, %cond.true.7 ], [ %cond13, %cond.end.12 ]
  store double %cond15, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  %8 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  %cmp16 = fcmp ogt double %8, 1.600000e+01
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end.14
  br label %cond.end.24

cond.false.18:                                    ; preds = %cond.end.14
  %9 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  %cmp19 = fcmp olt double %9, 1.000000e-01
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.18
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.false.18
  %10 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi double [ 1.000000e-01, %cond.true.20 ], [ %10, %cond.false.21 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.17
  %cond25 = phi double [ 1.600000e+01, %cond.true.17 ], [ %cond23, %cond.end.22 ]
  store double %cond25, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.24
  %12 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  %call26 = call double @ceil(double %12) #4
  store double %call26, double* @xsize, align 8
  %13 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  %call27 = call double @ceil(double %13) #4
  store double %call27, double* @ysize, align 8
  %14 = load double, double* @xsize, align 8
  %conv = fptosi double %14 to i32
  store i32 %conv, i32* @xclip, align 4
  %15 = load double, double* @ysize, align 8
  %conv28 = fptosi double %15 to i32
  store i32 %conv28, i32* @yclip, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.24
  %16 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 4), align 8
  store double %16, double* @xsize, align 8
  %17 = load double, double* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 5), align 8
  store double %17, double* @ysize, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 1), align 4
  %tobool29 = icmp ne i32 %18, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end
  store double 0.000000e+00, double* @offset, align 8
  store double 1.000000e+00, double* @factor, align 8
  br label %if.end.32

if.else.31:                                       ; preds = %if.end
  store double 9.400000e-01, double* @offset, align 8
  store double 5.260000e-01, double* @factor, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %19 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %19, 64
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom
  store i32 %20, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.49, %for.end
  %23 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %23, 32
  br i1 %cmp36, label %for.body.38, label %for.end.51

for.body.38:                                      ; preds = %for.cond.35
  %24 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call39 = call i32 @g_rand_int_range(%struct._GRand* %24, i32 0, i32 64)
  store i32 %call39, i32* %j, align 4
  %25 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call40 = call i32 @g_rand_int_range(%struct._GRand* %25, i32 0, i32 64)
  store i32 %call40, i32* %k, align 4
  %26 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom41
  %27 = load i32, i32* %arrayidx42, align 4
  store i32 %27, i32* %t, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom43
  %29 = load i32, i32* %arrayidx44, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom45
  store i32 %29, i32* %arrayidx46, align 4
  %31 = load i32, i32* %t, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom47
  store i32 %31, i32* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.38
  %33 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.35

for.end.51:                                       ; preds = %for.cond.35
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.88, %for.end.51
  %34 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %34, 64
  br i1 %cmp53, label %for.body.55, label %for.end.90

for.body.55:                                      ; preds = %for.cond.52
  br label %do.body

do.body:                                          ; preds = %lor.end, %for.body.55
  %35 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call56 = call double @g_rand_double_range(%struct._GRand* %35, double -1.000000e+00, double 1.000000e+00)
  %36 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom57
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx58, i32 0, i32 0
  store double %call56, double* %x, align 8
  %37 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call59 = call double @g_rand_double_range(%struct._GRand* %37, double -1.000000e+00, double 1.000000e+00)
  %38 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %38 to i64
  %arrayidx61 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom60
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx61, i32 0, i32 1
  store double %call59, double* %y, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom62
  %x64 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx63, i32 0, i32 0
  %40 = load double, double* %x64, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom65
  %x67 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx66, i32 0, i32 0
  %42 = load double, double* %x67, align 8
  %mul = fmul double %40, %42
  %43 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %43 to i64
  %arrayidx69 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom68
  %y70 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx69, i32 0, i32 1
  %44 = load double, double* %y70, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom71
  %y73 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx72, i32 0, i32 1
  %46 = load double, double* %y73, align 8
  %mul74 = fmul double %44, %46
  %add = fadd double %mul, %mul74
  store double %add, double* %m, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %47 = load double, double* %m, align 8
  %cmp75 = fcmp oeq double %47, 0.000000e+00
  br i1 %cmp75, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %48 = load double, double* %m, align 8
  %cmp77 = fcmp ogt double %48, 1.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %49 = phi i1 [ true, %do.cond ], [ %cmp77, %lor.rhs ]
  br i1 %49, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %50 = load double, double* %m, align 8
  %call79 = call double @sqrt(double %50) #5
  %div = fdiv double 1.000000e+00, %call79
  store double %div, double* %m, align 8
  %51 = load double, double* %m, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom80
  %x82 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx81, i32 0, i32 0
  %53 = load double, double* %x82, align 8
  %mul83 = fmul double %53, %51
  store double %mul83, double* %x82, align 8
  %54 = load double, double* %m, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %55 to i64
  %arrayidx85 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom84
  %y86 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx85, i32 0, i32 1
  %56 = load double, double* %y86, align 8
  %mul87 = fmul double %56, %54
  store double %mul87, double* %y86, align 8
  br label %for.inc.88

for.inc.88:                                       ; preds = %do.end
  %57 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %57, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.52

for.end.90:                                       ; preds = %for.cond.52
  %58 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %58)
  ret void
}

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @solid_noise_draw_one_tile(%struct._GimpPixelRgn* %dest_rgn, double %width, double %height, i32 %xoffset, i32 %yoffset, i32 %chns, i32 %has_alpha) #0 {
entry:
  %dest_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %xoffset.addr = alloca i32, align 4
  %yoffset.addr = alloca i32, align 4
  %chns.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %dest = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i8, align 1
  store %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store i32 %xoffset, i32* %xoffset.addr, align 4
  store i32 %yoffset, i32* %yoffset.addr, align 4
  store i32 %chns, i32* %chns.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %dest_row, align 8
  %2 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %2, i32 0, i32 5
  %3 = load i32, i32* %y, align 4
  store i32 %3, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %4 = load i32, i32* %row, align 4
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %5, i32 0, i32 5
  %6 = load i32, i32* %y1, align 4
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 7
  %8 = load i32, i32* %h, align 4
  %add = add nsw i32 %6, %8
  %cmp = icmp slt i32 %4, %add
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %dest_row, align 8
  store i8* %9, i8** %dest, align 8
  %10 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %10, i32 0, i32 4
  %11 = load i32, i32* %x, align 4
  store i32 %11, i32* %col, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.17, %for.body
  %12 = load i32, i32* %col, align 4
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 4
  %14 = load i32, i32* %x3, align 4
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %15, i32 0, i32 6
  %16 = load i32, i32* %w, align 4
  %add4 = add nsw i32 %14, %16
  %cmp5 = icmp slt i32 %12, %add4
  br i1 %cmp5, label %for.body.6, label %for.end.19

for.body.6:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %col, align 4
  %18 = load i32, i32* %xoffset.addr, align 4
  %sub = sub nsw i32 %17, %18
  %conv = sitofp i32 %sub to double
  %19 = load double, double* %width.addr, align 8
  %div = fdiv double %conv, %19
  %20 = load i32, i32* %row, align 4
  %21 = load i32, i32* %yoffset.addr, align 4
  %sub7 = sub nsw i32 %20, %21
  %conv8 = sitofp i32 %sub7 to double
  %22 = load double, double* %height.addr, align 8
  %div9 = fdiv double %conv8, %22
  %call = call double @noise(double %div, double %div9)
  %mul = fmul double 2.550000e+02, %call
  %call10 = call double @floor(double %mul) #4
  %conv11 = fptoui double %call10 to i8
  store i8 %conv11, i8* %val, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body.6
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %chns.addr, align 4
  %cmp13 = icmp slt i32 %23, %24
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %25 = load i8, i8* %val, align 1
  %26 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %25, i8* %26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %28 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %29 = load i8*, i8** %dest, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr16, i8** %dest, align 8
  store i8 -1, i8* %29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end
  %30 = load i32, i32* %col, align 4
  %inc18 = add nsw i32 %30, 1
  store i32 %inc18, i32* %col, align 4
  br label %for.cond.2

for.end.19:                                       ; preds = %for.cond.2
  %31 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %31, i32 0, i32 3
  %32 = load i32, i32* %rowstride, align 4
  %33 = load i8*, i8** %dest_row, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %dest_row, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %34 = load i32, i32* %row, align 4
  %inc21 = add nsw i32 %34, 1
  store i32 %inc21, i32* %row, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare %struct._GRand* @g_rand_new() #1

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare void @g_rand_free(%struct._GRand*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define internal double @noise(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %sum = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 1, i32* %s, align 4
  store double 0.000000e+00, double* %sum, align 8
  %0 = load double, double* @xsize, align 8
  %1 = load double, double* %x.addr, align 8
  %mul = fmul double %1, %0
  store double %mul, double* %x.addr, align 8
  %2 = load double, double* @ysize, align 8
  %3 = load double, double* %y.addr, align 8
  %mul1 = fmul double %3, %2
  store double %mul1, double* %y.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 3), align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %y.addr, align 8
  %9 = load i32, i32* %s, align 4
  %call = call double @plain_noise(double %7, double %8, i32 %9)
  %call2 = call double @fabs(double %call) #4
  %10 = load double, double* %sum, align 8
  %add = fadd double %10, %call2
  store double %add, double* %sum, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load double, double* %x.addr, align 8
  %12 = load double, double* %y.addr, align 8
  %13 = load i32, i32* %s, align 4
  %call3 = call double @plain_noise(double %11, double %12, i32 %13)
  %14 = load double, double* %sum, align 8
  %add4 = fadd double %14, %call3
  store double %add4, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %s, align 4
  %shl = shl i32 %15, 1
  store i32 %shl, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load double, double* %sum, align 8
  %18 = load double, double* @offset, align 8
  %add5 = fadd double %17, %18
  %19 = load double, double* @factor, align 8
  %mul6 = fmul double %add5, %19
  ret double %mul6
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal double @plain_noise(double %x, double %y, i32 %s) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %s.addr = alloca i32, align 4
  %v = alloca %struct._GimpVector2, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %sum = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store double 0.000000e+00, double* %sum, align 8
  %0 = load i32, i32* %s.addr, align 4
  %conv = uitofp i32 %0 to double
  %1 = load double, double* %x.addr, align 8
  %mul = fmul double %1, %conv
  store double %mul, double* %x.addr, align 8
  %2 = load i32, i32* %s.addr, align 4
  %conv1 = uitofp i32 %2 to double
  %3 = load double, double* %y.addr, align 8
  %mul2 = fmul double %3, %conv1
  store double %mul2, double* %y.addr, align 8
  %4 = load double, double* %x.addr, align 8
  %call = call double @floor(double %4) #4
  %conv3 = fptosi double %call to i32
  store i32 %conv3, i32* %a, align 4
  %5 = load double, double* %y.addr, align 8
  %call4 = call double @floor(double %5) #4
  %conv5 = fptosi double %call4 to i32
  store i32 %conv5, i32* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %7, 2
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %8 = load i32, i32* getelementptr inbounds (%struct.SolidNoiseValues, %struct.SolidNoiseValues* @snvals, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.10
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, i32* @xclip, align 4
  %12 = load i32, i32* %s.addr, align 4
  %mul11 = mul i32 %11, %12
  %rem = urem i32 %add, %mul11
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %13, %14
  %15 = load i32, i32* @yclip, align 4
  %16 = load i32, i32* %s.addr, align 4
  %mul13 = mul i32 %15, %16
  %rem14 = urem i32 %add12, %mul13
  %rem15 = urem i32 %rem14, 64
  %idxprom = zext i32 %rem15 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %add16 = add i32 %rem, %17
  %rem17 = urem i32 %add16, 64
  %idxprom18 = zext i32 %rem17 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom18
  %18 = load i32, i32* %arrayidx19, align 4
  store i32 %18, i32* %n, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.10
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %19, %20
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %21, %22
  %rem22 = srem i32 %add21, 64
  %idxprom23 = sext i32 %rem22 to i64
  %arrayidx24 = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom23
  %23 = load i32, i32* %arrayidx24, align 4
  %add25 = add nsw i32 %add20, %23
  %rem26 = srem i32 %add25, 64
  %idxprom27 = sext i32 %rem26 to i64
  %arrayidx28 = getelementptr inbounds [64 x i32], [64 x i32]* @perm_tab, i32 0, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  store i32 %24, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load double, double* %x.addr, align 8
  %26 = load i32, i32* %a, align 4
  %conv29 = sitofp i32 %26 to double
  %sub = fsub double %25, %conv29
  %27 = load i32, i32* %i, align 4
  %conv30 = sitofp i32 %27 to double
  %sub31 = fsub double %sub, %conv30
  %x32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 0
  store double %sub31, double* %x32, align 8
  %28 = load double, double* %y.addr, align 8
  %29 = load i32, i32* %b, align 4
  %conv33 = sitofp i32 %29 to double
  %sub34 = fsub double %28, %conv33
  %30 = load i32, i32* %j, align 4
  %conv35 = sitofp i32 %30 to double
  %sub36 = fsub double %sub34, %conv35
  %y37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 1
  store double %sub36, double* %y37, align 8
  %x38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 0
  %31 = load double, double* %x38, align 8
  %call39 = call double @fabs(double %31) #4
  %mul40 = fmul double 2.000000e+00, %call39
  %sub41 = fsub double %mul40, 3.000000e+00
  %x42 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 0
  %32 = load double, double* %x42, align 8
  %mul43 = fmul double %sub41, %32
  %x44 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 0
  %33 = load double, double* %x44, align 8
  %mul45 = fmul double %mul43, %33
  %add46 = fadd double %mul45, 1.000000e+00
  %y47 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 1
  %34 = load double, double* %y47, align 8
  %call48 = call double @fabs(double %34) #4
  %mul49 = fmul double 2.000000e+00, %call48
  %sub50 = fsub double %mul49, 3.000000e+00
  %y51 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 1
  %35 = load double, double* %y51, align 8
  %mul52 = fmul double %sub50, %35
  %y53 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 1
  %36 = load double, double* %y53, align 8
  %mul54 = fmul double %mul52, %36
  %add55 = fadd double %mul54, 1.000000e+00
  %mul56 = fmul double %add46, %add55
  %37 = load i32, i32* %n, align 4
  %idxprom57 = sext i32 %37 to i64
  %arrayidx58 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom57
  %x59 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx58, i32 0, i32 0
  %38 = load double, double* %x59, align 8
  %x60 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 0
  %39 = load double, double* %x60, align 8
  %mul61 = fmul double %38, %39
  %40 = load i32, i32* %n, align 4
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [64 x %struct._GimpVector2], [64 x %struct._GimpVector2]* @grad_tab, i32 0, i64 %idxprom62
  %y64 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx63, i32 0, i32 1
  %41 = load double, double* %y64, align 8
  %y65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v, i32 0, i32 1
  %42 = load double, double* %y65, align 8
  %mul66 = fmul double %41, %42
  %add67 = fadd double %mul61, %mul66
  %mul68 = fmul double %mul56, %add67
  %43 = load double, double* %sum, align 8
  %add69 = fadd double %43, %mul68
  store double %add69, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %44 = load i32, i32* %j, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end
  %45 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %45, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  %46 = load double, double* %sum, align 8
  %47 = load i32, i32* %s.addr, align 4
  %conv73 = uitofp i32 %47 to double
  %div = fdiv double %46, %conv73
  ret double %div
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
