; ModuleID = './plug-ins/common/blur-gauss.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.BlurValues = type { double, double, i32 }
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
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Horizontal radius of gaussian blur (in pixels, > 0.0)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Vertical radius of gaussian blur (in pixels, > 0.0)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Blur method { IIR (0), RLE (1) }\00", align 1
@query.args1 = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Radius of gaussian blur (in pixels, > 0.0)\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Blur in horizontal direction\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Blur in vertical direction\00", align 1
@query.args2 = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.17 = private unnamed_addr constant [14 x i8] c"plug-in-gauss\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Simplest, most commonly used way of blurring\00", align 1
@.str.19 = private unnamed_addr constant [402 x i8] c"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  Horizontal and vertical blurring can be independently invoked by specifying only one to run.  The IIR gaussian blurring works best for large radius values and for images which are not computer-generated.\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"_Gaussian Blur...\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"plug-in-gauss-iir\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Apply a gaussian blur\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"plug-in-gauss-iir2\00", align 1
@.str.27 = private unnamed_addr constant [398 x i8] c"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  This radius can be specified indepently on for the horizontal and the vertical direction. The IIR gaussian blurring works best for large radius values and for images which are not computer-generated.\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Spencer Kimball, Peter Mattis & Sven Neumann\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"1995-2000\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"plug-in-gauss-rle\00", align 1
@.str.31 = private unnamed_addr constant [423 x i8] c"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  Horizontal and vertical blurring can be independently invoked by specifying only one to run.  The RLE gaussian blurring performs most efficiently on computer-generated images or images with large areas of constant intensity.\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"plug-in-gauss-rle2\00", align 1
@.str.33 = private unnamed_addr constant [419 x i8] c"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  This radius can be specified indepently on for the horizontal and the vertical direction. The RLE gaussian blurring performs most efficiently on computer-generated images or images with large areas of constant intensity.\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"<Image>/Filters/Blur\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@bvals = internal global %struct.BlurValues { double 5.000000e+00, double 5.000000e+00, i32 1 }, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"Gaussian Blur\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"blur-gauss\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"gimp-blur-gauss\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Blur Radius\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"_Horizontal:\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"_Vertical:\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"refval-changed\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"Blur Method\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"_IIR\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"_RLE\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args1, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args2, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([423 x i8], [423 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args1, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([419 x i8], [419 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args2, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0))
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
  %radius = alloca double, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store double 0.000000e+00, double* %radius, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)) #5
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
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_image, align 4
  store i32 %6, i32* %image_ID, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width9, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 2
  %16 = load i32, i32* %height10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %16, %cond.false ]
  %call11 = call i32 @gimp_tile_width() #7
  %div = udiv i32 %cond, %call11
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %17 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %run_mode, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.then
  %call15 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* bitcast (%struct.BlurValues* @bvals to i8*))
  %19 = load i32, i32* %image_ID, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call16 = call i32 @gauss_dialog(i32 %19, %struct._GimpDrawable* %20)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then
  %21 = load i32, i32* %nparams.addr, align 4
  %cmp19 = icmp ne i32 %21, 6
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb.18
  store i32 1, i32* %status, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %sw.bb.18
  %22 = load i32, i32* %status, align 4
  %cmp23 = icmp eq i32 %22, 3
  br i1 %cmp23, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.end.22
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 3
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data27 to double*
  %24 = load double, double* %d_float, align 8
  store double %24, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 4
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_float30 = bitcast %union._GimpParamData* %data29 to double*
  %26 = load double, double* %d_float30, align 8
  store double %26, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 5
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int3233 = bitcast %union._GimpParamData* %data32 to i32*
  %28 = load i32, i32* %d_int3233, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.25, %if.end.22
  %29 = load i32, i32* %status, align 4
  %cmp35 = icmp eq i32 %29, 3
  br i1 %cmp35, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.34
  %30 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %cmp37 = fcmp ole double %30, 0.000000e+00
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.43

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %31 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  %cmp40 = fcmp ole double %31, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %status, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.39, %land.lhs.true, %if.end.34
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then
  %call45 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* bitcast (%struct.BlurValues* @bvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.44, %if.end.43, %if.end
  br label %if.end.206

if.else:                                          ; preds = %cond.end
  %32 = load i8*, i8** %name.addr, align 8
  %call46 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #8
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.else.89

if.then.49:                                       ; preds = %if.else
  %33 = load i32, i32* %nparams.addr, align 4
  %cmp50 = icmp ne i32 %33, 6
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  store i32 1, i32* %status, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.49
  %34 = load i32, i32* %status, align 4
  %cmp54 = icmp eq i32 %34, 3
  br i1 %cmp54, label %if.then.56, label %if.end.76

if.then.56:                                       ; preds = %if.end.53
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 3
  %data58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx57, i32 0, i32 1
  %d_float59 = bitcast %union._GimpParamData* %data58 to double*
  %36 = load double, double* %d_float59, align 8
  store double %36, double* %radius, align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 4
  %data61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx60, i32 0, i32 1
  %d_int3262 = bitcast %union._GimpParamData* %data61 to i32*
  %38 = load i32, i32* %d_int3262, align 4
  %tobool63 = icmp ne i32 %38, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %if.then.56
  %39 = load double, double* %radius, align 8
  br label %cond.end.66

cond.false.65:                                    ; preds = %if.then.56
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi double [ %39, %cond.true.64 ], [ 0.000000e+00, %cond.false.65 ]
  store double %cond67, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 5
  %data69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx68, i32 0, i32 1
  %d_int3270 = bitcast %union._GimpParamData* %data69 to i32*
  %41 = load i32, i32* %d_int3270, align 4
  %tobool71 = icmp ne i32 %41, 0
  br i1 %tobool71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.66
  %42 = load double, double* %radius, align 8
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.66
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi double [ %42, %cond.true.72 ], [ 0.000000e+00, %cond.false.73 ]
  store double %cond75, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  br label %if.end.76

if.end.76:                                        ; preds = %cond.end.74, %if.end.53
  %43 = load double, double* %radius, align 8
  %cmp77 = fcmp ole double %43, 0.000000e+00
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  store i32 1, i32* %status, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.76
  %44 = load i32, i32* %run_mode, align 4
  %cmp81 = icmp eq i32 %44, 0
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %if.end.80
  %45 = load i32, i32* %image_ID, align 4
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call84 = call i32 @gauss_dialog(i32 %45, %struct._GimpDrawable* %46)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.then.83
  br label %return

if.end.87:                                        ; preds = %if.then.83
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.80
  br label %if.end.205

if.else.89:                                       ; preds = %if.else
  %47 = load i8*, i8** %name.addr, align 8
  %call90 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.123

if.then.93:                                       ; preds = %if.else.89
  %48 = load i32, i32* %nparams.addr, align 4
  %cmp94 = icmp ne i32 %48, 5
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.93
  store i32 1, i32* %status, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.93
  %49 = load i32, i32* %status, align 4
  %cmp98 = icmp eq i32 %49, 3
  br i1 %cmp98, label %if.then.100, label %if.end.107

if.then.100:                                      ; preds = %if.end.97
  %50 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %50, i64 3
  %data102 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx101, i32 0, i32 1
  %d_float103 = bitcast %union._GimpParamData* %data102 to double*
  %51 = load double, double* %d_float103, align 8
  store double %51, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %52 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %52, i64 4
  %data105 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx104, i32 0, i32 1
  %d_float106 = bitcast %union._GimpParamData* %data105 to double*
  %53 = load double, double* %d_float106, align 8
  store double %53, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.100, %if.end.97
  %54 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %cmp108 = fcmp ole double %54, 0.000000e+00
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.114

land.lhs.true.110:                                ; preds = %if.end.107
  %55 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  %cmp111 = fcmp ole double %55, 0.000000e+00
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.110
  store i32 1, i32* %status, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %land.lhs.true.110, %if.end.107
  %56 = load i32, i32* %run_mode, align 4
  %cmp115 = icmp eq i32 %56, 0
  br i1 %cmp115, label %if.then.117, label %if.end.122

if.then.117:                                      ; preds = %if.end.114
  %57 = load i32, i32* %image_ID, align 4
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call118 = call i32 @gauss_dialog(i32 %57, %struct._GimpDrawable* %58)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %if.then.117
  br label %return

if.end.121:                                       ; preds = %if.then.117
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.114
  br label %if.end.204

if.else.123:                                      ; preds = %if.else.89
  %59 = load i8*, i8** %name.addr, align 8
  %call124 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.else.167

if.then.127:                                      ; preds = %if.else.123
  %60 = load i32, i32* %nparams.addr, align 4
  %cmp128 = icmp ne i32 %60, 6
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.127
  store i32 1, i32* %status, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.then.127
  %61 = load i32, i32* %status, align 4
  %cmp132 = icmp eq i32 %61, 3
  br i1 %cmp132, label %if.then.134, label %if.end.154

if.then.134:                                      ; preds = %if.end.131
  %62 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx135 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %62, i64 3
  %data136 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx135, i32 0, i32 1
  %d_float137 = bitcast %union._GimpParamData* %data136 to double*
  %63 = load double, double* %d_float137, align 8
  store double %63, double* %radius, align 8
  %64 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx138 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %64, i64 4
  %data139 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx138, i32 0, i32 1
  %d_int32140 = bitcast %union._GimpParamData* %data139 to i32*
  %65 = load i32, i32* %d_int32140, align 4
  %tobool141 = icmp ne i32 %65, 0
  br i1 %tobool141, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %if.then.134
  %66 = load double, double* %radius, align 8
  br label %cond.end.144

cond.false.143:                                   ; preds = %if.then.134
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.142
  %cond145 = phi double [ %66, %cond.true.142 ], [ 0.000000e+00, %cond.false.143 ]
  store double %cond145, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %67 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx146 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %67, i64 5
  %data147 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx146, i32 0, i32 1
  %d_int32148 = bitcast %union._GimpParamData* %data147 to i32*
  %68 = load i32, i32* %d_int32148, align 4
  %tobool149 = icmp ne i32 %68, 0
  br i1 %tobool149, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %cond.end.144
  %69 = load double, double* %radius, align 8
  br label %cond.end.152

cond.false.151:                                   ; preds = %cond.end.144
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.150
  %cond153 = phi double [ %69, %cond.true.150 ], [ 0.000000e+00, %cond.false.151 ]
  store double %cond153, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  br label %if.end.154

if.end.154:                                       ; preds = %cond.end.152, %if.end.131
  %70 = load double, double* %radius, align 8
  %cmp155 = fcmp ole double %70, 0.000000e+00
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.154
  store i32 1, i32* %status, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.end.154
  %71 = load i32, i32* %run_mode, align 4
  %cmp159 = icmp eq i32 %71, 0
  br i1 %cmp159, label %if.then.161, label %if.end.166

if.then.161:                                      ; preds = %if.end.158
  %72 = load i32, i32* %image_ID, align 4
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call162 = call i32 @gauss_dialog(i32 %72, %struct._GimpDrawable* %73)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.end.165, label %if.then.164

if.then.164:                                      ; preds = %if.then.161
  br label %return

if.end.165:                                       ; preds = %if.then.161
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.158
  br label %if.end.203

if.else.167:                                      ; preds = %if.else.123
  %74 = load i8*, i8** %name.addr, align 8
  %call168 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %if.then.171, label %if.else.201

if.then.171:                                      ; preds = %if.else.167
  %75 = load i32, i32* %nparams.addr, align 4
  %cmp172 = icmp ne i32 %75, 5
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.then.171
  store i32 1, i32* %status, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %if.then.171
  %76 = load i32, i32* %status, align 4
  %cmp176 = icmp eq i32 %76, 3
  br i1 %cmp176, label %if.then.178, label %if.end.185

if.then.178:                                      ; preds = %if.end.175
  %77 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx179 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %77, i64 3
  %data180 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx179, i32 0, i32 1
  %d_float181 = bitcast %union._GimpParamData* %data180 to double*
  %78 = load double, double* %d_float181, align 8
  store double %78, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %79 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %79, i64 4
  %data183 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx182, i32 0, i32 1
  %d_float184 = bitcast %union._GimpParamData* %data183 to double*
  %80 = load double, double* %d_float184, align 8
  store double %80, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.178, %if.end.175
  %81 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %cmp186 = fcmp ole double %81, 0.000000e+00
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.192

land.lhs.true.188:                                ; preds = %if.end.185
  %82 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  %cmp189 = fcmp ole double %82, 0.000000e+00
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %land.lhs.true.188
  store i32 1, i32* %status, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %land.lhs.true.188, %if.end.185
  %83 = load i32, i32* %run_mode, align 4
  %cmp193 = icmp eq i32 %83, 0
  br i1 %cmp193, label %if.then.195, label %if.end.200

if.then.195:                                      ; preds = %if.end.192
  %84 = load i32, i32* %image_ID, align 4
  %85 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call196 = call i32 @gauss_dialog(i32 %84, %struct._GimpDrawable* %85)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.end.199, label %if.then.198

if.then.198:                                      ; preds = %if.then.195
  br label %return

if.end.199:                                       ; preds = %if.then.195
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.192
  br label %if.end.202

if.else.201:                                      ; preds = %if.else.167
  store i32 1, i32* %status, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.201, %if.end.200
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.166
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.122
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.88
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %sw.epilog
  %86 = load i32, i32* %status, align 4
  %cmp207 = icmp eq i32 %86, 3
  br i1 %cmp207, label %if.then.209, label %if.end.231

if.then.209:                                      ; preds = %if.end.206
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %87, i32 0, i32 0
  %88 = load i32, i32* %drawable_id, align 4
  %call210 = call i32 @gimp_drawable_is_rgb(i32 %88)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.then.215, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.209
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id212 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %89, i32 0, i32 0
  %90 = load i32, i32* %drawable_id212, align 4
  %call213 = call i32 @gimp_drawable_is_gray(i32 %90)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then.215, label %if.else.228

if.then.215:                                      ; preds = %lor.lhs.false, %if.then.209
  %call216 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)) #5
  %call217 = call i32 @gimp_progress_init(i8* %call216)
  %91 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %92 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %93 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  call void @gauss(%struct._GimpDrawable* %91, double %92, double %93, i32 %94, %struct._GtkWidget* null)
  %95 = load i32, i32* %run_mode, align 4
  %cmp218 = icmp eq i32 %95, 0
  br i1 %cmp218, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %if.then.215
  %call221 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* bitcast (%struct.BlurValues* @bvals to i8*), i32 24)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %if.then.215
  %96 = load i32, i32* %run_mode, align 4
  %cmp223 = icmp ne i32 %96, 1
  br i1 %cmp223, label %if.then.225, label %if.end.227

if.then.225:                                      ; preds = %if.end.222
  %call226 = call i32 @gimp_displays_flush()
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.225, %if.end.222
  br label %if.end.230

