; ModuleID = './plug-ins/common/fractal-trace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.image_t = type { i32, i32, i32, i32 }
%struct.selection_t = type { i32, i32, i32, i32, i32, i32, double, double }
%struct.parameter_t = type { double, double, double, double, i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.preview_t = type { %struct._GtkWidget*, i8*, double, i32, i32, i32 }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.pixel_t = type { i8, i8, i8, i8 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"xmin\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"xmin fractal image delimiter\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"xmax\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"xmax fractal image delimiter\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ymin\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"ymin fractal image delimiter\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ymax\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"ymax fractal image delimiter\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Trace depth\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"outside-type\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Outside type { WRAP (0), TRANS (1), BLACK (2), WHITE (3) }\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"plug-in-fractal-trace\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"Transform image with the Mandelbrot Fractal\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"transform image with the Mandelbrot Fractal\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"Hirotsuna Mizuno <s1041150@u-aizu.ac.jp>\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Copyright (C) 1997 Hirotsuna Mizuno\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"v0.4 test version (Dec. 25 1997)\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"_Fractal Trace...\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@run.returns = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@image = internal global %struct.image_t zeroinitializer, align 4
@selection = internal global %struct.selection_t zeroinitializer, align 8
@parameters = internal global %struct.parameter_t { double -1.000000e+00, double 5.000000e-01, double -1.000000e+00, double 1.000000e+00, i32 3, i32 0 }, align 8
@sPR = internal global %struct._GimpPixelRgn zeroinitializer, align 8
@dPR = internal global %struct._GimpPixelRgn zeroinitializer, align 8
@spixels = internal global i8** null, align 8
@dpixels = internal global i8** null, align 8
@.str.29 = private unnamed_addr constant [14 x i8] c"fractal-trace\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Fractal Trace\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"gimp-fractal-trace\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct.preview_t zeroinitializer, align 8
@.str.34 = private unnamed_addr constant [13 x i8] c"Outside Type\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"_Wrap\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"_Transparent\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"_Black\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"_White\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Mandelbrot Parameters\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"X_1:\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"X_2:\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Y_1:\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Y_2:\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"_Depth:\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %argc, %struct._GimpParam* %args, i32* %retc, %struct._GimpParam** %rets) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %argc.addr = alloca i32, align 4
  %args.addr = alloca %struct._GimpParam*, align 8
  %retc.addr = alloca i32*, align 8
  %rets.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store %struct._GimpParam* %args, %struct._GimpParam** %args.addr, align 8
  store i32* %retc, i32** %retc.addr, align 8
  store %struct._GimpParam** %rets, %struct._GimpParam*** %rets.addr, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_width(i32 %5)
  store i32 %call7, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_height(i32 %7)
  store i32 %call9, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_bpp(i32 %9)
  store i32 %call11, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_has_alpha(i32 %11)
  store i32 %call13, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 3), align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_mask_bounds(i32 %13, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 1), i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 3))
  %14 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %sub = sub nsw i32 %14, %15
  store i32 %sub, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 4), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 3), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %sub16 = sub nsw i32 %16, %17
  store i32 %sub16, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), align 4
  %conv = sitofp i32 %18 to double
  %19 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 4), align 4
  %conv17 = sitofp i32 %19 to double
  %div = fdiv double %conv17, 2.000000e+00
  %add = fadd double %conv, %div
  store double %add, double* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 6), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %conv18 = sitofp i32 %20 to double
  %21 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %conv19 = sitofp i32 %21 to double
  %div20 = fdiv double %conv19, 2.000000e+00
  %add21 = fadd double %conv18, %div20
  store double %add21, double* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 7), align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @pixels_init(%struct._GimpDrawable* %22)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id22, align 4
  %call23 = call i32 @gimp_drawable_is_rgb(i32 %24)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id24, align 4
  %call25 = call i32 @gimp_drawable_is_gray(i32 %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %27 = load i32, i32* %run_mode, align 4
  switch i32 %27, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.28
    i32 1, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end
  %call27 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.parameter_t* @parameters to i8*))
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end
  %call29 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.parameter_t* @parameters to i8*))
  %call30 = call i32 @dialog_show()
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.28
  store i32 0, i32* %status, align 4
  br label %sw.epilog

if.end.33:                                        ; preds = %sw.bb.28
  %call34 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.parameter_t* @parameters to i8*), i32 40)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end
  %28 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %28, 9
  br i1 %cmp, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %sw.bb.35
  store i32 1, i32* %status, align 4
  br label %if.end.55

