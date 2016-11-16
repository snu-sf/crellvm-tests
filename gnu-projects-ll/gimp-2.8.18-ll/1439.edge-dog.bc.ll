; ModuleID = './plug-ins/common/edge-dog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.DoGValues = type { double, double, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GError = type { i32, i32, i8* }
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
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Radius of inner gaussian blur (in pixels, > 0.0)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Radius of outer gaussian blur (in pixels, > 0.0)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"normalize\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Normalize { TRUE, FALSE }\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Invert { TRUE, FALSE }\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"plug-in-dog\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Edge detection with control of edge thickness\00", align 1
@.str.16 = private unnamed_addr constant [131 x i8] c"Applies two Gaussian blurs to the drawable, and subtracts the results.  This is robust and widely used method for detecting edges.\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Spencer Kimball, Peter Mattis, Sven Neumann, William Skaggs\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"1995-2004\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"_Difference of Gaussians...\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"<Image>/Filters/Edge-Detect\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"Can operate on layers only (but was called on channel or mask).\00", align 1
@dogvals = internal global %struct.DoGValues { double 3.000000e+00, double 1.000000e+00, i32 1, i32 1 }, align 8
@.str.26 = private unnamed_addr constant [16 x i8] c"DoG Edge Detect\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"edge-dog\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"gimp-edge-dog\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Smoothing Parameters\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"_Radius 1:\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"R_adius 2:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"_Normalize\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"_Invert\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"dog_scratch_layer1\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"dog_scratch_layer2\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call i32 @gimp_item_is_layer(i32 %6)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* %call7)
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %7 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then.8, label %if.end.57

if.then.8:                                        ; preds = %if.end
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data10 to i32*
  %9 = load i32, i32* %d_image, align 4
  store i32 %9, i32* %image_ID, align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 2
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_drawable13 = bitcast %union._GimpParamData* %data12 to i32*
  %11 = load i32, i32* %d_drawable13, align 4
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %11)
  store %struct._GimpDrawable* %call14, %struct._GimpDrawable** %drawable, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 1
  %13 = load i32, i32* %width, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height, align 4
  %cmp15 = icmp ugt i32 %13, %15
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width16, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 2
  %19 = load i32, i32* %height17, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %19, %cond.false ]
  %call18 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %cond, %call18
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %20 = load i8*, i8** %name.addr, align 8
  %call19 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end
  %21 = load i32, i32* %run_mode, align 4
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
    i32 2, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %if.then.22
  %call23 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.DoGValues* @dogvals to i8*))
  %22 = load i32, i32* %image_ID, align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call24 = call i32 @dog_dialog(i32 %22, %struct._GimpDrawable* %23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %sw.bb
  br label %return

if.end.27:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then.22
  %24 = load i32, i32* %nparams.addr, align 4
  %cmp29 = icmp ne i32 %24, 7
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.28
  store i32 1, i32* %status, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %sw.bb.28
  %25 = load i32, i32* %status, align 4
  %cmp33 = icmp eq i32 %25, 3
  br i1 %cmp33, label %if.then.35, label %if.end.53

if.then.35:                                       ; preds = %if.end.32
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 3
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data37 to double*
  %27 = load double, double* %d_float, align 8
  store double %27, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 0), align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 4
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_float40 = bitcast %union._GimpParamData* %data39 to double*
  %29 = load double, double* %d_float40, align 8
  store double %29, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 1), align 8
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 5
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_int3243 = bitcast %union._GimpParamData* %data42 to i32*
  %31 = load i32, i32* %d_int3243, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 2), align 4
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 6
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_int3246 = bitcast %union._GimpParamData* %data45 to i32*
  %33 = load i32, i32* %d_int3246, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 3), align 4
  %34 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 0), align 8
  %cmp47 = fcmp ole double %34, 0.000000e+00
  br i1 %cmp47, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.35
  %35 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 1), align 8
  %cmp49 = fcmp ole double %35, 0.000000e+00
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false, %if.then.35
  store i32 1, i32* %status, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %lor.lhs.false
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.32
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.then.22
  %call55 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.DoGValues* @dogvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.54, %if.end.53, %if.end.27
  br label %if.end.56

if.else:                                          ; preds = %cond.end
  store i32 1, i32* %status, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %sw.epilog
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end
  %36 = load i32, i32* %status, align 4
  %cmp58 = icmp eq i32 %36, 3
  br i1 %cmp58, label %if.then.60, label %if.end.86

if.then.60:                                       ; preds = %if.end.57
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 0
  %38 = load i32, i32* %drawable_id, align 4
  %call61 = call i32 @gimp_drawable_is_rgb(i32 %38)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.then.60
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 0
  %40 = load i32, i32* %drawable_id64, align 4
  %call65 = call i32 @gimp_drawable_is_gray(i32 %40)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.83

if.then.67:                                       ; preds = %lor.lhs.false.63, %if.then.60
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #6
  %call69 = call i32 @gimp_progress_init(i8* %call68)
  %41 = load i32, i32* %image_ID, align 4
  %call70 = call i32 @gimp_image_undo_group_start(i32 %41)
  %42 = load i32, i32* %image_ID, align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %44 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 0), align 8
  %45 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 1), align 8
  call void @dog(i32 %42, %struct._GimpDrawable* %43, double %44, double %45, i32 1)
  %46 = load i32, i32* %image_ID, align 4
  %call71 = call i32 @gimp_image_undo_group_end(i32 %46)
  %call72 = call i32 @gimp_progress_update(double 1.000000e+00)
  %47 = load i32, i32* %run_mode, align 4
  %cmp73 = icmp eq i32 %47, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.then.67
  %call76 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.DoGValues* @dogvals to i8*), i32 24)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.then.67
  %48 = load i32, i32* %run_mode, align 4
  %cmp78 = icmp ne i32 %48, 1
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.77
  %call81 = call i32 @gimp_displays_flush()
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.77
  br label %if.end.85

if.else.83:                                       ; preds = %lor.lhs.false.63
  store i32 0, i32* %status, align 4
  %49 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %49, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0)) #6
  store i8* %call84, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.83, %if.end.82
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %50)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.57
  %51 = load i32, i32* %status, align 4
  %cmp87 = icmp ne i32 %51, 3
  br i1 %cmp87, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %if.end.86
  %52 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool89 = icmp ne %struct._GError* %52, null
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true
  %53 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %53, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %54 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %54, i32 0, i32 2
  %55 = load i8*, i8** %message, align 8
  store i8* %55, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %land.lhs.true, %if.end.86
  %56 = load i32, i32* %status, align 4
  store i32 %56, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.91, %if.then.26
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

declare i32 @gimp_item_is_layer(i32) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dog_dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %coord = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*, %struct._GimpDrawable*)* @preview_update_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0)) #6
  %call19 = call %struct._GtkWidget* @gimp_frame_new(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load i32, i32* %image_ID.addr, align 4
  %call22 = call i32 @gimp_image_get_resolution(i32 %31, double* %xres, double* %yres)
  %32 = load i32, i32* %image_ID.addr, align 4
  %call23 = call i32 @gimp_image_get_unit(i32 %32)
  store i32 %call23, i32* %unit, align 4
  %33 = load i32, i32* %unit, align 4
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #6
  %34 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 0), align 8
  %35 = load double, double* %xres, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 1
  %37 = load i32, i32* %width, align 4
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 2
  %39 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %37, %39
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 1
  %41 = load i32, i32* %width25, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 2
  %43 = load i32, i32* %height26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %41, %cond.true ], [ %43, %cond.false ]
  %mul = mul i32 8, %cond
  %conv = uitofp i32 %mul to double
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)) #6
  %44 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 1), align 8
  %45 = load double, double* %yres, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %46, i32 0, i32 1
  %47 = load i32, i32* %width28, align 4
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 2
  %49 = load i32, i32* %height29, align 4
  %cmp30 = icmp ugt i32 %47, %49
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %cond.end
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 1
  %51 = load i32, i32* %width33, align 4
  br label %cond.end.36

cond.false.34:                                    ; preds = %cond.end
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 2
  %53 = load i32, i32* %height35, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.32
  %cond37 = phi i32 [ %51, %cond.true.32 ], [ %53, %cond.false.34 ]
  %mul38 = mul i32 8, %cond37
  %conv39 = uitofp i32 %mul38 to double
  %call40 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 1, i32 0, i32 -1, i32 1, i32 0, i32 1, i8* %call24, double %34, double %35, double 0.000000e+00, double %conv, double 0.000000e+00, double 0.000000e+00, i8* %call27, double %44, double %45, double 0.000000e+00, double %conv39, double 0.000000e+00, double 0.000000e+00)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %coord, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_container_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call41)
  %56 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkContainer*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %coord, align 8
  call void @gtk_container_add(%struct._GtkContainer* %56, %struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %coord, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %coord, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_size_entry_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call43)
  %61 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry* %61, i32 1)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %coord, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @change_radius_callback to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 0)
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0)) #6
  %call47 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call46)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %button, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call48)
  %68 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_toggle_button_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call50)
  %72 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkToggleButton*
  %73 = load i32, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %72, i32 %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %79, void (i8*, %struct._GClosure*)* null, i32 2)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #6
  %call55 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call54)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %button, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call56)
  %83 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_toggle_button_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call58)
  %87 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkToggleButton*
  %88 = load i32, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %87, i32 %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %92 = bitcast %struct._GtkWidget* %91 to i8*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %94 = bitcast %struct._GtkWidget* %93 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %94, void (i8*, %struct._GClosure*)* null, i32 2)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_dialog_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call62)
  %99 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpDialog*
  %call64 = call i32 @gimp_dialog_run(%struct._GimpDialog* %99)
  %cmp65 = icmp eq i32 %call64, -5
  %conv66 = zext i1 %cmp65 to i32
  store i32 %conv66, i32* %run, align 4
  %100 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %100, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.36
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %coord, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_size_entry_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call67)
  %103 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpSizeEntry*
  %call69 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %103, i32 0)
  store double %call69, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 0), align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %coord, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_size_entry_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call70)
  %106 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpSizeEntry*
  %call72 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %106, i32 1)
  store double %call72, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.36
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %107)
  %108 = load i32, i32* %run, align 4
  ret i32 %108
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_image_undo_group_start(i32) #1