if.else.228:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  %97 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %97, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call229 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i32 0, i32 0)) #5
  store i8* %call229, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.228, %if.end.227
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %98)
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.206
  %99 = load i32, i32* %status, align 4
  store i32 %99, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.231, %if.then.198, %if.then.164, %if.then.120, %if.then.86, %if.then.17
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

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gauss_dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %size = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #7
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
  %call15 = call i64 @gtk_box_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %hbox, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0)) #5
  %call21 = call %struct._GtkWidget* @gimp_frame_new(i8* %call20)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %frame, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load i32, i32* %image_ID.addr, align 4
  %call24 = call i32 @gimp_image_get_resolution(i32 %32, double* %xres, double* %yres)
  %33 = load i32, i32* %image_ID.addr, align 4
  %call25 = call i32 @gimp_image_get_unit(i32 %33)
  store i32 %call25, i32* %unit, align 4
  %34 = load i32, i32* %unit, align 4
  %35 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %36 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  %cmp = fcmp oeq double %35, %36
  %conv = zext i1 %cmp to i32
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0)) #5
  %37 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %38 = load double, double* %xres, align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load i32, i32* %width, align 4
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 2
  %42 = load i32, i32* %height, align 4
  %cmp27 = icmp ugt i32 %40, %42
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width29, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 2
  %46 = load i32, i32* %height30, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %46, %cond.false ]
  %mul = mul i32 8, %cond
  %conv31 = uitofp i32 %mul to double
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0)) #5
  %47 = load double, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  %48 = load double, double* %yres, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 1
  %50 = load i32, i32* %width33, align 4
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height34 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 2
  %52 = load i32, i32* %height34, align 4
  %cmp35 = icmp ugt i32 %50, %52
  br i1 %cmp35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 1
  %54 = load i32, i32* %width38, align 4
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height40 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 2
  %56 = load i32, i32* %height40, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi i32 [ %54, %cond.true.37 ], [ %56, %cond.false.39 ]
  %mul43 = mul i32 8, %cond42
  %conv44 = uitofp i32 %mul43 to double
  %call45 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 0, i32 -1, i32 1, i32 %conv, i32 0, i8* %call26, double %37, double %38, double 0.000000e+00, double %conv31, double 0.000000e+00, double 0.000000e+00, i8* %call32, double %47, double %48, double 0.000000e+00, double %conv44, double 0.000000e+00, double 0.000000e+00)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %size, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_container_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call46)
  %59 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %59, i32 6)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_container_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call48)
  %62 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkContainer*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  call void @gtk_container_add(%struct._GtkContainer* %62, %struct._GtkWidget* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_size_entry_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call50)
  %67 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry* %67, i32 1)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 2)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 2)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @update_preview to void ()*), i8* %79, void (i8*, %struct._GClosure*)* null, i32 0)
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0)) #5
  %80 = load i32, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #5
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0)) #5
  %call58 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call55, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2) to i8*), i32 %80, i8* %call56, i32 0, %struct._GtkWidget** %button, i8* %call57, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %frame, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 2)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call60)
  %87 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %87, %struct._GtkWidget* %88, i32 0, i32 0, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_dialog_get_type() #7
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call62)
  %93 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpDialog*
  %call64 = call i32 @gimp_dialog_run(%struct._GimpDialog* %93)
  %cmp65 = icmp eq i32 %call64, -5
  %conv66 = zext i1 %cmp65 to i32
  store i32 %conv66, i32* %run, align 4
  %94 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %94, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.41
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_size_entry_get_type() #7
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call67)
  %97 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpSizeEntry*
  %call69 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %97, i32 0)
  store double %call69, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 0), align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_size_entry_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call70)
  %100 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpSizeEntry*
  %call72 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %100, i32 1)
  store double %call72, double* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.41
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %101)
  %102 = load i32, i32* %run, align 4
  ret i32 %102
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gauss(%struct._GimpDrawable* %drawable, double %horz, double %vert, i32 %method, %struct._GtkWidget* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %horz.addr = alloca double, align 8
  %vert.addr = alloca double, align 8
  %method.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %preview_buffer = alloca i8*, align 8
  %hor_extra = alloca i32, align 4
  %ver_extra = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %horz, double* %horz.addr, align 8
  store double %vert, double* %vert.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i8* null, i8** %preview_buffer, align 8
  %0 = load double, double* %horz.addr, align 8
  %cmp = fcmp ole double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %vert.addr, align 8
  %cmp1 = fcmp ole double %1, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %method.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load double, double* %horz.addr, align 8
  %cmp2 = fcmp ole double %2, 0.000000e+00
  br i1 %cmp2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %3 = load double, double* %vert.addr, align 8
  %cmp3 = fcmp ole double %3, 0.000000e+00
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %land.lhs.true
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPreview*
  call void @gimp_preview_draw(%struct._GimpPreview* %7)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.4
  br label %if.end.92

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %tobool9 = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_preview_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpPreview*
  call void @gimp_preview_get_position(%struct._GimpPreview* %11, i32* %x, i32* %y)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_preview_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPreview*
  call void @gimp_preview_get_size(%struct._GimpPreview* %14, i32* %width, i32* %height)
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %15, %16
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 3
  %18 = load i32, i32* %bpp, align 4
  %mul15 = mul i32 %mul, %18
  %conv = zext i32 %mul15 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call16, i8** %preview_buffer, align 8
  br label %if.end.74

if.else:                                          ; preds = %if.end.8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id, align 4
  %call17 = call i32 @gimp_drawable_mask_intersect(i32 %20, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.72

if.then.19:                                       ; preds = %if.else
  %21 = load i32, i32* %method.addr, align 4
  %cmp20 = icmp eq i32 %21, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %22 = load double, double* %horz.addr, align 8
  %call22 = call double @ceil(double %22) #7
  %add = fadd double 1.000000e+00, %call22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 4.000000e+00, %cond.true ], [ %add, %cond.false ]
  %conv23 = fptosi double %cond to i32
  store i32 %conv23, i32* %hor_extra, align 4
  %23 = load i32, i32* %method.addr, align 4
  %cmp24 = icmp eq i32 %23, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end
  br label %cond.end.30

cond.false.27:                                    ; preds = %cond.end
  %24 = load double, double* %vert.addr, align 8
  %call28 = call double @ceil(double %24) #7
  %add29 = fadd double 1.000000e+00, %call28
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi double [ 4.000000e+00, %cond.true.26 ], [ %add29, %cond.false.27 ]
  %conv32 = fptosi double %cond31 to i32
  store i32 %conv32, i32* %ver_extra, align 4
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %width, align 4
  %add33 = add nsw i32 %25, %26
  store i32 %add33, i32* %x2, align 4
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %height, align 4
  %add34 = add nsw i32 %27, %28
  store i32 %add34, i32* %y2, align 4
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %hor_extra, align 4
  %sub = sub nsw i32 %29, %30
  %cmp35 = icmp sgt i32 %sub, 0
  br i1 %cmp35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end.30
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %hor_extra, align 4
  %sub38 = sub nsw i32 %31, %32
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end.30
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.37
  %cond41 = phi i32 [ %sub38, %cond.true.37 ], [ 0, %cond.false.39 ]
  store i32 %cond41, i32* %x, align 4
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %ver_extra, align 4
  %sub42 = sub nsw i32 %33, %34
  %cmp43 = icmp sgt i32 %sub42, 0
  br i1 %cmp43, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %cond.end.40
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %ver_extra, align 4
  %sub46 = sub nsw i32 %35, %36
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.end.40
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi i32 [ %sub46, %cond.true.45 ], [ 0, %cond.false.47 ]
  store i32 %cond49, i32* %y, align 4
  %37 = load i32, i32* %x2, align 4
  %38 = load i32, i32* %hor_extra, align 4
  %add50 = add nsw i32 %37, %38
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width51 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load i32, i32* %width51, align 4
  %cmp52 = icmp ult i32 %add50, %40
  br i1 %cmp52, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %cond.end.48
  %41 = load i32, i32* %x2, align 4
  %42 = load i32, i32* %hor_extra, align 4
  %add55 = add nsw i32 %41, %42
  br label %cond.end.58

cond.false.56:                                    ; preds = %cond.end.48
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %43, i32 0, i32 1
  %44 = load i32, i32* %width57, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.54
  %cond59 = phi i32 [ %add55, %cond.true.54 ], [ %44, %cond.false.56 ]
  %45 = load i32, i32* %x, align 4
  %sub60 = sub i32 %cond59, %45
  store i32 %sub60, i32* %width, align 4
  %46 = load i32, i32* %y2, align 4
  %47 = load i32, i32* %ver_extra, align 4
  %add61 = add nsw i32 %46, %47
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height62 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 2
  %49 = load i32, i32* %height62, align 4
  %cmp63 = icmp ult i32 %add61, %49
  br i1 %cmp63, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %cond.end.58
  %50 = load i32, i32* %y2, align 4
  %51 = load i32, i32* %ver_extra, align 4
  %add66 = add nsw i32 %50, %51
  br label %cond.end.69

cond.false.67:                                    ; preds = %cond.end.58
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 2
  %53 = load i32, i32* %height68, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.65
  %cond70 = phi i32 [ %add66, %cond.true.65 ], [ %53, %cond.false.67 ]
  %54 = load i32, i32* %y, align 4
  %sub71 = sub i32 %cond70, %54
  store i32 %sub71, i32* %height, align 4
  br label %if.end.73

if.else.72:                                       ; preds = %if.else
  br label %if.end.92

if.end.73:                                        ; preds = %cond.end.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.10
  %55 = load i32, i32* %method.addr, align 4
  %cmp75 = icmp eq i32 %55, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.74
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %57 = load double, double* %horz.addr, align 8
  %58 = load double, double* %vert.addr, align 8
  %59 = load i32, i32* %method.addr, align 4
  %60 = load i8*, i8** %preview_buffer, align 8
  %61 = load i32, i32* %x, align 4
  %62 = load i32, i32* %y, align 4
  %63 = load i32, i32* %width, align 4
  %64 = load i32, i32* %height, align 4
  call void @gauss_iir(%struct._GimpDrawable* %56, double %57, double %58, i32 %59, i8* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  br label %if.end.79

if.else.78:                                       ; preds = %if.end.74
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %66 = load double, double* %horz.addr, align 8
  %67 = load double, double* %vert.addr, align 8
  %68 = load i32, i32* %method.addr, align 4
  %69 = load i8*, i8** %preview_buffer, align 8
  %70 = load i32, i32* %x, align 4
  %71 = load i32, i32* %y, align 4
  %72 = load i32, i32* %width, align 4
  %73 = load i32, i32* %height, align 4
  call void @gauss_rle(%struct._GimpDrawable* %65, double %66, double %67, i32 %68, i8* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %tobool80 = icmp ne %struct._GtkWidget* %74, null
  br i1 %tobool80, label %if.then.81, label %if.else.86

if.then.81:                                       ; preds = %if.end.79
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_preview_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call82)
  %77 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpPreview*
  %78 = load i8*, i8** %preview_buffer, align 8
  %79 = load i32, i32* %width, align 4
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp84 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %80, i32 0, i32 3
  %81 = load i32, i32* %bpp84, align 4
  %mul85 = mul i32 %79, %81
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %77, i8* %78, i32 %mul85)
  %82 = load i8*, i8** %preview_buffer, align 8
  call void @g_free(i8* %82)
  br label %if.end.92

if.else.86:                                       ; preds = %if.end.79
  %call87 = call i32 @gimp_progress_update(double 1.000000e+00)
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %83)
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id88 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %84, i32 0, i32 0
  %85 = load i32, i32* %drawable_id88, align 4
  %call89 = call i32 @gimp_drawable_merge_shadow(i32 %85, i32 1)
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id90 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %86, i32 0, i32 0
  %87 = load i32, i32* %drawable_id90, align 4
  %88 = load i32, i32* %x, align 4
  %89 = load i32, i32* %y, align 4
  %90 = load i32, i32* %width, align 4
  %91 = load i32, i32* %height, align 4
  %call91 = call i32 @gimp_drawable_update(i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.7, %if.else.72, %if.else.86, %if.then.81
  ret void
}

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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_get_unit(i32) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

; Function Attrs: nounwind uwtable
define internal void @update_preview(%struct._GtkWidget* %preview, %struct._GtkWidget* %size) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %size.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store %struct._GtkWidget* %size, %struct._GtkWidget** %size.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_preview_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawablePreview*
  %call2 = call %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview* %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %size.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %size.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_size_entry_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpSizeEntry*
  %call8 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %8, i32 1)
  %9 = load i32, i32* getelementptr inbounds (%struct.BlurValues, %struct.BlurValues* @bvals, i32 0, i32 2), align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  call void @gauss(%struct._GimpDrawable* %call2, double %call5, double %call8, i32 %9, %struct._GtkWidget* %10)
  ret void
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_preview_get_drawable(%struct._GimpDrawablePreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare void @gimp_preview_draw(%struct._GimpPreview*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define internal void @gauss_iir(%struct._GimpDrawable* %drawable, double %horz, double %vert, i32 %method, i8* %preview_buffer, i32 %x1, i32 %y1, i32 %width, i32 %height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %horz.addr = alloca double, align 8
  %vert.addr = alloca double, align 8
  %method.addr = alloca i32, align 4
  %preview_buffer.addr = alloca i8*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bytes = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %sp_p = alloca i8*, align 8
  %sp_m = alloca i8*, align 8
  %n_p = alloca [5 x double], align 16
  %n_m = alloca [5 x double], align 16
  %d_p = alloca [5 x double], align 16
  %d_m = alloca [5 x double], align 16
  %bd_p = alloca [5 x double], align 16
  %bd_m = alloca [5 x double], align 16
  %val_p = alloca double*, align 8
  %val_m = alloca double*, align 8
  %vp = alloca double*, align 8
  %vm = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %terms = alloca i32, align 4
  %progress = alloca double, align 8
  %max_progress = alloca double, align 8
  %initial_p = alloca [4 x i32], align 16
  %initial_m = alloca [4 x i32], align 16
  %std_dev = alloca double, align 8
  %direct = alloca i32, align 4
  %progress_step = alloca i32, align 4
  %vpptr = alloca double*, align 8
  %vmptr = alloca double*, align 8
  %vpptr329 = alloca double*, align 8
  %vmptr330 = alloca double*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %horz, double* %horz.addr, align 8
  store double %vert, double* %vert.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  store i8* %preview_buffer, i8** %preview_buffer.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double* null, double** %val_p, align 8
  store double* null, double** %val_m, align 8
  %0 = load i8*, i8** %preview_buffer.addr, align 8
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %direct, align 4
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 3
  %2 = load i32, i32* %bpp, align 4
  store i32 %2, i32* %bytes, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %4)
  store i32 %call, i32* %has_alpha, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %height.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  %9 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %cond, %9
  %conv3 = sext i32 %mul to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 8)
  %10 = bitcast i8* %call4 to double*
  store double* %10, double** %val_p, align 8
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %cmp5 = icmp sgt i32 %11, %12
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %13 = load i32, i32* %width.addr, align 4
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  %14 = load i32, i32* %height.addr, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ %13, %cond.true.7 ], [ %14, %cond.false.8 ]
  %15 = load i32, i32* %bytes, align 4
  %mul11 = mul nsw i32 %cond10, %15
  %conv12 = sext i32 %mul11 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 8)
  %16 = bitcast i8* %call13 to double*
  store double* %16, double** %val_m, align 8
  %17 = load i32, i32* %width.addr, align 4
  %18 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sgt i32 %17, %18
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end.9
  %19 = load i32, i32* %width.addr, align 4
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end.9
  %20 = load i32, i32* %height.addr, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi i32 [ %19, %cond.true.16 ], [ %20, %cond.false.17 ]
  %21 = load i32, i32* %bytes, align 4
  %mul20 = mul nsw i32 %cond19, %21
  %conv21 = sext i32 %mul20 to i64
  %call22 = call noalias i8* @g_malloc_n(i64 %conv21, i64 1)
  store i8* %call22, i8** %src, align 8
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  %cmp23 = icmp sgt i32 %22, %23
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.18
  %24 = load i32, i32* %width.addr, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end.18
  %25 = load i32, i32* %height.addr, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %24, %cond.true.25 ], [ %25, %cond.false.26 ]
  %26 = load i32, i32* %bytes, align 4
  %mul29 = mul nsw i32 %cond28, %26
  %conv30 = sext i32 %mul29 to i64
  %call31 = call noalias i8* @g_malloc_n(i64 %conv30, i64 1)
  store i8* %call31, i8** %dest, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width32 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load i32, i32* %width32, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height33, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %27, i32 0, i32 0, i32 %29, i32 %31, i32 0, i32 0)
  %32 = load i32, i32* %direct, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.27
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width34 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 1
  %35 = load i32, i32* %width34, align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 2
  %37 = load i32, i32* %height35, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %33, i32 0, i32 0, i32 %35, i32 %37, i32 1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.27
  store double 0.000000e+00, double* %progress, align 8
  %38 = load double, double* %horz.addr, align 8
  %cmp36 = fcmp ole double %38, 0.000000e+00
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.end
  br label %cond.end.43

cond.false.39:                                    ; preds = %if.end
  %39 = load i32, i32* %width.addr, align 4
  %40 = load i32, i32* %height.addr, align 4
  %mul40 = mul nsw i32 %39, %40
  %conv41 = sitofp i32 %mul40 to double
  %41 = load double, double* %horz.addr, align 8
  %mul42 = fmul double %conv41, %41
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.39, %cond.true.38
  %cond44 = phi double [ 0.000000e+00, %cond.true.38 ], [ %mul42, %cond.false.39 ]
  store double %cond44, double* %max_progress, align 8
  %42 = load double, double* %vert.addr, align 8
  %cmp45 = fcmp ole double %42, 0.000000e+00
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end.43
  br label %cond.end.52

cond.false.48:                                    ; preds = %cond.end.43
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %height.addr, align 4
  %mul49 = mul nsw i32 %43, %44
  %conv50 = sitofp i32 %mul49 to double
  %45 = load double, double* %vert.addr, align 8
  %mul51 = fmul double %conv50, %45
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.48, %cond.true.47
  %cond53 = phi double [ 0.000000e+00, %cond.true.47 ], [ %mul51, %cond.false.48 ]
  %46 = load double, double* %max_progress, align 8
  %add = fadd double %46, %cond53
  store double %add, double* %max_progress, align 8
  %47 = load double, double* %vert.addr, align 8
  %cmp54 = fcmp ogt double %47, 0.000000e+00
  br i1 %cmp54, label %if.then.56, label %if.else.245

if.then.56:                                       ; preds = %cond.end.52
  %48 = load double, double* %vert.addr, align 8
  %call57 = call double @fabs(double %48) #7
  %add58 = fadd double %call57, 1.000000e+00
  store double %add58, double* %vert.addr, align 8
  %49 = load double, double* %vert.addr, align 8
  %50 = load double, double* %vert.addr, align 8
  %mul59 = fmul double %49, %50
  %sub = fsub double -0.000000e+00, %mul59
  %call60 = call double @log(double 0x3F70101010101010) #5
  %mul61 = fmul double 2.000000e+00, %call60
  %div = fdiv double %sub, %mul61
  %call62 = call double @sqrt(double %div) #5
  store double %call62, double* %std_dev, align 8
  %51 = load i32, i32* %width.addr, align 4
  %div63 = sdiv i32 %51, 16
  store i32 %div63, i32* %progress_step, align 4
  %52 = load i32, i32* %progress_step, align 4
  %cmp64 = icmp slt i32 %52, 5
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.56
  store i32 5, i32* %progress_step, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.then.56
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i32 0
  %arraydecay71 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i32 0
  %53 = load double, double* %std_dev, align 8
  call void @find_iir_constants(double* %arraydecay, double* %arraydecay68, double* %arraydecay69, double* %arraydecay70, double* %arraydecay71, double* %arraydecay72, double %53)
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.240, %if.end.67
  %54 = load i32, i32* %col, align 4
  %55 = load i32, i32* %width.addr, align 4
  %cmp73 = icmp slt i32 %54, %55
  br i1 %cmp73, label %for.body, label %for.end.242

for.body:                                         ; preds = %for.cond
  %56 = load double*, double** %val_p, align 8
  %57 = bitcast double* %56 to i8*
  %58 = load i32, i32* %height.addr, align 4
  %59 = load i32, i32* %bytes, align 4
  %mul75 = mul nsw i32 %58, %59
  %conv76 = sext i32 %mul75 to i64
  %mul77 = mul i64 %conv76, 8
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 %mul77, i32 8, i1 false)
  %60 = load double*, double** %val_m, align 8
  %61 = bitcast double* %60 to i8*
  %62 = load i32, i32* %height.addr, align 4
  %63 = load i32, i32* %bytes, align 4
  %mul78 = mul nsw i32 %62, %63
  %conv79 = sext i32 %mul78 to i64
  %mul80 = mul i64 %conv79, 8
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 %mul80, i32 8, i1 false)
  %64 = load i8*, i8** %src, align 8
  %65 = load i32, i32* %col, align 4
  %66 = load i32, i32* %x1.addr, align 4
  %add81 = add nsw i32 %65, %66
  %67 = load i32, i32* %y1.addr, align 4
  %68 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %src_rgn, i8* %64, i32 %add81, i32 %67, i32 %68)
  %69 = load i32, i32* %has_alpha, align 4
  %tobool82 = icmp ne i32 %69, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %for.body
  %70 = load i8*, i8** %src, align 8
  %71 = load i32, i32* %height.addr, align 4
  %72 = load i32, i32* %bytes, align 4
  call void @multiply_alpha(i8* %70, i32 %71, i32 %72)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %for.body
  %73 = load i8*, i8** %src, align 8
  store i8* %73, i8** %sp_p, align 8
  %74 = load i8*, i8** %src, align 8
  %75 = load i32, i32* %height.addr, align 4
  %sub85 = sub nsw i32 %75, 1
  %76 = load i32, i32* %bytes, align 4
  %mul86 = mul nsw i32 %sub85, %76
  %idx.ext = sext i32 %mul86 to i64
  %add.ptr = getelementptr inbounds i8, i8* %74, i64 %idx.ext
  store i8* %add.ptr, i8** %sp_m, align 8
  %77 = load double*, double** %val_p, align 8
  store double* %77, double** %vp, align 8
  %78 = load double*, double** %val_m, align 8
  %79 = load i32, i32* %height.addr, align 4
  %sub87 = sub nsw i32 %79, 1
  %80 = load i32, i32* %bytes, align 4
  %mul88 = mul nsw i32 %sub87, %80
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds double, double* %78, i64 %idx.ext89
  store double* %add.ptr90, double** %vm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc, %if.end.84
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %bytes, align 4
  %cmp92 = icmp slt i32 %81, %82
  br i1 %cmp92, label %for.body.94, label %for.end

for.body.94:                                      ; preds = %for.cond.91
  %83 = load i32, i32* %i, align 4
  %idxprom = sext i32 %83 to i64
  %84 = load i8*, i8** %sp_p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %84, i64 %idxprom
  %85 = load i8, i8* %arrayidx, align 1
  %conv95 = zext i8 %85 to i32
  %86 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %86 to i64
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom96
  store i32 %conv95, i32* %arrayidx97, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %87 to i64
  %88 = load i8*, i8** %sp_m, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %88, i64 %idxprom98
  %89 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %89 to i32
  %90 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %90 to i64
  %arrayidx102 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom101
  store i32 %conv100, i32* %arrayidx102, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.94
  %91 = load i32, i32* %i, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.91