if.else:                                          ; preds = %sw.bb.35
  %29 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 3
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data39 to double*
  %30 = load double, double* %d_float, align 8
  store double %30, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %31 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 4
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_float42 = bitcast %union._GimpParamData* %data41 to double*
  %32 = load double, double* %d_float42, align 8
  store double %32, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 1), align 8
  %33 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 5
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_float45 = bitcast %union._GimpParamData* %data44 to double*
  %34 = load double, double* %d_float45, align 8
  store double %34, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %35 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 6
  %data47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx46, i32 0, i32 1
  %d_float48 = bitcast %union._GimpParamData* %data47 to double*
  %36 = load double, double* %d_float48, align 8
  store double %36, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 3), align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 7
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %38 = load i32, i32* %d_int3251, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 4), align 4
  %39 = load %struct._GimpParam*, %struct._GimpParam** %args.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 8
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_int3254 = bitcast %union._GimpParamData* %data53 to i32*
  %40 = load i32, i32* %d_int3254, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 5), align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.37
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.55, %if.end.33, %if.then.32, %sw.bb
  %41 = load i32, i32* %status, align 4
  %cmp56 = icmp eq i32 %41, 3
  br i1 %cmp56, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %sw.epilog
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 1
  %43 = load i32, i32* %width, align 4
  %call59 = call i32 @gimp_tile_width() #4
  %div60 = udiv i32 %43, %call59
  %add61 = add i32 %div60, 1
  %mul = mul i32 2, %add61
  %conv62 = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv62)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @filter(%struct._GimpDrawable* %44)
  %45 = load i32, i32* %run_mode, align 4
  %cmp63 = icmp ne i32 %45, 1
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.58
  %call66 = call i32 @gimp_displays_flush()
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.58
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %sw.epilog
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %46)
  call void @pixels_free()
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.returns, i32 0, i64 0, i32 0), align 4
  %47 = load i32, i32* %status, align 4
  store i32 %47, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.returns, i32 0, i64 0, i32 1) to i32*), align 4
  %48 = load i32*, i32** %retc.addr, align 8
  store i32 1, i32* %48, align 4
  %49 = load %struct._GimpParam**, %struct._GimpParam*** %rets.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.returns, i32 0, i32 0), %struct._GimpParam** %49, align 8
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

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @pixels_init(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %y = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @sPR, %struct._GimpDrawable* %0, i32 0, i32 0, i32 %1, i32 %2, i32 0, i32 0)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @dPR, %struct._GimpDrawable* %3, i32 0, i32 0, i32 %4, i32 %5, i32 1, i32 1)
  %6 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv = sext i32 %6 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %7 = bitcast i8* %call to i8**
  store i8** %7, i8*** @spixels, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv1 = sext i32 %8 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv1, i64 8)
  %9 = bitcast i8* %call2 to i8**
  store i8** %9, i8*** @dpixels, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul = mul nsw i32 %12, %13
  %conv4 = sext i32 %mul to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 1)
  %14 = load i32, i32* %y, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8**, i8*** @spixels, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  store i8* %call5, i8** %arrayidx, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul6 = mul nsw i32 %16, %17
  %conv7 = sext i32 %mul6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 1)
  %18 = load i32, i32* %y, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i8**, i8*** @dpixels, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %19, i64 %idxprom9
  store i8* %call8, i8** %arrayidx10, align 8
  %20 = load i32, i32* %y, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load i8**, i8*** @spixels, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %21, i64 %idxprom11
  %22 = load i8*, i8** %arrayidx12, align 8
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* @sPR, i8* %22, i32 0, i32 %23, i32 %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %y, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialog_show() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %mainbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 -5, i8* null)
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
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %mainbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %mainbox, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %mainbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %mainbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %hbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %mainbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_alignment_new(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %abox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call20 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_frame_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %28, i32 1)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  call void @dialog_preview_init()
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_container_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call25)
  %36 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkContainer*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 0), align 8
  call void @gtk_container_add(%struct._GtkContainer* %36, %struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 0), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)) #5
  %39 = load i32, i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 5), align 4
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #5
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #5
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #5
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #5
  %call32 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call27, void ()* bitcast (void (%struct._GtkWidget*, i8**)* @dialog_outside_type_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 5) to i8*), i32 %39, i8* %call28, i32 0, i8* null, i8* %call29, i32 1, i8* null, i8* %call30, i32 2, i8* null, i8* %call31, i32 3, i8* null, i8* null)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %frame, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call33)
  %42 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0)) #5
  %call36 = call %struct._GtkWidget* @gimp_frame_new(i8* %call35)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %frame, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %mainbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call37)
  %47 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call39 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 3, i32 0)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %table, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call40)
  %52 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %52, i32 6)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call42)
  %55 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %55, i32 6)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_container_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call44)
  %58 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkContainer*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %58, %struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call46)
  %63 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)) #5
  %64 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %call49 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %63, i32 0, i32 0, i8* %call48, i32 0, i32 6, double %64, double -5.000000e+01, double 5.000000e+01, double 1.000000e-01, double 5.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call49, %struct._GtkObject** %adj, align 8
  %65 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %66 = bitcast %struct._GtkObject* %65 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialog_double_adjustment_update to void ()*), i8* bitcast (%struct.parameter_t* @parameters to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call51)
  %69 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #5
  %70 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 1), align 8
  %call54 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %69, i32 0, i32 1, i8* %call53, i32 0, i32 6, double %70, double -5.000000e+01, double 5.000000e+01, double 1.000000e-01, double 5.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call54, %struct._GtkObject** %adj, align 8
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialog_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call56)
  %75 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #5
  %76 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %call59 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %75, i32 0, i32 2, i8* %call58, i32 0, i32 6, double %76, double -5.000000e+01, double 5.000000e+01, double 1.000000e-01, double 5.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call59, %struct._GtkObject** %adj, align 8
  %77 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %78 = bitcast %struct._GtkObject* %77 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialog_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call61)
  %81 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #5
  %82 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 3), align 8
  %call64 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %81, i32 0, i32 3, i8* %call63, i32 0, i32 6, double %82, double -5.000000e+01, double 5.000000e+01, double 1.000000e-01, double 5.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call64, %struct._GtkObject** %adj, align 8
  %83 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %84 = bitcast %struct._GtkObject* %83 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialog_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call66)
  %87 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0)) #5
  %88 = load i32, i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 4), align 4
  %conv = sitofp i32 %88 to double
  %call69 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %87, i32 0, i32 4, i8* %call68, i32 0, i32 6, double %conv, double 1.000000e+00, double 5.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call69, %struct._GtkObject** %adj, align 8
  %89 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %90 = bitcast %struct._GtkObject* %89 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialog_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  call void @dialog_preview_draw()
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_dialog_get_type() #4
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call71)
  %94 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpDialog*
  %call73 = call i32 @gimp_dialog_run(%struct._GimpDialog* %94)
  %cmp = icmp eq i32 %call73, -5
  %conv74 = zext i1 %cmp to i32
  store i32 %conv74, i32* %run, align 4
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %95)
  %96 = load i32, i32* %run, align 4
  ret i32 %96
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @filter(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pixel = alloca %struct.pixel_t, align 1
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #5
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %0 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 1), align 8
  %1 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %sub = fsub double %0, %1
  %2 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 4), align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double %sub, %conv
  store double %div, double* %scale_x, align 8
  %3 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 3), align 8
  %4 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %sub2 = fsub double %3, %4
  %5 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %conv3 = sitofp i32 %5 to double
  %div4 = fdiv double %sub2, %conv3
  store double %div4, double* %scale_y, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  store i32 %6, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %entry
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 3), align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %9 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %sub6 = sub nsw i32 %10, %11
  %conv7 = sitofp i32 %sub6 to double
  %12 = load double, double* %scale_y, align 8
  %mul = fmul double %conv7, %12
  %add = fadd double %9, %mul
  store double %add, double* %cy, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), align 4
  store i32 %13, i32* %x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 1), align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %16 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), align 4
  %sub12 = sub nsw i32 %17, %18
  %conv13 = sitofp i32 %sub12 to double
  %19 = load double, double* %scale_x, align 8
  %mul14 = fmul double %conv13, %19
  %add15 = fadd double %16, %mul14
  store double %add15, double* %cx, align 8
  %20 = load double, double* %cx, align 8
  %21 = load double, double* %cy, align 8
  call void @mandelbrot(double %20, double %21, double* %px, double* %py)
  %22 = load double, double* %px, align 8
  %23 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %sub16 = fsub double %22, %23
  %24 = load double, double* %scale_x, align 8
  %div17 = fdiv double %sub16, %24
  %25 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), align 4
  %conv18 = sitofp i32 %25 to double
  %add19 = fadd double %div17, %conv18
  store double %add19, double* %px, align 8
  %26 = load double, double* %py, align 8
  %27 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %sub20 = fsub double %26, %27
  %28 = load double, double* %scale_y, align 8
  %div21 = fdiv double %sub20, %28
  %29 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %conv22 = sitofp i32 %29 to double
  %add23 = fadd double %div21, %conv22
  store double %add23, double* %py, align 8
  %30 = load double, double* %px, align 8
  %cmp24 = fcmp ole double 0.000000e+00, %30
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.11
  %31 = load double, double* %px, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %conv26 = sitofp i32 %32 to double
  %cmp27 = fcmp olt double %31, %conv26
  br i1 %cmp27, label %land.lhs.true.29, label %if.else

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %33 = load double, double* %py, align 8
  %cmp30 = fcmp ole double 0.000000e+00, %33
  br i1 %cmp30, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %34 = load double, double* %py, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv33 = sitofp i32 %35 to double
  %cmp34 = fcmp olt double %34, %conv33
  br i1 %cmp34, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.32
  %36 = load double, double* %px, align 8
  %37 = load double, double* %py, align 8
  call void @pixels_get_biliner(double %36, double %37, %struct.pixel_t* %pixel)
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true.32, %land.lhs.true.29, %land.lhs.true, %for.body.11
  %38 = load i32, i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 5), align 4
  switch i32 %38, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.52
    i32 3, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.else
  %39 = load double, double* %px, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %conv36 = sitofp i32 %40 to double
  %call37 = call double @fmod(double %39, double %conv36) #5
  store double %call37, double* %px, align 8
  %41 = load double, double* %py, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv38 = sitofp i32 %42 to double
  %call39 = call double @fmod(double %41, double %conv38) #5
  store double %call39, double* %py, align 8
  %43 = load double, double* %px, align 8
  %cmp40 = fcmp olt double %43, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %sw.bb
  %44 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %conv43 = sitofp i32 %44 to double
  %45 = load double, double* %px, align 8
  %add44 = fadd double %45, %conv43
  store double %add44, double* %px, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.42, %sw.bb
  %46 = load double, double* %py, align 8
  %cmp45 = fcmp olt double %46, 0.000000e+00
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end
  %47 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv48 = sitofp i32 %47 to double
  %48 = load double, double* %py, align 8
  %add49 = fadd double %48, %conv48
  store double %add49, double* %py, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end
  %49 = load double, double* %px, align 8
  %50 = load double, double* %py, align 8
  call void @pixels_get_biliner(double %49, double %50, %struct.pixel_t* %pixel)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.else
  %b = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 2
  store i8 0, i8* %b, align 1
  %g = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 1
  store i8 0, i8* %g, align 1
  %r = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 0
  store i8 0, i8* %r, align 1
  %a = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 3
  store i8 0, i8* %a, align 1
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.else
  %b53 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 2
  store i8 0, i8* %b53, align 1
  %g54 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 1
  store i8 0, i8* %g54, align 1
  %r55 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 0
  store i8 0, i8* %r55, align 1
  %a56 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 3
  store i8 -1, i8* %a56, align 1
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.else
  %b58 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 2
  store i8 -1, i8* %b58, align 1
  %g59 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 1
  store i8 -1, i8* %g59, align 1
  %r60 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 0
  store i8 -1, i8* %r60, align 1
  %a61 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 3
  store i8 -1, i8* %a61, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.57, %sw.bb.52, %sw.bb.51, %if.end.50
  br label %if.end.62