; Function Attrs: nounwind uwtable
define internal void @dog(i32 %image_ID, %struct._GimpDrawable* %drawable, double %inner, double %outer, i32 %show_progress) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %inner.addr = alloca double, align 8
  %outer.addr = alloca double, align 8
  %show_progress.addr = alloca i32, align 4
  %drawable1 = alloca %struct._GimpDrawable*, align 8
  %drawable2 = alloca %struct._GimpDrawable*, align 8
  %drawable_id = alloca i32, align 4
  %layer1 = alloca i32, align 4
  %layer2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %maxval = alloca i8, align 1
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %inner, double* %inner.addr, align 8
  store double %outer, double* %outer.addr, align 8
  store i32 %show_progress, i32* %show_progress.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id1, align 4
  store i32 %1, i32* %drawable_id, align 4
  store i8 -1, i8* %maxval, align 1
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %3 = load i32, i32* %x2, align 4
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %width, align 4
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %y1, align 4
  %sub2 = sub nsw i32 %5, %6
  store i32 %sub2, i32* %height, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %7)
  %8 = load i32, i32* %drawable_id, align 4
  %call3 = call i32 @gimp_layer_copy(i32 %8)
  store i32 %call3, i32* %layer1, align 4
  %9 = load i32, i32* %layer1, align 4
  %call4 = call i32 @gimp_item_set_visible(i32 %9, i32 0)
  %10 = load i32, i32* %layer1, align 4
  %call5 = call i32 @gimp_item_set_name(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0))
  %11 = load i32, i32* %image_ID.addr, align 4
  %12 = load i32, i32* %layer1, align 4
  %13 = load i32, i32* %drawable_id, align 4
  %call6 = call i32 @gimp_item_get_parent(i32 %13)
  %call7 = call i32 @gimp_image_insert_layer(i32 %11, i32 %12, i32 %call6, i32 0)
  %14 = load i32, i32* %drawable_id, align 4
  %call8 = call i32 @gimp_layer_copy(i32 %14)
  store i32 %call8, i32* %layer2, align 4
  %15 = load i32, i32* %layer2, align 4
  %call9 = call i32 @gimp_item_set_visible(i32 %15, i32 0)
  %16 = load i32, i32* %layer2, align 4
  %call10 = call i32 @gimp_item_set_name(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0))
  %17 = load i32, i32* %image_ID.addr, align 4
  %18 = load i32, i32* %layer2, align 4
  %19 = load i32, i32* %drawable_id, align 4
  %call11 = call i32 @gimp_item_get_parent(i32 %19)
  %call12 = call i32 @gimp_image_insert_layer(i32 %17, i32 %18, i32 %call11, i32 0)
  %20 = load i32, i32* %layer1, align 4
  %call13 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %20)
  store %struct._GimpDrawable* %call13, %struct._GimpDrawable** %drawable1, align 8
  %21 = load i32, i32* %layer2, align 4
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %21)
  store %struct._GimpDrawable* %call14, %struct._GimpDrawable** %drawable2, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1, align 8
  %23 = load double, double* %inner.addr, align 8
  %24 = load i32, i32* %show_progress.addr, align 4
  call void @gauss_rle(%struct._GimpDrawable* %22, double %23, i32 0, i32 %24)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  %26 = load double, double* %outer.addr, align 8
  %27 = load i32, i32* %show_progress.addr, align 4
  call void @gauss_rle(%struct._GimpDrawable* %25, double %26, i32 1, i32 %27)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  call void @compute_difference(%struct._GimpDrawable* %28, %struct._GimpDrawable* %29, %struct._GimpDrawable* %30, i8* %maxval)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %31)
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %32)
  %33 = load i32, i32* %image_ID.addr, align 4
  %34 = load i32, i32* %layer1, align 4
  %call15 = call i32 @gimp_image_remove_layer(i32 %33, i32 %34)
  %35 = load i32, i32* %image_ID.addr, align 4
  %36 = load i32, i32* %layer2, align 4
  %call16 = call i32 @gimp_image_remove_layer(i32 %35, i32 %36)
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %37)
  %38 = load i32, i32* %drawable_id, align 4
  %call17 = call i32 @gimp_drawable_merge_shadow(i32 %38, i32 1)
  %39 = load i32, i32* %drawable_id, align 4
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %y1, align 4
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %height, align 4
  %call18 = call i32 @gimp_drawable_update(i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %44 = load i32, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 2), align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %45 = load i32, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 3), align 4
  %tobool19 = icmp ne i32 %45, 0
  br i1 %tobool19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 2), align 4
  %48 = load i8, i8* %maxval, align 1
  %conv = zext i8 %48 to i32
  %49 = load i32, i32* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 3), align 4
  call void @normalize_invert(%struct._GimpDrawable* %46, i32 %47, i32 %conv, i32 %49)
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %50)
  %51 = load i32, i32* %drawable_id, align 4
  %call20 = call i32 @gimp_drawable_merge_shadow(i32 %51, i32 1)
  %52 = load i32, i32* %drawable_id, align 4
  %53 = load i32, i32* %x1, align 4
  %54 = load i32, i32* %y1, align 4
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %height, align 4
  %call21 = call i32 @gimp_drawable_update(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare i32 @gimp_image_undo_group_end(i32) #1

declare i32 @gimp_progress_update(double) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

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

; Function Attrs: nounwind uwtable
define internal void @preview_update_preview(%struct._GimpPreview* %preview, %struct._GimpDrawable* %drawable) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %preview_rgn = alloca %struct._GimpPixelRgn, align 8
  %image_id = alloca i32, align 4
  %src_image_id = alloca i32, align 4
  %preview_id = alloca i32, align 4
  %preview_drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_bpp(i32 %1)
  store i32 %call, i32* %bpp, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %2, i32* %x1, i32* %y1)
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %3, i32* %width, i32* %height)
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %bpp, align 4
  %mul1 = mul nsw i32 %mul, %6
  %conv = sext i32 %mul1 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call2, i8** %buffer, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load i32, i32* %x1, align 4
  %9 = load i32, i32* %y1, align 4
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 0, i32 0)
  %12 = load i8*, i8** %buffer, align 8
  %13 = load i32, i32* %x1, align 4
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_item_get_image(i32 %18)
  store i32 %call4, i32* %src_image_id, align 4
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  %21 = load i32, i32* %src_image_id, align 4
  %call5 = call i32 @gimp_image_base_type(i32 %21)
  %call6 = call i32 @gimp_image_new(i32 %19, i32 %20, i32 %call5)
  store i32 %call6, i32* %image_id, align 4
  %22 = load i32, i32* %image_id, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id7, align 4
  %call8 = call i32 @gimp_drawable_type(i32 %26)
  %call9 = call i32 @gimp_layer_new(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 %23, i32 %24, i32 %call8, double 1.000000e+02, i32 0)
  store i32 %call9, i32* %preview_id, align 4
  %27 = load i32, i32* %preview_id, align 4
  %call10 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %27)
  store %struct._GimpDrawable* %call10, %struct._GimpDrawable** %preview_drawable, align 8
  %28 = load i32, i32* %image_id, align 4
  %29 = load i32, i32* %preview_id, align 4
  %call11 = call i32 @gimp_image_insert_layer(i32 %28, i32 %29, i32 -1, i32 0)
  %30 = load i32, i32* %preview_id, align 4
  %call12 = call i32 @gimp_layer_set_offsets(i32 %30, i32 0, i32 0)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %preview_drawable, align 8
  %32 = load i32, i32* %width, align 4
  %33 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %preview_rgn, %struct._GimpDrawable* %31, i32 0, i32 0, i32 %32, i32 %33, i32 1, i32 1)
  %34 = load i8*, i8** %buffer, align 8
  %35 = load i32, i32* %width, align 4
  %36 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %preview_rgn, i8* %34, i32 0, i32 0, i32 %35, i32 %36)
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %preview_drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %37)
  %38 = load i32, i32* %preview_id, align 4
  %call13 = call i32 @gimp_drawable_merge_shadow(i32 %38, i32 1)
  %39 = load i32, i32* %preview_id, align 4
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %height, align 4
  %call14 = call i32 @gimp_drawable_update(i32 %39, i32 0, i32 0, i32 %40, i32 %41)
  %42 = load i32, i32* %image_id, align 4
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %preview_drawable, align 8
  %44 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 0), align 8
  %45 = load double, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 1), align 8
  call void @dog(i32 %42, %struct._GimpDrawable* %43, double %44, double %45, i32 0)
  %46 = load i8*, i8** %buffer, align 8
  %47 = load i32, i32* %width, align 4
  %48 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %preview_rgn, i8* %46, i32 0, i32 0, i32 %47, i32 %48)
  %49 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %50 = load i8*, i8** %buffer, align 8
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %bpp, align 4
  %mul15 = mul nsw i32 %51, %52
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %49, i8* %50, i32 %mul15)
  %53 = load i32, i32* %image_id, align 4
  %call16 = call i32 @gimp_image_delete(i32 %53)
  %54 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %54)
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_get_unit(i32) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @change_radius_callback(%struct._GtkWidget* %coord, i8* %data) #0 {
entry:
  %coord.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %preview = alloca %struct._GimpPreview*, align 8
  store %struct._GtkWidget* %coord, %struct._GtkWidget** %coord.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  store %struct._GimpPreview* %2, %struct._GimpPreview** %preview, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %coord.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_size_entry_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSizeEntry*
  %call4 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 0)
  store double %call4, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 0), align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %coord.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_size_entry_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSizeEntry*
  %call7 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %8, i32 1)
  store double %call7, double* getelementptr inbounds (%struct.DoGValues, %struct.DoGValues* @dogvals, i32 0, i32 1), align 8
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %9)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_layer_copy(i32) #1

declare i32 @gimp_item_set_visible(i32, i32) #1

declare i32 @gimp_item_set_name(i32, i8*) #1

declare i32 @gimp_item_get_parent(i32) #1