for.end:                                          ; preds = %for.cond.91
  store i32 0, i32* %row, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.205, %for.end
  %92 = load i32, i32* %row, align 4
  %93 = load i32, i32* %height.addr, align 4
  %cmp104 = icmp slt i32 %92, %93
  br i1 %cmp104, label %for.body.106, label %for.end.207

for.body.106:                                     ; preds = %for.cond.103
  %94 = load i32, i32* %row, align 4
  %cmp107 = icmp slt i32 %94, 4
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %for.body.106
  %95 = load i32, i32* %row, align 4
  br label %cond.end.111

cond.false.110:                                   ; preds = %for.body.106
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.109
  %cond112 = phi i32 [ %95, %cond.true.109 ], [ 4, %cond.false.110 ]
  store i32 %cond112, i32* %terms, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.193, %cond.end.111
  %96 = load i32, i32* %b, align 4
  %97 = load i32, i32* %bytes, align 4
  %cmp114 = icmp slt i32 %96, %97
  br i1 %cmp114, label %for.body.116, label %for.end.195

for.body.116:                                     ; preds = %for.cond.113
  %98 = load double*, double** %vp, align 8
  %99 = load i32, i32* %b, align 4
  %idx.ext117 = sext i32 %99 to i64
  %add.ptr118 = getelementptr inbounds double, double* %98, i64 %idx.ext117
  store double* %add.ptr118, double** %vpptr, align 8
  %100 = load double*, double** %vm, align 8
  %101 = load i32, i32* %b, align 4
  %idx.ext119 = sext i32 %101 to i64
  %add.ptr120 = getelementptr inbounds double, double* %100, i64 %idx.ext119
  store double* %add.ptr120, double** %vmptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.163, %for.body.116
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %terms, align 4
  %cmp122 = icmp sle i32 %102, %103
  br i1 %cmp122, label %for.body.124, label %for.end.165

for.body.124:                                     ; preds = %for.cond.121
  %104 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %104 to i64
  %arrayidx126 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom125
  %105 = load double, double* %arrayidx126, align 8
  %106 = load i32, i32* %i, align 4
  %sub127 = sub nsw i32 0, %106
  %107 = load i32, i32* %bytes, align 4
  %mul128 = mul nsw i32 %sub127, %107
  %108 = load i32, i32* %b, align 4
  %add129 = add nsw i32 %mul128, %108
  %idxprom130 = sext i32 %add129 to i64
  %109 = load i8*, i8** %sp_p, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %109, i64 %idxprom130
  %110 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %110 to i32
  %conv133 = sitofp i32 %conv132 to double
  %mul134 = fmul double %105, %conv133
  %111 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %111 to i64
  %arrayidx136 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i64 %idxprom135
  %112 = load double, double* %arrayidx136, align 8
  %113 = load i32, i32* %i, align 4
  %sub137 = sub nsw i32 0, %113
  %114 = load i32, i32* %bytes, align 4
  %mul138 = mul nsw i32 %sub137, %114
  %115 = load i32, i32* %b, align 4
  %add139 = add nsw i32 %mul138, %115
  %idxprom140 = sext i32 %add139 to i64
  %116 = load double*, double** %vp, align 8
  %arrayidx141 = getelementptr inbounds double, double* %116, i64 %idxprom140
  %117 = load double, double* %arrayidx141, align 8
  %mul142 = fmul double %112, %117
  %sub143 = fsub double %mul134, %mul142
  %118 = load double*, double** %vpptr, align 8
  %119 = load double, double* %118, align 8
  %add144 = fadd double %119, %sub143
  store double %add144, double* %118, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %120 to i64
  %arrayidx146 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom145
  %121 = load double, double* %arrayidx146, align 8
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %bytes, align 4
  %mul147 = mul nsw i32 %122, %123
  %124 = load i32, i32* %b, align 4
  %add148 = add nsw i32 %mul147, %124
  %idxprom149 = sext i32 %add148 to i64
  %125 = load i8*, i8** %sp_m, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %125, i64 %idxprom149
  %126 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %126 to i32
  %conv152 = sitofp i32 %conv151 to double
  %mul153 = fmul double %121, %conv152
  %127 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %127 to i64
  %arrayidx155 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i64 %idxprom154
  %128 = load double, double* %arrayidx155, align 8
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %bytes, align 4
  %mul156 = mul nsw i32 %129, %130
  %131 = load i32, i32* %b, align 4
  %add157 = add nsw i32 %mul156, %131
  %idxprom158 = sext i32 %add157 to i64
  %132 = load double*, double** %vm, align 8
  %arrayidx159 = getelementptr inbounds double, double* %132, i64 %idxprom158
  %133 = load double, double* %arrayidx159, align 8
  %mul160 = fmul double %128, %133
  %sub161 = fsub double %mul153, %mul160
  %134 = load double*, double** %vmptr, align 8
  %135 = load double, double* %134, align 8
  %add162 = fadd double %135, %sub161
  store double %add162, double* %134, align 8
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.124
  %136 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %136, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond.121

for.end.165:                                      ; preds = %for.cond.121
  %137 = load i32, i32* %i, align 4
  store i32 %137, i32* %j, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.190, %for.end.165
  %138 = load i32, i32* %j, align 4
  %cmp167 = icmp sle i32 %138, 4
  br i1 %cmp167, label %for.body.169, label %for.end.192

for.body.169:                                     ; preds = %for.cond.166
  %139 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %139 to i64
  %arrayidx171 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom170
  %140 = load double, double* %arrayidx171, align 8
  %141 = load i32, i32* %j, align 4
  %idxprom172 = sext i32 %141 to i64
  %arrayidx173 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i64 %idxprom172
  %142 = load double, double* %arrayidx173, align 8
  %sub174 = fsub double %140, %142
  %143 = load i32, i32* %b, align 4
  %idxprom175 = sext i32 %143 to i64
  %arrayidx176 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom175
  %144 = load i32, i32* %arrayidx176, align 4
  %conv177 = sitofp i32 %144 to double
  %mul178 = fmul double %sub174, %conv177
  %145 = load double*, double** %vpptr, align 8
  %146 = load double, double* %145, align 8
  %add179 = fadd double %146, %mul178
  store double %add179, double* %145, align 8
  %147 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %147 to i64
  %arrayidx181 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom180
  %148 = load double, double* %arrayidx181, align 8
  %149 = load i32, i32* %j, align 4
  %idxprom182 = sext i32 %149 to i64
  %arrayidx183 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i64 %idxprom182
  %150 = load double, double* %arrayidx183, align 8
  %sub184 = fsub double %148, %150
  %151 = load i32, i32* %b, align 4
  %idxprom185 = sext i32 %151 to i64
  %arrayidx186 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom185
  %152 = load i32, i32* %arrayidx186, align 4
  %conv187 = sitofp i32 %152 to double
  %mul188 = fmul double %sub184, %conv187
  %153 = load double*, double** %vmptr, align 8
  %154 = load double, double* %153, align 8
  %add189 = fadd double %154, %mul188
  store double %add189, double* %153, align 8
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.169
  %155 = load i32, i32* %j, align 4
  %inc191 = add nsw i32 %155, 1
  store i32 %inc191, i32* %j, align 4
  br label %for.cond.166

for.end.192:                                      ; preds = %for.cond.166
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %156 = load i32, i32* %b, align 4
  %inc194 = add nsw i32 %156, 1
  store i32 %inc194, i32* %b, align 4
  br label %for.cond.113

for.end.195:                                      ; preds = %for.cond.113
  %157 = load i32, i32* %bytes, align 4
  %158 = load i8*, i8** %sp_p, align 8
  %idx.ext196 = sext i32 %157 to i64
  %add.ptr197 = getelementptr inbounds i8, i8* %158, i64 %idx.ext196
  store i8* %add.ptr197, i8** %sp_p, align 8
  %159 = load i32, i32* %bytes, align 4
  %160 = load i8*, i8** %sp_m, align 8
  %idx.ext198 = sext i32 %159 to i64
  %idx.neg = sub i64 0, %idx.ext198
  %add.ptr199 = getelementptr inbounds i8, i8* %160, i64 %idx.neg
  store i8* %add.ptr199, i8** %sp_m, align 8
  %161 = load i32, i32* %bytes, align 4
  %162 = load double*, double** %vp, align 8
  %idx.ext200 = sext i32 %161 to i64
  %add.ptr201 = getelementptr inbounds double, double* %162, i64 %idx.ext200
  store double* %add.ptr201, double** %vp, align 8
  %163 = load i32, i32* %bytes, align 4
  %164 = load double*, double** %vm, align 8
  %idx.ext202 = sext i32 %163 to i64
  %idx.neg203 = sub i64 0, %idx.ext202
  %add.ptr204 = getelementptr inbounds double, double* %164, i64 %idx.neg203
  store double* %add.ptr204, double** %vm, align 8
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.end.195
  %165 = load i32, i32* %row, align 4
  %inc206 = add nsw i32 %165, 1
  store i32 %inc206, i32* %row, align 4
  br label %for.cond.103

for.end.207:                                      ; preds = %for.cond.103
  %166 = load double*, double** %val_p, align 8
  %167 = load double*, double** %val_m, align 8
  %168 = load i8*, i8** %dest, align 8
  %169 = load i32, i32* %bytes, align 4
  %170 = load i32, i32* %height.addr, align 4
  call void @transfer_pixels(double* %166, double* %167, i8* %168, i32 %169, i32 %170)
  %171 = load i32, i32* %has_alpha, align 4
  %tobool208 = icmp ne i32 %171, 0
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %for.end.207
  %172 = load i8*, i8** %dest, align 8
  %173 = load i32, i32* %height.addr, align 4
  %174 = load i32, i32* %bytes, align 4
  call void @separate_alpha(i8* %172, i32 %173, i32 %174)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %for.end.207
  %175 = load i32, i32* %direct, align 4
  %tobool211 = icmp ne i32 %175, 0
  br i1 %tobool211, label %if.then.212, label %if.else

if.then.212:                                      ; preds = %if.end.210
  %176 = load i8*, i8** %dest, align 8
  %177 = load i32, i32* %col, align 4
  %178 = load i32, i32* %x1.addr, align 4
  %add213 = add nsw i32 %177, %178
  %179 = load i32, i32* %y1.addr, align 4
  %180 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %dest_rgn, i8* %176, i32 %add213, i32 %179, i32 %180)
  %181 = load i32, i32* %height.addr, align 4
  %conv214 = sitofp i32 %181 to double
  %182 = load double, double* %vert.addr, align 8
  %mul215 = fmul double %conv214, %182
  %183 = load double, double* %progress, align 8
  %add216 = fadd double %183, %mul215
  store double %add216, double* %progress, align 8
  %184 = load i32, i32* %col, align 4
  %185 = load i32, i32* %progress_step, align 4
  %rem = srem i32 %184, %185
  %cmp217 = icmp eq i32 %rem, 0
  br i1 %cmp217, label %if.then.219, label %if.end.222

if.then.219:                                      ; preds = %if.then.212
  %186 = load double, double* %progress, align 8
  %187 = load double, double* %max_progress, align 8
  %div220 = fdiv double %186, %187
  %call221 = call i32 @gimp_progress_update(double %div220)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.219, %if.then.212
  br label %if.end.239

if.else:                                          ; preds = %if.end.210
  store i32 0, i32* %row, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.236, %if.else
  %188 = load i32, i32* %row, align 4
  %189 = load i32, i32* %height.addr, align 4
  %cmp224 = icmp slt i32 %188, %189
  br i1 %cmp224, label %for.body.226, label %for.end.238

for.body.226:                                     ; preds = %for.cond.223
  %190 = load i8*, i8** %preview_buffer.addr, align 8
  %191 = load i32, i32* %row, align 4
  %192 = load i32, i32* %width.addr, align 4
  %mul227 = mul nsw i32 %191, %192
  %193 = load i32, i32* %col, align 4
  %add228 = add nsw i32 %mul227, %193
  %194 = load i32, i32* %bytes, align 4
  %mul229 = mul nsw i32 %add228, %194
  %idx.ext230 = sext i32 %mul229 to i64
  %add.ptr231 = getelementptr inbounds i8, i8* %190, i64 %idx.ext230
  %195 = load i8*, i8** %dest, align 8
  %196 = load i32, i32* %row, align 4
  %197 = load i32, i32* %bytes, align 4
  %mul232 = mul nsw i32 %196, %197
  %idx.ext233 = sext i32 %mul232 to i64
  %add.ptr234 = getelementptr inbounds i8, i8* %195, i64 %idx.ext233
  %198 = load i32, i32* %bytes, align 4
  %conv235 = sext i32 %198 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr231, i8* %add.ptr234, i64 %conv235, i32 1, i1 false)
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.body.226
  %199 = load i32, i32* %row, align 4
  %inc237 = add nsw i32 %199, 1
  store i32 %inc237, i32* %row, align 4
  br label %for.cond.223

for.end.238:                                      ; preds = %for.cond.223
  br label %if.end.239

if.end.239:                                       ; preds = %for.end.238, %if.end.222
  br label %for.inc.240

for.inc.240:                                      ; preds = %if.end.239
  %200 = load i32, i32* %col, align 4
  %inc241 = add nsw i32 %200, 1
  store i32 %inc241, i32* %col, align 4
  br label %for.cond

for.end.242:                                      ; preds = %for.cond
  %201 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %202 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width243 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %202, i32 0, i32 1
  %203 = load i32, i32* %width243, align 4
  %204 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height244 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %204, i32 0, i32 2
  %205 = load i32, i32* %height244, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %201, i32 0, i32 0, i32 %203, i32 %205, i32 0, i32 1)
  br label %if.end.249

if.else.245:                                      ; preds = %cond.end.52
  %206 = load i32, i32* %direct, align 4
  %tobool246 = icmp ne i32 %206, 0
  br i1 %tobool246, label %if.end.248, label %if.then.247

if.then.247:                                      ; preds = %if.else.245
  %207 = load i8*, i8** %preview_buffer.addr, align 8
  %208 = load i32, i32* %x1.addr, align 4
  %209 = load i32, i32* %y1.addr, align 4
  %210 = load i32, i32* %width.addr, align 4
  %211 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %207, i32 %208, i32 %209, i32 %210, i32 %211)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %if.else.245
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %for.end.242
  %212 = load double, double* %horz.addr, align 8
  %cmp250 = fcmp ogt double %212, 0.000000e+00
  br i1 %cmp250, label %if.then.252, label %if.end.460

if.then.252:                                      ; preds = %if.end.249
  %213 = load i32, i32* %height.addr, align 4
  %div253 = sdiv i32 %213, 16
  store i32 %div253, i32* %progress_step, align 4
  %214 = load i32, i32* %progress_step, align 4
  %cmp254 = icmp slt i32 %214, 5
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %if.then.252
  store i32 5, i32* %progress_step, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %if.then.252
  %215 = load double, double* %horz.addr, align 8
  %call258 = call double @fabs(double %215) #7
  %add259 = fadd double %call258, 1.000000e+00
  store double %add259, double* %horz.addr, align 8
  %216 = load double, double* %horz.addr, align 8
  %217 = load double, double* %vert.addr, align 8
  %cmp260 = fcmp une double %216, %217
  br i1 %cmp260, label %if.then.262, label %if.end.275

if.then.262:                                      ; preds = %if.end.257
  %218 = load double, double* %horz.addr, align 8
  %219 = load double, double* %horz.addr, align 8
  %mul263 = fmul double %218, %219
  %sub264 = fsub double -0.000000e+00, %mul263
  %call265 = call double @log(double 0x3F70101010101010) #5
  %mul266 = fmul double 2.000000e+00, %call265
  %div267 = fdiv double %sub264, %mul266
  %call268 = call double @sqrt(double %div267) #5
  store double %call268, double* %std_dev, align 8
  %arraydecay269 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i32 0
  %arraydecay270 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i32 0
  %arraydecay271 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i32 0
  %arraydecay272 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i32 0
  %arraydecay273 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i32 0
  %arraydecay274 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i32 0
  %220 = load double, double* %std_dev, align 8
  call void @find_iir_constants(double* %arraydecay269, double* %arraydecay270, double* %arraydecay271, double* %arraydecay272, double* %arraydecay273, double* %arraydecay274, double %220)
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.262, %if.end.257
  store i32 0, i32* %row, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.457, %if.end.275
  %221 = load i32, i32* %row, align 4
  %222 = load i32, i32* %height.addr, align 4
  %cmp277 = icmp slt i32 %221, %222
  br i1 %cmp277, label %for.body.279, label %for.end.459

for.body.279:                                     ; preds = %for.cond.276
  %223 = load double*, double** %val_p, align 8
  %224 = bitcast double* %223 to i8*
  %225 = load i32, i32* %width.addr, align 4
  %226 = load i32, i32* %bytes, align 4
  %mul280 = mul nsw i32 %225, %226
  %conv281 = sext i32 %mul280 to i64
  %mul282 = mul i64 %conv281, 8
  call void @llvm.memset.p0i8.i64(i8* %224, i8 0, i64 %mul282, i32 8, i1 false)
  %227 = load double*, double** %val_m, align 8
  %228 = bitcast double* %227 to i8*
  %229 = load i32, i32* %width.addr, align 4
  %230 = load i32, i32* %bytes, align 4
  %mul283 = mul nsw i32 %229, %230
  %conv284 = sext i32 %mul283 to i64
  %mul285 = mul i64 %conv284, 8
  call void @llvm.memset.p0i8.i64(i8* %228, i8 0, i64 %mul285, i32 8, i1 false)
  %231 = load i32, i32* %direct, align 4
  %tobool286 = icmp ne i32 %231, 0
  br i1 %tobool286, label %if.then.287, label %if.else.289

if.then.287:                                      ; preds = %for.body.279
  %232 = load i8*, i8** %src, align 8
  %233 = load i32, i32* %x1.addr, align 4
  %234 = load i32, i32* %row, align 4
  %235 = load i32, i32* %y1.addr, align 4
  %add288 = add nsw i32 %234, %235
  %236 = load i32, i32* %width.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %232, i32 %233, i32 %add288, i32 %236)
  br label %if.end.296