if.end.62:                                        ; preds = %sw.epilog, %if.then
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %y, align 4
  call void @pixels_set(i32 %51, i32 %52, %struct.pixel_t* %pixel)
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %53 = load i32, i32* %x, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %54 = load i32, i32* %y, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %sub63 = sub nsw i32 %54, %55
  %56 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %div64 = sdiv i32 %56, 100
  %rem = srem i32 %sub63, %div64
  %cmp65 = icmp eq i32 %rem, 0
  br i1 %cmp65, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %for.end
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %sub68 = sub nsw i32 %57, %58
  %conv69 = sitofp i32 %sub68 to double
  %59 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %conv70 = sitofp i32 %59 to double
  %div71 = fdiv double %conv69, %conv70
  %call72 = call i32 @gimp_progress_update(double %div71)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.67, %for.end
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %60 = load i32, i32* %y, align 4
  %inc75 = add nsw i32 %60, 1
  store i32 %inc75, i32* %y, align 4
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  %call77 = call i32 @gimp_progress_update(double 1.000000e+00)
  call void @pixels_store()
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %61)
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %62, i32 0, i32 0
  %63 = load i32, i32* %drawable_id, align 4
  %call78 = call i32 @gimp_drawable_merge_shadow(i32 %63, i32 1)
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id79 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %64, i32 0, i32 0
  %65 = load i32, i32* %drawable_id79, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 4), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %call80 = call i32 @gimp_drawable_update(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @pixels_free() #0 {
entry:
  %y = alloca i32, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %y, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** @spixels, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  call void @g_free(i8* %4)
  %5 = load i32, i32* %y, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** @dpixels, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  call void @g_free(i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %y, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8**, i8*** @spixels, align 8
  %10 = bitcast i8** %9 to i8*
  call void @g_free(i8* %10)
  %11 = load i8**, i8*** @dpixels, align 8
  %12 = bitcast i8** %11 to i8*
  call void @g_free(i8* %12)
  ret void
}

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

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

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_preview_init() #0 {
entry:
  %pixel = alloca %struct.pixel_t, align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double %conv, 2.000000e+02
  store double %div, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 4), align 4
  %conv1 = sitofp i32 %3 to double
  %div2 = fdiv double %conv1, 2.000000e+02
  store double %div2, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 4), align 4
  %conv3 = sitofp i32 %4 to double
  %5 = load double, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  %div4 = fdiv double %conv3, %5
  %conv5 = fptosi double %div4 to i32
  store i32 %conv5, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 5), align 4
  %conv6 = sitofp i32 %6 to double
  %7 = load double, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  %div7 = fdiv double %conv6, %7
  %conv8 = fptosi double %div7 to i32
  store i32 %conv8, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  %call = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 0), align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 0), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %8, i32 %9, i32 %10)
  %11 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %mul = mul nsw i32 %11, %12
  %mul9 = mul nsw i32 %mul, 4
  %conv10 = sext i32 %mul9 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 1)
  store i8* %call11, i8** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 1), align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %conv14 = sitofp i32 %15 to double
  %16 = load i32, i32* %y, align 4
  %conv15 = sitofp i32 %16 to double
  %17 = load double, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  %mul16 = fmul double %conv15, %17
  %add = fadd double %conv14, %mul16
  store double %add, double* %cy, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %cmp18 = icmp slt i32 %18, %19
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %20 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), align 4
  %conv21 = sitofp i32 %20 to double
  %21 = load i32, i32* %x, align 4
  %conv22 = sitofp i32 %21 to double
  %22 = load double, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  %mul23 = fmul double %conv22, %22
  %add24 = fadd double %conv21, %mul23
  store double %add24, double* %cx, align 8
  %23 = load double, double* %cx, align 8
  %24 = load double, double* %cy, align 8
  call void @pixels_get_biliner(double %23, double %24, %struct.pixel_t* %pixel)
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  call void @dialog_preview_setpixel(i32 %25, i32 %26, %struct.pixel_t* %pixel)
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %27 = load i32, i32* %x, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %28 = load i32, i32* %y, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, i32* %y, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 0), align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_preview_area_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call28)
  %31 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpPreviewArea*
  %32 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  %34 = load i8*, i8** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 1), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %mul30 = mul nsw i32 %35, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %31, i32 0, i32 0, i32 %32, i32 %33, i32 1, i8* %34, i32 %mul30)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_outside_type_callback(%struct._GtkWidget* %widget, i8** %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8**, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8**, i8*** %data.addr, align 8
  %2 = bitcast i8** %1 to i8*
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @dialog_preview_draw()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_double_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  call void @dialog_preview_draw()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_int_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_int_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  call void @dialog_preview_draw()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_preview_draw() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pixel = alloca %struct.pixel_t, align 1
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %0 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 1), align 8
  %1 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %sub = fsub double %0, %1
  %2 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double %sub, %conv
  store double %div, double* %scale_x, align 8
  %3 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 3), align 8
  %4 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %sub1 = fsub double %3, %4
  %5 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  %conv2 = sitofp i32 %5 to double
  %div3 = fdiv double %sub1, %conv2
  store double %div3, double* %scale_y, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %8 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %9 = load i32, i32* %y, align 4
  %conv5 = sitofp i32 %9 to double
  %10 = load double, double* %scale_y, align 8
  %mul = fmul double %conv5, %10
  %add = fadd double %8, %mul
  store double %add, double* %cy, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %13 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %14 = load i32, i32* %x, align 4
  %conv10 = sitofp i32 %14 to double
  %15 = load double, double* %scale_x, align 8
  %mul11 = fmul double %conv10, %15
  %add12 = fadd double %13, %mul11
  store double %add12, double* %cx, align 8
  %16 = load double, double* %cx, align 8
  %17 = load double, double* %cy, align 8
  call void @mandelbrot(double %16, double %17, double* %px, double* %py)
  %18 = load double, double* %px, align 8
  %19 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 0), align 8
  %sub13 = fsub double %18, %19
  %20 = load double, double* %scale_x, align 8
  %div14 = fdiv double %sub13, %20
  %21 = load double, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  %mul15 = fmul double %div14, %21
  %22 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 0), align 4
  %conv16 = sitofp i32 %22 to double
  %add17 = fadd double %mul15, %conv16
  store double %add17, double* %px, align 8
  %23 = load double, double* %py, align 8
  %24 = load double, double* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 2), align 8
  %sub18 = fsub double %23, %24
  %25 = load double, double* %scale_y, align 8
  %div19 = fdiv double %sub18, %25
  %26 = load double, double* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 2), align 8
  %mul20 = fmul double %div19, %26
  %27 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  %conv21 = sitofp i32 %27 to double
  %add22 = fadd double %mul20, %conv21
  store double %add22, double* %py, align 8
  %28 = load double, double* %px, align 8
  %cmp23 = fcmp ole double 0.000000e+00, %28
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.9
  %29 = load double, double* %px, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %conv25 = sitofp i32 %30 to double
  %cmp26 = fcmp olt double %29, %conv25
  br i1 %cmp26, label %land.lhs.true.28, label %if.else

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %31 = load double, double* %py, align 8
  %cmp29 = fcmp ole double 0.000000e+00, %31
  br i1 %cmp29, label %land.lhs.true.31, label %if.else

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %32 = load double, double* %py, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv32 = sitofp i32 %33 to double
  %cmp33 = fcmp olt double %32, %conv32
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.31
  %34 = load double, double* %px, align 8
  %35 = load double, double* %py, align 8
  call void @pixels_get_biliner(double %34, double %35, %struct.pixel_t* %pixel)
  br label %if.end.60