; Function Attrs: nounwind uwtable
define internal void @gauss_rle(%struct._GimpDrawable* %drawable, double %radius, i32 %pass, i32 %show_progress) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %radius.addr = alloca double, align 8
  %pass.addr = alloca i32, align 4
  %show_progress.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %dest = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %src = alloca i8*, align 8
  %sp = alloca i8*, align 8
  %buf = alloca i32*, align 8
  %bb = alloca i32*, align 8
  %pixels = alloca i32, align 4
  %total = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %progress = alloca double, align 8
  %max_progress = alloca double, align 8
  %curve = alloca i32*, align 8
  %sum = alloca i32*, align 8
  %val = alloca i32, align 4
  %length = alloca i32, align 4
  %initial_p = alloca i32, align 4
  %initial_m = alloca i32, align 4
  %std_dev = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %radius, double* %radius.addr, align 8
  store i32 %pass, i32* %pass.addr, align 4
  store i32 %show_progress, i32* %show_progress.addr, align 4
  store i32 1, i32* %total, align 4
  store i32* null, i32** %sum, align 8
  %0 = load double, double* %radius.addr, align 8
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %3 = load i32, i32* %x2, align 4
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %width, align 4
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %5, %6
  store i32 %sub1, i32* %height, align 4
  %7 = load i32, i32* %width, align 4
  %cmp2 = icmp slt i32 %7, 1
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* %height, align 4
  %cmp3 = icmp slt i32 %8, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 3
  %10 = load i32, i32* %bpp, align 4
  store i32 %10, i32* %bytes, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call7, i32* %has_alpha, align 4
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %height, align 4
  %cmp8 = icmp sgt i32 %13, %14
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %15 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %16 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  %mul = mul nsw i32 %cond, 2
  %conv = sext i32 %mul to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %17 = bitcast i8* %call9 to i32*
  store i32* %17, i32** %buf, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %cmp10 = icmp sgt i32 %18, %19
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %20 = load i32, i32* %width, align 4
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  %21 = load i32, i32* %height, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i32 [ %20, %cond.true.12 ], [ %21, %cond.false.13 ]
  %22 = load i32, i32* %bytes, align 4
  %mul16 = mul nsw i32 %cond15, %22
  %conv17 = sext i32 %mul16 to i64
  %call18 = call noalias i8* @g_malloc_n(i64 %conv17, i64 1)
  store i8* %call18, i8** %src, align 8
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  %cmp19 = icmp sgt i32 %23, %24
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.14
  %25 = load i32, i32* %width, align 4
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end.14
  %26 = load i32, i32* %height, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %25, %cond.true.21 ], [ %26, %cond.false.22 ]
  %27 = load i32, i32* %bytes, align 4
  %mul25 = mul nsw i32 %cond24, %27
  %conv26 = sext i32 %mul25 to i64
  %call27 = call noalias i8* @g_malloc_n(i64 %conv26, i64 1)
  store i8* %call27, i8** %dest, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 1
  %30 = load i32, i32* %width28, align 4
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 2
  %32 = load i32, i32* %height29, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %28, i32 0, i32 0, i32 %30, i32 %32, i32 0, i32 0)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 1
  %35 = load i32, i32* %width30, align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 2
  %37 = load i32, i32* %height31, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %33, i32 0, i32 0, i32 %35, i32 %37, i32 1, i32 1)
  store double 0.000000e+00, double* %progress, align 8
  %38 = load i32, i32* %width, align 4
  %mul32 = mul nsw i32 2, %38
  %39 = load i32, i32* %height, align 4
  %mul33 = mul nsw i32 %mul32, %39
  %conv34 = sitofp i32 %mul33 to double
  store double %conv34, double* %max_progress, align 8
  %40 = load double, double* %radius.addr, align 8
  %call35 = call double @fabs(double %40) #5
  %add = fadd double %call35, 1.000000e+00
  store double %add, double* %radius.addr, align 8
  %41 = load double, double* %radius.addr, align 8
  %42 = load double, double* %radius.addr, align 8
  %mul36 = fmul double %41, %42
  %sub37 = fsub double -0.000000e+00, %mul36
  %call38 = call double @log(double 0x3F70101010101010) #6
  %mul39 = fmul double 2.000000e+00, %call38
  %div = fdiv double %sub37, %mul39
  %call40 = call double @sqrt(double %div) #6
  store double %call40, double* %std_dev, align 8
  %43 = load double, double* %std_dev, align 8
  %call41 = call i32* @make_curve(double %43, i32* %length)
  store i32* %call41, i32** %curve, align 8
  %44 = load i32, i32* %length, align 4
  %mul42 = mul nsw i32 2, %44
  %add43 = add nsw i32 %mul42, 1
  %conv44 = sext i32 %add43 to i64
  %call45 = call noalias i8* @g_malloc_n(i64 %conv44, i64 4)
  %45 = bitcast i8* %call45 to i32*
  store i32* %45, i32** %sum, align 8
  %46 = load i32*, i32** %sum, align 8
  %arrayidx = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.23
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %length, align 4
  %mul46 = mul nsw i32 %48, 2
  %cmp47 = icmp sle i32 %47, %mul46
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %length, align 4
  %sub49 = sub nsw i32 %49, %50
  %sub50 = sub nsw i32 %sub49, 1
  %idxprom = sext i32 %sub50 to i64
  %51 = load i32*, i32** %curve, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %51, i64 %idxprom
  %52 = load i32, i32* %arrayidx51, align 4
  %53 = load i32, i32* %i, align 4
  %sub52 = sub nsw i32 %53, 1
  %idxprom53 = sext i32 %sub52 to i64
  %54 = load i32*, i32** %sum, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %54, i64 %idxprom53
  %55 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %52, %55
  %56 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %56 to i64
  %57 = load i32*, i32** %sum, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %57, i64 %idxprom56
  store i32 %add55, i32* %arrayidx57, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %i, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* %length, align 4
  %60 = load i32*, i32** %sum, align 8
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds i32, i32* %60, i64 %idx.ext
  store i32* %add.ptr, i32** %sum, align 8
  %61 = load i32, i32* %length, align 4
  %idxprom58 = sext i32 %61 to i64
  %62 = load i32*, i32** %sum, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 %idxprom58
  %63 = load i32, i32* %arrayidx59, align 4
  %64 = load i32, i32* %length, align 4
  %sub60 = sub nsw i32 0, %64
  %idxprom61 = sext i32 %sub60 to i64
  %65 = load i32*, i32** %sum, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %65, i64 %idxprom61
  %66 = load i32, i32* %arrayidx62, align 4
  %sub63 = sub nsw i32 %63, %66
  store i32 %sub63, i32* %total, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.186, %for.end
  %67 = load i32, i32* %col, align 4
  %68 = load i32, i32* %width, align 4
  %cmp65 = icmp slt i32 %67, %68
  br i1 %cmp65, label %for.body.67, label %for.end.188

for.body.67:                                      ; preds = %for.cond.64
  %69 = load i8*, i8** %src, align 8
  %70 = load i32, i32* %col, align 4
  %71 = load i32, i32* %x1, align 4
  %add68 = add nsw i32 %70, %71
  %72 = load i32, i32* %y1, align 4
  %73 = load i32, i32* %y2, align 4
  %74 = load i32, i32* %y1, align 4
  %sub69 = sub nsw i32 %73, %74
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %src_rgn, i8* %69, i32 %add68, i32 %72, i32 %sub69)
  %75 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %75, 0
  br i1 %tobool, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body.67
  %76 = load i8*, i8** %src, align 8
  %77 = load i32, i32* %height, align 4
  %78 = load i32, i32* %bytes, align 4
  call void @multiply_alpha(i8* %76, i32 %77, i32 %78)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %for.body.67
  %79 = load i8*, i8** %src, align 8
  store i8* %79, i8** %sp, align 8
  %80 = load i8*, i8** %dest, align 8
  store i8* %80, i8** %dp, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.164, %if.end.71
  %81 = load i32, i32* %b, align 4
  %82 = load i32, i32* %bytes, align 4
  %cmp73 = icmp slt i32 %81, %82
  br i1 %cmp73, label %for.body.75, label %for.end.166

for.body.75:                                      ; preds = %for.cond.72
  %83 = load i32, i32* %b, align 4
  %idxprom76 = sext i32 %83 to i64
  %84 = load i8*, i8** %sp, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %84, i64 %idxprom76
  %85 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %85 to i32
  store i32 %conv78, i32* %initial_p, align 4
  %86 = load i32, i32* %height, align 4
  %sub79 = sub nsw i32 %86, 1
  %87 = load i32, i32* %bytes, align 4
  %mul80 = mul nsw i32 %sub79, %87
  %88 = load i32, i32* %b, align 4
  %add81 = add nsw i32 %mul80, %88
  %idxprom82 = sext i32 %add81 to i64
  %89 = load i8*, i8** %sp, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %89, i64 %idxprom82
  %90 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %90 to i32
  store i32 %conv84, i32* %initial_m, align 4
  %91 = load i8*, i8** %sp, align 8
  %92 = load i32, i32* %b, align 4
  %idx.ext85 = sext i32 %92 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %91, i64 %idx.ext85
  %93 = load i32*, i32** %buf, align 8
  %94 = load i32, i32* %bytes, align 4
  %95 = load i32, i32* %height, align 4
  call void @run_length_encode(i8* %add.ptr86, i32* %93, i32 %94, i32 %95)
  store i32 0, i32* %row, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.161, %for.body.75
  %96 = load i32, i32* %row, align 4
  %97 = load i32, i32* %height, align 4
  %cmp88 = icmp slt i32 %96, %97
  br i1 %cmp88, label %for.body.90, label %for.end.163

for.body.90:                                      ; preds = %for.cond.87
  %98 = load i32, i32* %row, align 4
  %99 = load i32, i32* %length, align 4
  %cmp91 = icmp slt i32 %98, %99
  br i1 %cmp91, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %for.body.90
  %100 = load i32, i32* %row, align 4
  %sub94 = sub nsw i32 0, %100
  br label %cond.end.97

cond.false.95:                                    ; preds = %for.body.90
  %101 = load i32, i32* %length, align 4
  %sub96 = sub nsw i32 0, %101
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.93
  %cond98 = phi i32 [ %sub94, %cond.true.93 ], [ %sub96, %cond.false.95 ]
  store i32 %cond98, i32* %start, align 4
  %102 = load i32, i32* %height, align 4
  %103 = load i32, i32* %row, align 4
  %104 = load i32, i32* %length, align 4
  %add99 = add nsw i32 %103, %104
  %cmp100 = icmp sle i32 %102, %add99
  br i1 %cmp100, label %cond.true.102, label %cond.false.105