if.else.289:                                      ; preds = %for.body.279
  %237 = load i8*, i8** %src, align 8
  %238 = load i8*, i8** %preview_buffer.addr, align 8
  %239 = load i32, i32* %row, align 4
  %240 = load i32, i32* %width.addr, align 4
  %mul290 = mul nsw i32 %239, %240
  %241 = load i32, i32* %bytes, align 4
  %mul291 = mul nsw i32 %mul290, %241
  %idx.ext292 = sext i32 %mul291 to i64
  %add.ptr293 = getelementptr inbounds i8, i8* %238, i64 %idx.ext292
  %242 = load i32, i32* %width.addr, align 4
  %243 = load i32, i32* %bytes, align 4
  %mul294 = mul nsw i32 %242, %243
  %conv295 = sext i32 %mul294 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %237, i8* %add.ptr293, i64 %conv295, i32 1, i1 false)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.289, %if.then.287
  %244 = load i32, i32* %has_alpha, align 4
  %tobool297 = icmp ne i32 %244, 0
  br i1 %tobool297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.end.296
  %245 = load i8*, i8** %src, align 8
  %246 = load i32, i32* %width.addr, align 4
  %247 = load i32, i32* %bytes, align 4
  call void @multiply_alpha(i8* %245, i32 %246, i32 %247)
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %if.end.296
  %248 = load i8*, i8** %src, align 8
  store i8* %248, i8** %sp_p, align 8
  %249 = load i8*, i8** %src, align 8
  %250 = load i32, i32* %width.addr, align 4
  %sub300 = sub nsw i32 %250, 1
  %251 = load i32, i32* %bytes, align 4
  %mul301 = mul nsw i32 %sub300, %251
  %idx.ext302 = sext i32 %mul301 to i64
  %add.ptr303 = getelementptr inbounds i8, i8* %249, i64 %idx.ext302
  store i8* %add.ptr303, i8** %sp_m, align 8
  %252 = load double*, double** %val_p, align 8
  store double* %252, double** %vp, align 8
  %253 = load double*, double** %val_m, align 8
  %254 = load i32, i32* %width.addr, align 4
  %sub304 = sub nsw i32 %254, 1
  %255 = load i32, i32* %bytes, align 4
  %mul305 = mul nsw i32 %sub304, %255
  %idx.ext306 = sext i32 %mul305 to i64
  %add.ptr307 = getelementptr inbounds double, double* %253, i64 %idx.ext306
  store double* %add.ptr307, double** %vm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.322, %if.end.299
  %256 = load i32, i32* %i, align 4
  %257 = load i32, i32* %bytes, align 4
  %cmp309 = icmp slt i32 %256, %257
  br i1 %cmp309, label %for.body.311, label %for.end.324

for.body.311:                                     ; preds = %for.cond.308
  %258 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %258 to i64
  %259 = load i8*, i8** %sp_p, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %259, i64 %idxprom312
  %260 = load i8, i8* %arrayidx313, align 1
  %conv314 = zext i8 %260 to i32
  %261 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %261 to i64
  %arrayidx316 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom315
  store i32 %conv314, i32* %arrayidx316, align 4
  %262 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %262 to i64
  %263 = load i8*, i8** %sp_m, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %263, i64 %idxprom317
  %264 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %264 to i32
  %265 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %265 to i64
  %arrayidx321 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom320
  store i32 %conv319, i32* %arrayidx321, align 4
  br label %for.inc.322

for.inc.322:                                      ; preds = %for.body.311
  %266 = load i32, i32* %i, align 4
  %inc323 = add nsw i32 %266, 1
  store i32 %inc323, i32* %i, align 4
  br label %for.cond.308

for.end.324:                                      ; preds = %for.cond.308
  store i32 0, i32* %col, align 4
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc.430, %for.end.324
  %267 = load i32, i32* %col, align 4
  %268 = load i32, i32* %width.addr, align 4
  %cmp326 = icmp slt i32 %267, %268
  br i1 %cmp326, label %for.body.328, label %for.end.432

for.body.328:                                     ; preds = %for.cond.325
  %269 = load i32, i32* %col, align 4
  %cmp331 = icmp slt i32 %269, 4
  br i1 %cmp331, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %for.body.328
  %270 = load i32, i32* %col, align 4
  br label %cond.end.335

cond.false.334:                                   ; preds = %for.body.328
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.334, %cond.true.333
  %cond336 = phi i32 [ %270, %cond.true.333 ], [ 4, %cond.false.334 ]
  store i32 %cond336, i32* %terms, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.417, %cond.end.335
  %271 = load i32, i32* %b, align 4
  %272 = load i32, i32* %bytes, align 4
  %cmp338 = icmp slt i32 %271, %272
  br i1 %cmp338, label %for.body.340, label %for.end.419

for.body.340:                                     ; preds = %for.cond.337
  %273 = load double*, double** %vp, align 8
  %274 = load i32, i32* %b, align 4
  %idx.ext341 = sext i32 %274 to i64
  %add.ptr342 = getelementptr inbounds double, double* %273, i64 %idx.ext341
  store double* %add.ptr342, double** %vpptr329, align 8
  %275 = load double*, double** %vm, align 8
  %276 = load i32, i32* %b, align 4
  %idx.ext343 = sext i32 %276 to i64
  %add.ptr344 = getelementptr inbounds double, double* %275, i64 %idx.ext343
  store double* %add.ptr344, double** %vmptr330, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.387, %for.body.340
  %277 = load i32, i32* %i, align 4
  %278 = load i32, i32* %terms, align 4
  %cmp346 = icmp sle i32 %277, %278
  br i1 %cmp346, label %for.body.348, label %for.end.389

for.body.348:                                     ; preds = %for.cond.345
  %279 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %279 to i64
  %arrayidx350 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom349
  %280 = load double, double* %arrayidx350, align 8
  %281 = load i32, i32* %i, align 4
  %sub351 = sub nsw i32 0, %281
  %282 = load i32, i32* %bytes, align 4
  %mul352 = mul nsw i32 %sub351, %282
  %283 = load i32, i32* %b, align 4
  %add353 = add nsw i32 %mul352, %283
  %idxprom354 = sext i32 %add353 to i64
  %284 = load i8*, i8** %sp_p, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %284, i64 %idxprom354
  %285 = load i8, i8* %arrayidx355, align 1
  %conv356 = zext i8 %285 to i32
  %conv357 = sitofp i32 %conv356 to double
  %mul358 = fmul double %280, %conv357
  %286 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %286 to i64
  %arrayidx360 = getelementptr inbounds [5 x double], [5 x double]* %d_p, i32 0, i64 %idxprom359
  %287 = load double, double* %arrayidx360, align 8
  %288 = load i32, i32* %i, align 4
  %sub361 = sub nsw i32 0, %288
  %289 = load i32, i32* %bytes, align 4
  %mul362 = mul nsw i32 %sub361, %289
  %290 = load i32, i32* %b, align 4
  %add363 = add nsw i32 %mul362, %290
  %idxprom364 = sext i32 %add363 to i64
  %291 = load double*, double** %vp, align 8
  %arrayidx365 = getelementptr inbounds double, double* %291, i64 %idxprom364
  %292 = load double, double* %arrayidx365, align 8
  %mul366 = fmul double %287, %292
  %sub367 = fsub double %mul358, %mul366
  %293 = load double*, double** %vpptr329, align 8
  %294 = load double, double* %293, align 8
  %add368 = fadd double %294, %sub367
  store double %add368, double* %293, align 8
  %295 = load i32, i32* %i, align 4
  %idxprom369 = sext i32 %295 to i64
  %arrayidx370 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom369
  %296 = load double, double* %arrayidx370, align 8
  %297 = load i32, i32* %i, align 4
  %298 = load i32, i32* %bytes, align 4
  %mul371 = mul nsw i32 %297, %298
  %299 = load i32, i32* %b, align 4
  %add372 = add nsw i32 %mul371, %299
  %idxprom373 = sext i32 %add372 to i64
  %300 = load i8*, i8** %sp_m, align 8
  %arrayidx374 = getelementptr inbounds i8, i8* %300, i64 %idxprom373
  %301 = load i8, i8* %arrayidx374, align 1
  %conv375 = zext i8 %301 to i32
  %conv376 = sitofp i32 %conv375 to double
  %mul377 = fmul double %296, %conv376
  %302 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %302 to i64
  %arrayidx379 = getelementptr inbounds [5 x double], [5 x double]* %d_m, i32 0, i64 %idxprom378
  %303 = load double, double* %arrayidx379, align 8
  %304 = load i32, i32* %i, align 4
  %305 = load i32, i32* %bytes, align 4
  %mul380 = mul nsw i32 %304, %305
  %306 = load i32, i32* %b, align 4
  %add381 = add nsw i32 %mul380, %306
  %idxprom382 = sext i32 %add381 to i64
  %307 = load double*, double** %vm, align 8
  %arrayidx383 = getelementptr inbounds double, double* %307, i64 %idxprom382
  %308 = load double, double* %arrayidx383, align 8
  %mul384 = fmul double %303, %308
  %sub385 = fsub double %mul377, %mul384
  %309 = load double*, double** %vmptr330, align 8
  %310 = load double, double* %309, align 8
  %add386 = fadd double %310, %sub385
  store double %add386, double* %309, align 8
  br label %for.inc.387

for.inc.387:                                      ; preds = %for.body.348
  %311 = load i32, i32* %i, align 4
  %inc388 = add nsw i32 %311, 1
  store i32 %inc388, i32* %i, align 4
  br label %for.cond.345

for.end.389:                                      ; preds = %for.cond.345
  %312 = load i32, i32* %i, align 4
  store i32 %312, i32* %j, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.414, %for.end.389
  %313 = load i32, i32* %j, align 4
  %cmp391 = icmp sle i32 %313, 4
  br i1 %cmp391, label %for.body.393, label %for.end.416

for.body.393:                                     ; preds = %for.cond.390
  %314 = load i32, i32* %j, align 4
  %idxprom394 = sext i32 %314 to i64
  %arrayidx395 = getelementptr inbounds [5 x double], [5 x double]* %n_p, i32 0, i64 %idxprom394
  %315 = load double, double* %arrayidx395, align 8
  %316 = load i32, i32* %j, align 4
  %idxprom396 = sext i32 %316 to i64
  %arrayidx397 = getelementptr inbounds [5 x double], [5 x double]* %bd_p, i32 0, i64 %idxprom396
  %317 = load double, double* %arrayidx397, align 8
  %sub398 = fsub double %315, %317
  %318 = load i32, i32* %b, align 4
  %idxprom399 = sext i32 %318 to i64
  %arrayidx400 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom399
  %319 = load i32, i32* %arrayidx400, align 4
  %conv401 = sitofp i32 %319 to double
  %mul402 = fmul double %sub398, %conv401
  %320 = load double*, double** %vpptr329, align 8
  %321 = load double, double* %320, align 8
  %add403 = fadd double %321, %mul402
  store double %add403, double* %320, align 8
  %322 = load i32, i32* %j, align 4
  %idxprom404 = sext i32 %322 to i64
  %arrayidx405 = getelementptr inbounds [5 x double], [5 x double]* %n_m, i32 0, i64 %idxprom404
  %323 = load double, double* %arrayidx405, align 8
  %324 = load i32, i32* %j, align 4
  %idxprom406 = sext i32 %324 to i64
  %arrayidx407 = getelementptr inbounds [5 x double], [5 x double]* %bd_m, i32 0, i64 %idxprom406
  %325 = load double, double* %arrayidx407, align 8
  %sub408 = fsub double %323, %325
  %326 = load i32, i32* %b, align 4
  %idxprom409 = sext i32 %326 to i64
  %arrayidx410 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom409
  %327 = load i32, i32* %arrayidx410, align 4
  %conv411 = sitofp i32 %327 to double
  %mul412 = fmul double %sub408, %conv411
  %328 = load double*, double** %vmptr330, align 8
  %329 = load double, double* %328, align 8
  %add413 = fadd double %329, %mul412
  store double %add413, double* %328, align 8
  br label %for.inc.414

for.inc.414:                                      ; preds = %for.body.393
  %330 = load i32, i32* %j, align 4
  %inc415 = add nsw i32 %330, 1
  store i32 %inc415, i32* %j, align 4
  br label %for.cond.390

for.end.416:                                      ; preds = %for.cond.390
  br label %for.inc.417

for.inc.417:                                      ; preds = %for.end.416
  %331 = load i32, i32* %b, align 4
  %inc418 = add nsw i32 %331, 1
  store i32 %inc418, i32* %b, align 4
  br label %for.cond.337

for.end.419:                                      ; preds = %for.cond.337
  %332 = load i32, i32* %bytes, align 4
  %333 = load i8*, i8** %sp_p, align 8
  %idx.ext420 = sext i32 %332 to i64
  %add.ptr421 = getelementptr inbounds i8, i8* %333, i64 %idx.ext420
  store i8* %add.ptr421, i8** %sp_p, align 8
  %334 = load i32, i32* %bytes, align 4
  %335 = load i8*, i8** %sp_m, align 8
  %idx.ext422 = sext i32 %334 to i64
  %idx.neg423 = sub i64 0, %idx.ext422
  %add.ptr424 = getelementptr inbounds i8, i8* %335, i64 %idx.neg423
  store i8* %add.ptr424, i8** %sp_m, align 8
  %336 = load i32, i32* %bytes, align 4
  %337 = load double*, double** %vp, align 8
  %idx.ext425 = sext i32 %336 to i64
  %add.ptr426 = getelementptr inbounds double, double* %337, i64 %idx.ext425
  store double* %add.ptr426, double** %vp, align 8
  %338 = load i32, i32* %bytes, align 4
  %339 = load double*, double** %vm, align 8
  %idx.ext427 = sext i32 %338 to i64
  %idx.neg428 = sub i64 0, %idx.ext427
  %add.ptr429 = getelementptr inbounds double, double* %339, i64 %idx.neg428
  store double* %add.ptr429, double** %vm, align 8
  br label %for.inc.430

for.inc.430:                                      ; preds = %for.end.419
  %340 = load i32, i32* %col, align 4
  %inc431 = add nsw i32 %340, 1
  store i32 %inc431, i32* %col, align 4
  br label %for.cond.325

for.end.432:                                      ; preds = %for.cond.325
  %341 = load double*, double** %val_p, align 8
  %342 = load double*, double** %val_m, align 8
  %343 = load i8*, i8** %dest, align 8
  %344 = load i32, i32* %bytes, align 4
  %345 = load i32, i32* %width.addr, align 4
  call void @transfer_pixels(double* %341, double* %342, i8* %343, i32 %344, i32 %345)
  %346 = load i32, i32* %has_alpha, align 4
  %tobool433 = icmp ne i32 %346, 0
  br i1 %tobool433, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %for.end.432
  %347 = load i8*, i8** %dest, align 8
  %348 = load i32, i32* %width.addr, align 4
  %349 = load i32, i32* %bytes, align 4
  call void @separate_alpha(i8* %347, i32 %348, i32 %349)
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.434, %for.end.432
  %350 = load i32, i32* %direct, align 4
  %tobool436 = icmp ne i32 %350, 0
  br i1 %tobool436, label %if.then.437, label %if.else.449

if.then.437:                                      ; preds = %if.end.435
  %351 = load i8*, i8** %dest, align 8
  %352 = load i32, i32* %x1.addr, align 4
  %353 = load i32, i32* %row, align 4
  %354 = load i32, i32* %y1.addr, align 4
  %add438 = add nsw i32 %353, %354
  %355 = load i32, i32* %width.addr, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_rgn, i8* %351, i32 %352, i32 %add438, i32 %355)
  %356 = load i32, i32* %width.addr, align 4
  %conv439 = sitofp i32 %356 to double
  %357 = load double, double* %horz.addr, align 8
  %mul440 = fmul double %conv439, %357
  %358 = load double, double* %progress, align 8
  %add441 = fadd double %358, %mul440
  store double %add441, double* %progress, align 8
  %359 = load i32, i32* %row, align 4
  %360 = load i32, i32* %progress_step, align 4
  %rem442 = srem i32 %359, %360
  %cmp443 = icmp eq i32 %rem442, 0
  br i1 %cmp443, label %if.then.445, label %if.end.448

if.then.445:                                      ; preds = %if.then.437
  %361 = load double, double* %progress, align 8
  %362 = load double, double* %max_progress, align 8
  %div446 = fdiv double %361, %362
  %call447 = call i32 @gimp_progress_update(double %div446)
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.445, %if.then.437
  br label %if.end.456

if.else.449:                                      ; preds = %if.end.435
  %363 = load i8*, i8** %preview_buffer.addr, align 8
  %364 = load i32, i32* %row, align 4
  %365 = load i32, i32* %width.addr, align 4
  %mul450 = mul nsw i32 %364, %365
  %366 = load i32, i32* %bytes, align 4
  %mul451 = mul nsw i32 %mul450, %366
  %idx.ext452 = sext i32 %mul451 to i64
  %add.ptr453 = getelementptr inbounds i8, i8* %363, i64 %idx.ext452
  %367 = load i8*, i8** %dest, align 8
  %368 = load i32, i32* %width.addr, align 4
  %369 = load i32, i32* %bytes, align 4
  %mul454 = mul nsw i32 %368, %369
  %conv455 = sext i32 %mul454 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr453, i8* %367, i64 %conv455, i32 1, i1 false)
  br label %if.end.456

if.end.456:                                       ; preds = %if.else.449, %if.end.448
  br label %for.inc.457

for.inc.457:                                      ; preds = %if.end.456
  %370 = load i32, i32* %row, align 4
  %inc458 = add nsw i32 %370, 1
  store i32 %inc458, i32* %row, align 4
  br label %for.cond.276

for.end.459:                                      ; preds = %for.cond.276
  br label %if.end.460

if.end.460:                                       ; preds = %for.end.459, %if.end.249
  %371 = load double*, double** %val_p, align 8
  %372 = bitcast double* %371 to i8*
  call void @g_free(i8* %372)
  %373 = load double*, double** %val_m, align 8
  %374 = bitcast double* %373 to i8*
  call void @g_free(i8* %374)
  %375 = load i8*, i8** %src, align 8
  call void @g_free(i8* %375)
  %376 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %376)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gauss_rle(%struct._GimpDrawable* %drawable, double %horz, double %vert, i32 %method, i8* %preview_buffer, i32 %x1, i32 %y1, i32 %width, i32 %height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %horz.addr = alloca double, align 8
  %vert.addr = alloca double, align 8
  %method.addr = alloca i32, align 4
  %preview_buffer.addr = alloca i8*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bytes = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %progress = alloca double, align 8
  %max_progress = alloca double, align 8
  %std_dev = alloca double, align 8
  %total = alloca i32, align 4
  %curve = alloca i32*, align 8
  %sum = alloca i32*, align 8
  %length = alloca i32, align 4
  %direct = alloca i32, align 4
  %progress_step = alloca i32, align 4
  %rle = alloca i32*, align 8
  %pix = alloca i32*, align 8
  %same = alloca i32, align 4
  %rle134 = alloca i32*, align 8
  %pix135 = alloca i32*, align 8
  %same191 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %horz, double* %horz.addr, align 8
  store double %vert, double* %vert.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  store i8* %preview_buffer, i8** %preview_buffer.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 1, i32* %total, align 4
  store i32* null, i32** %curve, align 8
  store i32* null, i32** %sum, align 8
  %0 = load i8*, i8** %preview_buffer.addr, align 8
  %cmp = icmp eq i8* %0, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %direct, align 4
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 3
  %2 = load i32, i32* %bpp, align 4
  store i32 %2, i32* %bytes, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %4)
  store i32 %call, i32* %has_alpha, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %height.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  %9 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %cond, %9
  %conv3 = sext i32 %mul to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 1)
  store i8* %call4, i8** %src, align 8
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  %cmp5 = icmp sgt i32 %10, %11
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %12 = load i32, i32* %width.addr, align 4
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  %13 = load i32, i32* %height.addr, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ %12, %cond.true.7 ], [ %13, %cond.false.8 ]
  %14 = load i32, i32* %bytes, align 4
  %mul11 = mul nsw i32 %cond10, %14
  %conv12 = sext i32 %mul11 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  store i8* %call13, i8** %dest, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width14, align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 2
  %19 = load i32, i32* %height15, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %15, i32 0, i32 0, i32 %17, i32 %19, i32 0, i32 0)
  %20 = load i32, i32* %direct, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.9
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 1
  %23 = load i32, i32* %width16, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 2
  %25 = load i32, i32* %height17, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %21, i32 0, i32 0, i32 %23, i32 %25, i32 1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.9
  store double 0.000000e+00, double* %progress, align 8
  %26 = load double, double* %horz.addr, align 8
  %cmp18 = fcmp ole double %26, 0.000000e+00
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.end
  br label %cond.end.25

