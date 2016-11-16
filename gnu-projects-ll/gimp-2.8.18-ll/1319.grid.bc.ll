; ModuleID = './plug-ins/common/grid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.Config = type { i32, i32, i32, %struct._GimpRGB, i32, i32, i32, %struct._GimpRGB, i32, i32, i32, %struct._GimpRGB }
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
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
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
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [18 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"hwidth\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Horizontal Width   (>= 0)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hspace\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Horizontal Spacing (>= 1)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"hoffset\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Horizontal Offset  (>= 0)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"hcolor\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Horizontal Colour\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"hopacity\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Horizontal Opacity (0...255)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"vwidth\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Vertical Width   (>= 0)\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"vspace\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Vertical Spacing (>= 1)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"voffset\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Vertical Offset  (>= 0)\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"vcolor\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Vertical Colour\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"vopacity\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Vertical Opacity (0...255)\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"iwidth\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Intersection Width   (>= 0)\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"ispace\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Intersection Spacing (>= 0)\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"ioffset\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Intersection Offset  (>= 0)\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"icolor\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Intersection Colour\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"iopacity\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Intersection Opacity (0...255)\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"plug-in-grid\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Draw a grid on the image\00", align 1
@.str.38 = private unnamed_addr constant [83 x i8] c"Draws a grid using the specified colors. The grid origin is the upper left corner.\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Tim Newsome\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"Tim Newsome, Sven Neumann, Tom Rathborne, TC\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"1997 - 2000\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"_Grid...\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.45 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@grid_cfg = internal global %struct.Config { i32 1, i32 16, i32 8, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, i32 1, i32 16, i32 8, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, i32 0, i32 2, i32 6, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 } }, align 8
@.str.47 = private unnamed_addr constant [13 x i8] c"Drawing grid\00", align 1
@main_dialog = internal global %struct._GtkWidget* null, align 8
@__func__.dialog = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"main_dialog == NULL\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"Grid\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"gimp-grid\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Horizontal\0ALines\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Vertical\0ALines\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"Intersection\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Width:\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Spacing:\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"unit-changed\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"Offset:\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Horizontal Color\00", align 1
@hcolor_button = internal global %struct._GtkWidget* null, align 8
@.str.65 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"Vertical Color\00", align 1
@vcolor_button = internal global %struct._GtkWidget* null, align 8
@.str.67 = private unnamed_addr constant [19 x i8] c"Intersection Color\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@entry_callback.x = internal global double -1.000000e+00, align 8
@entry_callback.y = internal global double -1.000000e+00, align 8
@.str.71 = private unnamed_addr constant [7 x i8] c"grid.c\00", align 1
@sx1 = internal global i32 0, align 4
@sy1 = internal global i32 0, align 4
@sx2 = internal global i32 0, align 4
@sy2 = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 18, i32 0, %struct._GimpParamDef* getelementptr inbounds ([18 x %struct._GimpParamDef], [18 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %n_params, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %n_params.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_ID = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %run_mode, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int326 = bitcast %union._GimpParamData* %data5 to i32*
  %5 = load i32, i32* %d_int326, align 4
  store i32 %5, i32* %image_ID, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %7 = load i32, i32* %d_drawable, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %7)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %8 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %n_params.addr, align 4
  %cmp10 = icmp ne i32 %9, 18
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %10 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %10, 3
  br i1 %cmp12, label %if.then.13, label %if.end.136

if.then.13:                                       ; preds = %if.end
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %12 = load i32, i32* %d_int3216, align 4
  %cmp17 = icmp sgt i32 0, %12
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_int3220 = bitcast %union._GimpParamData* %data19 to i32*
  %14 = load i32, i32* %d_int3220, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 0), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int3223 = bitcast %union._GimpParamData* %data22 to i32*
  %16 = load i32, i32* %d_int3223, align 4
  %cmp24 = icmp sgt i32 1, %16
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end
  br label %cond.end.30

cond.false.26:                                    ; preds = %cond.end
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 4
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %18 = load i32, i32* %d_int3229, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.26, %cond.true.25
  %cond31 = phi i32 [ 1, %cond.true.25 ], [ %18, %cond.false.26 ]
  store i32 %cond31, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_int3234 = bitcast %union._GimpParamData* %data33 to i32*
  %20 = load i32, i32* %d_int3234, align 4
  %cmp35 = icmp sgt i32 0, %20
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end.30
  br label %cond.end.41

cond.false.37:                                    ; preds = %cond.end.30
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 5
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_int3240 = bitcast %union._GimpParamData* %data39 to i32*
  %22 = load i32, i32* %d_int3240, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.37, %cond.true.36
  %cond42 = phi i32 [ 0, %cond.true.36 ], [ %22, %cond.false.37 ]
  store i32 %cond42, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 2), align 4
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 6
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data44 to %struct._GimpRGB*
  %24 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3) to i8*), i8* %24, i64 32, i32 8, i1 false)
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 7
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data46 to i8*
  %26 = load i8, i8* %d_int8, align 1
  %conv = uitofp i8 %26 to double
  %div = fdiv double %conv, 2.550000e+02
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3), double %div)
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 8
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_int3249 = bitcast %union._GimpParamData* %data48 to i32*
  %28 = load i32, i32* %d_int3249, align 4
  %cmp50 = icmp sgt i32 0, %28
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.end.41
  br label %cond.end.57

cond.false.53:                                    ; preds = %cond.end.41
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 8
  %data55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx54, i32 0, i32 1
  %d_int3256 = bitcast %union._GimpParamData* %data55 to i32*
  %30 = load i32, i32* %d_int3256, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.53, %cond.true.52
  %cond58 = phi i32 [ 0, %cond.true.52 ], [ %30, %cond.false.53 ]
  store i32 %cond58, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 4), align 4
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 9
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_int3261 = bitcast %union._GimpParamData* %data60 to i32*
  %32 = load i32, i32* %d_int3261, align 4
  %cmp62 = icmp sgt i32 1, %32
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.end.57
  br label %cond.end.69

cond.false.65:                                    ; preds = %cond.end.57
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 9
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int3268 = bitcast %union._GimpParamData* %data67 to i32*
  %34 = load i32, i32* %d_int3268, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.65, %cond.true.64
  %cond70 = phi i32 [ 1, %cond.true.64 ], [ %34, %cond.false.65 ]
  store i32 %cond70, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 10
  %data72 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx71, i32 0, i32 1
  %d_int3273 = bitcast %union._GimpParamData* %data72 to i32*
  %36 = load i32, i32* %d_int3273, align 4
  %cmp74 = icmp sgt i32 0, %36
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.end.69
  br label %cond.end.81

cond.false.77:                                    ; preds = %cond.end.69
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 10
  %data79 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx78, i32 0, i32 1
  %d_int3280 = bitcast %union._GimpParamData* %data79 to i32*
  %38 = load i32, i32* %d_int3280, align 4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.77, %cond.true.76
  %cond82 = phi i32 [ 0, %cond.true.76 ], [ %38, %cond.false.77 ]
  store i32 %cond82, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 6), align 4
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 11
  %data84 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx83, i32 0, i32 1
  %d_color85 = bitcast %union._GimpParamData* %data84 to %struct._GimpRGB*
  %40 = bitcast %struct._GimpRGB* %d_color85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7) to i8*), i8* %40, i64 32, i32 8, i1 false)
  %41 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 12
  %data87 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx86, i32 0, i32 1
  %d_int888 = bitcast %union._GimpParamData* %data87 to i8*
  %42 = load i8, i8* %d_int888, align 1
  %conv89 = uitofp i8 %42 to double
  %div90 = fdiv double %conv89, 2.550000e+02
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7), double %div90)
  %43 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 13
  %data92 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx91, i32 0, i32 1
  %d_int3293 = bitcast %union._GimpParamData* %data92 to i32*
  %44 = load i32, i32* %d_int3293, align 4
  %cmp94 = icmp sgt i32 0, %44
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.end.81
  br label %cond.end.101

cond.false.97:                                    ; preds = %cond.end.81
  %45 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %45, i64 13
  %data99 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx98, i32 0, i32 1
  %d_int32100 = bitcast %union._GimpParamData* %data99 to i32*
  %46 = load i32, i32* %d_int32100, align 4
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.97, %cond.true.96
  %cond102 = phi i32 [ 0, %cond.true.96 ], [ %46, %cond.false.97 ]
  store i32 %cond102, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 8), align 4
  %47 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %47, i64 14
  %data104 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx103, i32 0, i32 1
  %d_int32105 = bitcast %union._GimpParamData* %data104 to i32*
  %48 = load i32, i32* %d_int32105, align 4
  %cmp106 = icmp sgt i32 0, %48
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %cond.end.101
  br label %cond.end.113

cond.false.109:                                   ; preds = %cond.end.101
  %49 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %49, i64 14
  %data111 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx110, i32 0, i32 1
  %d_int32112 = bitcast %union._GimpParamData* %data111 to i32*
  %50 = load i32, i32* %d_int32112, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.109, %cond.true.108
  %cond114 = phi i32 [ 0, %cond.true.108 ], [ %50, %cond.false.109 ]
  store i32 %cond114, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 9), align 4
  %51 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %51, i64 15
  %data116 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx115, i32 0, i32 1
  %d_int32117 = bitcast %union._GimpParamData* %data116 to i32*
  %52 = load i32, i32* %d_int32117, align 4
  %cmp118 = icmp sgt i32 0, %52
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.end.113
  br label %cond.end.125