cond.true.102:                                    ; preds = %cond.end.97
  %105 = load i32, i32* %height, align 4
  %106 = load i32, i32* %row, align 4
  %sub103 = sub nsw i32 %105, %106
  %sub104 = sub nsw i32 %sub103, 1
  br label %cond.end.106

cond.false.105:                                   ; preds = %cond.end.97
  %107 = load i32, i32* %length, align 4
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.102
  %cond107 = phi i32 [ %sub104, %cond.true.102 ], [ %107, %cond.false.105 ]
  store i32 %cond107, i32* %end, align 4
  store i32 0, i32* %val, align 4
  %108 = load i32, i32* %start, align 4
  store i32 %108, i32* %i, align 4
  %109 = load i32*, i32** %buf, align 8
  %110 = load i32, i32* %row, align 4
  %111 = load i32, i32* %i, align 4
  %add108 = add nsw i32 %110, %111
  %mul109 = mul nsw i32 %add108, 2
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i32, i32* %109, i64 %idx.ext110
  store i32* %add.ptr111, i32** %bb, align 8
  %112 = load i32, i32* %start, align 4
  %113 = load i32, i32* %length, align 4
  %sub112 = sub nsw i32 0, %113
  %cmp113 = icmp ne i32 %112, %sub112
  br i1 %cmp113, label %if.then.115, label %if.end.124

if.then.115:                                      ; preds = %cond.end.106
  %114 = load i32, i32* %initial_p, align 4
  %115 = load i32, i32* %start, align 4
  %idxprom116 = sext i32 %115 to i64
  %116 = load i32*, i32** %sum, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %116, i64 %idxprom116
  %117 = load i32, i32* %arrayidx117, align 4
  %118 = load i32, i32* %length, align 4
  %sub118 = sub nsw i32 0, %118
  %idxprom119 = sext i32 %sub118 to i64
  %119 = load i32*, i32** %sum, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %119, i64 %idxprom119
  %120 = load i32, i32* %arrayidx120, align 4
  %sub121 = sub nsw i32 %117, %120
  %mul122 = mul nsw i32 %114, %sub121
  %121 = load i32, i32* %val, align 4
  %add123 = add nsw i32 %121, %mul122
  store i32 %add123, i32* %val, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.115, %cond.end.106
  br label %while.cond

while.cond:                                       ; preds = %if.end.132, %if.end.124
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %end, align 4
  %cmp125 = icmp slt i32 %122, %123
  br i1 %cmp125, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %124 = load i32*, i32** %bb, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %124, i64 0
  %125 = load i32, i32* %arrayidx127, align 4
  store i32 %125, i32* %pixels, align 4
  %126 = load i32, i32* %pixels, align 4
  %127 = load i32, i32* %i, align 4
  %add128 = add nsw i32 %127, %126
  store i32 %add128, i32* %i, align 4
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %end, align 4
  %cmp129 = icmp sgt i32 %128, %129
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %while.body
  %130 = load i32, i32* %end, align 4
  store i32 %130, i32* %i, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %while.body
  %131 = load i32*, i32** %bb, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %131, i64 1
  %132 = load i32, i32* %arrayidx133, align 4
  %133 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %133 to i64
  %134 = load i32*, i32** %sum, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %134, i64 %idxprom134
  %135 = load i32, i32* %arrayidx135, align 4
  %136 = load i32, i32* %start, align 4
  %idxprom136 = sext i32 %136 to i64
  %137 = load i32*, i32** %sum, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %137, i64 %idxprom136
  %138 = load i32, i32* %arrayidx137, align 4
  %sub138 = sub nsw i32 %135, %138
  %mul139 = mul nsw i32 %132, %sub138
  %139 = load i32, i32* %val, align 4
  %add140 = add nsw i32 %139, %mul139
  store i32 %add140, i32* %val, align 4
  %140 = load i32, i32* %pixels, align 4
  %mul141 = mul nsw i32 %140, 2
  %141 = load i32*, i32** %bb, align 8
  %idx.ext142 = sext i32 %mul141 to i64
  %add.ptr143 = getelementptr inbounds i32, i32* %141, i64 %idx.ext142
  store i32* %add.ptr143, i32** %bb, align 8
  %142 = load i32, i32* %i, align 4
  store i32 %142, i32* %start, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %143 = load i32, i32* %end, align 4
  %144 = load i32, i32* %length, align 4
  %cmp144 = icmp ne i32 %143, %144
  br i1 %cmp144, label %if.then.146, label %if.end.154

if.then.146:                                      ; preds = %while.end
  %145 = load i32, i32* %initial_m, align 4
  %146 = load i32, i32* %length, align 4
  %idxprom147 = sext i32 %146 to i64
  %147 = load i32*, i32** %sum, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %147, i64 %idxprom147
  %148 = load i32, i32* %arrayidx148, align 4
  %149 = load i32, i32* %end, align 4
  %idxprom149 = sext i32 %149 to i64
  %150 = load i32*, i32** %sum, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %150, i64 %idxprom149
  %151 = load i32, i32* %arrayidx150, align 4
  %sub151 = sub nsw i32 %148, %151
  %mul152 = mul nsw i32 %145, %sub151
  %152 = load i32, i32* %val, align 4
  %add153 = add nsw i32 %152, %mul152
  store i32 %add153, i32* %val, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.146, %while.end
  %153 = load i32, i32* %val, align 4
  %154 = load i32, i32* %total, align 4
  %div155 = sdiv i32 %153, %154
  %conv156 = trunc i32 %div155 to i8
  %155 = load i32, i32* %row, align 4
  %156 = load i32, i32* %bytes, align 4
  %mul157 = mul nsw i32 %155, %156
  %157 = load i32, i32* %b, align 4
  %add158 = add nsw i32 %mul157, %157
  %idxprom159 = sext i32 %add158 to i64
  %158 = load i8*, i8** %dp, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %158, i64 %idxprom159
  store i8 %conv156, i8* %arrayidx160, align 1
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.154
  %159 = load i32, i32* %row, align 4
  %inc162 = add nsw i32 %159, 1
  store i32 %inc162, i32* %row, align 4
  br label %for.cond.87

for.end.163:                                      ; preds = %for.cond.87
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.end.163
  %160 = load i32, i32* %b, align 4
  %inc165 = add nsw i32 %160, 1
  store i32 %inc165, i32* %b, align 4
  br label %for.cond.72

for.end.166:                                      ; preds = %for.cond.72
  %161 = load i32, i32* %has_alpha, align 4
  %tobool167 = icmp ne i32 %161, 0
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %for.end.166
  %162 = load i8*, i8** %dest, align 8
  %163 = load i32, i32* %height, align 4
  %164 = load i32, i32* %bytes, align 4
  call void @separate_alpha(i8* %162, i32 %163, i32 %164)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %for.end.166
  %165 = load i8*, i8** %dest, align 8
  %166 = load i32, i32* %col, align 4
  %167 = load i32, i32* %x1, align 4
  %add170 = add nsw i32 %166, %167
  %168 = load i32, i32* %y1, align 4
  %169 = load i32, i32* %y2, align 4
  %170 = load i32, i32* %y1, align 4
  %sub171 = sub nsw i32 %169, %170
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %dest_rgn, i8* %165, i32 %add170, i32 %168, i32 %sub171)
  %171 = load i32, i32* %show_progress.addr, align 4
  %tobool172 = icmp ne i32 %171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.185

if.then.173:                                      ; preds = %if.end.169
  %172 = load i32, i32* %height, align 4
  %conv174 = sitofp i32 %172 to double
  %173 = load double, double* %progress, align 8
  %add175 = fadd double %173, %conv174
  store double %add175, double* %progress, align 8
  %174 = load i32, i32* %col, align 4
  %rem = srem i32 %174, 32
  %cmp176 = icmp eq i32 %rem, 0
  br i1 %cmp176, label %if.then.178, label %if.end.184

if.then.178:                                      ; preds = %if.then.173
  %175 = load i32, i32* %pass.addr, align 4
  %conv179 = sitofp i32 %175 to double
  %176 = load double, double* %progress, align 8
  %177 = load double, double* %max_progress, align 8
  %div180 = fdiv double %176, %177
  %add181 = fadd double %conv179, %div180
  %mul182 = fmul double 5.000000e-01, %add181
  %call183 = call i32 @gimp_progress_update(double %mul182)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.178, %if.then.173
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.end.169
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %178 = load i32, i32* %col, align 4
  %inc187 = add nsw i32 %178, 1
  store i32 %inc187, i32* %col, align 4
  br label %for.cond.64

for.end.188:                                      ; preds = %for.cond.64
  %179 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %180 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width189 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %180, i32 0, i32 1
  %181 = load i32, i32* %width189, align 4
  %182 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height190 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %182, i32 0, i32 2
  %183 = load i32, i32* %height190, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %179, i32 0, i32 0, i32 %181, i32 %183, i32 0, i32 1)
  store i32 0, i32* %row, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.318, %for.end.188
  %184 = load i32, i32* %row, align 4
  %185 = load i32, i32* %height, align 4
  %cmp192 = icmp slt i32 %184, %185
  br i1 %cmp192, label %for.body.194, label %for.end.320

for.body.194:                                     ; preds = %for.cond.191
  %186 = load i8*, i8** %src, align 8
  %187 = load i32, i32* %x1, align 4
  %188 = load i32, i32* %row, align 4
  %189 = load i32, i32* %y1, align 4
  %add195 = add nsw i32 %188, %189
  %190 = load i32, i32* %x2, align 4
  %191 = load i32, i32* %x1, align 4
  %sub196 = sub nsw i32 %190, %191
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %186, i32 %187, i32 %add195, i32 %sub196)
  %192 = load i32, i32* %has_alpha, align 4
  %tobool197 = icmp ne i32 %192, 0
  br i1 %tobool197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %for.body.194
  %193 = load i8*, i8** %src, align 8
  %194 = load i32, i32* %width, align 4
  %195 = load i32, i32* %bytes, align 4
  call void @multiply_alpha(i8* %193, i32 %194, i32 %195)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %for.body.194
  %196 = load i8*, i8** %src, align 8
  store i8* %196, i8** %sp, align 8
  %197 = load i8*, i8** %dest, align 8
  store i8* %197, i8** %dp, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.295, %if.end.199
  %198 = load i32, i32* %b, align 4
  %199 = load i32, i32* %bytes, align 4
  %cmp201 = icmp slt i32 %198, %199
  br i1 %cmp201, label %for.body.203, label %for.end.297