if.else:                                          ; preds = %land.lhs.true.31, %land.lhs.true.28, %land.lhs.true, %for.body.9
  %36 = load i32, i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 5), align 4
  switch i32 %36, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.49
    i32 2, label %sw.bb.50
    i32 3, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.else
  %37 = load double, double* %px, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %conv35 = sitofp i32 %38 to double
  %call = call double @fmod(double %37, double %conv35) #5
  store double %call, double* %px, align 8
  %39 = load double, double* %py, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv36 = sitofp i32 %40 to double
  %call37 = call double @fmod(double %39, double %conv36) #5
  store double %call37, double* %py, align 8
  %41 = load double, double* %px, align 8
  %cmp38 = fcmp olt double %41, 0.000000e+00
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %sw.bb
  %42 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %conv41 = sitofp i32 %42 to double
  %43 = load double, double* %px, align 8
  %add42 = fadd double %43, %conv41
  store double %add42, double* %px, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.40, %sw.bb
  %44 = load double, double* %py, align 8
  %cmp43 = fcmp olt double %44, 0.000000e+00
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end
  %45 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %conv46 = sitofp i32 %45 to double
  %46 = load double, double* %py, align 8
  %add47 = fadd double %46, %conv46
  store double %add47, double* %py, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end
  %47 = load double, double* %px, align 8
  %48 = load double, double* %py, align 8
  call void @pixels_get_biliner(double %47, double %48, %struct.pixel_t* %pixel)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.else
  %b = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 2
  store i8 0, i8* %b, align 1
  %g = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 1
  store i8 0, i8* %g, align 1
  %r = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 0
  store i8 0, i8* %r, align 1
  %a = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 3
  store i8 0, i8* %a, align 1
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.else
  %b51 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 2
  store i8 0, i8* %b51, align 1
  %g52 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 1
  store i8 0, i8* %g52, align 1
  %r53 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 0
  store i8 0, i8* %r53, align 1
  %a54 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 3
  store i8 -1, i8* %a54, align 1
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.else
  %b56 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 2
  store i8 -1, i8* %b56, align 1
  %g57 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 1
  store i8 -1, i8* %g57, align 1
  %r58 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 0
  store i8 -1, i8* %r58, align 1
  %a59 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %pixel, i32 0, i32 3
  store i8 -1, i8* %a59, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.55, %sw.bb.50, %sw.bb.49, %if.end.48
  br label %if.end.60