cond.false.21:                                    ; preds = %if.end
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %height.addr, align 4
  %mul22 = mul nsw i32 %27, %28
  %conv23 = sitofp i32 %mul22 to double
  %29 = load double, double* %horz.addr, align 8
  %mul24 = fmul double %conv23, %29
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi double [ 0.000000e+00, %cond.true.20 ], [ %mul24, %cond.false.21 ]
  store double %cond26, double* %max_progress, align 8
  %30 = load double, double* %vert.addr, align 8
  %cmp27 = fcmp ole double %30, 0.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end.25
  br label %cond.end.34

cond.false.30:                                    ; preds = %cond.end.25
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %height.addr, align 4
  %mul31 = mul nsw i32 %31, %32
  %conv32 = sitofp i32 %mul31 to double
  %33 = load double, double* %vert.addr, align 8
  %mul33 = fmul double %conv32, %33
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.30, %cond.true.29
  %cond35 = phi double [ 0.000000e+00, %cond.true.29 ], [ %mul33, %cond.false.30 ]
  %34 = load double, double* %max_progress, align 8
  %add = fadd double %34, %cond35
  store double %add, double* %max_progress, align 8
  %35 = load double, double* %vert.addr, align 8
  %cmp36 = fcmp ogt double %35, 0.000000e+00
  br i1 %cmp36, label %if.then.38, label %if.else.126

if.then.38:                                       ; preds = %cond.end.34
  store i32* null, i32** %rle, align 8
  store i32* null, i32** %pix, align 8
  %36 = load double, double* %vert.addr, align 8
  %call39 = call double @fabs(double %36) #7
  %add40 = fadd double %call39, 1.000000e+00
  store double %add40, double* %vert.addr, align 8
  %37 = load double, double* %vert.addr, align 8
  %38 = load double, double* %vert.addr, align 8
  %mul41 = fmul double %37, %38
  %sub = fsub double -0.000000e+00, %mul41
  %call42 = call double @log(double 0x3F70101010101010) #5
  %mul43 = fmul double 2.000000e+00, %call42
  %div = fdiv double %sub, %mul43
  %call44 = call double @sqrt(double %div) #5
  store double %call44, double* %std_dev, align 8
  %39 = load i32, i32* %width.addr, align 4
  %div45 = sdiv i32 %39, 16
  store i32 %div45, i32* %progress_step, align 4
  %40 = load i32, i32* %progress_step, align 4
  %cmp46 = icmp slt i32 %40, 5
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.38
  store i32 5, i32* %progress_step, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.then.38
  %41 = load double, double* %std_dev, align 8
  call void @make_rle_curve(double %41, i32** %curve, i32* %length, i32** %sum, i32* %total)
  %42 = load i32, i32* %height.addr, align 4
  %43 = load i32, i32* %length, align 4
  %mul50 = mul nsw i32 2, %43
  %add51 = add nsw i32 %42, %mul50
  %conv52 = sext i32 %add51 to i64
  %call53 = call noalias i8* @g_malloc_n(i64 %conv52, i64 4)
  %44 = bitcast i8* %call53 to i32*
  store i32* %44, i32** %rle, align 8
  %45 = load i32, i32* %length, align 4
  %46 = load i32*, i32** %rle, align 8
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds i32, i32* %46, i64 %idx.ext
  store i32* %add.ptr, i32** %rle, align 8
  %47 = load i32, i32* %height.addr, align 4
  %48 = load i32, i32* %length, align 4
  %mul54 = mul nsw i32 2, %48
  %add55 = add nsw i32 %47, %mul54
  %conv56 = sext i32 %add55 to i64
  %call57 = call noalias i8* @g_malloc_n(i64 %conv56, i64 4)
  %49 = bitcast i8* %call57 to i32*
  store i32* %49, i32** %pix, align 8
  %50 = load i32, i32* %length, align 4
  %51 = load i32*, i32** %pix, align 8
  %idx.ext58 = sext i32 %50 to i64
  %add.ptr59 = getelementptr inbounds i32, i32* %51, i64 %idx.ext58
  store i32* %add.ptr59, i32** %pix, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.116, %if.end.49
  %52 = load i32, i32* %col, align 4
  %53 = load i32, i32* %width.addr, align 4
  %cmp60 = icmp slt i32 %52, %53
  br i1 %cmp60, label %for.body, label %for.end.118

for.body:                                         ; preds = %for.cond
  %54 = load i8*, i8** %src, align 8
  %55 = load i32, i32* %col, align 4
  %56 = load i32, i32* %x1.addr, align 4
  %add62 = add nsw i32 %55, %56
  %57 = load i32, i32* %y1.addr, align 4
  %58 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %src_rgn, i8* %54, i32 %add62, i32 %57, i32 %58)
  %59 = load i32, i32* %has_alpha, align 4
  %tobool63 = icmp ne i32 %59, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.body
  %60 = load i8*, i8** %src, align 8
  %61 = load i32, i32* %height.addr, align 4
  %62 = load i32, i32* %bytes, align 4
  call void @multiply_alpha(i8* %60, i32 %61, i32 %62)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %for.body
  store i32 0, i32* %b, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc, %if.end.65
  %63 = load i32, i32* %b, align 4
  %64 = load i32, i32* %bytes, align 4
  %cmp67 = icmp slt i32 %63, %64
  br i1 %cmp67, label %for.body.69, label %for.end

for.body.69:                                      ; preds = %for.cond.66
  %65 = load i8*, i8** %src, align 8
  %66 = load i32, i32* %b, align 4
  %idx.ext70 = sext i32 %66 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %65, i64 %idx.ext70
  %67 = load i32*, i32** %rle, align 8
  %68 = load i32*, i32** %pix, align 8
  %69 = load i32, i32* %bytes, align 4
  %70 = load i32, i32* %height.addr, align 4
  %71 = load i32, i32* %length, align 4
  %call72 = call i32 @run_length_encode(i8* %add.ptr71, i32* %67, i32* %68, i32 %69, i32 %70, i32 %71, i32 1)
  store i32 %call72, i32* %same, align 4
  %72 = load i32, i32* %same, align 4
  %73 = load i32, i32* %height.addr, align 4
  %mul73 = mul nsw i32 3, %73
  %div74 = sdiv i32 %mul73, 4
  %cmp75 = icmp sgt i32 %72, %div74
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %for.body.69
  %74 = load i32*, i32** %rle, align 8
  %75 = load i32*, i32** %pix, align 8
  %76 = load i8*, i8** %dest, align 8
  %77 = load i32, i32* %b, align 4
  %idx.ext78 = sext i32 %77 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %76, i64 %idx.ext78
  %78 = load i32, i32* %height.addr, align 4
  %79 = load i32, i32* %length, align 4
  %80 = load i32, i32* %bytes, align 4
  %81 = load i32*, i32** %curve, align 8
  %82 = load i32, i32* %total, align 4
  %83 = load i32*, i32** %sum, align 8
  call void @do_encoded_lre(i32* %74, i32* %75, i8* %add.ptr79, i32 %78, i32 %79, i32 %80, i32* %81, i32 %82, i32* %83)
  br label %if.end.82

if.else:                                          ; preds = %for.body.69
  %84 = load i32*, i32** %pix, align 8
  %85 = load i8*, i8** %dest, align 8
  %86 = load i32, i32* %b, align 4
  %idx.ext80 = sext i32 %86 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %85, i64 %idx.ext80
  %87 = load i32, i32* %height.addr, align 4
  %88 = load i32, i32* %length, align 4
  %89 = load i32, i32* %bytes, align 4
  %90 = load i32*, i32** %curve, align 8
  %91 = load i32, i32* %total, align 4
  call void @do_full_lre(i32* %84, i8* %add.ptr81, i32 %87, i32 %88, i32 %89, i32* %90, i32 %91)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.77
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %92 = load i32, i32* %b, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.66

for.end:                                          ; preds = %for.cond.66
  %93 = load i32, i32* %has_alpha, align 4
  %tobool83 = icmp ne i32 %93, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.end
  %94 = load i8*, i8** %dest, align 8
  %95 = load i32, i32* %height.addr, align 4
  %96 = load i32, i32* %bytes, align 4
  call void @separate_alpha(i8* %94, i32 %95, i32 %96)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %for.end
  %97 = load i32, i32* %direct, align 4
  %tobool86 = icmp ne i32 %97, 0
  br i1 %tobool86, label %if.then.87, label %if.else.98

if.then.87:                                       ; preds = %if.end.85
  %98 = load i8*, i8** %dest, align 8
  %99 = load i32, i32* %col, align 4
  %100 = load i32, i32* %x1.addr, align 4
  %add88 = add nsw i32 %99, %100
  %101 = load i32, i32* %y1.addr, align 4
  %102 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %dest_rgn, i8* %98, i32 %add88, i32 %101, i32 %102)
  %103 = load i32, i32* %height.addr, align 4
  %conv89 = sitofp i32 %103 to double
  %104 = load double, double* %vert.addr, align 8
  %mul90 = fmul double %conv89, %104
  %105 = load double, double* %progress, align 8
  %add91 = fadd double %105, %mul90
  store double %add91, double* %progress, align 8
  %106 = load i32, i32* %col, align 4
  %107 = load i32, i32* %progress_step, align 4
  %rem = srem i32 %106, %107
  %cmp92 = icmp eq i32 %rem, 0
  br i1 %cmp92, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.then.87
  %108 = load double, double* %progress, align 8
  %109 = load double, double* %max_progress, align 8
  %div95 = fdiv double %108, %109
  %call96 = call i32 @gimp_progress_update(double %div95)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.then.87
  br label %if.end.115

if.else.98:                                       ; preds = %if.end.85
  store i32 0, i32* %row, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.112, %if.else.98
  %110 = load i32, i32* %row, align 4
  %111 = load i32, i32* %height.addr, align 4
  %cmp100 = icmp slt i32 %110, %111
  br i1 %cmp100, label %for.body.102, label %for.end.114

for.body.102:                                     ; preds = %for.cond.99
  %112 = load i8*, i8** %preview_buffer.addr, align 8
  %113 = load i32, i32* %row, align 4
  %114 = load i32, i32* %width.addr, align 4
  %mul103 = mul nsw i32 %113, %114
  %115 = load i32, i32* %col, align 4
  %add104 = add nsw i32 %mul103, %115
  %116 = load i32, i32* %bytes, align 4
  %mul105 = mul nsw i32 %add104, %116
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %112, i64 %idx.ext106
  %117 = load i8*, i8** %dest, align 8
  %118 = load i32, i32* %row, align 4
  %119 = load i32, i32* %bytes, align 4
  %mul108 = mul nsw i32 %118, %119
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %117, i64 %idx.ext109
  %120 = load i32, i32* %bytes, align 4
  %conv111 = sext i32 %120 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr107, i8* %add.ptr110, i64 %conv111, i32 1, i1 false)
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.102
  %121 = load i32, i32* %row, align 4
  %inc113 = add nsw i32 %121, 1
  store i32 %inc113, i32* %row, align 4
  br label %for.cond.99

for.end.114:                                      ; preds = %for.cond.99
  br label %if.end.115

if.end.115:                                       ; preds = %for.end.114, %if.end.97
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %122 = load i32, i32* %col, align 4
  %inc117 = add nsw i32 %122, 1
  store i32 %inc117, i32* %col, align 4
  br label %for.cond

for.end.118:                                      ; preds = %for.cond
  %123 = load i32*, i32** %rle, align 8
  %124 = load i32, i32* %length, align 4
  %idx.ext119 = sext i32 %124 to i64
  %idx.neg = sub i64 0, %idx.ext119
  %add.ptr120 = getelementptr inbounds i32, i32* %123, i64 %idx.neg
  %125 = bitcast i32* %add.ptr120 to i8*
  call void @g_free(i8* %125)
  %126 = load i32*, i32** %pix, align 8
  %127 = load i32, i32* %length, align 4
  %idx.ext121 = sext i32 %127 to i64
  %idx.neg122 = sub i64 0, %idx.ext121
  %add.ptr123 = getelementptr inbounds i32, i32* %126, i64 %idx.neg122
  %128 = bitcast i32* %add.ptr123 to i8*
  call void @g_free(i8* %128)
  %129 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %130 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width124 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %130, i32 0, i32 1
  %131 = load i32, i32* %width124, align 4
  %132 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height125 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %132, i32 0, i32 2
  %133 = load i32, i32* %height125, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %129, i32 0, i32 0, i32 %131, i32 %133, i32 0, i32 1)
  br label %if.end.130

if.else.126:                                      ; preds = %cond.end.34
  %134 = load i32, i32* %direct, align 4
  %tobool127 = icmp ne i32 %134, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %if.else.126
  %135 = load i8*, i8** %preview_buffer.addr, align 8
  %136 = load i32, i32* %x1.addr, align 4
  %137 = load i32, i32* %y1.addr, align 4
  %138 = load i32, i32* %width.addr, align 4
  %139 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %135, i32 %136, i32 %137, i32 %138, i32 %139)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.else.126
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %for.end.118
  %140 = load double, double* %horz.addr, align 8
  %cmp131 = fcmp ogt double %140, 0.000000e+00
  br i1 %cmp131, label %if.then.133, label %if.end.242

if.then.133:                                      ; preds = %if.end.130
  store i32* null, i32** %rle134, align 8
  store i32* null, i32** %pix135, align 8
  %141 = load i32, i32* %height.addr, align 4
  %div136 = sdiv i32 %141, 16
  store i32 %div136, i32* %progress_step, align 4
  %142 = load i32, i32* %progress_step, align 4
  %cmp137 = icmp slt i32 %142, 5
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.then.133
  store i32 5, i32* %progress_step, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %if.then.133
  %143 = load double, double* %horz.addr, align 8
  %call141 = call double @fabs(double %143) #7
  %add142 = fadd double %call141, 1.000000e+00
  store double %add142, double* %horz.addr, align 8
  %144 = load double, double* %horz.addr, align 8
  %145 = load double, double* %vert.addr, align 8
  %cmp143 = fcmp une double %144, %145
  br i1 %cmp143, label %if.then.145, label %if.end.156

if.then.145:                                      ; preds = %if.end.140
  %146 = load double, double* %horz.addr, align 8
  %147 = load double, double* %horz.addr, align 8
  %mul146 = fmul double %146, %147
  %sub147 = fsub double -0.000000e+00, %mul146
  %call148 = call double @log(double 0x3F70101010101010) #5
  %mul149 = fmul double 2.000000e+00, %call148
  %div150 = fdiv double %sub147, %mul149
  %call151 = call double @sqrt(double %div150) #5
  store double %call151, double* %std_dev, align 8
  %148 = load i32*, i32** %curve, align 8
  %cmp152 = icmp ne i32* %148, null
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.then.145
  %149 = load i32*, i32** %curve, align 8
  %150 = load i32, i32* %length, align 4
  %151 = load i32*, i32** %sum, align 8
  call void @free_rle_curve(i32* %149, i32 %150, i32* %151)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.then.145
  %152 = load double, double* %std_dev, align 8
  call void @make_rle_curve(double %152, i32** %curve, i32* %length, i32** %sum, i32* %total)
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.140
  %153 = load i32, i32* %width.addr, align 4
  %154 = load i32, i32* %length, align 4
  %mul157 = mul nsw i32 2, %154
  %add158 = add nsw i32 %153, %mul157
  %conv159 = sext i32 %add158 to i64
  %call160 = call noalias i8* @g_malloc_n(i64 %conv159, i64 4)
  %155 = bitcast i8* %call160 to i32*
  store i32* %155, i32** %rle134, align 8
  %156 = load i32, i32* %length, align 4
  %157 = load i32*, i32** %rle134, align 8
  %idx.ext161 = sext i32 %156 to i64
  %add.ptr162 = getelementptr inbounds i32, i32* %157, i64 %idx.ext161
  store i32* %add.ptr162, i32** %rle134, align 8
  %158 = load i32, i32* %width.addr, align 4
  %159 = load i32, i32* %length, align 4
  %mul163 = mul nsw i32 2, %159
  %add164 = add nsw i32 %158, %mul163
  %conv165 = sext i32 %add164 to i64
  %call166 = call noalias i8* @g_malloc_n(i64 %conv165, i64 4)
  %160 = bitcast i8* %call166 to i32*
  store i32* %160, i32** %pix135, align 8
  %161 = load i32, i32* %length, align 4
  %162 = load i32*, i32** %pix135, align 8
  %idx.ext167 = sext i32 %161 to i64
  %add.ptr168 = getelementptr inbounds i32, i32* %162, i64 %idx.ext167
  store i32* %add.ptr168, i32** %pix135, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.233, %if.end.156
  %163 = load i32, i32* %row, align 4
  %164 = load i32, i32* %height.addr, align 4
  %cmp170 = icmp slt i32 %163, %164
  br i1 %cmp170, label %for.body.172, label %for.end.235

for.body.172:                                     ; preds = %for.cond.169
  %165 = load i32, i32* %direct, align 4
  %tobool173 = icmp ne i32 %165, 0
  br i1 %tobool173, label %if.then.174, label %if.else.176

if.then.174:                                      ; preds = %for.body.172
  %166 = load i8*, i8** %src, align 8
  %167 = load i32, i32* %x1.addr, align 4
  %168 = load i32, i32* %row, align 4
  %169 = load i32, i32* %y1.addr, align 4
  %add175 = add nsw i32 %168, %169
  %170 = load i32, i32* %width.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %166, i32 %167, i32 %add175, i32 %170)
  br label %if.end.183