for.body.203:                                     ; preds = %for.cond.200
  %200 = load i32, i32* %b, align 4
  %idxprom204 = sext i32 %200 to i64
  %201 = load i8*, i8** %sp, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %201, i64 %idxprom204
  %202 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %202 to i32
  store i32 %conv206, i32* %initial_p, align 4
  %203 = load i32, i32* %width, align 4
  %sub207 = sub nsw i32 %203, 1
  %204 = load i32, i32* %bytes, align 4
  %mul208 = mul nsw i32 %sub207, %204
  %205 = load i32, i32* %b, align 4
  %add209 = add nsw i32 %mul208, %205
  %idxprom210 = sext i32 %add209 to i64
  %206 = load i8*, i8** %sp, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %206, i64 %idxprom210
  %207 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %207 to i32
  store i32 %conv212, i32* %initial_m, align 4
  %208 = load i8*, i8** %sp, align 8
  %209 = load i32, i32* %b, align 4
  %idx.ext213 = sext i32 %209 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %208, i64 %idx.ext213
  %210 = load i32*, i32** %buf, align 8
  %211 = load i32, i32* %bytes, align 4
  %212 = load i32, i32* %width, align 4
  call void @run_length_encode(i8* %add.ptr214, i32* %210, i32 %211, i32 %212)
  store i32 0, i32* %col, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.292, %for.body.203
  %213 = load i32, i32* %col, align 4
  %214 = load i32, i32* %width, align 4
  %cmp216 = icmp slt i32 %213, %214
  br i1 %cmp216, label %for.body.218, label %for.end.294

for.body.218:                                     ; preds = %for.cond.215
  %215 = load i32, i32* %col, align 4
  %216 = load i32, i32* %length, align 4
  %cmp219 = icmp slt i32 %215, %216
  br i1 %cmp219, label %cond.true.221, label %cond.false.223

cond.true.221:                                    ; preds = %for.body.218
  %217 = load i32, i32* %col, align 4
  %sub222 = sub nsw i32 0, %217
  br label %cond.end.225

cond.false.223:                                   ; preds = %for.body.218
  %218 = load i32, i32* %length, align 4
  %sub224 = sub nsw i32 0, %218
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.223, %cond.true.221
  %cond226 = phi i32 [ %sub222, %cond.true.221 ], [ %sub224, %cond.false.223 ]
  store i32 %cond226, i32* %start, align 4
  %219 = load i32, i32* %width, align 4
  %220 = load i32, i32* %col, align 4
  %221 = load i32, i32* %length, align 4
  %add227 = add nsw i32 %220, %221
  %cmp228 = icmp sle i32 %219, %add227
  br i1 %cmp228, label %cond.true.230, label %cond.false.233

cond.true.230:                                    ; preds = %cond.end.225
  %222 = load i32, i32* %width, align 4
  %223 = load i32, i32* %col, align 4
  %sub231 = sub nsw i32 %222, %223
  %sub232 = sub nsw i32 %sub231, 1
  br label %cond.end.234

cond.false.233:                                   ; preds = %cond.end.225
  %224 = load i32, i32* %length, align 4
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.233, %cond.true.230
  %cond235 = phi i32 [ %sub232, %cond.true.230 ], [ %224, %cond.false.233 ]
  store i32 %cond235, i32* %end, align 4
  store i32 0, i32* %val, align 4
  %225 = load i32, i32* %start, align 4
  store i32 %225, i32* %i, align 4
  %226 = load i32*, i32** %buf, align 8
  %227 = load i32, i32* %col, align 4
  %228 = load i32, i32* %i, align 4
  %add236 = add nsw i32 %227, %228
  %mul237 = mul nsw i32 %add236, 2
  %idx.ext238 = sext i32 %mul237 to i64
  %add.ptr239 = getelementptr inbounds i32, i32* %226, i64 %idx.ext238
  store i32* %add.ptr239, i32** %bb, align 8
  %229 = load i32, i32* %start, align 4
  %230 = load i32, i32* %length, align 4
  %sub240 = sub nsw i32 0, %230
  %cmp241 = icmp ne i32 %229, %sub240
  br i1 %cmp241, label %if.then.243, label %if.end.252

if.then.243:                                      ; preds = %cond.end.234
  %231 = load i32, i32* %initial_p, align 4
  %232 = load i32, i32* %start, align 4
  %idxprom244 = sext i32 %232 to i64
  %233 = load i32*, i32** %sum, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %233, i64 %idxprom244
  %234 = load i32, i32* %arrayidx245, align 4
  %235 = load i32, i32* %length, align 4
  %sub246 = sub nsw i32 0, %235
  %idxprom247 = sext i32 %sub246 to i64
  %236 = load i32*, i32** %sum, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %236, i64 %idxprom247
  %237 = load i32, i32* %arrayidx248, align 4
  %sub249 = sub nsw i32 %234, %237
  %mul250 = mul nsw i32 %231, %sub249
  %238 = load i32, i32* %val, align 4
  %add251 = add nsw i32 %238, %mul250
  store i32 %add251, i32* %val, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.243, %cond.end.234
  br label %while.cond.253

while.cond.253:                                   ; preds = %if.end.262, %if.end.252
  %239 = load i32, i32* %i, align 4
  %240 = load i32, i32* %end, align 4
  %cmp254 = icmp slt i32 %239, %240
  br i1 %cmp254, label %while.body.256, label %while.end.274

while.body.256:                                   ; preds = %while.cond.253
  %241 = load i32*, i32** %bb, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %241, i64 0
  %242 = load i32, i32* %arrayidx257, align 4
  store i32 %242, i32* %pixels, align 4
  %243 = load i32, i32* %pixels, align 4
  %244 = load i32, i32* %i, align 4
  %add258 = add nsw i32 %244, %243
  store i32 %add258, i32* %i, align 4
  %245 = load i32, i32* %i, align 4
  %246 = load i32, i32* %end, align 4
  %cmp259 = icmp sgt i32 %245, %246
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %while.body.256
  %247 = load i32, i32* %end, align 4
  store i32 %247, i32* %i, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.261, %while.body.256
  %248 = load i32*, i32** %bb, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %248, i64 1
  %249 = load i32, i32* %arrayidx263, align 4
  %250 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %250 to i64
  %251 = load i32*, i32** %sum, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %251, i64 %idxprom264
  %252 = load i32, i32* %arrayidx265, align 4
  %253 = load i32, i32* %start, align 4
  %idxprom266 = sext i32 %253 to i64
  %254 = load i32*, i32** %sum, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %254, i64 %idxprom266
  %255 = load i32, i32* %arrayidx267, align 4
  %sub268 = sub nsw i32 %252, %255
  %mul269 = mul nsw i32 %249, %sub268
  %256 = load i32, i32* %val, align 4
  %add270 = add nsw i32 %256, %mul269
  store i32 %add270, i32* %val, align 4
  %257 = load i32, i32* %pixels, align 4
  %mul271 = mul nsw i32 %257, 2
  %258 = load i32*, i32** %bb, align 8
  %idx.ext272 = sext i32 %mul271 to i64
  %add.ptr273 = getelementptr inbounds i32, i32* %258, i64 %idx.ext272
  store i32* %add.ptr273, i32** %bb, align 8
  %259 = load i32, i32* %i, align 4
  store i32 %259, i32* %start, align 4
  br label %while.cond.253

while.end.274:                                    ; preds = %while.cond.253
  %260 = load i32, i32* %end, align 4
  %261 = load i32, i32* %length, align 4
  %cmp275 = icmp ne i32 %260, %261
  br i1 %cmp275, label %if.then.277, label %if.end.285

if.then.277:                                      ; preds = %while.end.274
  %262 = load i32, i32* %initial_m, align 4
  %263 = load i32, i32* %length, align 4
  %idxprom278 = sext i32 %263 to i64
  %264 = load i32*, i32** %sum, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %264, i64 %idxprom278
  %265 = load i32, i32* %arrayidx279, align 4
  %266 = load i32, i32* %end, align 4
  %idxprom280 = sext i32 %266 to i64
  %267 = load i32*, i32** %sum, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %267, i64 %idxprom280
  %268 = load i32, i32* %arrayidx281, align 4
  %sub282 = sub nsw i32 %265, %268
  %mul283 = mul nsw i32 %262, %sub282
  %269 = load i32, i32* %val, align 4
  %add284 = add nsw i32 %269, %mul283
  store i32 %add284, i32* %val, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.277, %while.end.274
  %270 = load i32, i32* %val, align 4
  %271 = load i32, i32* %total, align 4
  %div286 = sdiv i32 %270, %271
  %conv287 = trunc i32 %div286 to i8
  %272 = load i32, i32* %col, align 4
  %273 = load i32, i32* %bytes, align 4
  %mul288 = mul nsw i32 %272, %273
  %274 = load i32, i32* %b, align 4
  %add289 = add nsw i32 %mul288, %274
  %idxprom290 = sext i32 %add289 to i64
  %275 = load i8*, i8** %dp, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %275, i64 %idxprom290
  store i8 %conv287, i8* %arrayidx291, align 1
  br label %for.inc.292

for.inc.292:                                      ; preds = %if.end.285
  %276 = load i32, i32* %col, align 4
  %inc293 = add nsw i32 %276, 1
  store i32 %inc293, i32* %col, align 4
  br label %for.cond.215

for.end.294:                                      ; preds = %for.cond.215
  br label %for.inc.295

for.inc.295:                                      ; preds = %for.end.294
  %277 = load i32, i32* %b, align 4
  %inc296 = add nsw i32 %277, 1
  store i32 %inc296, i32* %b, align 4
  br label %for.cond.200