if.end.60:                                        ; preds = %sw.epilog, %if.then
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %y, align 4
  call void @dialog_preview_setpixel(i32 %49, i32 %50, %struct.pixel_t* %pixel)
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %51 = load i32, i32* %x, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end
  %52 = load i32, i32* %y, align 4
  %inc62 = add nsw i32 %52, 1
  store i32 %inc62, i32* %y, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 0), align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_preview_area_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call64)
  %55 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpPreviewArea*
  %56 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 4), align 4
  %58 = load i8*, i8** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 1), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %mul66 = mul nsw i32 %59, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %55, i32 0, i32 0, i32 %56, i32 %57, i32 1, i8* %58, i32 %mul66)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @pixels_get_biliner(double %x, double %y, %struct.pixel_t* %pixel) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pixel.addr = alloca %struct.pixel_t*, align 8
  %A = alloca %struct.pixel_t, align 1
  %B = alloca %struct.pixel_t, align 1
  %C = alloca %struct.pixel_t, align 1
  %D = alloca %struct.pixel_t, align 1
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %alpha = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct.pixel_t* %pixel, %struct.pixel_t** %pixel.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %call = call double @floor(double %0) #4
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %x1, align 4
  %1 = load i32, i32* %x1, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %x2, align 4
  %2 = load double, double* %y.addr, align 8
  %call1 = call double @floor(double %2) #4
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %y1, align 4
  %3 = load i32, i32* %y1, align 4
  %add3 = add nsw i32 %3, 1
  store i32 %add3, i32* %y2, align 4
  %4 = load double, double* %x.addr, align 8
  %5 = load i32, i32* %x1, align 4
  %conv4 = sitofp i32 %5 to double
  %sub = fsub double %4, %conv4
  store double %sub, double* %dx, align 8
  %6 = load double, double* %y.addr, align 8
  %7 = load i32, i32* %y1, align 4
  %conv5 = sitofp i32 %7 to double
  %sub6 = fsub double %6, %conv5
  store double %sub6, double* %dy, align 8
  %8 = load double, double* %dx, align 8
  %sub7 = fsub double 1.000000e+00, %8
  %9 = load double, double* %dy, align 8
  %sub8 = fsub double 1.000000e+00, %9
  %mul = fmul double %sub7, %sub8
  store double %mul, double* %a, align 8
  %10 = load double, double* %dx, align 8
  %11 = load double, double* %dy, align 8
  %sub9 = fsub double 1.000000e+00, %11
  %mul10 = fmul double %10, %sub9
  store double %mul10, double* %b, align 8
  %12 = load double, double* %dx, align 8
  %sub11 = fsub double 1.000000e+00, %12
  %13 = load double, double* %dy, align 8
  %mul12 = fmul double %sub11, %13
  store double %mul12, double* %c, align 8
  %14 = load double, double* %dx, align 8
  %15 = load double, double* %dy, align 8
  %mul13 = fmul double %14, %15
  store double %mul13, double* %d, align 8
  %16 = load i32, i32* %x1, align 4
  %17 = load i32, i32* %y1, align 4
  call void @pixels_get(i32 %16, i32 %17, %struct.pixel_t* %A)
  %18 = load i32, i32* %x2, align 4
  %19 = load i32, i32* %y1, align 4
  call void @pixels_get(i32 %18, i32 %19, %struct.pixel_t* %B)
  %20 = load i32, i32* %x1, align 4
  %21 = load i32, i32* %y2, align 4
  call void @pixels_get(i32 %20, i32 %21, %struct.pixel_t* %C)
  %22 = load i32, i32* %x2, align 4
  %23 = load i32, i32* %y2, align 4
  call void @pixels_get(i32 %22, i32 %23, %struct.pixel_t* %D)
  %24 = load double, double* %a, align 8
  %a14 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %A, i32 0, i32 3
  %25 = load i8, i8* %a14, align 1
  %conv15 = uitofp i8 %25 to double
  %mul16 = fmul double %24, %conv15
  %26 = load double, double* %b, align 8
  %a17 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %B, i32 0, i32 3
  %27 = load i8, i8* %a17, align 1
  %conv18 = uitofp i8 %27 to double
  %mul19 = fmul double %26, %conv18
  %add20 = fadd double %mul16, %mul19
  %28 = load double, double* %c, align 8
  %a21 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %C, i32 0, i32 3
  %29 = load i8, i8* %a21, align 1
  %conv22 = uitofp i8 %29 to double
  %mul23 = fmul double %28, %conv22
  %add24 = fadd double %add20, %mul23
  %30 = load double, double* %d, align 8
  %a25 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %D, i32 0, i32 3
  %31 = load i8, i8* %a25, align 1
  %conv26 = uitofp i8 %31 to double
  %mul27 = fmul double %30, %conv26
  %add28 = fadd double %add24, %mul27
  %mul29 = fmul double 1.000100e+00, %add28
  store double %mul29, double* %alpha, align 8
  %32 = load double, double* %alpha, align 8
  %conv30 = fptoui double %32 to i8
  %33 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a31 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %33, i32 0, i32 3
  store i8 %conv30, i8* %a31, align 1
  %34 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a32 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %34, i32 0, i32 3
  %35 = load i8, i8* %a32, align 1
  %tobool = icmp ne i8 %35, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %36 = load double, double* %a, align 8
  %r = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %A, i32 0, i32 0
  %37 = load i8, i8* %r, align 1
  %conv33 = uitofp i8 %37 to double
  %mul34 = fmul double %36, %conv33
  %a35 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %A, i32 0, i32 3
  %38 = load i8, i8* %a35, align 1
  %conv36 = zext i8 %38 to i32
  %conv37 = sitofp i32 %conv36 to double
  %mul38 = fmul double %mul34, %conv37
  %39 = load double, double* %b, align 8
  %r39 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %B, i32 0, i32 0
  %40 = load i8, i8* %r39, align 1
  %conv40 = uitofp i8 %40 to double
  %mul41 = fmul double %39, %conv40
  %a42 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %B, i32 0, i32 3
  %41 = load i8, i8* %a42, align 1
  %conv43 = zext i8 %41 to i32
  %conv44 = sitofp i32 %conv43 to double
  %mul45 = fmul double %mul41, %conv44
  %add46 = fadd double %mul38, %mul45
  %42 = load double, double* %c, align 8
  %r47 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %C, i32 0, i32 0
  %43 = load i8, i8* %r47, align 1
  %conv48 = uitofp i8 %43 to double
  %mul49 = fmul double %42, %conv48
  %a50 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %C, i32 0, i32 3
  %44 = load i8, i8* %a50, align 1
  %conv51 = zext i8 %44 to i32
  %conv52 = sitofp i32 %conv51 to double
  %mul53 = fmul double %mul49, %conv52
  %add54 = fadd double %add46, %mul53
  %45 = load double, double* %d, align 8
  %r55 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %D, i32 0, i32 0
  %46 = load i8, i8* %r55, align 1
  %conv56 = uitofp i8 %46 to double
  %mul57 = fmul double %45, %conv56
  %a58 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %D, i32 0, i32 3
  %47 = load i8, i8* %a58, align 1
  %conv59 = zext i8 %47 to i32
  %conv60 = sitofp i32 %conv59 to double
  %mul61 = fmul double %mul57, %conv60
  %add62 = fadd double %add54, %mul61
  %48 = load double, double* %alpha, align 8
  %div = fdiv double %add62, %48
  %conv63 = fptoui double %div to i8
  %49 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r64 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %49, i32 0, i32 0
  store i8 %conv63, i8* %r64, align 1
  %50 = load double, double* %a, align 8
  %g = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %A, i32 0, i32 1
  %51 = load i8, i8* %g, align 1
  %conv65 = uitofp i8 %51 to double
  %mul66 = fmul double %50, %conv65
  %a67 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %A, i32 0, i32 3
  %52 = load i8, i8* %a67, align 1
  %conv68 = zext i8 %52 to i32
  %conv69 = sitofp i32 %conv68 to double
  %mul70 = fmul double %mul66, %conv69
  %53 = load double, double* %b, align 8
  %g71 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %B, i32 0, i32 1
  %54 = load i8, i8* %g71, align 1
  %conv72 = uitofp i8 %54 to double
  %mul73 = fmul double %53, %conv72
  %a74 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %B, i32 0, i32 3
  %55 = load i8, i8* %a74, align 1
  %conv75 = zext i8 %55 to i32
  %conv76 = sitofp i32 %conv75 to double
  %mul77 = fmul double %mul73, %conv76
  %add78 = fadd double %mul70, %mul77
  %56 = load double, double* %c, align 8
  %g79 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %C, i32 0, i32 1
  %57 = load i8, i8* %g79, align 1
  %conv80 = uitofp i8 %57 to double
  %mul81 = fmul double %56, %conv80
  %a82 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %C, i32 0, i32 3
  %58 = load i8, i8* %a82, align 1
  %conv83 = zext i8 %58 to i32
  %conv84 = sitofp i32 %conv83 to double
  %mul85 = fmul double %mul81, %conv84
  %add86 = fadd double %add78, %mul85
  %59 = load double, double* %d, align 8
  %g87 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %D, i32 0, i32 1
  %60 = load i8, i8* %g87, align 1
  %conv88 = uitofp i8 %60 to double
  %mul89 = fmul double %59, %conv88
  %a90 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %D, i32 0, i32 3
  %61 = load i8, i8* %a90, align 1
  %conv91 = zext i8 %61 to i32
  %conv92 = sitofp i32 %conv91 to double
  %mul93 = fmul double %mul89, %conv92
  %add94 = fadd double %add86, %mul93
  %62 = load double, double* %alpha, align 8
  %div95 = fdiv double %add94, %62
  %conv96 = fptoui double %div95 to i8
  %63 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g97 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %63, i32 0, i32 1
  store i8 %conv96, i8* %g97, align 1
  %64 = load double, double* %a, align 8
  %b98 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %A, i32 0, i32 2
  %65 = load i8, i8* %b98, align 1
  %conv99 = uitofp i8 %65 to double
  %mul100 = fmul double %64, %conv99
  %a101 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %A, i32 0, i32 3
  %66 = load i8, i8* %a101, align 1
  %conv102 = zext i8 %66 to i32
  %conv103 = sitofp i32 %conv102 to double
  %mul104 = fmul double %mul100, %conv103
  %67 = load double, double* %b, align 8
  %b105 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %B, i32 0, i32 2
  %68 = load i8, i8* %b105, align 1
  %conv106 = uitofp i8 %68 to double
  %mul107 = fmul double %67, %conv106
  %a108 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %B, i32 0, i32 3
  %69 = load i8, i8* %a108, align 1
  %conv109 = zext i8 %69 to i32
  %conv110 = sitofp i32 %conv109 to double
  %mul111 = fmul double %mul107, %conv110
  %add112 = fadd double %mul104, %mul111
  %70 = load double, double* %c, align 8
  %b113 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %C, i32 0, i32 2
  %71 = load i8, i8* %b113, align 1
  %conv114 = uitofp i8 %71 to double
  %mul115 = fmul double %70, %conv114
  %a116 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %C, i32 0, i32 3
  %72 = load i8, i8* %a116, align 1
  %conv117 = zext i8 %72 to i32
  %conv118 = sitofp i32 %conv117 to double
  %mul119 = fmul double %mul115, %conv118
  %add120 = fadd double %add112, %mul119
  %73 = load double, double* %d, align 8
  %b121 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %D, i32 0, i32 2
  %74 = load i8, i8* %b121, align 1
  %conv122 = uitofp i8 %74 to double
  %mul123 = fmul double %73, %conv122
  %a124 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %D, i32 0, i32 3
  %75 = load i8, i8* %a124, align 1
  %conv125 = zext i8 %75 to i32
  %conv126 = sitofp i32 %conv125 to double
  %mul127 = fmul double %mul123, %conv126
  %add128 = fadd double %add120, %mul127
  %76 = load double, double* %alpha, align 8
  %div129 = fdiv double %add128, %76
  %conv130 = fptoui double %div129 to i8
  %77 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b131 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %77, i32 0, i32 2
  store i8 %conv130, i8* %b131, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_preview_setpixel(i32 %x, i32 %y, %struct.pixel_t* %pixel) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca %struct.pixel_t*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.pixel_t* %pixel, %struct.pixel_t** %pixel.addr, align 8
  %0 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %0, i32 0, i32 0
  %1 = load i8, i8* %r, align 1
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %4
  %mul1 = mul nsw i32 %add, 4
  %add2 = add nsw i32 %mul1, 0
  %idxprom = sext i32 %add2 to i64
  %5 = load i8*, i8** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %1, i8* %arrayidx, align 1
  %6 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %6, i32 0, i32 1
  %7 = load i8, i8* %g, align 1
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %mul3 = mul nsw i32 %8, %9
  %10 = load i32, i32* %x.addr, align 4
  %add4 = add nsw i32 %mul3, %10
  %mul5 = mul nsw i32 %add4, 4
  %add6 = add nsw i32 %mul5, 1
  %idxprom7 = sext i32 %add6 to i64
  %11 = load i8*, i8** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 1), align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 %idxprom7
  store i8 %7, i8* %arrayidx8, align 1
  %12 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %12, i32 0, i32 2
  %13 = load i8, i8* %b, align 1
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %mul9 = mul nsw i32 %14, %15
  %16 = load i32, i32* %x.addr, align 4
  %add10 = add nsw i32 %mul9, %16
  %mul11 = mul nsw i32 %add10, 4
  %add12 = add nsw i32 %mul11, 2
  %idxprom13 = sext i32 %add12 to i64
  %17 = load i8*, i8** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 1), align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom13
  store i8 %13, i8* %arrayidx14, align 1
  %18 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %18, i32 0, i32 3
  %19 = load i8, i8* %a, align 1
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 3), align 4
  %mul15 = mul nsw i32 %20, %21
  %22 = load i32, i32* %x.addr, align 4
  %add16 = add nsw i32 %mul15, %22
  %mul17 = mul nsw i32 %add16, 4
  %add18 = add nsw i32 %mul17, 3
  %idxprom19 = sext i32 %add18 to i64
  %23 = load i8*, i8** getelementptr inbounds (%struct.preview_t, %struct.preview_t* @preview, i32 0, i32 1), align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 %idxprom19
  store i8 %19, i8* %arrayidx20, align 1
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define internal void @pixels_get(i32 %x, i32 %y, %struct.pixel_t* %pixel) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca %struct.pixel_t*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.pixel_t* %pixel, %struct.pixel_t** %pixel.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x.addr, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %2 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %y.addr, align 4
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %y.addr, align 4
  br label %if.end.11