cond.false.121:                                   ; preds = %cond.end.113
  %53 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %53, i64 15
  %data123 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx122, i32 0, i32 1
  %d_int32124 = bitcast %union._GimpParamData* %data123 to i32*
  %54 = load i32, i32* %d_int32124, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.121, %cond.true.120
  %cond126 = phi i32 [ 0, %cond.true.120 ], [ %54, %cond.false.121 ]
  store i32 %cond126, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 10), align 4
  %55 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %55, i64 16
  %data128 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx127, i32 0, i32 1
  %d_color129 = bitcast %union._GimpParamData* %data128 to %struct._GimpRGB*
  %56 = bitcast %struct._GimpRGB* %d_color129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11) to i8*), i8* %56, i64 32, i32 8, i1 false)
  %57 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %57, i64 17
  %data131 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx130, i32 0, i32 1
  %d_int8132 = bitcast %union._GimpParamData* %data131 to i8*
  %58 = load i8, i8* %d_int8132, align 1
  %conv133 = zext i8 %58 to i32
  %conv134 = uitofp i32 %conv133 to double
  %div135 = fdiv double %conv134, 2.550000e+02
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11), double %div135)
  br label %if.end.136

if.end.136:                                       ; preds = %cond.end.125, %if.end
  br label %if.end.139

if.else:                                          ; preds = %do.end
  %call137 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11) to i8*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3) to i8*), i64 32, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7) to i8*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11) to i8*), i64 32, i32 8, i1 false)
  %call138 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* bitcast (%struct.Config* @grid_cfg to i8*))
  br label %if.end.139

if.end.139:                                       ; preds = %if.else, %if.end.136
  %59 = load i32, i32* %run_mode, align 4
  %cmp140 = icmp eq i32 %59, 0
  br i1 %cmp140, label %if.then.142, label %if.end.146

if.then.142:                                      ; preds = %if.end.139
  %60 = load i32, i32* %image_ID, align 4
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call143 = call i32 @dialog(i32 %60, %struct._GimpDrawable* %61)
  %tobool = icmp ne i32 %call143, 0
  br i1 %tobool, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %if.then.142
  store i32 0, i32* %status, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.then.142
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.139
  %62 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %cmp147 = icmp sle i32 %62, 0
  br i1 %cmp147, label %if.then.151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.146
  %63 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %cmp149 = icmp sle i32 %63, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %lor.lhs.false, %if.end.146
  store i32 0, i32* %status, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %lor.lhs.false
  %64 = load i32, i32* %status, align 4
  %cmp153 = icmp eq i32 %64, 3
  br i1 %cmp153, label %if.then.155, label %if.end.171

if.then.155:                                      ; preds = %if.end.152
  %call156 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0)) #4
  %call157 = call i32 @gimp_progress_init(i8* %call156)
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %65, i32 0, i32 1
  %66 = load i32, i32* %width, align 4
  %call158 = call i32 @gimp_tile_width() #7
  %div159 = udiv i32 %66, %call158
  %add = add i32 %div159, 1
  %mul = mul i32 2, %add
  %conv160 = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv160)
  %67 = load i32, i32* %image_ID, align 4
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @grid(i32 %67, %struct._GimpDrawable* %68, %struct._GimpPreview* null)
  %69 = load i32, i32* %run_mode, align 4
  %cmp161 = icmp ne i32 %69, 1
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.then.155
  %call164 = call i32 @gimp_displays_flush()
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.then.155
  %70 = load i32, i32* %run_mode, align 4
  %cmp166 = icmp eq i32 %70, 0
  br i1 %cmp166, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %if.end.165
  %call169 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* bitcast (%struct.Config* @grid_cfg to i8*), i32 144)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.end.165
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %71)
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.152
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %72 = load i32, i32* %status, align 4
  store i32 %72, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dlg = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %width = alloca %struct._GtkWidget*, align 8
  %space = alloca %struct._GtkWidget*, align 8
  %offset = alloca %struct._GtkWidget*, align 8
  %chain_button = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @main_dialog, align 8
  %cmp = icmp eq %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.dialog, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  store %struct._GtkWidget* %call1, %struct._GtkWidget** @main_dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %6)
  %7 = load i32, i32* %image_ID.addr, align 4
  %call6 = call i32 @gimp_image_get_resolution(i32 %7, double* %xres, double* %yres)
  %8 = load i32, i32* %image_ID.addr, align 4
  %call7 = call i32 @gimp_image_get_unit(i32 %8)
  store i32 %call7, i32* %unit, align 4
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %main_vbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %14)
  %15 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 1, i32 1, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call16 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %19, i32* null)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %preview, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 1, i32 1, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*, %struct._GimpDrawable*)* @update_preview to void ()*), i8* %28, void (i8*, %struct._GClosure*)* null, i32 0)
  %call20 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %vbox, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load i32, i32* %unit, align 4
  %call23 = call %struct._GtkWidget* @gimp_size_entry_new(i32 3, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 1, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %width, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call24)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_size_entry_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call26)
  %42 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %42, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_size_entry_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpSizeEntry*
  %46 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %45, i32 0, double %46, i32 1)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_size_entry_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call30)
  %49 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpSizeEntry*
  %50 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %49, i32 1, double %50, i32 1)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_size_entry_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call32)
  %53 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpSizeEntry*
  %54 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %53, i32 2, double %54, i32 1)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_size_entry_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call34)
  %57 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpSizeEntry*
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 2
  %59 = load i32, i32* %height, align 4
  %conv = uitofp i32 %59 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %57, i32 0, double 0.000000e+00, double %conv)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_size_entry_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call36)
  %62 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpSizeEntry*
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 1
  %64 = load i32, i32* %width38, align 4
  %conv39 = uitofp i32 %64 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %62, i32 1, double 0.000000e+00, double %conv39)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_size_entry_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call40)
  %67 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpSizeEntry*
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %68, i32 0, i32 1
  %69 = load i32, i32* %width42, align 4
  %conv43 = uitofp i32 %69 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %67, i32 2, double 0.000000e+00, double %conv43)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_size_entry_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call44)
  %72 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpSizeEntry*
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %73, i32 0, i32 2
  %74 = load i32, i32* %height46, align 4
  %conv47 = uitofp i32 %74 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %72, i32 0, double 0.000000e+00, double %conv47)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_size_entry_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call48)
  %77 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpSizeEntry*
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width50 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %78, i32 0, i32 1
  %79 = load i32, i32* %width50, align 4
  %conv51 = uitofp i32 %79 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %77, i32 1, double 0.000000e+00, double %conv51)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_size_entry_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call52)
  %82 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpSizeEntry*
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width54 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %83, i32 0, i32 1
  %84 = load i32, i32* %width54, align 4
  %85 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %85, i32 0, i32 2
  %86 = load i32, i32* %height55, align 4
  %cmp56 = icmp ugt i32 %84, %86
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width58 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %87, i32 0, i32 1
  %88 = load i32, i32* %width58, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height59 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %89, i32 0, i32 2
  %90 = load i32, i32* %height59, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %88, %cond.true ], [ %90, %cond.false ]
  %conv60 = uitofp i32 %cond to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %82, i32 2, double 0.000000e+00, double %conv60)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call61)
  %93 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %93, i32 0, i32 6)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call63)
  %96 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %96, i32 6)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call65)
  %99 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %99, i32 2, i32 12)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_size_entry_get_type() #7
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call67)
  %102 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpSizeEntry*
  %103 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 0), align 4
  %conv69 = sitofp i32 %103 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %102, i32 0, double %conv69)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_size_entry_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call70)
  %106 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpSizeEntry*
  %107 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 4), align 4
  %conv72 = sitofp i32 %107 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %106, i32 1, double %conv72)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_size_entry_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call73)
  %110 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpSizeEntry*
  %111 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 8), align 4
  %conv75 = sitofp i32 %111 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %110, i32 2, double %conv75)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_size_entry_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call76)
  %114 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpSizeEntry*
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0)) #4
  %call79 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %114, i8* %call78, i32 0, i32 1, float 0.000000e+00)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_size_entry_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call80)
  %117 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpSizeEntry*
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0)) #4
  %call83 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %117, i8* %call82, i32 0, i32 2, float 0.000000e+00)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_size_entry_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call84)
  %120 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpSizeEntry*
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0)) #4
  %call87 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %120, i8* %call86, i32 0, i32 3, float 0.000000e+00)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_size_entry_get_type() #7
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call88)
  %123 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpSizeEntry*
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0)) #4
  %call91 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %123, i8* %call90, i32 1, i32 0, float 0.000000e+00)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %label, align 8
  %call92 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call92, %struct._GtkSizeGroup** %group, align 8
  %124 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %124, %struct._GtkWidget* %125)
  %126 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %127 = bitcast %struct._GtkSizeGroup* %126 to i8*
  call void @g_object_unref(i8* %127)
  %call93 = call %struct._GtkWidget* @gimp_chain_button_new(i32 2)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %chain_button, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 0), align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 4), align 4
  %cmp94 = icmp eq i32 %128, %129
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %cond.end
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_chain_button_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call97)
  %132 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %132, i32 1)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %cond.end
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_table_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call100)
  %135 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkTable*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %135, %struct._GtkWidget* %136, i32 1, i32 3, i32 2, i32 3)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %139 = bitcast %struct._GtkWidget* %138 to i8*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %141 = bitcast %struct._GtkWidget* %140 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* %141, void (i8*, %struct._GClosure*)* null, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %143 = bitcast %struct._GtkWidget* %142 to i8*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %145 = bitcast %struct._GtkWidget* %144 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %145, void (i8*, %struct._GClosure*)* null, i32 2)
  %146 = load i32, i32* %unit, align 4
  %call104 = call %struct._GtkWidget* @gimp_size_entry_new(i32 3, i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 1, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call104, %struct._GtkWidget** %space, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call105)
  %149 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %149, %struct._GtkWidget* %150, i32 0, i32 0, i32 0)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %151)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_size_entry_get_type() #7
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call107)
  %154 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %154, i32 0)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_size_entry_get_type() #7
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call109)
  %157 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpSizeEntry*
  %158 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %157, i32 0, double %158, i32 1)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_size_entry_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call111)
  %161 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpSizeEntry*
  %162 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %161, i32 1, double %162, i32 1)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_size_entry_get_type() #7
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call113)
  %165 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpSizeEntry*
  %166 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %165, i32 2, double %166, i32 1)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_size_entry_get_type() #7
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call115)
  %169 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpSizeEntry*
  %170 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height117 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %170, i32 0, i32 2
  %171 = load i32, i32* %height117, align 4
  %conv118 = uitofp i32 %171 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %169, i32 0, double 0.000000e+00, double %conv118)
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_size_entry_get_type() #7
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call119)
  %174 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpSizeEntry*
  %175 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width121 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %175, i32 0, i32 1
  %176 = load i32, i32* %width121, align 4
  %conv122 = uitofp i32 %176 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %174, i32 1, double 0.000000e+00, double %conv122)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call123 = call i64 @gimp_size_entry_get_type() #7
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call123)
  %179 = bitcast %struct._GTypeInstance* %call124 to %struct._GimpSizeEntry*
  %180 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width125 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %180, i32 0, i32 1
  %181 = load i32, i32* %width125, align 4
  %conv126 = uitofp i32 %181 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %179, i32 2, double 0.000000e+00, double %conv126)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_size_entry_get_type() #7
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call127)
  %184 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpSizeEntry*
  %185 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height129 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %185, i32 0, i32 2
  %186 = load i32, i32* %height129, align 4
  %conv130 = uitofp i32 %186 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %184, i32 0, double 1.000000e+00, double %conv130)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call131 = call i64 @gimp_size_entry_get_type() #7
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call131)
  %189 = bitcast %struct._GTypeInstance* %call132 to %struct._GimpSizeEntry*
  %190 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width133 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %190, i32 0, i32 1
  %191 = load i32, i32* %width133, align 4
  %conv134 = uitofp i32 %191 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %189, i32 1, double 1.000000e+00, double %conv134)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %193 = bitcast %struct._GtkWidget* %192 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_size_entry_get_type() #7
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call135)
  %194 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpSizeEntry*
  %195 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width137 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %195, i32 0, i32 1
  %196 = load i32, i32* %width137, align 4
  %197 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height138 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %197, i32 0, i32 2
  %198 = load i32, i32* %height138, align 4
  %cmp139 = icmp ugt i32 %196, %198
  br i1 %cmp139, label %cond.true.141, label %cond.false.143