if.else.176:                                      ; preds = %for.body.172
  %171 = load i8*, i8** %src, align 8
  %172 = load i8*, i8** %preview_buffer.addr, align 8
  %173 = load i32, i32* %row, align 4
  %174 = load i32, i32* %width.addr, align 4
  %mul177 = mul nsw i32 %173, %174
  %175 = load i32, i32* %bytes, align 4
  %mul178 = mul nsw i32 %mul177, %175
  %idx.ext179 = sext i32 %mul178 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %172, i64 %idx.ext179
  %176 = load i32, i32* %width.addr, align 4
  %177 = load i32, i32* %bytes, align 4
  %mul181 = mul nsw i32 %176, %177
  %conv182 = sext i32 %mul181 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %add.ptr180, i64 %conv182, i32 1, i1 false)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.176, %if.then.174
  %178 = load i32, i32* %has_alpha, align 4
  %tobool184 = icmp ne i32 %178, 0
  br i1 %tobool184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.183
  %179 = load i8*, i8** %src, align 8
  %180 = load i32, i32* %width.addr, align 4
  %181 = load i32, i32* %bytes, align 4
  call void @multiply_alpha(i8* %179, i32 %180, i32 %181)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.end.183
  store i32 0, i32* %b, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.206, %if.end.186
  %182 = load i32, i32* %b, align 4
  %183 = load i32, i32* %bytes, align 4
  %cmp188 = icmp slt i32 %182, %183
  br i1 %cmp188, label %for.body.190, label %for.end.208

for.body.190:                                     ; preds = %for.cond.187
  %184 = load i8*, i8** %src, align 8
  %185 = load i32, i32* %b, align 4
  %idx.ext192 = sext i32 %185 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %184, i64 %idx.ext192
  %186 = load i32*, i32** %rle134, align 8
  %187 = load i32*, i32** %pix135, align 8
  %188 = load i32, i32* %bytes, align 4
  %189 = load i32, i32* %width.addr, align 4
  %190 = load i32, i32* %length, align 4
  %call194 = call i32 @run_length_encode(i8* %add.ptr193, i32* %186, i32* %187, i32 %188, i32 %189, i32 %190, i32 1)
  store i32 %call194, i32* %same191, align 4
  %191 = load i32, i32* %same191, align 4
  %192 = load i32, i32* %width.addr, align 4
  %mul195 = mul nsw i32 3, %192
  %div196 = sdiv i32 %mul195, 4
  %cmp197 = icmp sgt i32 %191, %div196
  br i1 %cmp197, label %if.then.199, label %if.else.202

if.then.199:                                      ; preds = %for.body.190
  %193 = load i32*, i32** %rle134, align 8
  %194 = load i32*, i32** %pix135, align 8
  %195 = load i8*, i8** %dest, align 8
  %196 = load i32, i32* %b, align 4
  %idx.ext200 = sext i32 %196 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %195, i64 %idx.ext200
  %197 = load i32, i32* %width.addr, align 4
  %198 = load i32, i32* %length, align 4
  %199 = load i32, i32* %bytes, align 4
  %200 = load i32*, i32** %curve, align 8
  %201 = load i32, i32* %total, align 4
  %202 = load i32*, i32** %sum, align 8
  call void @do_encoded_lre(i32* %193, i32* %194, i8* %add.ptr201, i32 %197, i32 %198, i32 %199, i32* %200, i32 %201, i32* %202)
  br label %if.end.205

if.else.202:                                      ; preds = %for.body.190
  %203 = load i32*, i32** %pix135, align 8
  %204 = load i8*, i8** %dest, align 8
  %205 = load i32, i32* %b, align 4
  %idx.ext203 = sext i32 %205 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %204, i64 %idx.ext203
  %206 = load i32, i32* %width.addr, align 4
  %207 = load i32, i32* %length, align 4
  %208 = load i32, i32* %bytes, align 4
  %209 = load i32*, i32** %curve, align 8
  %210 = load i32, i32* %total, align 4
  call void @do_full_lre(i32* %203, i8* %add.ptr204, i32 %206, i32 %207, i32 %208, i32* %209, i32 %210)
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.202, %if.then.199
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.205
  %211 = load i32, i32* %b, align 4
  %inc207 = add nsw i32 %211, 1
  store i32 %inc207, i32* %b, align 4
  br label %for.cond.187

for.end.208:                                      ; preds = %for.cond.187
  %212 = load i32, i32* %has_alpha, align 4
  %tobool209 = icmp ne i32 %212, 0
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %for.end.208
  %213 = load i8*, i8** %dest, align 8
  %214 = load i32, i32* %width.addr, align 4
  %215 = load i32, i32* %bytes, align 4
  call void @separate_alpha(i8* %213, i32 %214, i32 %215)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %for.end.208
  %216 = load i32, i32* %direct, align 4
  %tobool212 = icmp ne i32 %216, 0
  br i1 %tobool212, label %if.then.213, label %if.else.225

if.then.213:                                      ; preds = %if.end.211
  %217 = load i8*, i8** %dest, align 8
  %218 = load i32, i32* %x1.addr, align 4
  %219 = load i32, i32* %row, align 4
  %220 = load i32, i32* %y1.addr, align 4
  %add214 = add nsw i32 %219, %220
  %221 = load i32, i32* %width.addr, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %dest_rgn, i8* %217, i32 %218, i32 %add214, i32 %221)
  %222 = load i32, i32* %width.addr, align 4
  %conv215 = sitofp i32 %222 to double
  %223 = load double, double* %horz.addr, align 8
  %mul216 = fmul double %conv215, %223
  %224 = load double, double* %progress, align 8
  %add217 = fadd double %224, %mul216
  store double %add217, double* %progress, align 8
  %225 = load i32, i32* %row, align 4
  %226 = load i32, i32* %progress_step, align 4
  %rem218 = srem i32 %225, %226
  %cmp219 = icmp eq i32 %rem218, 0
  br i1 %cmp219, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %if.then.213
  %227 = load double, double* %progress, align 8
  %228 = load double, double* %max_progress, align 8
  %div222 = fdiv double %227, %228
  %call223 = call i32 @gimp_progress_update(double %div222)
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.221, %if.then.213
  br label %if.end.232

if.else.225:                                      ; preds = %if.end.211
  %229 = load i8*, i8** %preview_buffer.addr, align 8
  %230 = load i32, i32* %row, align 4
  %231 = load i32, i32* %width.addr, align 4
  %mul226 = mul nsw i32 %230, %231
  %232 = load i32, i32* %bytes, align 4
  %mul227 = mul nsw i32 %mul226, %232
  %idx.ext228 = sext i32 %mul227 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %229, i64 %idx.ext228
  %233 = load i8*, i8** %dest, align 8
  %234 = load i32, i32* %width.addr, align 4
  %235 = load i32, i32* %bytes, align 4
  %mul230 = mul nsw i32 %234, %235
  %conv231 = sext i32 %mul230 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr229, i8* %233, i64 %conv231, i32 1, i1 false)
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.225, %if.end.224
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %236 = load i32, i32* %row, align 4
  %inc234 = add nsw i32 %236, 1
  store i32 %inc234, i32* %row, align 4
  br label %for.cond.169

for.end.235:                                      ; preds = %for.cond.169
  %237 = load i32*, i32** %rle134, align 8
  %238 = load i32, i32* %length, align 4
  %idx.ext236 = sext i32 %238 to i64
  %idx.neg237 = sub i64 0, %idx.ext236
  %add.ptr238 = getelementptr inbounds i32, i32* %237, i64 %idx.neg237
  %239 = bitcast i32* %add.ptr238 to i8*
  call void @g_free(i8* %239)
  %240 = load i32*, i32** %pix135, align 8
  %241 = load i32, i32* %length, align 4
  %idx.ext239 = sext i32 %241 to i64
  %idx.neg240 = sub i64 0, %idx.ext239
  %add.ptr241 = getelementptr inbounds i32, i32* %240, i64 %idx.neg240
  %242 = bitcast i32* %add.ptr241 to i8*
  call void @g_free(i8* %242)
  br label %if.end.242

if.end.242:                                       ; preds = %for.end.235, %if.end.130
  %243 = load i32*, i32** %curve, align 8
  %tobool243 = icmp ne i32* %243, null
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.242
  %244 = load i32*, i32** %curve, align 8
  %245 = load i32, i32* %length, align 4
  %246 = load i32*, i32** %sum, align 8
  call void @free_rle_curve(i32* %244, i32 %245, i32* %246)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %if.end.242
  %247 = load i8*, i8** %src, align 8
  call void @g_free(i8* %247)
  %248 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %248)
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define internal void @find_iir_constants(double* %n_p, double* %n_m, double* %d_p, double* %d_m, double* %bd_p, double* %bd_m, double %std_dev) #0 {
entry:
  %n_p.addr = alloca double*, align 8
  %n_m.addr = alloca double*, align 8
  %d_p.addr = alloca double*, align 8
  %d_m.addr = alloca double*, align 8
  %bd_p.addr = alloca double*, align 8
  %bd_m.addr = alloca double*, align 8
  %std_dev.addr = alloca double, align 8
  %div = alloca double, align 8
  %x0 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %x4 = alloca double, align 8
  %x5 = alloca double, align 8
  %x6 = alloca double, align 8
  %x7 = alloca double, align 8
  %i = alloca i32, align 4
  %sum_n_p = alloca double, align 8
  %sum_n_m = alloca double, align 8
  %sum_d = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store double* %n_p, double** %n_p.addr, align 8
  store double* %n_m, double** %n_m.addr, align 8
  store double* %d_p, double** %d_p.addr, align 8
  store double* %d_m, double** %d_m.addr, align 8
  store double* %bd_p, double** %bd_p.addr, align 8
  store double* %bd_m, double** %bd_m.addr, align 8
  store double %std_dev, double* %std_dev.addr, align 8
  %call = call double @sqrt(double 0x401921FB54442D18) #5
  %0 = load double, double* %std_dev.addr, align 8
  %mul = fmul double %call, %0
  store double %mul, double* %div, align 8
  %1 = load double, double* %std_dev.addr, align 8
  %div1 = fdiv double -1.783000e+00, %1
  store double %div1, double* %x0, align 8
  %2 = load double, double* %std_dev.addr, align 8
  %div2 = fdiv double -1.723000e+00, %2
  store double %div2, double* %x1, align 8
  %3 = load double, double* %std_dev.addr, align 8
  %div3 = fdiv double 6.318000e-01, %3
  store double %div3, double* %x2, align 8
  %4 = load double, double* %std_dev.addr, align 8
  %div4 = fdiv double 1.997000e+00, %4
  store double %div4, double* %x3, align 8
  %5 = load double, double* %div, align 8
  %div5 = fdiv double 1.680300e+00, %5
  store double %div5, double* %x4, align 8
  %6 = load double, double* %div, align 8
  %div6 = fdiv double 3.735000e+00, %6
  store double %div6, double* %x5, align 8
  %7 = load double, double* %div, align 8
  %div7 = fdiv double -6.803000e-01, %7
  store double %div7, double* %x6, align 8
  %8 = load double, double* %div, align 8
  %div8 = fdiv double -2.598000e-01, %8
  store double %div8, double* %x7, align 8
  %9 = load double, double* %x4, align 8
  %10 = load double, double* %x6, align 8
  %add = fadd double %9, %10
  %11 = load double*, double** %n_p.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 0
  store double %add, double* %arrayidx, align 8
  %12 = load double, double* %x1, align 8
  %call9 = call double @exp(double %12) #5
  %13 = load double, double* %x7, align 8
  %14 = load double, double* %x3, align 8
  %call10 = call double @sin(double %14) #5
  %mul11 = fmul double %13, %call10
  %15 = load double, double* %x6, align 8
  %16 = load double, double* %x4, align 8
  %mul12 = fmul double 2.000000e+00, %16
  %add13 = fadd double %15, %mul12
  %17 = load double, double* %x3, align 8
  %call14 = call double @cos(double %17) #5
  %mul15 = fmul double %add13, %call14
  %sub = fsub double %mul11, %mul15
  %mul16 = fmul double %call9, %sub
  %18 = load double, double* %x0, align 8
  %call17 = call double @exp(double %18) #5
  %19 = load double, double* %x5, align 8
  %20 = load double, double* %x2, align 8
  %call18 = call double @sin(double %20) #5
  %mul19 = fmul double %19, %call18
  %21 = load double, double* %x6, align 8
  %mul20 = fmul double 2.000000e+00, %21
  %22 = load double, double* %x4, align 8
  %add21 = fadd double %mul20, %22
  %23 = load double, double* %x2, align 8
  %call22 = call double @cos(double %23) #5
  %mul23 = fmul double %add21, %call22
  %sub24 = fsub double %mul19, %mul23
  %mul25 = fmul double %call17, %sub24
  %add26 = fadd double %mul16, %mul25
  %24 = load double*, double** %n_p.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %24, i64 1
  store double %add26, double* %arrayidx27, align 8
  %25 = load double, double* %x0, align 8
  %26 = load double, double* %x1, align 8
  %add28 = fadd double %25, %26
  %call29 = call double @exp(double %add28) #5
  %mul30 = fmul double 2.000000e+00, %call29
  %27 = load double, double* %x4, align 8
  %28 = load double, double* %x6, align 8
  %add31 = fadd double %27, %28
  %29 = load double, double* %x3, align 8
  %call32 = call double @cos(double %29) #5
  %mul33 = fmul double %add31, %call32
  %30 = load double, double* %x2, align 8
  %call34 = call double @cos(double %30) #5
  %mul35 = fmul double %mul33, %call34
  %31 = load double, double* %x5, align 8
  %32 = load double, double* %x3, align 8
  %call36 = call double @cos(double %32) #5
  %mul37 = fmul double %31, %call36
  %33 = load double, double* %x2, align 8
  %call38 = call double @sin(double %33) #5
  %mul39 = fmul double %mul37, %call38
  %sub40 = fsub double %mul35, %mul39
  %34 = load double, double* %x7, align 8
  %35 = load double, double* %x2, align 8
  %call41 = call double @cos(double %35) #5
  %mul42 = fmul double %34, %call41
  %36 = load double, double* %x3, align 8
  %call43 = call double @sin(double %36) #5
  %mul44 = fmul double %mul42, %call43
  %sub45 = fsub double %sub40, %mul44
  %mul46 = fmul double %mul30, %sub45
  %37 = load double, double* %x6, align 8
  %38 = load double, double* %x0, align 8
  %mul47 = fmul double 2.000000e+00, %38
  %call48 = call double @exp(double %mul47) #5
  %mul49 = fmul double %37, %call48
  %add50 = fadd double %mul46, %mul49
  %39 = load double, double* %x4, align 8
  %40 = load double, double* %x1, align 8
  %mul51 = fmul double 2.000000e+00, %40
  %call52 = call double @exp(double %mul51) #5
  %mul53 = fmul double %39, %call52
  %add54 = fadd double %add50, %mul53
  %41 = load double*, double** %n_p.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %41, i64 2
  store double %add54, double* %arrayidx55, align 8
  %42 = load double, double* %x1, align 8
  %43 = load double, double* %x0, align 8
  %mul56 = fmul double 2.000000e+00, %43
  %add57 = fadd double %42, %mul56
  %call58 = call double @exp(double %add57) #5
  %44 = load double, double* %x7, align 8
  %45 = load double, double* %x3, align 8
  %call59 = call double @sin(double %45) #5
  %mul60 = fmul double %44, %call59
  %46 = load double, double* %x6, align 8
  %47 = load double, double* %x3, align 8
  %call61 = call double @cos(double %47) #5
  %mul62 = fmul double %46, %call61
  %sub63 = fsub double %mul60, %mul62
  %mul64 = fmul double %call58, %sub63
  %48 = load double, double* %x0, align 8
  %49 = load double, double* %x1, align 8
  %mul65 = fmul double 2.000000e+00, %49
  %add66 = fadd double %48, %mul65
  %call67 = call double @exp(double %add66) #5
  %50 = load double, double* %x5, align 8
  %51 = load double, double* %x2, align 8
  %call68 = call double @sin(double %51) #5
  %mul69 = fmul double %50, %call68
  %52 = load double, double* %x4, align 8
  %53 = load double, double* %x2, align 8
  %call70 = call double @cos(double %53) #5
  %mul71 = fmul double %52, %call70
  %sub72 = fsub double %mul69, %mul71
  %mul73 = fmul double %call67, %sub72
  %add74 = fadd double %mul64, %mul73
  %54 = load double*, double** %n_p.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %54, i64 3
  store double %add74, double* %arrayidx75, align 8
  %55 = load double*, double** %n_p.addr, align 8
  %arrayidx76 = getelementptr inbounds double, double* %55, i64 4
  store double 0.000000e+00, double* %arrayidx76, align 8
  %56 = load double*, double** %d_p.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %56, i64 0
  store double 0.000000e+00, double* %arrayidx77, align 8
  %57 = load double, double* %x1, align 8
  %call78 = call double @exp(double %57) #5
  %mul79 = fmul double -2.000000e+00, %call78
  %58 = load double, double* %x3, align 8
  %call80 = call double @cos(double %58) #5
  %mul81 = fmul double %mul79, %call80
  %59 = load double, double* %x0, align 8
  %call82 = call double @exp(double %59) #5
  %mul83 = fmul double 2.000000e+00, %call82
  %60 = load double, double* %x2, align 8
  %call84 = call double @cos(double %60) #5
  %mul85 = fmul double %mul83, %call84
  %sub86 = fsub double %mul81, %mul85
  %61 = load double*, double** %d_p.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %61, i64 1
  store double %sub86, double* %arrayidx87, align 8
  %62 = load double, double* %x3, align 8
  %call88 = call double @cos(double %62) #5
  %mul89 = fmul double 4.000000e+00, %call88
  %63 = load double, double* %x2, align 8
  %call90 = call double @cos(double %63) #5
  %mul91 = fmul double %mul89, %call90
  %64 = load double, double* %x0, align 8
  %65 = load double, double* %x1, align 8
  %add92 = fadd double %64, %65
  %call93 = call double @exp(double %add92) #5
  %mul94 = fmul double %mul91, %call93
  %66 = load double, double* %x1, align 8
  %mul95 = fmul double 2.000000e+00, %66
  %call96 = call double @exp(double %mul95) #5
  %add97 = fadd double %mul94, %call96
  %67 = load double, double* %x0, align 8
  %mul98 = fmul double 2.000000e+00, %67
  %call99 = call double @exp(double %mul98) #5
  %add100 = fadd double %add97, %call99
  %68 = load double*, double** %d_p.addr, align 8
  %arrayidx101 = getelementptr inbounds double, double* %68, i64 2
  store double %add100, double* %arrayidx101, align 8
  %69 = load double, double* %x2, align 8
  %call102 = call double @cos(double %69) #5
  %mul103 = fmul double -2.000000e+00, %call102
  %70 = load double, double* %x0, align 8
  %71 = load double, double* %x1, align 8
  %mul104 = fmul double 2.000000e+00, %71
  %add105 = fadd double %70, %mul104
  %call106 = call double @exp(double %add105) #5
  %mul107 = fmul double %mul103, %call106
  %72 = load double, double* %x3, align 8
  %call108 = call double @cos(double %72) #5
  %mul109 = fmul double 2.000000e+00, %call108
  %73 = load double, double* %x1, align 8
  %74 = load double, double* %x0, align 8
  %mul110 = fmul double 2.000000e+00, %74
  %add111 = fadd double %73, %mul110
  %call112 = call double @exp(double %add111) #5
  %mul113 = fmul double %mul109, %call112
  %sub114 = fsub double %mul107, %mul113
  %75 = load double*, double** %d_p.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %75, i64 3
  store double %sub114, double* %arrayidx115, align 8
  %76 = load double, double* %x0, align 8
  %mul116 = fmul double 2.000000e+00, %76
  %77 = load double, double* %x1, align 8
  %mul117 = fmul double 2.000000e+00, %77
  %add118 = fadd double %mul116, %mul117
  %call119 = call double @exp(double %add118) #5
  %78 = load double*, double** %d_p.addr, align 8
  %arrayidx120 = getelementptr inbounds double, double* %78, i64 4
  store double %call119, double* %arrayidx120, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %79 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %79, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %i, align 4
  %idxprom = sext i32 %80 to i64
  %81 = load double*, double** %d_p.addr, align 8
  %arrayidx121 = getelementptr inbounds double, double* %81, i64 %idxprom
  %82 = load double, double* %arrayidx121, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %83 to i64
  %84 = load double*, double** %d_m.addr, align 8
  %arrayidx123 = getelementptr inbounds double, double* %84, i64 %idxprom122
  store double %82, double* %arrayidx123, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %85 = load i32, i32* %i, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %86 = load double*, double** %n_m.addr, align 8
  %arrayidx124 = getelementptr inbounds double, double* %86, i64 0
  store double 0.000000e+00, double* %arrayidx124, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.137, %for.end
  %87 = load i32, i32* %i, align 4
  %cmp126 = icmp sle i32 %87, 4
  br i1 %cmp126, label %for.body.127, label %for.end.139