if.else.6:                                        ; preds = %if.end.3
  %5 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %6 = load i32, i32* %y.addr, align 4
  %cmp7 = icmp sle i32 %5, %6
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else.6
  %7 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 1), align 4
  %sub9 = sub nsw i32 %7, 1
  store i32 %sub9, i32* %y.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  %8 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.49
    i32 4, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %if.end.11
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul = mul nsw i32 %9, %10
  %idxprom = sext i32 %mul to i64
  %11 = load i32, i32* %y.addr, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i8**, i8*** @spixels, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom12
  %13 = load i8*, i8** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx13, align 1
  %15 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %15, i32 0, i32 0
  store i8 %14, i8* %r, align 1
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul14 = mul nsw i32 %16, %17
  %idxprom15 = sext i32 %mul14 to i64
  %18 = load i32, i32* %y.addr, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i8**, i8*** @spixels, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %19, i64 %idxprom16
  %20 = load i8*, i8** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %20, i64 %idxprom15
  %21 = load i8, i8* %arrayidx18, align 1
  %22 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %22, i32 0, i32 1
  store i8 %21, i8* %g, align 1
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul19 = mul nsw i32 %23, %24
  %idxprom20 = sext i32 %mul19 to i64
  %25 = load i32, i32* %y.addr, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i8**, i8*** @spixels, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %26, i64 %idxprom21
  %27 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 %idxprom20
  %28 = load i8, i8* %arrayidx23, align 1
  %29 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %29, i32 0, i32 2
  store i8 %28, i8* %b, align 1
  %30 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %30, i32 0, i32 3
  store i8 -1, i8* %a, align 1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.11
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul25 = mul nsw i32 %31, %32
  %idxprom26 = sext i32 %mul25 to i64
  %33 = load i32, i32* %y.addr, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load i8**, i8*** @spixels, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %34, i64 %idxprom27
  %35 = load i8*, i8** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %35, i64 %idxprom26
  %36 = load i8, i8* %arrayidx29, align 1
  %37 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r30 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %37, i32 0, i32 0
  store i8 %36, i8* %r30, align 1
  %38 = load i32, i32* %x.addr, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul31 = mul nsw i32 %38, %39
  %idxprom32 = sext i32 %mul31 to i64
  %40 = load i32, i32* %y.addr, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load i8**, i8*** @spixels, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %41, i64 %idxprom33
  %42 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %42, i64 %idxprom32
  %43 = load i8, i8* %arrayidx35, align 1
  %44 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g36 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %44, i32 0, i32 1
  store i8 %43, i8* %g36, align 1
  %45 = load i32, i32* %x.addr, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul37 = mul nsw i32 %45, %46
  %idxprom38 = sext i32 %mul37 to i64
  %47 = load i32, i32* %y.addr, align 4
  %idxprom39 = sext i32 %47 to i64
  %48 = load i8**, i8*** @spixels, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %48, i64 %idxprom39
  %49 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %49, i64 %idxprom38
  %50 = load i8, i8* %arrayidx41, align 1
  %51 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b42 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %51, i32 0, i32 2
  store i8 %50, i8* %b42, align 1
  %52 = load i32, i32* %x.addr, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul43 = mul nsw i32 %52, %53
  %add = add nsw i32 %mul43, 1
  %idxprom44 = sext i32 %add to i64
  %54 = load i32, i32* %y.addr, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load i8**, i8*** @spixels, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %55, i64 %idxprom45
  %56 = load i8*, i8** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %56, i64 %idxprom44
  %57 = load i8, i8* %arrayidx47, align 1
  %58 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a48 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %58, i32 0, i32 3
  store i8 %57, i8* %a48, align 1
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.11
  %59 = load i32, i32* %x.addr, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul50 = mul nsw i32 %59, %60
  %idxprom51 = sext i32 %mul50 to i64
  %61 = load i32, i32* %y.addr, align 4
  %idxprom52 = sext i32 %61 to i64
  %62 = load i8**, i8*** @spixels, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %62, i64 %idxprom52
  %63 = load i8*, i8** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %63, i64 %idxprom51
  %64 = load i8, i8* %arrayidx54, align 1
  %65 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r55 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %65, i32 0, i32 0
  store i8 %64, i8* %r55, align 1
  %66 = load i32, i32* %x.addr, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul56 = mul nsw i32 %66, %67
  %add57 = add nsw i32 %mul56, 1
  %idxprom58 = sext i32 %add57 to i64
  %68 = load i32, i32* %y.addr, align 4
  %idxprom59 = sext i32 %68 to i64
  %69 = load i8**, i8*** @spixels, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %69, i64 %idxprom59
  %70 = load i8*, i8** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %70, i64 %idxprom58
  %71 = load i8, i8* %arrayidx61, align 1
  %72 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g62 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %72, i32 0, i32 1
  store i8 %71, i8* %g62, align 1
  %73 = load i32, i32* %x.addr, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul63 = mul nsw i32 %73, %74
  %add64 = add nsw i32 %mul63, 2
  %idxprom65 = sext i32 %add64 to i64
  %75 = load i32, i32* %y.addr, align 4
  %idxprom66 = sext i32 %75 to i64
  %76 = load i8**, i8*** @spixels, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %76, i64 %idxprom66
  %77 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %77, i64 %idxprom65
  %78 = load i8, i8* %arrayidx68, align 1
  %79 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b69 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %79, i32 0, i32 2
  store i8 %78, i8* %b69, align 1
  %80 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a70 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %80, i32 0, i32 3
  store i8 -1, i8* %a70, align 1
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.11
  %81 = load i32, i32* %x.addr, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul72 = mul nsw i32 %81, %82
  %idxprom73 = sext i32 %mul72 to i64
  %83 = load i32, i32* %y.addr, align 4
  %idxprom74 = sext i32 %83 to i64
  %84 = load i8**, i8*** @spixels, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %84, i64 %idxprom74
  %85 = load i8*, i8** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %85, i64 %idxprom73
  %86 = load i8, i8* %arrayidx76, align 1
  %87 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r77 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %87, i32 0, i32 0
  store i8 %86, i8* %r77, align 1
  %88 = load i32, i32* %x.addr, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul78 = mul nsw i32 %88, %89
  %add79 = add nsw i32 %mul78, 1
  %idxprom80 = sext i32 %add79 to i64
  %90 = load i32, i32* %y.addr, align 4
  %idxprom81 = sext i32 %90 to i64
  %91 = load i8**, i8*** @spixels, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %91, i64 %idxprom81
  %92 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %92, i64 %idxprom80
  %93 = load i8, i8* %arrayidx83, align 1
  %94 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g84 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %94, i32 0, i32 1
  store i8 %93, i8* %g84, align 1
  %95 = load i32, i32* %x.addr, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul85 = mul nsw i32 %95, %96
  %add86 = add nsw i32 %mul85, 2
  %idxprom87 = sext i32 %add86 to i64
  %97 = load i32, i32* %y.addr, align 4
  %idxprom88 = sext i32 %97 to i64
  %98 = load i8**, i8*** @spixels, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %98, i64 %idxprom88
  %99 = load i8*, i8** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %99, i64 %idxprom87
  %100 = load i8, i8* %arrayidx90, align 1
  %101 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b91 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %101, i32 0, i32 2
  store i8 %100, i8* %b91, align 1
  %102 = load i32, i32* %x.addr, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul92 = mul nsw i32 %102, %103
  %add93 = add nsw i32 %mul92, 3
  %idxprom94 = sext i32 %add93 to i64
  %104 = load i32, i32* %y.addr, align 4
  %idxprom95 = sext i32 %104 to i64
  %105 = load i8**, i8*** @spixels, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %105, i64 %idxprom95
  %106 = load i8*, i8** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %106, i64 %idxprom94
  %107 = load i8, i8* %arrayidx97, align 1
  %108 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a98 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %108, i32 0, i32 3
  store i8 %107, i8* %a98, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.11, %sw.bb.71, %sw.bb.49, %sw.bb.24, %sw.bb
  ret void
}

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mandelbrot(double %x, double %y, double* %u, double* %v) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %u.addr = alloca double*, align 8
  %v.addr = alloca double*, align 8
  %iter = alloca i32, align 4
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %tmp = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %u, double** %u.addr, align 8
  store double* %v, double** %v.addr, align 8
  store i32 0, i32* %iter, align 4
  %0 = load double, double* %x.addr, align 8
  store double %0, double* %xx, align 8
  %1 = load double, double* %y.addr, align 8
  store double %1, double* %yy, align 8
  %2 = load double, double* %xx, align 8
  %3 = load double, double* %xx, align 8
  %mul = fmul double %2, %3
  store double %mul, double* %x2, align 8
  %4 = load double, double* %yy, align 8
  %5 = load double, double* %yy, align 8
  %mul1 = fmul double %4, %5
  store double %mul1, double* %y2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i32, i32* %iter, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.parameter_t, %struct.parameter_t* @parameters, i32 0, i32 4), align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load double, double* %x2, align 8
  %9 = load double, double* %y2, align 8
  %sub = fsub double %8, %9
  %10 = load double, double* %x.addr, align 8
  %add = fadd double %sub, %10
  store double %add, double* %tmp, align 8
  %11 = load double, double* %xx, align 8
  %mul2 = fmul double 2.000000e+00, %11
  %12 = load double, double* %yy, align 8
  %mul3 = fmul double %mul2, %12
  %13 = load double, double* %y.addr, align 8
  %add4 = fadd double %mul3, %13
  store double %add4, double* %yy, align 8
  %14 = load double, double* %tmp, align 8
  store double %14, double* %xx, align 8
  %15 = load double, double* %xx, align 8
  %16 = load double, double* %xx, align 8
  %mul5 = fmul double %15, %16
  store double %mul5, double* %x2, align 8
  %17 = load double, double* %yy, align 8
  %18 = load double, double* %yy, align 8
  %mul6 = fmul double %17, %18
  store double %mul6, double* %y2, align 8
  %19 = load i32, i32* %iter, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %iter, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load double, double* %xx, align 8
  %21 = load double*, double** %u.addr, align 8
  store double %20, double* %21, align 8
  %22 = load double, double* %yy, align 8
  %23 = load double*, double** %v.addr, align 8
  store double %22, double* %23, align 8
  ret void
}