cond.true.141:                                    ; preds = %if.end.99
  %199 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width142 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %199, i32 0, i32 1
  %200 = load i32, i32* %width142, align 4
  br label %cond.end.145

cond.false.143:                                   ; preds = %if.end.99
  %201 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height144 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %201, i32 0, i32 2
  %202 = load i32, i32* %height144, align 4
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.143, %cond.true.141
  %cond146 = phi i32 [ %200, %cond.true.141 ], [ %202, %cond.false.143 ]
  %conv147 = uitofp i32 %cond146 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %194, i32 2, double 0.000000e+00, double %conv147)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_table_get_type() #7
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call148)
  %205 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %205, i32 6)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_table_get_type() #7
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %call150)
  %208 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %208, i32 2, i32 12)
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %210 = bitcast %struct._GtkWidget* %209 to %struct._GTypeInstance*
  %call152 = call i64 @gimp_size_entry_get_type() #7
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call152)
  %211 = bitcast %struct._GTypeInstance* %call153 to %struct._GimpSizeEntry*
  %212 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %conv154 = sitofp i32 %212 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %211, i32 0, double %conv154)
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %214 = bitcast %struct._GtkWidget* %213 to %struct._GTypeInstance*
  %call155 = call i64 @gimp_size_entry_get_type() #7
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %214, i64 %call155)
  %215 = bitcast %struct._GTypeInstance* %call156 to %struct._GimpSizeEntry*
  %216 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %conv157 = sitofp i32 %216 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %215, i32 1, double %conv157)
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %218 = bitcast %struct._GtkWidget* %217 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_size_entry_get_type() #7
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %218, i64 %call158)
  %219 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpSizeEntry*
  %220 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 9), align 4
  %conv160 = sitofp i32 %220 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %219, i32 2, double %conv160)
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %222 = bitcast %struct._GtkWidget* %221 to %struct._GTypeInstance*
  %call161 = call i64 @gimp_size_entry_get_type() #7
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %222, i64 %call161)
  %223 = bitcast %struct._GTypeInstance* %call162 to %struct._GimpSizeEntry*
  %call163 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0)) #4
  %call164 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %223, i8* %call163, i32 1, i32 0, float 0.000000e+00)
  store %struct._GtkWidget* %call164, %struct._GtkWidget** %label, align 8
  %224 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %224, %struct._GtkWidget* %225)
  %call165 = call %struct._GtkWidget* @gimp_chain_button_new(i32 2)
  store %struct._GtkWidget* %call165, %struct._GtkWidget** %chain_button, align 8
  %226 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %227 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %cmp166 = icmp eq i32 %226, %227
  br i1 %cmp166, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %cond.end.145
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %229 = bitcast %struct._GtkWidget* %228 to %struct._GTypeInstance*
  %call169 = call i64 @gimp_chain_button_get_type() #7
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %229, i64 %call169)
  %230 = bitcast %struct._GTypeInstance* %call170 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %230, i32 1)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %cond.end.145
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %232 = bitcast %struct._GtkWidget* %231 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_table_get_type() #7
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call172)
  %233 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkTable*
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %233, %struct._GtkWidget* %234, i32 1, i32 3, i32 2, i32 3)
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %235)
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %237 = bitcast %struct._GtkWidget* %236 to i8*
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %239 = bitcast %struct._GtkWidget* %238 to i8*
  %call174 = call i64 @g_signal_connect_data(i8* %237, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* %239, void (i8*, %struct._GClosure*)* null, i32 0)
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %241 = bitcast %struct._GtkWidget* %240 to i8*
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %243 = bitcast %struct._GtkWidget* %242 to i8*
  %call175 = call i64 @g_signal_connect_data(i8* %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* %243, void (i8*, %struct._GClosure*)* null, i32 0)
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %245 = bitcast %struct._GtkWidget* %244 to i8*
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %247 = bitcast %struct._GtkWidget* %246 to i8*
  %call176 = call i64 @g_signal_connect_data(i8* %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %247, void (i8*, %struct._GClosure*)* null, i32 2)
  %248 = load i32, i32* %unit, align 4
  %call177 = call %struct._GtkWidget* @gimp_size_entry_new(i32 3, i32 %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 1, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call177, %struct._GtkWidget** %offset, align 8
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %250 = bitcast %struct._GtkWidget* %249 to %struct._GTypeInstance*
  %call178 = call i64 @gtk_box_get_type() #7
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %250, i64 %call178)
  %251 = bitcast %struct._GTypeInstance* %call179 to %struct._GtkBox*
  %252 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %251, %struct._GtkWidget* %252, i32 0, i32 0, i32 0)
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %253)
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %255 = bitcast %struct._GtkWidget* %254 to %struct._GTypeInstance*
  %call180 = call i64 @gimp_size_entry_get_type() #7
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %255, i64 %call180)
  %256 = bitcast %struct._GTypeInstance* %call181 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %256, i32 0)
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %258 = bitcast %struct._GtkWidget* %257 to %struct._GTypeInstance*
  %call182 = call i64 @gimp_size_entry_get_type() #7
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %258, i64 %call182)
  %259 = bitcast %struct._GTypeInstance* %call183 to %struct._GimpSizeEntry*
  %260 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %259, i32 0, double %260, i32 1)
  %261 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %262 = bitcast %struct._GtkWidget* %261 to %struct._GTypeInstance*
  %call184 = call i64 @gimp_size_entry_get_type() #7
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %262, i64 %call184)
  %263 = bitcast %struct._GTypeInstance* %call185 to %struct._GimpSizeEntry*
  %264 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %263, i32 1, double %264, i32 1)
  %265 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %266 = bitcast %struct._GtkWidget* %265 to %struct._GTypeInstance*
  %call186 = call i64 @gimp_size_entry_get_type() #7
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %266, i64 %call186)
  %267 = bitcast %struct._GTypeInstance* %call187 to %struct._GimpSizeEntry*
  %268 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %267, i32 2, double %268, i32 1)
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %270 = bitcast %struct._GtkWidget* %269 to %struct._GTypeInstance*
  %call188 = call i64 @gimp_size_entry_get_type() #7
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 %call188)
  %271 = bitcast %struct._GTypeInstance* %call189 to %struct._GimpSizeEntry*
  %272 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height190 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %272, i32 0, i32 2
  %273 = load i32, i32* %height190, align 4
  %conv191 = uitofp i32 %273 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %271, i32 0, double 0.000000e+00, double %conv191)
  %274 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %275 = bitcast %struct._GtkWidget* %274 to %struct._GTypeInstance*
  %call192 = call i64 @gimp_size_entry_get_type() #7
  %call193 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %275, i64 %call192)
  %276 = bitcast %struct._GTypeInstance* %call193 to %struct._GimpSizeEntry*
  %277 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width194 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %277, i32 0, i32 1
  %278 = load i32, i32* %width194, align 4
  %conv195 = uitofp i32 %278 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %276, i32 1, double 0.000000e+00, double %conv195)
  %279 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %280 = bitcast %struct._GtkWidget* %279 to %struct._GTypeInstance*
  %call196 = call i64 @gimp_size_entry_get_type() #7
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %280, i64 %call196)
  %281 = bitcast %struct._GTypeInstance* %call197 to %struct._GimpSizeEntry*
  %282 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width198 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %282, i32 0, i32 1
  %283 = load i32, i32* %width198, align 4
  %conv199 = uitofp i32 %283 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %281, i32 2, double 0.000000e+00, double %conv199)
  %284 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %285 = bitcast %struct._GtkWidget* %284 to %struct._GTypeInstance*
  %call200 = call i64 @gimp_size_entry_get_type() #7
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %285, i64 %call200)
  %286 = bitcast %struct._GTypeInstance* %call201 to %struct._GimpSizeEntry*
  %287 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height202 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %287, i32 0, i32 2
  %288 = load i32, i32* %height202, align 4
  %conv203 = uitofp i32 %288 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %286, i32 0, double 0.000000e+00, double %conv203)
  %289 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %290 = bitcast %struct._GtkWidget* %289 to %struct._GTypeInstance*
  %call204 = call i64 @gimp_size_entry_get_type() #7
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %290, i64 %call204)
  %291 = bitcast %struct._GTypeInstance* %call205 to %struct._GimpSizeEntry*
  %292 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width206 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %292, i32 0, i32 1
  %293 = load i32, i32* %width206, align 4
  %conv207 = uitofp i32 %293 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %291, i32 1, double 0.000000e+00, double %conv207)
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %295 = bitcast %struct._GtkWidget* %294 to %struct._GTypeInstance*
  %call208 = call i64 @gimp_size_entry_get_type() #7
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %295, i64 %call208)
  %296 = bitcast %struct._GTypeInstance* %call209 to %struct._GimpSizeEntry*
  %297 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width210 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %297, i32 0, i32 1
  %298 = load i32, i32* %width210, align 4
  %299 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height211 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %299, i32 0, i32 2
  %300 = load i32, i32* %height211, align 4
  %cmp212 = icmp ugt i32 %298, %300
  br i1 %cmp212, label %cond.true.214, label %cond.false.216