for.end.297:                                      ; preds = %for.cond.200
  %278 = load i32, i32* %has_alpha, align 4
  %tobool298 = icmp ne i32 %278, 0
  br i1 %tobool298, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %for.end.297
  %279 = load i8*, i8** %dest, align 8
  %280 = load i32, i32* %width, align 4
  %281 = load i32, i32* %bytes, align 4
  call void @separate_alpha(i8* %279, i32 %280, i32 %281)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %for.end.297
  %282 = load i8*, i8** %dest, align 8
  %283 = load i32, i32* %x1, align 4
  %284 = load i32, i32* %row, align 4
  %285 = load i32, i32* %y1, align 4
  %add301 = add nsw i32 %284, %285
  %286 = load i32, i32* %x2, align 4
  %287 = load i32, i32* %x1, align 4
  %sub302 = sub nsw i32 %286, %287
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_rgn, i8* %282, i32 %283, i32 %add301, i32 %sub302)
  %288 = load i32, i32* %show_progress.addr, align 4
  %tobool303 = icmp ne i32 %288, 0
  br i1 %tobool303, label %if.then.304, label %if.end.317

if.then.304:                                      ; preds = %if.end.300
  %289 = load i32, i32* %width, align 4
  %conv305 = sitofp i32 %289 to double
  %290 = load double, double* %progress, align 8
  %add306 = fadd double %290, %conv305
  store double %add306, double* %progress, align 8
  %291 = load i32, i32* %row, align 4
  %rem307 = srem i32 %291, 32
  %cmp308 = icmp eq i32 %rem307, 0
  br i1 %cmp308, label %if.then.310, label %if.end.316

if.then.310:                                      ; preds = %if.then.304
  %292 = load i32, i32* %pass.addr, align 4
  %conv311 = sitofp i32 %292 to double
  %293 = load double, double* %progress, align 8
  %294 = load double, double* %max_progress, align 8
  %div312 = fdiv double %293, %294
  %add313 = fadd double %conv311, %div312
  %mul314 = fmul double 5.000000e-01, %add313
  %call315 = call i32 @gimp_progress_update(double %mul314)
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.310, %if.then.304
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.300
  br label %for.inc.318

for.inc.318:                                      ; preds = %if.end.317
  %295 = load i32, i32* %row, align 4
  %inc319 = add nsw i32 %295, 1
  store i32 %inc319, i32* %row, align 4
  br label %for.cond.191

for.end.320:                                      ; preds = %for.cond.191
  %296 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %296)
  %297 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id321 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %297, i32 0, i32 0
  %298 = load i32, i32* %drawable_id321, align 4
  %call322 = call i32 @gimp_drawable_merge_shadow(i32 %298, i32 1)
  %299 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id323 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %299, i32 0, i32 0
  %300 = load i32, i32* %drawable_id323, align 4
  %301 = load i32, i32* %x1, align 4
  %302 = load i32, i32* %y1, align 4
  %303 = load i32, i32* %x2, align 4
  %304 = load i32, i32* %x1, align 4
  %sub324 = sub nsw i32 %303, %304
  %305 = load i32, i32* %y2, align 4
  %306 = load i32, i32* %y1, align 4
  %sub325 = sub nsw i32 %305, %306
  %call326 = call i32 @gimp_drawable_update(i32 %300, i32 %301, i32 %302, i32 %sub324, i32 %sub325)
  %307 = load i32*, i32** %buf, align 8
  %308 = bitcast i32* %307 to i8*
  call void @g_free(i8* %308)
  %309 = load i8*, i8** %src, align 8
  call void @g_free(i8* %309)
  %310 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %310)
  br label %return

return:                                           ; preds = %for.end.320, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_difference(%struct._GimpDrawable* %drawable, %struct._GimpDrawable* %drawable1, %struct._GimpDrawable* %drawable2, i8* %maxval) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %drawable1.addr = alloca %struct._GimpDrawable*, align 8
  %drawable2.addr = alloca %struct._GimpDrawable*, align 8
  %maxval.addr = alloca i8*, align 8
  %src1_rgn = alloca %struct._GimpPixelRgn, align 8
  %src2_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %pr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %d = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %drawable1, %struct._GimpDrawable** %drawable1.addr, align 8
  store %struct._GimpDrawable* %drawable2, %struct._GimpDrawable** %drawable2.addr, align 8
  store i8* %maxval, i8** %maxval.addr, align 8
  %0 = load i8*, i8** %maxval.addr, align 8
  store i8 0, i8* %0, align 1
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %3 = load i32, i32* %x2, align 4
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %width, align 4
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %5, %6
  store i32 %sub1, i32* %height, align 4
  %7 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %height, align 4
  %cmp2 = icmp slt i32 %8, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end.156

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 3
  %10 = load i32, i32* %bpp3, align 4
  store i32 %10, i32* %bpp, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call5, i32* %has_alpha, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1.addr, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 1
  %15 = load i32, i32* %width6, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1.addr, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 2
  %17 = load i32, i32* %height7, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src1_rgn, %struct._GimpDrawable* %13, i32 0, i32 0, i32 %15, i32 %17, i32 0, i32 0)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2.addr, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1.addr, align 8
  %width8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width8, align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable1.addr, align 8
  %height9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 2
  %22 = load i32, i32* %height9, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src2_rgn, %struct._GimpDrawable* %18, i32 0, i32 0, i32 %20, i32 %22, i32 0, i32 0)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load i32, i32* %width10, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 2
  %27 = load i32, i32* %height11, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %23, i32 0, i32 0, i32 %25, i32 %27, i32 1, i32 1)
  %call12 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 3, %struct._GimpPixelRgn* %src1_rgn, %struct._GimpPixelRgn* %src2_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call12, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.154, %if.end
  %28 = load i8*, i8** %pr, align 8
  %cmp13 = icmp ne i8* %28, null
  br i1 %cmp13, label %for.body, label %for.end.156

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8
  store i8* %29, i8** %src1, align 8
  %data14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src2_rgn, i32 0, i32 0
  %30 = load i8*, i8** %data14, align 8
  store i8* %30, i8** %src2, align 8
  %data15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %31 = load i8*, i8** %data15, align 8
  store i8* %31, i8** %dest, align 8
  %y16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 5
  %32 = load i32, i32* %y16, align 4
  %33 = load i32, i32* %y1, align 4
  %sub17 = sub nsw i32 %32, %33
  store i32 %sub17, i32* %row, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.150, %for.body
  %34 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 7
  %35 = load i32, i32* %h, align 4
  %cmp19 = icmp slt i32 %34, %35
  br i1 %cmp19, label %for.body.20, label %for.end.153

for.body.20:                                      ; preds = %for.cond.18
  %36 = load i8*, i8** %src1, align 8
  store i8* %36, i8** %s1, align 8
  %37 = load i8*, i8** %src2, align 8
  store i8* %37, i8** %s2, align 8
  %38 = load i8*, i8** %dest, align 8
  store i8* %38, i8** %d, align 8
  %x21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 4
  %39 = load i32, i32* %x21, align 4
  %40 = load i32, i32* %x1, align 4
  %sub22 = sub nsw i32 %39, %40
  store i32 %sub22, i32* %col, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.138, %for.body.20
  %41 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 6
  %42 = load i32, i32* %w, align 4
  %cmp24 = icmp slt i32 %41, %42
  br i1 %cmp24, label %for.body.25, label %for.end.141

for.body.25:                                      ; preds = %for.cond.23
  %43 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.body.25
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.then.26
  %44 = load i32, i32* %k, align 4
  %45 = load i32, i32* %bpp, align 4
  %sub28 = sub nsw i32 %45, 1
  %cmp29 = icmp slt i32 %44, %sub28
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %46 = load i32, i32* %k, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load i8*, i8** %s1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 %idxprom
  %48 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %48 to i32
  %49 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %49 to i64
  %50 = load i8*, i8** %s2, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %50, i64 %idxprom31
  %51 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %51 to i32
  %sub34 = sub nsw i32 %conv, %conv33
  %cmp35 = icmp sgt i32 %sub34, 255
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.30
  br label %cond.end.55