; Function Attrs: nounwind
declare double @fmod(double, double) #2

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @pixels_set(i32 %x, i32 %y, %struct.pixel_t* %pixel) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca %struct.pixel_t*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.pixel_t* %pixel, %struct.pixel_t** %pixel.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.15
    i32 4, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %1, i32 0, i32 0
  %2 = load i8, i8* %r, align 1
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul = mul nsw i32 %3, %4
  %idxprom = sext i32 %mul to i64
  %5 = load i32, i32* %y.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** @dpixels, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %2, i8* %arrayidx2, align 1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r4 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %8, i32 0, i32 0
  %9 = load i8, i8* %r4, align 1
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul5 = mul nsw i32 %10, %11
  %idxprom6 = sext i32 %mul5 to i64
  %12 = load i32, i32* %y.addr, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i8**, i8*** @dpixels, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %13, i64 %idxprom7
  %14 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %idxprom6
  store i8 %9, i8* %arrayidx9, align 1
  %15 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %15, i32 0, i32 3
  %16 = load i8, i8* %a, align 1
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul10 = mul nsw i32 %17, %18
  %add = add nsw i32 %mul10, 1
  %idxprom11 = sext i32 %add to i64
  %19 = load i32, i32* %y.addr, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i8**, i8*** @dpixels, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %20, i64 %idxprom12
  %21 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %21, i64 %idxprom11
  store i8 %16, i8* %arrayidx14, align 1
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %22 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r16 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %22, i32 0, i32 0
  %23 = load i8, i8* %r16, align 1
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul17 = mul nsw i32 %24, %25
  %idxprom18 = sext i32 %mul17 to i64
  %26 = load i32, i32* %y.addr, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load i8**, i8*** @dpixels, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %27, i64 %idxprom19
  %28 = load i8*, i8** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 %idxprom18
  store i8 %23, i8* %arrayidx21, align 1
  %29 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %29, i32 0, i32 1
  %30 = load i8, i8* %g, align 1
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul22 = mul nsw i32 %31, %32
  %add23 = add nsw i32 %mul22, 1
  %idxprom24 = sext i32 %add23 to i64
  %33 = load i32, i32* %y.addr, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load i8**, i8*** @dpixels, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %34, i64 %idxprom25
  %35 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %35, i64 %idxprom24
  store i8 %30, i8* %arrayidx27, align 1
  %36 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %36, i32 0, i32 2
  %37 = load i8, i8* %b, align 1
  %38 = load i32, i32* %x.addr, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul28 = mul nsw i32 %38, %39
  %add29 = add nsw i32 %mul28, 2
  %idxprom30 = sext i32 %add29 to i64
  %40 = load i32, i32* %y.addr, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load i8**, i8*** @dpixels, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %41, i64 %idxprom31
  %42 = load i8*, i8** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %42, i64 %idxprom30
  store i8 %37, i8* %arrayidx33, align 1
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %43 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %r35 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %43, i32 0, i32 0
  %44 = load i8, i8* %r35, align 1
  %45 = load i32, i32* %x.addr, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul36 = mul nsw i32 %45, %46
  %idxprom37 = sext i32 %mul36 to i64
  %47 = load i32, i32* %y.addr, align 4
  %idxprom38 = sext i32 %47 to i64
  %48 = load i8**, i8*** @dpixels, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %48, i64 %idxprom38
  %49 = load i8*, i8** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %49, i64 %idxprom37
  store i8 %44, i8* %arrayidx40, align 1
  %50 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %g41 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %50, i32 0, i32 1
  %51 = load i8, i8* %g41, align 1
  %52 = load i32, i32* %x.addr, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul42 = mul nsw i32 %52, %53
  %add43 = add nsw i32 %mul42, 1
  %idxprom44 = sext i32 %add43 to i64
  %54 = load i32, i32* %y.addr, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load i8**, i8*** @dpixels, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %55, i64 %idxprom45
  %56 = load i8*, i8** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %56, i64 %idxprom44
  store i8 %51, i8* %arrayidx47, align 1
  %57 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %b48 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %57, i32 0, i32 2
  %58 = load i8, i8* %b48, align 1
  %59 = load i32, i32* %x.addr, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul49 = mul nsw i32 %59, %60
  %add50 = add nsw i32 %mul49, 2
  %idxprom51 = sext i32 %add50 to i64
  %61 = load i32, i32* %y.addr, align 4
  %idxprom52 = sext i32 %61 to i64
  %62 = load i8**, i8*** @dpixels, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %62, i64 %idxprom52
  %63 = load i8*, i8** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %63, i64 %idxprom51
  store i8 %58, i8* %arrayidx54, align 1
  %64 = load %struct.pixel_t*, %struct.pixel_t** %pixel.addr, align 8
  %a55 = getelementptr inbounds %struct.pixel_t, %struct.pixel_t* %64, i32 0, i32 3
  %65 = load i8, i8* %a55, align 1
  %66 = load i32, i32* %x.addr, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 2), align 4
  %mul56 = mul nsw i32 %66, %67
  %add57 = add nsw i32 %mul56, 3
  %idxprom58 = sext i32 %add57 to i64
  %68 = load i32, i32* %y.addr, align 4
  %idxprom59 = sext i32 %68 to i64
  %69 = load i8**, i8*** @dpixels, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %69, i64 %idxprom59
  %70 = load i8*, i8** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %70, i64 %idxprom58
  store i8 %65, i8* %arrayidx61, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.34, %sw.bb.15, %sw.bb.3, %sw.bb
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal void @pixels_store() #0 {
entry:
  %y = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 2), align 4
  store i32 %0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.selection_t, %struct.selection_t* @selection, i32 0, i32 3), align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %y, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** @dpixels, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.image_t, %struct.image_t* @image, i32 0, i32 0), align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* @dPR, i8* %5, i32 0, i32 %6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %y, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