cond.true.214:                                    ; preds = %if.end.171
  %301 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width215 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %301, i32 0, i32 1
  %302 = load i32, i32* %width215, align 4
  br label %cond.end.218

cond.false.216:                                   ; preds = %if.end.171
  %303 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height217 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %303, i32 0, i32 2
  %304 = load i32, i32* %height217, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.216, %cond.true.214
  %cond219 = phi i32 [ %302, %cond.true.214 ], [ %304, %cond.false.216 ]
  %conv220 = uitofp i32 %cond219 to double
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %296, i32 2, double 0.000000e+00, double %conv220)
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %306 = bitcast %struct._GtkWidget* %305 to %struct._GTypeInstance*
  %call221 = call i64 @gtk_table_get_type() #7
  %call222 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %306, i64 %call221)
  %307 = bitcast %struct._GTypeInstance* %call222 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %307, i32 6)
  %308 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %309 = bitcast %struct._GtkWidget* %308 to %struct._GTypeInstance*
  %call223 = call i64 @gtk_table_get_type() #7
  %call224 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %309, i64 %call223)
  %310 = bitcast %struct._GTypeInstance* %call224 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %310, i32 2, i32 12)
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %312 = bitcast %struct._GtkWidget* %311 to %struct._GTypeInstance*
  %call225 = call i64 @gimp_size_entry_get_type() #7
  %call226 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %312, i64 %call225)
  %313 = bitcast %struct._GTypeInstance* %call226 to %struct._GimpSizeEntry*
  %314 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 2), align 4
  %conv227 = sitofp i32 %314 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %313, i32 0, double %conv227)
  %315 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %316 = bitcast %struct._GtkWidget* %315 to %struct._GTypeInstance*
  %call228 = call i64 @gimp_size_entry_get_type() #7
  %call229 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %316, i64 %call228)
  %317 = bitcast %struct._GTypeInstance* %call229 to %struct._GimpSizeEntry*
  %318 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 6), align 4
  %conv230 = sitofp i32 %318 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %317, i32 1, double %conv230)
  %319 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %320 = bitcast %struct._GtkWidget* %319 to %struct._GTypeInstance*
  %call231 = call i64 @gimp_size_entry_get_type() #7
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %320, i64 %call231)
  %321 = bitcast %struct._GTypeInstance* %call232 to %struct._GimpSizeEntry*
  %322 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 10), align 4
  %conv233 = sitofp i32 %322 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %321, i32 2, double %conv233)
  %323 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %324 = bitcast %struct._GtkWidget* %323 to %struct._GTypeInstance*
  %call234 = call i64 @gimp_size_entry_get_type() #7
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %324, i64 %call234)
  %325 = bitcast %struct._GTypeInstance* %call235 to %struct._GimpSizeEntry*
  %call236 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0)) #4
  %call237 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %325, i8* %call236, i32 1, i32 0, float 0.000000e+00)
  store %struct._GtkWidget* %call237, %struct._GtkWidget** %label, align 8
  %326 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %327 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %326, %struct._GtkWidget* %327)
  %call238 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call238, %struct._GtkWidget** %table, align 8
  %328 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %329 = bitcast %struct._GtkWidget* %328 to %struct._GTypeInstance*
  %call239 = call i64 @gtk_table_get_type() #7
  %call240 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %329, i64 %call239)
  %330 = bitcast %struct._GTypeInstance* %call240 to %struct._GtkTable*
  %331 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %330, %struct._GtkWidget* %331, i32 1, i32 4, i32 2, i32 3)
  %332 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %333 = bitcast %struct._GtkWidget* %332 to %struct._GTypeInstance*
  %call241 = call i64 @gtk_table_get_type() #7
  %call242 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %333, i64 %call241)
  %334 = bitcast %struct._GTypeInstance* %call242 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %334, i32 0, i32 10)
  %335 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %336 = bitcast %struct._GtkWidget* %335 to %struct._GTypeInstance*
  %call243 = call i64 @gtk_table_get_type() #7
  %call244 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %336, i64 %call243)
  %337 = bitcast %struct._GTypeInstance* %call244 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %337, i32 1, i32 12)
  %call245 = call %struct._GtkWidget* @gimp_chain_button_new(i32 2)
  store %struct._GtkWidget* %call245, %struct._GtkWidget** %chain_button, align 8
  %338 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 2), align 4
  %339 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 6), align 4
  %cmp246 = icmp eq i32 %338, %339
  br i1 %cmp246, label %if.then.248, label %if.end.251

if.then.248:                                      ; preds = %cond.end.218
  %340 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %341 = bitcast %struct._GtkWidget* %340 to %struct._GTypeInstance*
  %call249 = call i64 @gimp_chain_button_get_type() #7
  %call250 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %341, i64 %call249)
  %342 = bitcast %struct._GTypeInstance* %call250 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %342, i32 1)
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.248, %cond.end.218
  %343 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %344 = bitcast %struct._GtkWidget* %343 to %struct._GTypeInstance*
  %call252 = call i64 @gtk_table_get_type() #7
  %call253 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %344, i64 %call252)
  %345 = bitcast %struct._GTypeInstance* %call253 to %struct._GtkTable*
  %346 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %345, %struct._GtkWidget* %346, i32 0, i32 2, i32 0, i32 1)
  %347 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %347)
  %348 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %349 = bitcast %struct._GtkWidget* %348 to i8*
  %350 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %351 = bitcast %struct._GtkWidget* %350 to i8*
  %call254 = call i64 @g_signal_connect_data(i8* %349, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* %351, void (i8*, %struct._GClosure*)* null, i32 0)
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %353 = bitcast %struct._GtkWidget* %352 to i8*
  %354 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %355 = bitcast %struct._GtkWidget* %354 to i8*
  %call255 = call i64 @g_signal_connect_data(i8* %353, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* %355, void (i8*, %struct._GClosure*)* null, i32 0)
  %356 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %357 = bitcast %struct._GtkWidget* %356 to i8*
  %358 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %359 = bitcast %struct._GtkWidget* %358 to i8*
  %call256 = call i64 @g_signal_connect_data(i8* %357, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %359, void (i8*, %struct._GClosure*)* null, i32 2)
  %call257 = call %struct._GtkWidget* @gimp_chain_button_new(i32 2)
  store %struct._GtkWidget* %call257, %struct._GtkWidget** %chain_button, align 8
  %call258 = call double @gimp_rgba_distance(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3), %struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7))
  %cmp259 = fcmp olt double %call258, 1.000000e-04
  br i1 %cmp259, label %if.then.261, label %if.end.264