cond.false:                                       ; preds = %for.body.30
  %52 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %52 to i64
  %53 = load i8*, i8** %s1, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %53, i64 %idxprom37
  %54 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %54 to i32
  %55 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %55 to i64
  %56 = load i8*, i8** %s2, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %56, i64 %idxprom40
  %57 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %57 to i32
  %sub43 = sub nsw i32 %conv39, %conv42
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.false
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false
  %58 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %58 to i64
  %59 = load i8*, i8** %s1, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %59, i64 %idxprom48
  %60 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %60 to i32
  %61 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %61 to i64
  %62 = load i8*, i8** %s2, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %62, i64 %idxprom51
  %63 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %63 to i32
  %sub54 = sub nsw i32 %conv50, %conv53
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.46
  %cond = phi i32 [ 0, %cond.true.46 ], [ %sub54, %cond.false.47 ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end, %cond.true
  %cond56 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv57 = trunc i32 %cond56 to i8
  %64 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %64 to i64
  %65 = load i8*, i8** %d, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %65, i64 %idxprom58
  store i8 %conv57, i8* %arrayidx59, align 1
  %66 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %66 to i64
  %67 = load i8*, i8** %d, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %67, i64 %idxprom60
  %68 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %68 to i32
  %69 = load i8*, i8** %maxval.addr, align 8
  %70 = load i8, i8* %69, align 1
  %conv63 = zext i8 %70 to i32
  %cmp64 = icmp sgt i32 %conv62, %conv63
  br i1 %cmp64, label %cond.true.66, label %cond.false.70

cond.true.66:                                     ; preds = %cond.end.55
  %71 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %71 to i64
  %72 = load i8*, i8** %d, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %72, i64 %idxprom67
  %73 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %73 to i32
  br label %cond.end.72

cond.false.70:                                    ; preds = %cond.end.55
  %74 = load i8*, i8** %maxval.addr, align 8
  %75 = load i8, i8* %74, align 1
  %conv71 = zext i8 %75 to i32
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.66
  %cond73 = phi i32 [ %conv69, %cond.true.66 ], [ %conv71, %cond.false.70 ]
  %conv74 = trunc i32 %cond73 to i8
  %76 = load i8*, i8** %maxval.addr, align 8
  store i8 %conv74, i8* %76, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.72
  %77 = load i32, i32* %k, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %if.end.133

if.else:                                          ; preds = %for.body.25
  store i32 0, i32* %k, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.130, %if.else
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %bpp, align 4
  %cmp76 = icmp slt i32 %78, %79
  br i1 %cmp76, label %for.body.78, label %for.end.132

for.body.78:                                      ; preds = %for.cond.75
  %80 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %80 to i64
  %81 = load i8*, i8** %s1, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %81, i64 %idxprom79
  %82 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %82 to i32
  %83 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %83 to i64
  %84 = load i8*, i8** %s2, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %84, i64 %idxprom82
  %85 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %85 to i32
  %sub85 = sub nsw i32 %conv81, %conv84
  %cmp86 = icmp sgt i32 %sub85, 255
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %for.body.78
  br label %cond.end.110

cond.false.89:                                    ; preds = %for.body.78
  %86 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %86 to i64
  %87 = load i8*, i8** %s1, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %87, i64 %idxprom90
  %88 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %88 to i32
  %89 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %89 to i64
  %90 = load i8*, i8** %s2, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %90, i64 %idxprom93
  %91 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %91 to i32
  %sub96 = sub nsw i32 %conv92, %conv95
  %cmp97 = icmp slt i32 %sub96, 0
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %cond.false.89
  br label %cond.end.108

cond.false.100:                                   ; preds = %cond.false.89
  %92 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %92 to i64
  %93 = load i8*, i8** %s1, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %93, i64 %idxprom101
  %94 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %94 to i32
  %95 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %95 to i64
  %96 = load i8*, i8** %s2, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %96, i64 %idxprom104
  %97 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %97 to i32
  %sub107 = sub nsw i32 %conv103, %conv106
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.100, %cond.true.99
  %cond109 = phi i32 [ 0, %cond.true.99 ], [ %sub107, %cond.false.100 ]
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.end.108, %cond.true.88
  %cond111 = phi i32 [ 255, %cond.true.88 ], [ %cond109, %cond.end.108 ]
  %conv112 = trunc i32 %cond111 to i8
  %98 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %98 to i64
  %99 = load i8*, i8** %d, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %99, i64 %idxprom113
  store i8 %conv112, i8* %arrayidx114, align 1
  %100 = load i32, i32* %k, align 4
  %idxprom115 = sext i32 %100 to i64
  %101 = load i8*, i8** %d, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %101, i64 %idxprom115
  %102 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %102 to i32
  %103 = load i8*, i8** %maxval.addr, align 8
  %104 = load i8, i8* %103, align 1
  %conv118 = zext i8 %104 to i32
  %cmp119 = icmp sgt i32 %conv117, %conv118
  br i1 %cmp119, label %cond.true.121, label %cond.false.125

cond.true.121:                                    ; preds = %cond.end.110
  %105 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %105 to i64
  %106 = load i8*, i8** %d, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %106, i64 %idxprom122
  %107 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %107 to i32
  br label %cond.end.127

cond.false.125:                                   ; preds = %cond.end.110
  %108 = load i8*, i8** %maxval.addr, align 8
  %109 = load i8, i8* %108, align 1
  %conv126 = zext i8 %109 to i32
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.121
  %cond128 = phi i32 [ %conv124, %cond.true.121 ], [ %conv126, %cond.false.125 ]
  %conv129 = trunc i32 %cond128 to i8
  %110 = load i8*, i8** %maxval.addr, align 8
  store i8 %conv129, i8* %110, align 1
  br label %for.inc.130

for.inc.130:                                      ; preds = %cond.end.127
  %111 = load i32, i32* %k, align 4
  %inc131 = add nsw i32 %111, 1
  store i32 %inc131, i32* %k, align 4
  br label %for.cond.75

for.end.132:                                      ; preds = %for.cond.75
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %for.end
  %112 = load i32, i32* %bpp, align 4
  %113 = load i8*, i8** %s1, align 8
  %idx.ext = sext i32 %112 to i64
  %add.ptr = getelementptr inbounds i8, i8* %113, i64 %idx.ext
  store i8* %add.ptr, i8** %s1, align 8
  %114 = load i32, i32* %bpp, align 4
  %115 = load i8*, i8** %s2, align 8
  %idx.ext134 = sext i32 %114 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %115, i64 %idx.ext134
  store i8* %add.ptr135, i8** %s2, align 8
  %116 = load i32, i32* %bpp, align 4
  %117 = load i8*, i8** %d, align 8
  %idx.ext136 = sext i32 %116 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %117, i64 %idx.ext136
  store i8* %add.ptr137, i8** %d, align 8
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.133
  %118 = load i32, i32* %x, align 4
  %inc139 = add nsw i32 %118, 1
  store i32 %inc139, i32* %x, align 4
  %119 = load i32, i32* %col, align 4
  %inc140 = add nsw i32 %119, 1
  store i32 %inc140, i32* %col, align 4
  br label %for.cond.23

for.end.141:                                      ; preds = %for.cond.23
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 3
  %120 = load i32, i32* %rowstride, align 4
  %121 = load i8*, i8** %src1, align 8
  %idx.ext142 = sext i32 %120 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %121, i64 %idx.ext142
  store i8* %add.ptr143, i8** %src1, align 8
  %rowstride144 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src2_rgn, i32 0, i32 3
  %122 = load i32, i32* %rowstride144, align 4
  %123 = load i8*, i8** %src2, align 8
  %idx.ext145 = sext i32 %122 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %123, i64 %idx.ext145
  store i8* %add.ptr146, i8** %src2, align 8
  %rowstride147 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %124 = load i32, i32* %rowstride147, align 4
  %125 = load i8*, i8** %dest, align 8
  %idx.ext148 = sext i32 %124 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %125, i64 %idx.ext148
  store i8* %add.ptr149, i8** %dest, align 8
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.141
  %126 = load i32, i32* %y, align 4
  %inc151 = add nsw i32 %126, 1
  store i32 %inc151, i32* %y, align 4
  %127 = load i32, i32* %row, align 4
  %inc152 = add nsw i32 %127, 1
  store i32 %inc152, i32* %row, align 4
  br label %for.cond.18

for.end.153:                                      ; preds = %for.cond.18
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.end.153
  %128 = load i8*, i8** %pr, align 8
  %call155 = call i8* @gimp_pixel_rgns_process(i8* %128)
  store i8* %call155, i8** %pr, align 8
  br label %for.cond

for.end.156:                                      ; preds = %if.then, %for.cond
  ret void
}

declare i32 @gimp_image_remove_layer(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @normalize_invert(%struct._GimpDrawable* %drawable, i32 %normalize, i32 %maxval, i32 %invert) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %normalize.addr = alloca i32, align 4
  %maxval.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bpp = alloca i32, align 4
  %pr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %factor = alloca double, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %normalize, i32* %normalize.addr, align 4
  store i32 %maxval, i32* %maxval.addr, align 4
  store i32 %invert, i32* %invert.addr, align 4
  %0 = load i32, i32* %normalize.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %maxval.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %maxval.addr, align 4
  %conv = uitofp i32 %2 to double
  %div = fdiv double 2.550000e+02, %conv
  store double %div, double* %factor, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store double 1.000000e+00, double* %factor, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %4, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp1, align 4
  store i32 %6, i32* %bpp, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id2, align 4
  %call3 = call i32 @gimp_drawable_has_alpha(i32 %8)
  store i32 %call3, i32* %has_alpha, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 2
  %13 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %9, i32 0, i32 0, i32 %11, i32 %13, i32 0, i32 0)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width4, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 2
  %18 = load i32, i32* %height5, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %14, i32 0, i32 0, i32 %16, i32 %18, i32 1, i32 1)
  %call6 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call6, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.85, %if.end
  %19 = load i8*, i8** %pr, align 8
  %cmp7 = icmp ne i8* %19, null
  br i1 %cmp7, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  store i8* %20, i8** %src, align 8
  %data9 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %21 = load i8*, i8** %data9, align 8
  store i8* %21, i8** %dest, align 8
  %y10 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %22 = load i32, i32* %y10, align 4
  %23 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %22, %23
  store i32 %sub, i32* %row, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.81, %for.body
  %24 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %25 = load i32, i32* %h, align 4
  %cmp12 = icmp slt i32 %24, %25
  br i1 %cmp12, label %for.body.14, label %for.end.84

for.body.14:                                      ; preds = %for.cond.11
  %26 = load i8*, i8** %src, align 8
  store i8* %26, i8** %s, align 8
  %27 = load i8*, i8** %dest, align 8
  store i8* %27, i8** %d, align 8
  %x15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %28 = load i32, i32* %x15, align 4
  %29 = load i32, i32* %x1, align 4
  %sub16 = sub nsw i32 %28, %29
  store i32 %sub16, i32* %col, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.72, %for.body.14
  %30 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %31 = load i32, i32* %w, align 4
  %cmp18 = icmp slt i32 %30, %31
  br i1 %cmp18, label %for.body.20, label %for.end.75

for.body.20:                                      ; preds = %for.cond.17
  %32 = load i32, i32* %has_alpha, align 4
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.then.22, label %if.else.43

if.then.22:                                       ; preds = %for.body.20
  store i32 0, i32* %k, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.then.22
  %33 = load i32, i32* %k, align 4
  %34 = load i32, i32* %bpp, align 4
  %sub24 = sub nsw i32 %34, 1
  %cmp25 = icmp slt i32 %33, %sub24
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.23
  %35 = load double, double* %factor, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8, i8* %arrayidx, align 1
  %conv28 = zext i8 %38 to i32
  %conv29 = sitofp i32 %conv28 to double
  %mul = fmul double %35, %conv29
  %conv30 = fptoui double %mul to i8
  %39 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load i8*, i8** %d, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %40, i64 %idxprom31
  store i8 %conv30, i8* %arrayidx32, align 1
  %41 = load i32, i32* %invert.addr, align 4
  %tobool33 = icmp ne i32 %41, 0
  br i1 %tobool33, label %if.then.34, label %if.end.42

if.then.34:                                       ; preds = %for.body.27
  %42 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %42 to i64
  %43 = load i8*, i8** %d, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 %idxprom35
  %44 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %44 to i32
  %sub38 = sub nsw i32 255, %conv37
  %conv39 = trunc i32 %sub38 to i8
  %45 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %45 to i64
  %46 = load i8*, i8** %d, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %46, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.34, %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %47 = load i32, i32* %k, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %if.end.69

if.else.43:                                       ; preds = %for.body.20
  store i32 0, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.66, %if.else.43
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %bpp, align 4
  %cmp45 = icmp slt i32 %48, %49
  br i1 %cmp45, label %for.body.47, label %for.end.68