for.body.127:                                     ; preds = %for.cond.125
  %88 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %88 to i64
  %89 = load double*, double** %n_p.addr, align 8
  %arrayidx129 = getelementptr inbounds double, double* %89, i64 %idxprom128
  %90 = load double, double* %arrayidx129, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %91 to i64
  %92 = load double*, double** %d_p.addr, align 8
  %arrayidx131 = getelementptr inbounds double, double* %92, i64 %idxprom130
  %93 = load double, double* %arrayidx131, align 8
  %94 = load double*, double** %n_p.addr, align 8
  %arrayidx132 = getelementptr inbounds double, double* %94, i64 0
  %95 = load double, double* %arrayidx132, align 8
  %mul133 = fmul double %93, %95
  %sub134 = fsub double %90, %mul133
  %96 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %96 to i64
  %97 = load double*, double** %n_m.addr, align 8
  %arrayidx136 = getelementptr inbounds double, double* %97, i64 %idxprom135
  store double %sub134, double* %arrayidx136, align 8
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.127
  %98 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %98, 1
  store i32 %inc138, i32* %i, align 4
  br label %for.cond.125

for.end.139:                                      ; preds = %for.cond.125
  store double 0.000000e+00, double* %sum_n_p, align 8
  store double 0.000000e+00, double* %sum_n_m, align 8
  store double 0.000000e+00, double* %sum_d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.152, %for.end.139
  %99 = load i32, i32* %i, align 4
  %cmp141 = icmp sle i32 %99, 4
  br i1 %cmp141, label %for.body.142, label %for.end.154

for.body.142:                                     ; preds = %for.cond.140
  %100 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %100 to i64
  %101 = load double*, double** %n_p.addr, align 8
  %arrayidx144 = getelementptr inbounds double, double* %101, i64 %idxprom143
  %102 = load double, double* %arrayidx144, align 8
  %103 = load double, double* %sum_n_p, align 8
  %add145 = fadd double %103, %102
  store double %add145, double* %sum_n_p, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %104 to i64
  %105 = load double*, double** %n_m.addr, align 8
  %arrayidx147 = getelementptr inbounds double, double* %105, i64 %idxprom146
  %106 = load double, double* %arrayidx147, align 8
  %107 = load double, double* %sum_n_m, align 8
  %add148 = fadd double %107, %106
  store double %add148, double* %sum_n_m, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %108 to i64
  %109 = load double*, double** %d_p.addr, align 8
  %arrayidx150 = getelementptr inbounds double, double* %109, i64 %idxprom149
  %110 = load double, double* %arrayidx150, align 8
  %111 = load double, double* %sum_d, align 8
  %add151 = fadd double %111, %110
  store double %add151, double* %sum_d, align 8
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.142
  %112 = load i32, i32* %i, align 4
  %inc153 = add nsw i32 %112, 1
  store i32 %inc153, i32* %i, align 4
  br label %for.cond.140

for.end.154:                                      ; preds = %for.cond.140
  %113 = load double, double* %sum_n_p, align 8
  %114 = load double, double* %sum_d, align 8
  %add155 = fadd double 1.000000e+00, %114
  %div156 = fdiv double %113, %add155
  store double %div156, double* %a, align 8
  %115 = load double, double* %sum_n_m, align 8
  %116 = load double, double* %sum_d, align 8
  %add157 = fadd double 1.000000e+00, %116
  %div158 = fdiv double %115, %add157
  store double %div158, double* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.172, %for.end.154
  %117 = load i32, i32* %i, align 4
  %cmp160 = icmp sle i32 %117, 4
  br i1 %cmp160, label %for.body.161, label %for.end.174

for.body.161:                                     ; preds = %for.cond.159
  %118 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %118 to i64
  %119 = load double*, double** %d_p.addr, align 8
  %arrayidx163 = getelementptr inbounds double, double* %119, i64 %idxprom162
  %120 = load double, double* %arrayidx163, align 8
  %121 = load double, double* %a, align 8
  %mul164 = fmul double %120, %121
  %122 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %122 to i64
  %123 = load double*, double** %bd_p.addr, align 8
  %arrayidx166 = getelementptr inbounds double, double* %123, i64 %idxprom165
  store double %mul164, double* %arrayidx166, align 8
  %124 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %124 to i64
  %125 = load double*, double** %d_m.addr, align 8
  %arrayidx168 = getelementptr inbounds double, double* %125, i64 %idxprom167
  %126 = load double, double* %arrayidx168, align 8
  %127 = load double, double* %b, align 8
  %mul169 = fmul double %126, %127
  %128 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %128 to i64
  %129 = load double*, double** %bd_m.addr, align 8
  %arrayidx171 = getelementptr inbounds double, double* %129, i64 %idxprom170
  store double %mul169, double* %arrayidx171, align 8
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.161
  %130 = load i32, i32* %i, align 4
  %inc173 = add nsw i32 %130, 1
  store i32 %inc173, i32* %i, align 4
  br label %for.cond.159

for.end.174:                                      ; preds = %for.cond.159
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

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

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double %conv1, 0x3F70101010101010
  store double %mul, double* %alpha, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %bytes.addr, align 4
  %sub3 = sub nsw i32 %6, 1
  %cmp4 = icmp slt i32 %5, %sub3
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8*, i8** %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %conv10 = sitofp i32 %conv9 to double
  %10 = load double, double* %alpha, align 8
  %mul11 = fmul double %conv10, %10
  %add = fadd double %mul11, 5.000000e-01
  %conv12 = fptosi double %add to i32
  %conv13 = trunc i32 %conv12 to i8
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, i32* %i, align 4
  %15 = load i32, i32* %bytes.addr, align 4
  %16 = load i8*, i8** %buf.addr, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %buf.addr, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @transfer_pixels(double* %src1, double* %src2, i8* %dest, i32 %bytes, i32 %width) #0 {
entry:
  %src1.addr = alloca double*, align 8
  %src2.addr = alloca double*, align 8
  %dest.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %bend = alloca i32, align 4
  %sum = alloca double, align 8
  store double* %src1, double** %src1.addr, align 8
  store double* %src2, double** %src2.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %bend, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* %bend, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %src1.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %src1.addr, align 8
  %5 = load double, double* %4, align 8
  %6 = load double*, double** %src2.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr1, double** %src2.addr, align 8
  %7 = load double, double* %6, align 8
  %add = fadd double %5, %7
  store double %add, double* %sum, align 8
  %8 = load double, double* %sum, align 8
  %cmp2 = fcmp ogt double %8, 2.550000e+02
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store double 2.550000e+02, double* %sum, align 8
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %9 = load double, double* %sum, align 8
  %cmp3 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store double 0.000000e+00, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %10 = load double, double* %sum, align 8
  %conv = fptoui double %10 to i8
  %11 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %dest.addr, align 8
  store i8 %conv, i8* %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load i32, i32* %b, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %alpha, align 1
  %5 = load i8, i8* %alpha, align 1
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 255, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %6 = load i8, i8* %alpha, align 1
  %conv1 = zext i8 %6 to i32
  %conv2 = sitofp i32 %conv1 to double
  %div = fdiv double 2.550000e+02, %conv2
  store double %div, double* %recip_alpha, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %sw.default
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %bytes.addr, align 4
  %sub4 = sub nsw i32 %8, 1
  %cmp5 = icmp slt i32 %7, %sub4
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8*, i8** %buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %conv11 = sitofp i32 %conv10 to double
  %12 = load double, double* %recip_alpha, align 8
  %mul = fmul double %conv11, %12
  %add = fadd double %mul, 5.000000e-01
  %conv12 = fptosi double %add to i32
  store i32 %conv12, i32* %new_val, align 4
  %13 = load i32, i32* %new_val, align 4
  %cmp13 = icmp slt i32 255, %13
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.7
  br label %cond.end

cond.false:                                       ; preds = %for.body.7
  %14 = load i32, i32* %new_val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %14, %cond.false ]
  %conv15 = trunc i32 %cond to i8
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i8*, i8** %buf.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %idxprom16
  store i8 %conv15, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb
  br label %for.inc.18

for.inc.18:                                       ; preds = %sw.epilog
  %18 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* %i, align 4
  %19 = load i32, i32* %bytes.addr, align 4
  %20 = load i8*, i8** %buf.addr, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %buf.addr, align 8
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define internal void @make_rle_curve(double %sigma, i32** %p_curve, i32* %p_length, i32** %p_sum, i32* %p_total) #0 {
entry:
  %sigma.addr = alloca double, align 8
  %p_curve.addr = alloca i32**, align 8
  %p_length.addr = alloca i32*, align 8
  %p_sum.addr = alloca i32**, align 8
  %p_total.addr = alloca i32*, align 8
  %sigma2 = alloca double, align 8
  %l = alloca double, align 8
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %length = alloca i32, align 4
  %sum = alloca i32*, align 8
  %curve = alloca i32*, align 8
  store double %sigma, double* %sigma.addr, align 8
  store i32** %p_curve, i32*** %p_curve.addr, align 8
  store i32* %p_length, i32** %p_length.addr, align 8
  store i32** %p_sum, i32*** %p_sum.addr, align 8
  store i32* %p_total, i32** %p_total.addr, align 8
  %0 = load double, double* %sigma.addr, align 8
  %mul = fmul double 2.000000e+00, %0
  %1 = load double, double* %sigma.addr, align 8
  %mul1 = fmul double %mul, %1
  store double %mul1, double* %sigma2, align 8
  %2 = load double, double* %sigma2, align 8
  %sub = fsub double -0.000000e+00, %2
  %call = call double @log(double 0x3F70101010101010) #5
  %mul2 = fmul double %sub, %call
  %call3 = call double @sqrt(double %mul2) #5
  store double %call3, double* %l, align 8
  %3 = load double, double* %l, align 8
  %call4 = call double @ceil(double %3) #7
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
  store i32 %div, i32* %length, align 4
  %9 = load i32, i32* %length, align 4
  %10 = load i32*, i32** %curve, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %10, i64 %idx.ext
  store i32* %add.ptr, i32** %curve, align 8
  %11 = load i32*, i32** %curve, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 0
  store i32 255, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length, align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 %14, %15
  %sub12 = sub nsw i32 0, %mul11
  %conv13 = sitofp i32 %sub12 to double
  %16 = load double, double* %sigma2, align 8
  %div14 = fdiv double %conv13, %16
  %call15 = call double @exp(double %div14) #5
  %mul16 = fmul double %call15, 2.550000e+02
  %conv17 = fptosi double %mul16 to i32
  store i32 %conv17, i32* %temp, align 4
  %17 = load i32, i32* %temp, align 4
  %18 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 0, %18
  %idxprom = sext i32 %sub18 to i64
  %19 = load i32*, i32** %curve, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 %17, i32* %arrayidx19, align 4
  %20 = load i32, i32* %temp, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i32*, i32** %curve, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %22, i64 %idxprom20
  store i32 %20, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %length, align 4
  %mul22 = mul nsw i32 2, %24
  %add23 = add nsw i32 %mul22, 1
  %conv24 = sext i32 %add23 to i64
  %call25 = call noalias i8* @g_malloc_n(i64 %conv24, i64 4)
  %25 = bitcast i8* %call25 to i32*
  store i32* %25, i32** %sum, align 8
  %26 = load i32*, i32** %sum, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %arrayidx26, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.42, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %length, align 4
  %mul28 = mul nsw i32 %28, 2
  %cmp29 = icmp sle i32 %27, %mul28
  br i1 %cmp29, label %for.body.31, label %for.end.44

for.body.31:                                      ; preds = %for.cond.27
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %length, align 4
  %sub32 = sub nsw i32 %29, %30
  %sub33 = sub nsw i32 %sub32, 1
  %idxprom34 = sext i32 %sub33 to i64
  %31 = load i32*, i32** %curve, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %31, i64 %idxprom34
  %32 = load i32, i32* %arrayidx35, align 4
  %33 = load i32, i32* %i, align 4
  %sub36 = sub nsw i32 %33, 1
  %idxprom37 = sext i32 %sub36 to i64
  %34 = load i32*, i32** %sum, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %34, i64 %idxprom37
  %35 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %32, %35
  %36 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load i32*, i32** %sum, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %37, i64 %idxprom40
  store i32 %add39, i32* %arrayidx41, align 4
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.31
  %38 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %38, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.27

for.end.44:                                       ; preds = %for.cond.27
  %39 = load i32, i32* %length, align 4
  %40 = load i32*, i32** %sum, align 8
  %idx.ext45 = sext i32 %39 to i64
  %add.ptr46 = getelementptr inbounds i32, i32* %40, i64 %idx.ext45
  store i32* %add.ptr46, i32** %sum, align 8
  %41 = load i32, i32* %length, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load i32*, i32** %sum, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %42, i64 %idxprom47
  %43 = load i32, i32* %arrayidx48, align 4
  %44 = load i32, i32* %length, align 4
  %sub49 = sub nsw i32 0, %44
  %idxprom50 = sext i32 %sub49 to i64
  %45 = load i32*, i32** %sum, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %45, i64 %idxprom50
  %46 = load i32, i32* %arrayidx51, align 4
  %sub52 = sub nsw i32 %43, %46
  %47 = load i32*, i32** %p_total.addr, align 8
  store i32 %sub52, i32* %47, align 4
  %48 = load i32*, i32** %curve, align 8
  %49 = load i32**, i32*** %p_curve.addr, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32*, i32** %sum, align 8
  %51 = load i32**, i32*** %p_sum.addr, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* %length, align 4
  %53 = load i32*, i32** %p_length.addr, align 8
  store i32 %52, i32* %53, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @run_length_encode(i8* %src, i32* %rle, i32* %pix, i32 %dist, i32 %width, i32 %border, i32 %pack) #6 {
entry:
  %src.addr = alloca i8*, align 8
  %rle.addr = alloca i32*, align 8
  %pix.addr = alloca i32*, align 8
  %dist.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %border.addr = alloca i32, align 4
  %pack.addr = alloca i32, align 4
  %last = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %same = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32* %rle, i32** %rle.addr, align 8
  store i32* %pix, i32** %pix.addr, align 8
  store i32 %dist, i32* %dist.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %border, i32* %border.addr, align 4
  store i32 %pack, i32* %pack.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %width.addr, align 4
  store i32 %0, i32* %i, align 4
  store i32 0, i32* %same, align 4
  %1 = load i32, i32* %dist.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %2, 1
  %mul = mul nsw i32 %1, %sub
  %3 = load i8*, i8** %src.addr, align 8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %src.addr, align 8
  %4 = load i32, i32* %pack.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %border.addr, align 4
  %add = add nsw i32 %5, %6
  %sub1 = sub nsw i32 %add, 1
  %7 = load i32*, i32** %rle.addr, align 8
  %idx.ext2 = sext i32 %sub1 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %7, i64 %idx.ext2
  store i32* %add.ptr3, i32** %rle.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %border.addr, align 4
  %add4 = add nsw i32 %8, %9
  %sub5 = sub nsw i32 %add4, 1
  %10 = load i32*, i32** %pix.addr, align 8
  %idx.ext6 = sext i32 %sub5 to i64
  %add.ptr7 = getelementptr inbounds i32, i32* %10, i64 %idx.ext6
  store i32* %add.ptr7, i32** %pix.addr, align 8
  %11 = load i8*, i8** %src.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %last, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %border.addr, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %count, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %count, align 4
  %16 = load i32, i32* %last, align 4
  %17 = load i32*, i32** %pix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %incdec.ptr, i32** %pix.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %pack.addr, align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %for.body
  %19 = load i32, i32* %count, align 4
  %20 = load i32*, i32** %rle.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %20, i32 -1
  store i32* %incdec.ptr11, i32** %rle.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %21 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %21, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.35, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %width.addr, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body.17, label %for.end.37

for.body.17:                                      ; preds = %for.cond.14
  %24 = load i8*, i8** %src.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv18 = zext i8 %25 to i32
  store i32 %conv18, i32* %c, align 4
  %26 = load i32, i32* %dist.addr, align 4
  %27 = load i8*, i8** %src.addr, align 8
  %idx.ext19 = sext i32 %26 to i64
  %idx.neg = sub i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds i8, i8* %27, i64 %idx.neg
  store i8* %add.ptr20, i8** %src.addr, align 8
  %28 = load i32, i32* %pack.addr, align 4
  %tobool21 = icmp ne i32 %28, 0
  br i1 %tobool21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.17
  %29 = load i32, i32* %c, align 4
  %30 = load i32, i32* %last, align 4
  %cmp22 = icmp eq i32 %29, %30
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %count, align 4
  %inc25 = add nsw i32 %31, 1
  store i32 %inc25, i32* %count, align 4
  %32 = load i32, i32* %last, align 4
  %33 = load i32*, i32** %pix.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %incdec.ptr26, i32** %pix.addr, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %count, align 4
  %35 = load i32*, i32** %rle.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %incdec.ptr27, i32** %rle.addr, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %same, align 4
  %inc28 = add nsw i32 %36, 1
  store i32 %inc28, i32* %same, align 4
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %for.body.17
  store i32 1, i32* %count, align 4
  %37 = load i32, i32* %c, align 4
  store i32 %37, i32* %last, align 4
  %38 = load i32, i32* %last, align 4
  %39 = load i32*, i32** %pix.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i32, i32* %39, i32 -1
  store i32* %incdec.ptr29, i32** %pix.addr, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %pack.addr, align 4
  %tobool30 = icmp ne i32 %40, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.else
  %41 = load i32, i32* %count, align 4
  %42 = load i32*, i32** %rle.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %42, i32 -1
  store i32* %incdec.ptr32, i32** %rle.addr, align 8
  store i32 %41, i32* %42, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.24
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %43 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %43, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.14