if.then.261:                                      ; preds = %if.end.251
  %360 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %361 = bitcast %struct._GtkWidget* %360 to %struct._GTypeInstance*
  %call262 = call i64 @gimp_chain_button_get_type() #7
  %call263 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %361, i64 %call262)
  %362 = bitcast %struct._GTypeInstance* %call263 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %362, i32 1)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.261, %if.end.251
  %363 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %364 = bitcast %struct._GtkWidget* %363 to %struct._GTypeInstance*
  %call265 = call i64 @gtk_table_get_type() #7
  %call266 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %364, i64 %call265)
  %365 = bitcast %struct._GTypeInstance* %call266 to %struct._GtkTable*
  %366 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %365, %struct._GtkWidget* %366, i32 0, i32 2, i32 2, i32 3)
  %367 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %367)
  %call267 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0)) #4
  %call268 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call267, i32 55, i32 16, %struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3), i32 1)
  store %struct._GtkWidget* %call268, %struct._GtkWidget** @hcolor_button, align 8
  %368 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  %369 = bitcast %struct._GtkWidget* %368 to %struct._GTypeInstance*
  %call269 = call i64 @gimp_color_button_get_type() #7
  %call270 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %369, i64 %call269)
  %370 = bitcast %struct._GTypeInstance* %call270 to %struct._GimpColorButton*
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %370, i32 1)
  %371 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %372 = bitcast %struct._GtkWidget* %371 to %struct._GTypeInstance*
  %call271 = call i64 @gtk_table_get_type() #7
  %call272 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %372, i64 %call271)
  %373 = bitcast %struct._GTypeInstance* %call272 to %struct._GtkTable*
  %374 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %373, %struct._GtkWidget* %374, i32 0, i32 1, i32 1, i32 2)
  %375 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %375)
  %376 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  %377 = bitcast %struct._GtkWidget* %376 to i8*
  %call273 = call i64 @g_signal_connect_data(i8* %377, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %378 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  %379 = bitcast %struct._GtkWidget* %378 to i8*
  %380 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %381 = bitcast %struct._GtkWidget* %380 to i8*
  %call274 = call i64 @g_signal_connect_data(i8* %379, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @color_callback to void ()*), i8* %381, void (i8*, %struct._GClosure*)* null, i32 0)
  %382 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  %383 = bitcast %struct._GtkWidget* %382 to i8*
  %384 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %385 = bitcast %struct._GtkWidget* %384 to i8*
  %call275 = call i64 @g_signal_connect_data(i8* %383, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %385, void (i8*, %struct._GClosure*)* null, i32 2)
  %call276 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0)) #4
  %call277 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call276, i32 55, i32 16, %struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7), i32 1)
  store %struct._GtkWidget* %call277, %struct._GtkWidget** @vcolor_button, align 8
  %386 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  %387 = bitcast %struct._GtkWidget* %386 to %struct._GTypeInstance*
  %call278 = call i64 @gimp_color_button_get_type() #7
  %call279 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %387, i64 %call278)
  %388 = bitcast %struct._GTypeInstance* %call279 to %struct._GimpColorButton*
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %388, i32 1)
  %389 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %390 = bitcast %struct._GtkWidget* %389 to %struct._GTypeInstance*
  %call280 = call i64 @gtk_table_get_type() #7
  %call281 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %390, i64 %call280)
  %391 = bitcast %struct._GTypeInstance* %call281 to %struct._GtkTable*
  %392 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %391, %struct._GtkWidget* %392, i32 1, i32 2, i32 1, i32 2)
  %393 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %393)
  %394 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  %395 = bitcast %struct._GtkWidget* %394 to i8*
  %call282 = call i64 @g_signal_connect_data(i8* %395, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %396 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  %397 = bitcast %struct._GtkWidget* %396 to i8*
  %398 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %399 = bitcast %struct._GtkWidget* %398 to i8*
  %call283 = call i64 @g_signal_connect_data(i8* %397, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @color_callback to void ()*), i8* %399, void (i8*, %struct._GClosure*)* null, i32 0)
  %400 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  %401 = bitcast %struct._GtkWidget* %400 to i8*
  %402 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %403 = bitcast %struct._GtkWidget* %402 to i8*
  %call284 = call i64 @g_signal_connect_data(i8* %401, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %403, void (i8*, %struct._GClosure*)* null, i32 2)
  %call285 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0)) #4
  %call286 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call285, i32 55, i32 16, %struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11), i32 1)
  store %struct._GtkWidget* %call286, %struct._GtkWidget** %button, align 8
  %404 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %405 = bitcast %struct._GtkWidget* %404 to %struct._GTypeInstance*
  %call287 = call i64 @gimp_color_button_get_type() #7
  %call288 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %405, i64 %call287)
  %406 = bitcast %struct._GTypeInstance* %call288 to %struct._GimpColorButton*
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %406, i32 1)
  %407 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %408 = bitcast %struct._GtkWidget* %407 to %struct._GTypeInstance*
  %call289 = call i64 @gtk_table_get_type() #7
  %call290 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %408, i64 %call289)
  %409 = bitcast %struct._GTypeInstance* %call290 to %struct._GtkTable*
  %410 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %409, %struct._GtkWidget* %410, i32 2, i32 3, i32 1, i32 2)
  %411 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %411)
  %412 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %413 = bitcast %struct._GtkWidget* %412 to i8*
  %call291 = call i64 @g_signal_connect_data(i8* %413, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %414 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %415 = bitcast %struct._GtkWidget* %414 to i8*
  %416 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %417 = bitcast %struct._GtkWidget* %416 to i8*
  %call292 = call i64 @g_signal_connect_data(i8* %415, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %417, void (i8*, %struct._GClosure*)* null, i32 2)
  %418 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %418)
  %419 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %419)
  %420 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %421 = bitcast %struct._GtkWidget* %420 to %struct._GTypeInstance*
  %call293 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %421, i64 80)
  %422 = bitcast %struct._GTypeInstance* %call293 to %struct._GObject*
  %423 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %424 = bitcast %struct._GtkWidget* %423 to i8*
  call void @g_object_set_data(%struct._GObject* %422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* %424)
  %425 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %426 = bitcast %struct._GtkWidget* %425 to %struct._GTypeInstance*
  %call294 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %426, i64 80)
  %427 = bitcast %struct._GTypeInstance* %call294 to %struct._GObject*
  %428 = load %struct._GtkWidget*, %struct._GtkWidget** %space, align 8
  %429 = bitcast %struct._GtkWidget* %428 to i8*
  call void @g_object_set_data(%struct._GObject* %427, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* %429)
  %430 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %431 = bitcast %struct._GtkWidget* %430 to %struct._GTypeInstance*
  %call295 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %431, i64 80)
  %432 = bitcast %struct._GTypeInstance* %call295 to %struct._GObject*
  %433 = load %struct._GtkWidget*, %struct._GtkWidget** %offset, align 8
  %434 = bitcast %struct._GtkWidget* %433 to i8*
  call void @g_object_set_data(%struct._GObject* %432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* %434)
  %435 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %436 = bitcast %struct._GtkWidget* %435 to %struct._GTypeInstance*
  %call296 = call i64 @gimp_dialog_get_type() #7
  %call297 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %436, i64 %call296)
  %437 = bitcast %struct._GTypeInstance* %call297 to %struct._GimpDialog*
  %call298 = call i32 @gimp_dialog_run(%struct._GimpDialog* %437)
  %cmp299 = icmp eq i32 %call298, -5
  %conv300 = zext i1 %cmp299 to i32
  store i32 %conv300, i32* %run, align 4
  %438 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %438, 0
  br i1 %tobool, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %if.end.264
  call void @update_values()
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.301, %if.end.264
  %439 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %439)
  %440 = load i32, i32* %run, align 4
  store i32 %440, i32* %retval
  br label %return

return:                                           ; preds = %if.end.302, %if.else
  %441 = load i32, i32* %retval
  ret i32 %441
}

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @grid(i32 %image_ID, %struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %bytes = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %dest = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %alpha = alloca i32, align 4
  %blend = alloca i32, align 4
  %hcolor = alloca [4 x i8], align 1
  %vcolor = alloca [4 x i8], align 1
  %icolor = alloca [4 x i8], align 1
  %cmap = alloca i8*, align 8
  %ncolors = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %buffer, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %hcolor, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %hcolor, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 1
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %hcolor, i32 0, i32 0
  %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay2, i64 2
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %hcolor, i32 0, i32 0
  %add.ptr5 = getelementptr inbounds i8, i8* %arraydecay4, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3), i8* %arraydecay, i8* %add.ptr, i8* %add.ptr3, i8* %add.ptr5)
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %vcolor, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %vcolor, i32 0, i32 0
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %vcolor, i32 0, i32 0
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %vcolor, i32 0, i32 0
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7), i8* %arraydecay6, i8* %add.ptr8, i8* %add.ptr10, i8* %add.ptr12)
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i32 0
  %add.ptr15 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i32 0
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11), i8* %arraydecay13, i8* %add.ptr15, i8* %add.ptr17, i8* %add.ptr19)
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_base_type(i32 %0)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
    i32 2, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %blend, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %call21 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3))
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %hcolor, i32 0, i64 0
  store i8 %call21, i8* %arrayidx, align 1
  %call22 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7))
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %vcolor, i32 0, i64 0
  store i8 %call22, i8* %arrayidx23, align 1
  %call24 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11))
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i64 0
  store i8 %call24, i8* %arrayidx25, align 1
  store i32 1, i32* %blend, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %1 = load i32, i32* %image_ID.addr, align 4
  %call27 = call i8* @gimp_image_get_colormap(i32 %1, i32* %ncolors)
  store i8* %call27, i8** %cmap, align 8
  %2 = load i8*, i8** %cmap, align 8
  %3 = load i32, i32* %ncolors, align 4
  %call28 = call zeroext i8 @best_cmap_match(i8* %2, i32 %3, %struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 3))
  %arrayidx29 = getelementptr inbounds [4 x i8], [4 x i8]* %hcolor, i32 0, i64 0
  store i8 %call28, i8* %arrayidx29, align 1
  %4 = load i8*, i8** %cmap, align 8
  %5 = load i32, i32* %ncolors, align 4
  %call30 = call zeroext i8 @best_cmap_match(i8* %4, i32 %5, %struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 7))
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %vcolor, i32 0, i64 0
  store i8 %call30, i8* %arrayidx31, align 1
  %6 = load i8*, i8** %cmap, align 8
  %7 = load i32, i32* %ncolors, align 4
  %call32 = call zeroext i8 @best_cmap_match(i8* %6, i32 %7, %struct._GimpRGB* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 11))
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i64 0
  store i8 %call32, i8* %arrayidx33, align 1
  %8 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %8)
  store i32 0, i32* %blend, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 377, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* null) #8
  unreachable