for.body.47:                                      ; preds = %for.cond.44
  %50 = load double, double* %factor, align 8
  %51 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %51 to i64
  %52 = load i8*, i8** %s, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %52, i64 %idxprom48
  %53 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %53 to i32
  %conv51 = sitofp i32 %conv50 to double
  %mul52 = fmul double %50, %conv51
  %conv53 = fptoui double %mul52 to i8
  %54 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load i8*, i8** %d, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %55, i64 %idxprom54
  store i8 %conv53, i8* %arrayidx55, align 1
  %56 = load i32, i32* %invert.addr, align 4
  %tobool56 = icmp ne i32 %56, 0
  br i1 %tobool56, label %if.then.57, label %if.end.65

if.then.57:                                       ; preds = %for.body.47
  %57 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %57 to i64
  %58 = load i8*, i8** %d, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %58, i64 %idxprom58
  %59 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %59 to i32
  %sub61 = sub nsw i32 255, %conv60
  %conv62 = trunc i32 %sub61 to i8
  %60 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load i8*, i8** %d, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %61, i64 %idxprom63
  store i8 %conv62, i8* %arrayidx64, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.57, %for.body.47
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %62 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %62, 1
  store i32 %inc67, i32* %k, align 4
  br label %for.cond.44

for.end.68:                                       ; preds = %for.cond.44
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %for.end
  %63 = load i32, i32* %bpp, align 4
  %64 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %65 = load i32, i32* %bpp, align 4
  %66 = load i8*, i8** %d, align 8
  %idx.ext70 = sext i32 %65 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %66, i64 %idx.ext70
  store i8* %add.ptr71, i8** %d, align 8
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.69
  %67 = load i32, i32* %x, align 4
  %inc73 = add nsw i32 %67, 1
  store i32 %inc73, i32* %x, align 4
  %68 = load i32, i32* %col, align 4
  %inc74 = add nsw i32 %68, 1
  store i32 %inc74, i32* %col, align 4
  br label %for.cond.17

for.end.75:                                       ; preds = %for.cond.17
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %69 = load i32, i32* %rowstride, align 4
  %70 = load i8*, i8** %src, align 8
  %idx.ext76 = sext i32 %69 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %70, i64 %idx.ext76
  store i8* %add.ptr77, i8** %src, align 8
  %rowstride78 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %71 = load i32, i32* %rowstride78, align 4
  %72 = load i8*, i8** %dest, align 8
  %idx.ext79 = sext i32 %71 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %72, i64 %idx.ext79
  store i8* %add.ptr80, i8** %dest, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.75
  %73 = load i32, i32* %y, align 4
  %inc82 = add nsw i32 %73, 1
  store i32 %inc82, i32* %y, align 4
  %74 = load i32, i32* %row, align 4
  %inc83 = add nsw i32 %74, 1
  store i32 %inc83, i32* %row, align 4
  br label %for.cond.11

for.end.84:                                       ; preds = %for.cond.11
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.84
  %75 = load i8*, i8** %pr, align 8
  %call86 = call i8* @gimp_pixel_rgns_process(i8* %75)
  store i8* %call86, i8** %pr, align 8
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  ret void
}

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define internal i32* @make_curve(double %sigma, i32* %length) #0 {
entry:
  %sigma.addr = alloca double, align 8
  %length.addr = alloca i32*, align 8
  %curve = alloca i32*, align 8
  %sigma2 = alloca double, align 8
  %l = alloca double, align 8
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store double %sigma, double* %sigma.addr, align 8
  store i32* %length, i32** %length.addr, align 8
  %0 = load double, double* %sigma.addr, align 8
  %mul = fmul double 2.000000e+00, %0
  %1 = load double, double* %sigma.addr, align 8
  %mul1 = fmul double %mul, %1
  store double %mul1, double* %sigma2, align 8
  %2 = load double, double* %sigma2, align 8
  %sub = fsub double -0.000000e+00, %2
  %call = call double @log(double 0x3F70101010101010) #6
  %mul2 = fmul double %sub, %call
  %call3 = call double @sqrt(double %mul2) #6
  store double %call3, double* %l, align 8
  %3 = load double, double* %l, align 8
  %call4 = call double @ceil(double %3) #5
  %mul5 = fmul double %call4, 2.000000e+00
  %conv = fptosi double %mul5 to i32
  store i32 %conv, i32* %n, align 4
  %4 = load i32, i32* %n, align 4
  %rem = srem i32 %4, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %n, align 4
  %conv7 = sext i32 %6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 4)
  %7 = bitcast i8* %call8 to i32*
  store i32* %7, i32** %curve, align 8
  %8 = load i32, i32* %n, align 4
  %div = sdiv i32 %8, 2
  %9 = load i32*, i32** %length.addr, align 8
  store i32 %div, i32* %9, align 4
  %10 = load i32*, i32** %length.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %curve, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i32, i32* %12, i64 %idx.ext
  store i32* %add.ptr, i32** %curve, align 8
  %13 = load i32*, i32** %curve, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 0
  store i32 255, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32*, i32** %length.addr, align 8
  %16 = load i32, i32* %15, align 4
  %cmp9 = icmp sle i32 %14, %16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 %17, %18
  %sub12 = sub nsw i32 0, %mul11
  %conv13 = sitofp i32 %sub12 to double
  %19 = load double, double* %sigma2, align 8
  %div14 = fdiv double %conv13, %19
  %call15 = call double @exp(double %div14) #6
  %mul16 = fmul double %call15, 2.550000e+02
  %conv17 = fptosi double %mul16 to i32
  store i32 %conv17, i32* %temp, align 4
  %20 = load i32, i32* %temp, align 4
  %21 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 0, %21
  %idxprom = sext i32 %sub18 to i64
  %22 = load i32*, i32** %curve, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom
  store i32 %20, i32* %arrayidx19, align 4
  %23 = load i32, i32* %temp, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i32*, i32** %curve, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %25, i64 %idxprom20
  store i32 %23, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32*, i32** %curve, align 8
  ret i32* %27
}

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @multiply_alpha(i8* %buf, i32 %width, i32 %bytes) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %alpha = alloca double, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %add = add nsw i32 %3, %4
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %conv1 = sitofp i32 %conv to double
  %mul2 = fmul double %conv1, 0x3F70101010101010
  store double %mul2, double* %alpha, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %bytes.addr, align 4
  %sub4 = sub nsw i32 %8, 1
  %cmp5 = icmp slt i32 %7, %sub4
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.3
  %9 = load double, double* %alpha, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %10, %11
  %idxprom9 = sext i32 %add8 to i64
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom9
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = uitofp i8 %13 to double
  %mul12 = fmul double %conv11, %9
  %conv13 = fptoui double %mul12 to i8
  store i8 %conv13, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %15 = load i32, i32* %bytes.addr, align 4
  %16 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %16, %15
  store i32 %add15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run_length_encode(i8* %src, i32* %dest, i32 %bytes, i32 %width) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i32*, align 8
  %bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %last = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %last, align 1
  %2 = load i32, i32* %bytes.addr, align 4
  %3 = load i8*, i8** %src.addr, align 8
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8
  store i32 0, i32* %start, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %src.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8, i8* %last, align 1
  %conv1 = zext i8 %8 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %start, align 4
  store i32 %9, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32*, i32** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr, i32** %dest.addr, align 8
  store i32 %sub, i32* %14, align 4
  %15 = load i8, i8* %last, align 1
  %conv8 = zext i8 %15 to i32
  %16 = load i32*, i32** %dest.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr9, i32** %dest.addr, align 8
  store i32 %conv8, i32* %16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %18 = load i32, i32* %i, align 4
  store i32 %18, i32* %start, align 4
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %last, align 1
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %21 = load i32, i32* %bytes.addr, align 4
  %22 = load i8*, i8** %src.addr, align 8
  %idx.ext10 = sext i32 %21 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 %idx.ext10
  store i8* %add.ptr11, i8** %src.addr, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %23, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %24 = load i32, i32* %start, align 4
  store i32 %24, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.end.14
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %25, %26
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.15
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %j, align 4
  %sub19 = sub nsw i32 %27, %28
  %29 = load i32*, i32** %dest.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr20, i32** %dest.addr, align 8
  store i32 %sub19, i32* %29, align 4
  %30 = load i8, i8* %last, align 1
  %conv21 = zext i8 %30 to i32
  %31 = load i32*, i32** %dest.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr22, i32** %dest.addr, align 8
  store i32 %conv21, i32* %31, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %32 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %32, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @separate_alpha(i8* %buf, i32 %width, i32 %bytes) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %alpha = alloca i8, align 1
  %recip_alpha = alloca double, align 8
  %new_val = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %bytes.addr, align 4
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %add = add nsw i32 %3, %4
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %alpha, align 1
  %7 = load i8, i8* %alpha, align 1
  %conv = zext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8, i8* %alpha, align 1
  %conv3 = zext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv3, 255
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8, i8* %alpha, align 1
  %conv6 = zext i8 %9 to i32
  %conv7 = sitofp i32 %conv6 to double
  %div = fdiv double 2.550000e+02, %conv7
  store double %div, double* %recip_alpha, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %bytes.addr, align 4
  %sub9 = sub nsw i32 %11, 1
  %cmp10 = icmp slt i32 %10, %sub9
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %12, %13
  %idxprom14 = sext i32 %add13 to i64
  %14 = load i8*, i8** %buf.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 %idxprom14
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %conv17 = sitofp i32 %conv16 to double
  %16 = load double, double* %recip_alpha, align 8
  %mul18 = fmul double %conv17, %16
  %conv19 = fptosi double %mul18 to i32
  store i32 %conv19, i32* %new_val, align 4
  %17 = load i32, i32* %new_val, align 4
  %cmp20 = icmp slt i32 255, %17
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.12
  br label %cond.end

cond.false:                                       ; preds = %for.body.12
  %18 = load i32, i32* %new_val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %18, %cond.false ]
  %conv22 = trunc i32 %cond to i8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %19, %20
  %idxprom24 = sext i32 %add23 to i64
  %21 = load i8*, i8** %buf.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %21, i64 %idxprom24
  store i8 %conv22, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end
  %23 = load i32, i32* %bytes.addr, align 4
  %24 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %24, %23
  store i32 %add27, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind
declare double @exp(double) #2

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