for.end.37:                                       ; preds = %for.cond.14
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.48, %for.end.37
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %border.addr, align 4
  %cmp39 = icmp slt i32 %44, %45
  br i1 %cmp39, label %for.body.41, label %for.end.50

for.body.41:                                      ; preds = %for.cond.38
  %46 = load i32, i32* %count, align 4
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, i32* %count, align 4
  %47 = load i32, i32* %last, align 4
  %48 = load i32*, i32** %pix.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i32, i32* %48, i32 -1
  store i32* %incdec.ptr43, i32** %pix.addr, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %pack.addr, align 4
  %tobool44 = icmp ne i32 %49, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %for.body.41
  %50 = load i32, i32* %count, align 4
  %51 = load i32*, i32** %rle.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i32, i32* %51, i32 -1
  store i32* %incdec.ptr46, i32** %rle.addr, align 8
  store i32 %50, i32* %51, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %for.body.41
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %52 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %52, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.38

for.end.50:                                       ; preds = %for.cond.38
  %53 = load i32, i32* %same, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @do_encoded_lre(i32* %enc, i32* %src, i8* %dest, i32 %width, i32 %length, i32 %dist, i32* %curve, i32 %ctotal, i32* %csum) #0 {
entry:
  %enc.addr = alloca i32*, align 8
  %src.addr = alloca i32*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %dist.addr = alloca i32, align 4
  %curve.addr = alloca i32*, align 8
  %ctotal.addr = alloca i32, align 4
  %csum.addr = alloca i32*, align 8
  %col = alloca i32, align 4
  %rpt = alloca i32*, align 8
  %pix = alloca i32*, align 8
  %nb = alloca i32, align 4
  %s1 = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %start = alloca i32, align 4
  %s2 = alloca i32, align 4
  store i32* %enc, i32** %enc.addr, align 8
  store i32* %src, i32** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store i32 %dist, i32* %dist.addr, align 4
  store i32* %curve, i32** %curve.addr, align 8
  store i32 %ctotal, i32* %ctotal.addr, align 4
  store i32* %csum, i32** %csum.addr, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %col, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ctotal.addr, align 4
  %div = sdiv i32 %2, 2
  store i32 %div, i32* %val, align 4
  %3 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %start, align 4
  %4 = load i32, i32* %col, align 4
  %5 = load i32, i32* %start, align 4
  %add = add nsw i32 %4, %5
  %idxprom = sext i32 %add to i64
  %6 = load i32*, i32** %enc.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32* %arrayidx, i32** %rpt, align 8
  %7 = load i32, i32* %col, align 4
  %8 = load i32, i32* %start, align 4
  %add1 = add nsw i32 %7, %8
  %idxprom2 = sext i32 %add1 to i64
  %9 = load i32*, i32** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  store i32* %arrayidx3, i32** %pix, align 8
  %10 = load i32, i32* %start, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i32*, i32** %csum.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  store i32 %12, i32* %s1, align 4
  %13 = load i32*, i32** %rpt, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx6, align 4
  store i32 %14, i32* %nb, align 4
  %15 = load i32, i32* %start, align 4
  %16 = load i32, i32* %nb, align 4
  %add7 = add nsw i32 %15, %16
  store i32 %add7, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %length.addr, align 4
  %cmp8 = icmp sle i32 %17, %18
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load i32*, i32** %csum.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %21 = load i32, i32* %arrayidx10, align 4
  store i32 %21, i32* %s2, align 4
  %22 = load i32*, i32** %pix, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx11, align 4
  %24 = load i32, i32* %s2, align 4
  %25 = load i32, i32* %s1, align 4
  %sub12 = sub nsw i32 %24, %25
  %mul = mul nsw i32 %23, %sub12
  %26 = load i32, i32* %val, align 4
  %add13 = add nsw i32 %26, %mul
  store i32 %add13, i32* %val, align 4
  %27 = load i32, i32* %s2, align 4
  store i32 %27, i32* %s1, align 4
  %28 = load i32, i32* %nb, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load i32*, i32** %rpt, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %29, i64 %idxprom14
  store i32* %arrayidx15, i32** %rpt, align 8
  %30 = load i32, i32* %nb, align 4
  %idxprom16 = sext i32 %30 to i64
  %31 = load i32*, i32** %pix, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %31, i64 %idxprom16
  store i32* %arrayidx17, i32** %pix, align 8
  %32 = load i32*, i32** %rpt, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx18, align 4
  store i32 %33, i32* %nb, align 4
  %34 = load i32, i32* %nb, align 4
  %35 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %35, %34
  store i32 %add19, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i32*, i32** %pix, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx20, align 4
  %38 = load i32, i32* %length.addr, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load i32*, i32** %csum.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %39, i64 %idxprom21
  %40 = load i32, i32* %arrayidx22, align 4
  %41 = load i32, i32* %s1, align 4
  %sub23 = sub nsw i32 %40, %41
  %mul24 = mul nsw i32 %37, %sub23
  %42 = load i32, i32* %val, align 4
  %add25 = add nsw i32 %42, %mul24
  store i32 %add25, i32* %val, align 4
  %43 = load i32, i32* %val, align 4
  %44 = load i32, i32* %ctotal.addr, align 4
  %div26 = sdiv i32 %43, %44
  store i32 %div26, i32* %val, align 4
  %45 = load i32, i32* %val, align 4
  %cmp27 = icmp slt i32 %45, 255
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %46 = load i32, i32* %val, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ 255, %cond.false ]
  %conv = trunc i32 %cond to i8
  %47 = load i8*, i8** %dest.addr, align 8
  store i8 %conv, i8* %47, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %48 = load i32, i32* %col, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %col, align 4
  %49 = load i32, i32* %dist.addr, align 4
  %50 = load i8*, i8** %dest.addr, align 8
  %idx.ext = sext i32 %49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_full_lre(i32* %src, i8* %dest, i32 %width, i32 %length, i32 %dist, i32* %curve, i32 %ctotal) #0 {
entry:
  %src.addr = alloca i32*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %dist.addr = alloca i32, align 4
  %curve.addr = alloca i32*, align 8
  %ctotal.addr = alloca i32, align 4
  %col = alloca i32, align 4
  %x1 = alloca i32*, align 8
  %x2 = alloca i32*, align 8
  %c = alloca i32*, align 8
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store i32 %dist, i32* %dist.addr, align 4
  store i32* %curve, i32** %curve.addr, align 8
  store i32 %ctotal, i32* %ctotal.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %col, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %curve.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32* %arrayidx, i32** %c, align 8
  %3 = load i32, i32* %ctotal.addr, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, i32* %val, align 4
  %4 = load i32, i32* %col, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32* %arrayidx1, i32** %x2, align 8
  store i32* %arrayidx1, i32** %x1, align 8
  %6 = load i32*, i32** %x1, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32*, i32** %c, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %7, %9
  %10 = load i32, i32* %val, align 4
  %add = add nsw i32 %10, %mul
  store i32 %add, i32* %val, align 4
  %11 = load i32*, i32** %c, align 8
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 1
  store i32* %add.ptr, i32** %c, align 8
  %12 = load i32*, i32** %x1, align 8
  %add.ptr4 = getelementptr inbounds i32, i32* %12, i64 1
  store i32* %add.ptr4, i32** %x1, align 8
  %13 = load i32*, i32** %x2, align 8
  %add.ptr5 = getelementptr inbounds i32, i32* %13, i64 -1
  store i32* %add.ptr5, i32** %x2, align 8
  %14 = load i32, i32* %length.addr, align 4
  store i32 %14, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %15 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %15, 8
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32*, i32** %x1, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx7, align 4
  %18 = load i32*, i32** %x2, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %17, %19
  %20 = load i32*, i32** %c, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx10, align 4
  %mul11 = mul nsw i32 %add9, %21
  %22 = load i32, i32* %val, align 4
  %add12 = add nsw i32 %22, %mul11
  store i32 %add12, i32* %val, align 4
  %23 = load i32*, i32** %x1, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %23, i64 1
  %24 = load i32, i32* %arrayidx13, align 4
  %25 = load i32*, i32** %x2, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %25, i64 -1
  %26 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %24, %26
  %27 = load i32*, i32** %c, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %27, i64 1
  %28 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %add15, %28
  %29 = load i32, i32* %val, align 4
  %add18 = add nsw i32 %29, %mul17
  store i32 %add18, i32* %val, align 4
  %30 = load i32*, i32** %x1, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %30, i64 2
  %31 = load i32, i32* %arrayidx19, align 4
  %32 = load i32*, i32** %x2, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %32, i64 -2
  %33 = load i32, i32* %arrayidx20, align 4
  %add21 = add nsw i32 %31, %33
  %34 = load i32*, i32** %c, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %34, i64 2
  %35 = load i32, i32* %arrayidx22, align 4
  %mul23 = mul nsw i32 %add21, %35
  %36 = load i32, i32* %val, align 4
  %add24 = add nsw i32 %36, %mul23
  store i32 %add24, i32* %val, align 4
  %37 = load i32*, i32** %x1, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %37, i64 3
  %38 = load i32, i32* %arrayidx25, align 4
  %39 = load i32*, i32** %x2, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %39, i64 -3
  %40 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %38, %40
  %41 = load i32*, i32** %c, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %41, i64 3
  %42 = load i32, i32* %arrayidx28, align 4
  %mul29 = mul nsw i32 %add27, %42
  %43 = load i32, i32* %val, align 4
  %add30 = add nsw i32 %43, %mul29
  store i32 %add30, i32* %val, align 4
  %44 = load i32*, i32** %x1, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %44, i64 4
  %45 = load i32, i32* %arrayidx31, align 4
  %46 = load i32*, i32** %x2, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %46, i64 -4
  %47 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %45, %47
  %48 = load i32*, i32** %c, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %48, i64 4
  %49 = load i32, i32* %arrayidx34, align 4
  %mul35 = mul nsw i32 %add33, %49
  %50 = load i32, i32* %val, align 4
  %add36 = add nsw i32 %50, %mul35
  store i32 %add36, i32* %val, align 4
  %51 = load i32*, i32** %x1, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %51, i64 5
  %52 = load i32, i32* %arrayidx37, align 4
  %53 = load i32*, i32** %x2, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %53, i64 -5
  %54 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %52, %54
  %55 = load i32*, i32** %c, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %55, i64 5
  %56 = load i32, i32* %arrayidx40, align 4
  %mul41 = mul nsw i32 %add39, %56
  %57 = load i32, i32* %val, align 4
  %add42 = add nsw i32 %57, %mul41
  store i32 %add42, i32* %val, align 4
  %58 = load i32*, i32** %x1, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %58, i64 6
  %59 = load i32, i32* %arrayidx43, align 4
  %60 = load i32*, i32** %x2, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %60, i64 -6
  %61 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %59, %61
  %62 = load i32*, i32** %c, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %62, i64 6
  %63 = load i32, i32* %arrayidx46, align 4
  %mul47 = mul nsw i32 %add45, %63
  %64 = load i32, i32* %val, align 4
  %add48 = add nsw i32 %64, %mul47
  store i32 %add48, i32* %val, align 4
  %65 = load i32*, i32** %x1, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %65, i64 7
  %66 = load i32, i32* %arrayidx49, align 4
  %67 = load i32*, i32** %x2, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %67, i64 -7
  %68 = load i32, i32* %arrayidx50, align 4
  %add51 = add nsw i32 %66, %68
  %69 = load i32*, i32** %c, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %69, i64 7
  %70 = load i32, i32* %arrayidx52, align 4
  %mul53 = mul nsw i32 %add51, %70
  %71 = load i32, i32* %val, align 4
  %add54 = add nsw i32 %71, %mul53
  store i32 %add54, i32* %val, align 4
  %72 = load i32*, i32** %c, align 8
  %add.ptr55 = getelementptr inbounds i32, i32* %72, i64 8
  store i32* %add.ptr55, i32** %c, align 8
  %73 = load i32*, i32** %x1, align 8
  %add.ptr56 = getelementptr inbounds i32, i32* %73, i64 8
  store i32* %add.ptr56, i32** %x1, align 8
  %74 = load i32*, i32** %x2, align 8
  %add.ptr57 = getelementptr inbounds i32, i32* %74, i64 -8
  store i32* %add.ptr57, i32** %x2, align 8
  %75 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %75, 8
  store i32 %sub, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.60, %while.end
  %76 = load i32, i32* %i, align 4
  %cmp59 = icmp sge i32 %76, 4
  br i1 %cmp59, label %while.body.60, label %while.end.89

while.body.60:                                    ; preds = %while.cond.58
  %77 = load i32*, i32** %x1, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx61, align 4
  %79 = load i32*, i32** %x2, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx62, align 4
  %add63 = add nsw i32 %78, %80
  %81 = load i32*, i32** %c, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx64, align 4
  %mul65 = mul nsw i32 %add63, %82
  %83 = load i32, i32* %val, align 4
  %add66 = add nsw i32 %83, %mul65
  store i32 %add66, i32* %val, align 4
  %84 = load i32*, i32** %x1, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %84, i64 1
  %85 = load i32, i32* %arrayidx67, align 4
  %86 = load i32*, i32** %x2, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %86, i64 -1
  %87 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %85, %87
  %88 = load i32*, i32** %c, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %88, i64 1
  %89 = load i32, i32* %arrayidx70, align 4
  %mul71 = mul nsw i32 %add69, %89
  %90 = load i32, i32* %val, align 4
  %add72 = add nsw i32 %90, %mul71
  store i32 %add72, i32* %val, align 4
  %91 = load i32*, i32** %x1, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %91, i64 2
  %92 = load i32, i32* %arrayidx73, align 4
  %93 = load i32*, i32** %x2, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %93, i64 -2
  %94 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %92, %94
  %95 = load i32*, i32** %c, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %95, i64 2
  %96 = load i32, i32* %arrayidx76, align 4
  %mul77 = mul nsw i32 %add75, %96
  %97 = load i32, i32* %val, align 4
  %add78 = add nsw i32 %97, %mul77
  store i32 %add78, i32* %val, align 4
  %98 = load i32*, i32** %x1, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %98, i64 3
  %99 = load i32, i32* %arrayidx79, align 4
  %100 = load i32*, i32** %x2, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %100, i64 -3
  %101 = load i32, i32* %arrayidx80, align 4
  %add81 = add nsw i32 %99, %101
  %102 = load i32*, i32** %c, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %102, i64 3
  %103 = load i32, i32* %arrayidx82, align 4
  %mul83 = mul nsw i32 %add81, %103
  %104 = load i32, i32* %val, align 4
  %add84 = add nsw i32 %104, %mul83
  store i32 %add84, i32* %val, align 4
  %105 = load i32*, i32** %c, align 8
  %add.ptr85 = getelementptr inbounds i32, i32* %105, i64 4
  store i32* %add.ptr85, i32** %c, align 8
  %106 = load i32*, i32** %x1, align 8
  %add.ptr86 = getelementptr inbounds i32, i32* %106, i64 4
  store i32* %add.ptr86, i32** %x1, align 8
  %107 = load i32*, i32** %x2, align 8
  %add.ptr87 = getelementptr inbounds i32, i32* %107, i64 -4
  store i32* %add.ptr87, i32** %x2, align 8
  %108 = load i32, i32* %i, align 4
  %sub88 = sub nsw i32 %108, 4
  store i32 %sub88, i32* %i, align 4
  br label %while.cond.58

while.end.89:                                     ; preds = %while.cond.58
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.92, %while.end.89
  %109 = load i32, i32* %i, align 4
  %cmp91 = icmp sge i32 %109, 1
  br i1 %cmp91, label %while.body.92, label %while.end.103

while.body.92:                                    ; preds = %while.cond.90
  %110 = load i32*, i32** %x1, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %110, i64 0
  %111 = load i32, i32* %arrayidx93, align 4
  %112 = load i32*, i32** %x2, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %112, i64 0
  %113 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %111, %113
  %114 = load i32*, i32** %c, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %114, i64 0
  %115 = load i32, i32* %arrayidx96, align 4
  %mul97 = mul nsw i32 %add95, %115
  %116 = load i32, i32* %val, align 4
  %add98 = add nsw i32 %116, %mul97
  store i32 %add98, i32* %val, align 4
  %117 = load i32*, i32** %c, align 8
  %add.ptr99 = getelementptr inbounds i32, i32* %117, i64 1
  store i32* %add.ptr99, i32** %c, align 8
  %118 = load i32*, i32** %x1, align 8
  %add.ptr100 = getelementptr inbounds i32, i32* %118, i64 1
  store i32* %add.ptr100, i32** %x1, align 8
  %119 = load i32*, i32** %x2, align 8
  %add.ptr101 = getelementptr inbounds i32, i32* %119, i64 -1
  store i32* %add.ptr101, i32** %x2, align 8
  %120 = load i32, i32* %i, align 4
  %sub102 = sub nsw i32 %120, 1
  store i32 %sub102, i32* %i, align 4
  br label %while.cond.90

while.end.103:                                    ; preds = %while.cond.90
  %121 = load i32, i32* %val, align 4
  %122 = load i32, i32* %ctotal.addr, align 4
  %div104 = sdiv i32 %121, %122
  store i32 %div104, i32* %val, align 4
  %123 = load i32, i32* %val, align 4
  %cmp105 = icmp slt i32 %123, 255
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end.103
  %124 = load i32, i32* %val, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.end.103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %124, %cond.true ], [ 255, %cond.false ]
  %conv = trunc i32 %cond to i8
  %125 = load i8*, i8** %dest.addr, align 8
  store i8 %conv, i8* %125, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %126 = load i32, i32* %col, align 4
  %inc = add nsw i32 %126, 1
  store i32 %inc, i32* %col, align 4
  %127 = load i32, i32* %dist.addr, align 4
  %128 = load i8*, i8** %dest.addr, align 8
  %idx.ext = sext i32 %127 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %128, i64 %idx.ext
  store i8* %add.ptr106, i8** %dest.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_rle_curve(i32* %curve, i32 %length, i32* %sum) #0 {
entry:
  %curve.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %sum.addr = alloca i32*, align 8
  store i32* %curve, i32** %curve.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32* %sum, i32** %sum.addr, align 8
  %0 = load i32*, i32** %sum.addr, align 8
  %1 = load i32, i32* %length.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.neg
  %2 = bitcast i32* %add.ptr to i8*
  call void @g_free(i8* %2)
  %3 = load i32*, i32** %curve.addr, align 8
  %4 = load i32, i32* %length.addr, align 4
  %idx.ext1 = sext i32 %4 to i64
  %idx.neg2 = sub i64 0, %idx.ext1
  %add.ptr3 = getelementptr inbounds i32, i32* %3, i64 %idx.neg2
  %5 = bitcast i32* %add.ptr3 to i8*
  call void @g_free(i8* %5)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