do.end:                                           ; No predecessors!
  store i32 0, i32* %blend, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.26, %sw.bb.20, %sw.bb
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 3
  %10 = load i32, i32* %bpp, align 4
  store i32 %10, i32* %bytes, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call34 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call34, i32* %alpha, align 4
  %13 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %13, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %14, i32* @sx1, i32* @sy1)
  %15 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %15, i32* @sx2, i32* @sy2)
  %16 = load i32, i32* %bytes, align 4
  %17 = load i32, i32* @sx2, align 4
  %mul = mul nsw i32 %16, %17
  %18 = load i32, i32* @sy2, align 4
  %mul35 = mul nsw i32 %mul, %18
  %conv = sext i32 %mul35 to i64
  %call36 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call36, i8** %buffer, align 8
  %19 = load i32, i32* @sx1, align 4
  %20 = load i32, i32* @sx2, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* @sx2, align 4
  %21 = load i32, i32* @sy1, align 4
  %22 = load i32, i32* @sy2, align 4
  %add37 = add nsw i32 %22, %21
  store i32 %add37, i32* @sy2, align 4
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 0
  %24 = load i32, i32* %drawable_id38, align 4
  %call39 = call i32 @gimp_drawable_mask_bounds(i32 %24, i32* @sx1, i32* @sy1, i32* @sx2, i32* @sy2)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load i32, i32* @sx2, align 4
  %27 = load i32, i32* @sx1, align 4
  %sub = sub nsw i32 %26, %27
  %28 = load i32, i32* @sy2, align 4
  %29 = load i32, i32* @sy1, align 4
  %sub40 = sub nsw i32 %28, %29
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %sub, i32 %sub40, i32 1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = load i32, i32* @sx2, align 4
  %32 = load i32, i32* @sx1, align 4
  %sub41 = sub nsw i32 %31, %32
  %33 = load i32, i32* @sy2, align 4
  %34 = load i32, i32* @sy1, align 4
  %sub42 = sub nsw i32 %33, %34
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %30, i32 0, i32 0, i32 %sub41, i32 %sub42, i32 0, i32 0)
  %35 = load i32, i32* @sx2, align 4
  %36 = load i32, i32* @sx1, align 4
  %sub43 = sub nsw i32 %35, %36
  %37 = load i32, i32* %bytes, align 4
  %mul44 = mul nsw i32 %sub43, %37
  %conv45 = sext i32 %mul44 to i64
  %call46 = call noalias i8* @g_malloc_n(i64 %conv45, i64 1)
  store i8* %call46, i8** %dest, align 8
  %38 = load i32, i32* @sy1, align 4
  store i32 %38, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.190, %if.end
  %39 = load i32, i32* %y, align 4
  %40 = load i32, i32* @sy2, align 4
  %cmp = icmp slt i32 %39, %40
  br i1 %cmp, label %for.body, label %for.end.192

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %dest, align 8
  %42 = load i32, i32* @sx1, align 4
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* @sx2, align 4
  %45 = load i32, i32* @sx1, align 4
  %sub48 = sub nsw i32 %44, %45
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %41, i32 %42, i32 %43, i32 %sub48)
  %46 = load i32, i32* %y, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 2), align 4
  %sub49 = sub nsw i32 %46, %47
  store i32 %sub49, i32* %y_offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %48 = load i32, i32* %y_offset, align 4
  %cmp50 = icmp slt i32 %48, 0
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %50 = load i32, i32* %y_offset, align 4
  %add52 = add nsw i32 %50, %49
  store i32 %add52, i32* %y_offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load i32, i32* %y_offset, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 0), align 4
  %div = sdiv i32 %52, 2
  %add53 = add nsw i32 %51, %div
  %53 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %rem = srem i32 %add53, %53
  %54 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 0), align 4
  %cmp54 = icmp slt i32 %rem, %54
  br i1 %cmp54, label %if.then.56, label %if.end.65

if.then.56:                                       ; preds = %while.end
  %55 = load i32, i32* @sx1, align 4
  store i32 %55, i32* %x, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc, %if.then.56
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* @sx2, align 4
  %cmp58 = icmp slt i32 %56, %57
  br i1 %cmp58, label %for.body.60, label %for.end

for.body.60:                                      ; preds = %for.cond.57
  %58 = load i32, i32* %x, align 4
  %59 = load i32, i32* @sx1, align 4
  %sub61 = sub nsw i32 %58, %59
  %60 = load i32, i32* %bytes, align 4
  %mul62 = mul nsw i32 %sub61, %60
  %idxprom = sext i32 %mul62 to i64
  %61 = load i8*, i8** %dest, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %61, i64 %idxprom
  %arraydecay64 = getelementptr inbounds [4 x i8], [4 x i8]* %hcolor, i32 0, i32 0
  %62 = load i32, i32* %bytes, align 4
  %63 = load i32, i32* %blend, align 4
  %64 = load i32, i32* %alpha, align 4
  call void @pix_composite(i8* %arrayidx63, i8* %arraydecay64, i32 %62, i32 %63, i32 %64)
  br label %for.inc

for.inc:                                          ; preds = %for.body.60
  %65 = load i32, i32* %x, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.57

for.end:                                          ; preds = %for.cond.57
  br label %if.end.65

if.end.65:                                        ; preds = %for.end, %while.end
  %66 = load i32, i32* @sx1, align 4
  store i32 %66, i32* %x, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.118, %if.end.65
  %67 = load i32, i32* %x, align 4
  %68 = load i32, i32* @sx2, align 4
  %cmp67 = icmp slt i32 %67, %68
  br i1 %cmp67, label %for.body.69, label %for.end.120

for.body.69:                                      ; preds = %for.cond.66
  %69 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %70 = load i32, i32* %x, align 4
  %add70 = add nsw i32 %69, %70
  %71 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 6), align 4
  %sub71 = sub nsw i32 %add70, %71
  store i32 %sub71, i32* %x_offset, align 4
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.75, %for.body.69
  %72 = load i32, i32* %x_offset, align 4
  %cmp73 = icmp slt i32 %72, 0
  br i1 %cmp73, label %while.body.75, label %while.end.77

while.body.75:                                    ; preds = %while.cond.72
  %73 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %74 = load i32, i32* %x_offset, align 4
  %add76 = add nsw i32 %74, %73
  store i32 %add76, i32* %x_offset, align 4
  br label %while.cond.72

while.end.77:                                     ; preds = %while.cond.72
  %75 = load i32, i32* %x_offset, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 4), align 4
  %div78 = sdiv i32 %76, 2
  %add79 = add nsw i32 %75, %div78
  %77 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %rem80 = srem i32 %add79, %77
  %78 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 4), align 4
  %cmp81 = icmp slt i32 %rem80, %78
  br i1 %cmp81, label %if.then.83, label %if.end.89

if.then.83:                                       ; preds = %while.end.77
  %79 = load i32, i32* %x, align 4
  %80 = load i32, i32* @sx1, align 4
  %sub84 = sub nsw i32 %79, %80
  %81 = load i32, i32* %bytes, align 4
  %mul85 = mul nsw i32 %sub84, %81
  %idxprom86 = sext i32 %mul85 to i64
  %82 = load i8*, i8** %dest, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %82, i64 %idxprom86
  %arraydecay88 = getelementptr inbounds [4 x i8], [4 x i8]* %vcolor, i32 0, i32 0
  %83 = load i32, i32* %bytes, align 4
  %84 = load i32, i32* %blend, align 4
  %85 = load i32, i32* %alpha, align 4
  call void @pix_composite(i8* %arrayidx87, i8* %arraydecay88, i32 %83, i32 %84, i32 %85)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.83, %while.end.77
  %86 = load i32, i32* %x_offset, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 8), align 4
  %div90 = sdiv i32 %87, 2
  %add91 = add nsw i32 %86, %div90
  %88 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %rem92 = srem i32 %add91, %88
  %89 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 8), align 4
  %cmp93 = icmp slt i32 %rem92, %89
  br i1 %cmp93, label %land.lhs.true, label %if.end.117

land.lhs.true:                                    ; preds = %if.end.89
  %90 = load i32, i32* %y_offset, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %rem95 = srem i32 %90, %91
  %92 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 9), align 4
  %cmp96 = icmp sge i32 %rem95, %92
  br i1 %cmp96, label %land.lhs.true.98, label %lor.lhs.false

land.lhs.true.98:                                 ; preds = %land.lhs.true
  %93 = load i32, i32* %y_offset, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %rem99 = srem i32 %93, %94
  %95 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 10), align 4
  %cmp100 = icmp slt i32 %rem99, %95
  br i1 %cmp100, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.98, %land.lhs.true
  %96 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %97 = load i32, i32* %y_offset, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %rem102 = srem i32 %97, %98
  %sub103 = sub nsw i32 %96, %rem102
  %99 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 9), align 4
  %cmp104 = icmp sge i32 %sub103, %99
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.117

land.lhs.true.106:                                ; preds = %lor.lhs.false
  %100 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %101 = load i32, i32* %y_offset, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %rem107 = srem i32 %101, %102
  %sub108 = sub nsw i32 %100, %rem107
  %103 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 10), align 4
  %cmp109 = icmp slt i32 %sub108, %103
  br i1 %cmp109, label %if.then.111, label %if.end.117

if.then.111:                                      ; preds = %land.lhs.true.106, %land.lhs.true.98
  %104 = load i32, i32* %x, align 4
  %105 = load i32, i32* @sx1, align 4
  %sub112 = sub nsw i32 %104, %105
  %106 = load i32, i32* %bytes, align 4
  %mul113 = mul nsw i32 %sub112, %106
  %idxprom114 = sext i32 %mul113 to i64
  %107 = load i8*, i8** %dest, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %107, i64 %idxprom114
  %arraydecay116 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i32 0
  %108 = load i32, i32* %bytes, align 4
  %109 = load i32, i32* %blend, align 4
  %110 = load i32, i32* %alpha, align 4
  call void @pix_composite(i8* %arrayidx115, i8* %arraydecay116, i32 %108, i32 %109, i32 %110)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.111, %land.lhs.true.106, %lor.lhs.false, %if.end.89
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117
  %111 = load i32, i32* %x, align 4
  %inc119 = add nsw i32 %111, 1
  store i32 %inc119, i32* %x, align 4
  br label %for.cond.66

for.end.120:                                      ; preds = %for.cond.66
  %112 = load i32, i32* %y_offset, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 8), align 4
  %div121 = sdiv i32 %113, 2
  %add122 = add nsw i32 %112, %div121
  %114 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %rem123 = srem i32 %add122, %114
  %115 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 8), align 4
  %cmp124 = icmp slt i32 %rem123, %115
  br i1 %cmp124, label %if.then.126, label %if.end.166

if.then.126:                                      ; preds = %for.end.120
  %116 = load i32, i32* @sx1, align 4
  store i32 %116, i32* %x, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.163, %if.then.126
  %117 = load i32, i32* %x, align 4
  %118 = load i32, i32* @sx2, align 4
  %cmp128 = icmp slt i32 %117, %118
  br i1 %cmp128, label %for.body.130, label %for.end.165

for.body.130:                                     ; preds = %for.cond.127
  %119 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %120 = load i32, i32* %x, align 4
  %add131 = add nsw i32 %119, %120
  %121 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 6), align 4
  %sub132 = sub nsw i32 %add131, %121
  store i32 %sub132, i32* %x_offset, align 4
  br label %while.cond.133

while.cond.133:                                   ; preds = %while.body.136, %for.body.130
  %122 = load i32, i32* %x_offset, align 4
  %cmp134 = icmp slt i32 %122, 0
  br i1 %cmp134, label %while.body.136, label %while.end.138

while.body.136:                                   ; preds = %while.cond.133
  %123 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %124 = load i32, i32* %x_offset, align 4
  %add137 = add nsw i32 %124, %123
  store i32 %add137, i32* %x_offset, align 4
  br label %while.cond.133

while.end.138:                                    ; preds = %while.cond.133
  %125 = load i32, i32* %x_offset, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %rem139 = srem i32 %125, %126
  %127 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 9), align 4
  %cmp140 = icmp sge i32 %rem139, %127
  br i1 %cmp140, label %land.lhs.true.142, label %lor.lhs.false.146

land.lhs.true.142:                                ; preds = %while.end.138
  %128 = load i32, i32* %x_offset, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %rem143 = srem i32 %128, %129
  %130 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 10), align 4
  %cmp144 = icmp slt i32 %rem143, %130
  br i1 %cmp144, label %if.then.156, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %land.lhs.true.142, %while.end.138
  %131 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %132 = load i32, i32* %x_offset, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %rem147 = srem i32 %132, %133
  %sub148 = sub nsw i32 %131, %rem147
  %134 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 9), align 4
  %cmp149 = icmp sge i32 %sub148, %134
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.162

land.lhs.true.151:                                ; preds = %lor.lhs.false.146
  %135 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %136 = load i32, i32* %x_offset, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %rem152 = srem i32 %136, %137
  %sub153 = sub nsw i32 %135, %rem152
  %138 = load i32, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 10), align 4
  %cmp154 = icmp slt i32 %sub153, %138
  br i1 %cmp154, label %if.then.156, label %if.end.162

if.then.156:                                      ; preds = %land.lhs.true.151, %land.lhs.true.142
  %139 = load i32, i32* %x, align 4
  %140 = load i32, i32* @sx1, align 4
  %sub157 = sub nsw i32 %139, %140
  %141 = load i32, i32* %bytes, align 4
  %mul158 = mul nsw i32 %sub157, %141
  %idxprom159 = sext i32 %mul158 to i64
  %142 = load i8*, i8** %dest, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %142, i64 %idxprom159
  %arraydecay161 = getelementptr inbounds [4 x i8], [4 x i8]* %icolor, i32 0, i32 0
  %143 = load i32, i32* %bytes, align 4
  %144 = load i32, i32* %blend, align 4
  %145 = load i32, i32* %alpha, align 4
  call void @pix_composite(i8* %arrayidx160, i8* %arraydecay161, i32 %143, i32 %144, i32 %145)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.156, %land.lhs.true.151, %lor.lhs.false.146
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %146 = load i32, i32* %x, align 4
  %inc164 = add nsw i32 %146, 1
  store i32 %inc164, i32* %x, align 4
  br label %for.cond.127

for.end.165:                                      ; preds = %for.cond.127
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.165, %for.end.120
  %147 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool167 = icmp ne %struct._GimpPreview* %147, null
  br i1 %tobool167, label %if.then.168, label %if.else.177

if.then.168:                                      ; preds = %if.end.166
  %148 = load i8*, i8** %buffer, align 8
  %149 = load i32, i32* %y, align 4
  %150 = load i32, i32* @sy1, align 4
  %sub169 = sub nsw i32 %149, %150
  %151 = load i32, i32* @sx2, align 4
  %152 = load i32, i32* @sx1, align 4
  %sub170 = sub nsw i32 %151, %152
  %mul171 = mul nsw i32 %sub169, %sub170
  %153 = load i32, i32* %bytes, align 4
  %mul172 = mul nsw i32 %mul171, %153
  %idx.ext = sext i32 %mul172 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %148, i64 %idx.ext
  %154 = load i8*, i8** %dest, align 8
  %155 = load i32, i32* @sx2, align 4
  %156 = load i32, i32* @sx1, align 4
  %sub174 = sub nsw i32 %155, %156
  %157 = load i32, i32* %bytes, align 4
  %mul175 = mul nsw i32 %sub174, %157
  %conv176 = sext i32 %mul175 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr173, i8* %154, i64 %conv176, i32 1, i1 false)
  br label %if.end.189

if.else.177:                                      ; preds = %if.end.166
  %158 = load i8*, i8** %dest, align 8
  %159 = load i32, i32* @sx1, align 4
  %160 = load i32, i32* %y, align 4
  %161 = load i32, i32* @sx2, align 4
  %162 = load i32, i32* @sx1, align 4
  %sub178 = sub nsw i32 %161, %162
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %158, i32 %159, i32 %160, i32 %sub178)
  %163 = load i32, i32* %y, align 4
  %rem179 = srem i32 %163, 16
  %cmp180 = icmp eq i32 %rem179, 0
  br i1 %cmp180, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %if.else.177
  %164 = load i32, i32* %y, align 4
  %conv183 = sitofp i32 %164 to double
  %165 = load i32, i32* @sy2, align 4
  %166 = load i32, i32* @sy1, align 4
  %sub184 = sub nsw i32 %165, %166
  %conv185 = sitofp i32 %sub184 to double
  %div186 = fdiv double %conv183, %conv185
  %call187 = call i32 @gimp_progress_update(double %div186)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.182, %if.else.177
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.168
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %167 = load i32, i32* %y, align 4
  %inc191 = add nsw i32 %167, 1
  store i32 %inc191, i32* %y, align 4
  br label %for.cond

for.end.192:                                      ; preds = %for.cond
  %168 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %168)
  %169 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool193 = icmp ne %struct._GimpPreview* %169, null
  br i1 %tobool193, label %if.then.194, label %if.else.197

if.then.194:                                      ; preds = %for.end.192
  %170 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %171 = load i8*, i8** %buffer, align 8
  %172 = load i32, i32* %bytes, align 4
  %173 = load i32, i32* @sx2, align 4
  %174 = load i32, i32* @sx1, align 4
  %sub195 = sub nsw i32 %173, %174
  %mul196 = mul nsw i32 %172, %sub195
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %170, i8* %171, i32 %mul196)
  %175 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %175)
  br label %if.end.205

if.else.197:                                      ; preds = %for.end.192
  %call198 = call i32 @gimp_progress_update(double 1.000000e+00)
  %176 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %176)
  %177 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id199 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %177, i32 0, i32 0
  %178 = load i32, i32* %drawable_id199, align 4
  %call200 = call i32 @gimp_drawable_merge_shadow(i32 %178, i32 1)
  %179 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id201 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %179, i32 0, i32 0
  %180 = load i32, i32* %drawable_id201, align 4
  %181 = load i32, i32* @sx1, align 4
  %182 = load i32, i32* @sy1, align 4
  %183 = load i32, i32* @sx2, align 4
  %184 = load i32, i32* @sx1, align 4
  %sub202 = sub nsw i32 %183, %184
  %185 = load i32, i32* @sy2, align 4
  %186 = load i32, i32* @sy1, align 4
  %sub203 = sub nsw i32 %185, %186
  %call204 = call i32 @gimp_drawable_update(i32 %180, i32 %181, i32 %182, i32 %sub202, i32 %sub203)
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.197, %if.then.194
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

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

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_get_unit(i32) #1

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
define internal void @update_preview(%struct._GimpPreview* %preview, %struct._GimpDrawable* %drawable) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @update_values()
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_item_get_image(i32 %1)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @grid(i32 %call, %struct._GimpDrawable* %2, %struct._GimpPreview* %3)
  ret void
}

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #1

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %new_x = alloca double, align 8
  %new_y = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  store double %call2, double* %new_x, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 1)
  store double %call5, double* %new_y, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %7 = bitcast i8* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_chain_button_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpChainButton*
  %call8 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load double, double* %new_x, align 8
  %10 = load double, double* @entry_callback.x, align 8
  %cmp = fcmp une double %9, %10
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %11 = load double, double* %new_x, align 8
  store double %11, double* @entry_callback.x, align 8
  store double %11, double* %new_y, align 8
  store double %11, double* @entry_callback.y, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_size_entry_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpSizeEntry*
  %15 = load double, double* @entry_callback.y, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %14, i32 1, double %15)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %16 = load double, double* %new_y, align 8
  %17 = load double, double* @entry_callback.y, align 8
  %cmp12 = fcmp une double %16, %17
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %18 = load double, double* %new_y, align 8
  store double %18, double* @entry_callback.y, align 8
  store double %18, double* %new_x, align 8
  store double %18, double* @entry_callback.x, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_size_entry_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpSizeEntry*
  %22 = load double, double* @entry_callback.x, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %21, i32 0, double %22)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  br label %if.end.17

if.else:                                          ; preds = %entry
  %23 = load double, double* %new_x, align 8
  store double %23, double* @entry_callback.x, align 8
  %24 = load double, double* %new_y, align 8
  store double %24, double* @entry_callback.y, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.16
  ret void
}

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_set_update(%struct._GimpColorButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal void @color_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_chain_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChainButton*
  %call2 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_button_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %5, %struct._GimpRGB* %color)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  %cmp = icmp eq %struct._GtkWidget* %6, %7
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_button_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %color)
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @hcolor_button, align 8
  %cmp8 = icmp eq %struct._GtkWidget* %11, %12
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @vcolor_button, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_color_button_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %15, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @update_values() #0 {
entry:
  %entry1 = alloca %struct._GtkWidget*, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @main_dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0))
  %3 = bitcast i8* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %entry1, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %6, i32 0)
  %call6 = call double @rint(double %call5) #7
  %conv = fptosi double %call6 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 0), align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_size_entry_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpSizeEntry*
  %call9 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %9, i32 1)
  %call10 = call double @rint(double %call9) #7
  %conv11 = fptosi double %call10 to i32
  store i32 %conv11, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 4), align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_size_entry_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call12)
  %12 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpSizeEntry*
  %call14 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %12, i32 2)
  %call15 = call double @rint(double %call14) #7
  %conv16 = fptosi double %call15 to i32
  store i32 %conv16, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 8), align 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @main_dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %call18 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0))
  %16 = bitcast i8* %call18 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %entry1, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_size_entry_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call19)
  %19 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpSizeEntry*
  %call21 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %19, i32 0)
  %call22 = call double @rint(double %call21) #7
  %conv23 = fptosi double %call22 to i32
  store i32 %conv23, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 1), align 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_size_entry_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call24)
  %22 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpSizeEntry*
  %call26 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %22, i32 1)
  %call27 = call double @rint(double %call26) #7
  %conv28 = fptosi double %call27 to i32
  store i32 %conv28, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 5), align 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_size_entry_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call29)
  %25 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpSizeEntry*
  %call31 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %25, i32 2)
  %call32 = call double @rint(double %call31) #7
  %conv33 = fptosi double %call32 to i32
  store i32 %conv33, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 9), align 4
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** @main_dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %call35 = call i8* @g_object_get_data(%struct._GObject* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0))
  %29 = bitcast i8* %call35 to %struct._GtkWidget*
  store %struct._GtkWidget* %29, %struct._GtkWidget** %entry1, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_size_entry_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call36)
  %32 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpSizeEntry*
  %call38 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %32, i32 0)
  %call39 = call double @rint(double %call38) #7
  %conv40 = fptosi double %call39 to i32
  store i32 %conv40, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 2), align 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_size_entry_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call41)
  %35 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpSizeEntry*
  %call43 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %35, i32 1)
  %call44 = call double @rint(double %call43) #7
  %conv45 = fptosi double %call44 to i32
  store i32 %conv45, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 6), align 4
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_size_entry_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call46)
  %38 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpSizeEntry*
  %call48 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %38, i32 2)
  %call49 = call double @rint(double %call48) #7
  %conv50 = fptosi double %call49 to i32
  store i32 %conv50, i32* getelementptr inbounds (%struct.Config, %struct.Config* @grid_cfg, i32 0, i32 10), align 4
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_item_get_image(i32) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare i32 @gimp_image_base_type(i32) #1

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @best_cmap_match(i8* %cmap, i32 %ncolors, %struct._GimpRGB* %color) #0 {
entry:
  %cmap.addr = alloca i8*, align 8
  %ncolors.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %cmap_index = alloca i8, align 1
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %diff = alloca i32, align 4
  %sum = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %cmap, i8** %cmap.addr, align 8
  store i32 %ncolors, i32* %ncolors.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8 0, i8* %cmap_index, align 1
  store i32 195076, i32* %max, align 4
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %0, i8* %r, i8* %g, i8* %b)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %ncolors.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %r, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %cmap.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %cmap.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv, %conv1
  store i32 %sub, i32* %diff, align 4
  %6 = load i32, i32* %diff, align 4
  %7 = load i32, i32* %diff, align 4
  %mul = mul nsw i32 %6, %7
  store i32 %mul, i32* %sum, align 4
  %8 = load i8, i8* %g, align 1
  %conv2 = zext i8 %8 to i32
  %9 = load i8*, i8** %cmap.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr3, i8** %cmap.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = zext i8 %10 to i32
  %sub5 = sub nsw i32 %conv2, %conv4
  store i32 %sub5, i32* %diff, align 4
  %11 = load i32, i32* %diff, align 4
  %12 = load i32, i32* %diff, align 4
  %mul6 = mul nsw i32 %11, %12
  %13 = load i32, i32* %sum, align 4
  %add = add nsw i32 %13, %mul6
  store i32 %add, i32* %sum, align 4
  %14 = load i8, i8* %b, align 1
  %conv7 = zext i8 %14 to i32
  %15 = load i8*, i8** %cmap.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr8, i8** %cmap.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv9 = zext i8 %16 to i32
  %sub10 = sub nsw i32 %conv7, %conv9
  store i32 %sub10, i32* %diff, align 4
  %17 = load i32, i32* %diff, align 4
  %18 = load i32, i32* %diff, align 4
  %mul11 = mul nsw i32 %17, %18
  %19 = load i32, i32* %sum, align 4
  %add12 = add nsw i32 %19, %mul11
  store i32 %add12, i32* %sum, align 4
  %20 = load i32, i32* %sum, align 4
  %21 = load i32, i32* %max, align 4
  %cmp13 = icmp slt i32 %20, %21
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %conv15 = trunc i32 %22 to i8
  store i8 %conv15, i8* %cmap_index, align 1
  %23 = load i32, i32* %sum, align 4
  store i32 %23, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8, i8* %cmap_index, align 1
  ret i8 %25
}

declare void @g_free(i8*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @pix_composite(i8* %p1, i8* %p2, i32 %bytes, i32 %blend, i32 %alpha) #6 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %blend.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %blend, i32* %blend.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %blend.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %alpha.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load i32, i32* %bytes.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %bytes.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %b, align 4
  %4 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p1.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %conv3 = sitofp i32 %conv to double
  %7 = load i8*, i8** %p2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %8 to i32
  %conv5 = sitofp i32 %conv4 to double
  %div = fdiv double %conv5, 2.550000e+02
  %sub = fsub double 1.000000e+00, %div
  %mul = fmul double %conv3, %sub
  %9 = load i32, i32* %b, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %p2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %12 = load i8*, i8** %p2.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %mul10 = mul nsw i32 %conv7, %conv9
  %conv11 = sitofp i32 %mul10 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  %add = fadd double %mul, %div12
  %conv13 = fptoui double %add to i8
  %14 = load i8*, i8** %p1.addr, align 8
  store i8 %conv13, i8* %14, align 1
  %15 = load i8*, i8** %p1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p1.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %b, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.else:                                          ; preds = %entry
  %17 = load i8*, i8** %p2.addr, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %p1.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr14, i8** %p1.addr, align 8
  store i8 %18, i8* %19, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %for.end
  %20 = load i32, i32* %alpha.addr, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.15
  %21 = load i8*, i8** %p1.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv17 = zext i8 %22 to i32
  %cmp18 = icmp slt i32 %conv17, 255
  br i1 %cmp18, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %land.lhs.true
  %23 = load i8*, i8** %p1.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv21 = zext i8 %24 to i32
  %conv22 = sitofp i32 %conv21 to double
  %25 = load i8*, i8** %p2.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx23, align 1
  %conv24 = uitofp i8 %26 to double
  %27 = load i8*, i8** %p1.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv25 = zext i8 %28 to i32
  %conv26 = sitofp i32 %conv25 to double
  %sub27 = fsub double 2.550000e+02, %conv26
  %div28 = fdiv double %conv24, %sub27
  %mul29 = fmul double 2.550000e+02, %div28
  %add30 = fadd double %conv22, %mul29
  %conv31 = fptosi double %add30 to i32
  store i32 %conv31, i32* %b, align 4
  %29 = load i32, i32* %b, align 4
  %cmp32 = icmp sgt i32 %29, 255
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %30 = load i32, i32* %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %30, %cond.false ]
  %conv34 = trunc i32 %cond to i8
  %31 = load i8*, i8** %p1.addr, align 8
  store i8 %conv34, i8* %31, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %cond.end, %land.lhs.true, %if.end.15
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
