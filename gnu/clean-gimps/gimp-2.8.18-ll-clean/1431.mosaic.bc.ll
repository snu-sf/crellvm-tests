; ModuleID = './plug-ins/common/mosaic.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.MosaicVals = type { double, double, double, double, i32, double, double, i32, i32, i32, i32, i32 }
%struct.Vertex = type { double, double }
%struct.SpecVec = type { double, double, double, double, double, double, double }
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
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.Polygon = type { i32, [12 x %struct.Vertex] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [15 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.29, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tile-size\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Average diameter of each tile (in pixels)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"tile-height\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Apparent height of each tile (in pixels)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tile-spacing\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Inter-tile spacing (in pixels)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"tile-neatness\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Deviation from perfectly formed tiles (0.0 - 1.0)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"tile-allow-split\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Allows splitting tiles at hard edges\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"light-dir\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Direction of light-source (in degrees)\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"color-variation\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Magnitude of random color variations (0.0 - 1.0)\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"antialiasing\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Enables smoother tile output at the cost of speed\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"color-averaging\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Tile color based on average of subsumed pixels\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"tile-type\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"Tile geometry { SQUARES (0), HEXAGONS (1), OCTAGONS (2), TRIANGLES (3) }\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"tile-surface\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"Surface characteristics { SMOOTH (0), ROUGH (1) }\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"grout-color\00", align 1
@.str.29 = private unnamed_addr constant [67 x i8] c"Grout color (black/white or fore/background) { BW (0), FG-BG (1) }\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"plug-in-mosaic\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"Convert the image into irregular tiles\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"Help not yet written for this plug-in\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Spencer Kimball\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"_Mosaic...\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@mvals = internal global %struct.MosaicVals { double 1.500000e+01, double 4.000000e+00, double 1.000000e+00, double 6.500000e-01, i32 1, double 1.350000e+02, double 2.000000e-01, i32 1, i32 1, i32 1, i32 0, i32 0 }, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"mosaic\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Mosaic\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"gimp-mosaic\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Squares\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Hexagons\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Octagons & squares\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"Triangles\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"_Tiling primitives:\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Tile _size:\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"Tile _height:\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Til_e spacing:\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"Tile _neatness:\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"Light _direction:\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Color _variation:\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"_Antialiasing\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Co_lor averaging\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Allo_w tile splitting\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"_Pitted surfaces\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"_FG/BG lighting\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"Finding edges\00", align 1
@std_dev = internal global double 1.000000e+00, align 8
@fore = internal global [4 x i8] zeroinitializer, align 1
@back = internal global [4 x i8] zeroinitializer, align 1
@light_x = internal global double 0.000000e+00, align 8
@light_y = internal global double 0.000000e+00, align 8
@scale = internal global double 0.000000e+00, align 8
@.str.67 = private unnamed_addr constant [16 x i8] c"Rendering tiles\00", align 1
@h_grad = internal global i8* null, align 8
@v_grad = internal global i8* null, align 8
@m_grad = internal global i8* null, align 8
@grid = internal global %struct.Vertex* null, align 8
@grid_rows = internal global i32 0, align 4
@grid_cols = internal global i32 0, align 4
@grid_row_pad = internal global i32 0, align 4
@grid_col_pad = internal global i32 0, align 4
@grid_multiple = internal global i32 0, align 4
@grid_rowstride = internal global i32 0, align 4
@.str.68 = private unnamed_addr constant [22 x i8] c"can't add more points\00", align 1
@vecs = internal global [12 x %struct.SpecVec] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 1, i32 15, i32 0, %struct._GimpParamDef* getelementptr inbounds ([15 x %struct._GimpParamDef], [15 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0)) #4
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
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %8, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 1
  %12 = load i32, i32* %width7, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %14, %cond.false ]
  %call9 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %cond, %call9
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %cond.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.MosaicVals* @mvals to i8*))
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @mosaic_dialog(%struct._GimpDrawable* %16)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %cond.end
  %17 = load i32, i32* %nparams.addr, align 4
  %cmp13 = icmp ne i32 %17, 15
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.12
  store i32 1, i32* %status, align 4
  br label %sw.epilog

if.end.16:                                        ; preds = %sw.bb.12
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data18 to double*
  %19 = load double, double* %d_float, align 8
  store double %19, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_float21 = bitcast %union._GimpParamData* %data20 to double*
  %21 = load double, double* %d_float21, align 8
  store double %21, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 1), align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 5
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_float24 = bitcast %union._GimpParamData* %data23 to double*
  %23 = load double, double* %d_float24, align 8
  store double %23, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 2), align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 6
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %25 = load double, double* %d_float27, align 8
  store double %25, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 3), align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 7
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_int3230 = bitcast %union._GimpParamData* %data29 to i32*
  %27 = load i32, i32* %d_int3230, align 4
  %tobool31 = icmp ne i32 %27, 0
  %cond32 = select i1 %tobool31, i32 1, i32 0
  store i32 %cond32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 8
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_float35 = bitcast %union._GimpParamData* %data34 to double*
  %29 = load double, double* %d_float35, align 8
  store double %29, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 5), align 8
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 9
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_float38 = bitcast %union._GimpParamData* %data37 to double*
  %31 = load double, double* %d_float38, align 8
  store double %31, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 6), align 8
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 10
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_int3241 = bitcast %union._GimpParamData* %data40 to i32*
  %33 = load i32, i32* %d_int3241, align 4
  %tobool42 = icmp ne i32 %33, 0
  %cond43 = select i1 %tobool42, i32 1, i32 0
  store i32 %cond43, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 7), align 4
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 11
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_int3246 = bitcast %union._GimpParamData* %data45 to i32*
  %35 = load i32, i32* %d_int3246, align 4
  %tobool47 = icmp ne i32 %35, 0
  %cond48 = select i1 %tobool47, i32 1, i32 0
  store i32 %cond48, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 12
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int3251 = bitcast %union._GimpParamData* %data50 to i32*
  %37 = load i32, i32* %d_int3251, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 9), align 4
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 13
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_int3254 = bitcast %union._GimpParamData* %data53 to i32*
  %39 = load i32, i32* %d_int3254, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 10), align 4
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 14
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_int3257 = bitcast %union._GimpParamData* %data56 to i32*
  %41 = load i32, i32* %d_int3257, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 11), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 9), align 4
  %cmp58 = icmp ult i32 %42, 0
  br i1 %cmp58, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %43 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 9), align 4
  %cmp60 = icmp ugt i32 %43, 3
  br i1 %cmp60, label %if.then.74, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false
  %44 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 10), align 4
  %cmp63 = icmp slt i32 %44, 0
  br i1 %cmp63, label %if.then.74, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.62
  %45 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 10), align 4
  %cmp66 = icmp sgt i32 %45, 1
  br i1 %cmp66, label %if.then.74, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.65
  %46 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 11), align 4
  %cmp69 = icmp slt i32 %46, 0
  br i1 %cmp69, label %if.then.74, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.68
  %47 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 11), align 4
  %cmp72 = icmp sgt i32 %47, 1
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false.71, %lor.lhs.false.68, %lor.lhs.false.65, %lor.lhs.false.62, %lor.lhs.false, %if.end.16
  store i32 1, i32* %status, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %lor.lhs.false.71
  br label %sw.epilog

sw.bb.76:                                         ; preds = %cond.end
  %call77 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.MosaicVals* @mvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.76, %if.end.75, %if.then.15, %if.end
  %48 = load i32, i32* %status, align 4
  %cmp78 = icmp eq i32 %48, 3
  br i1 %cmp78, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id, align 4
  %call80 = call i32 @gimp_drawable_is_rgb(i32 %50)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.86, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id83 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 0
  %52 = load i32, i32* %drawable_id83, align 4
  %call84 = call i32 @gimp_drawable_is_gray(i32 %52)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %lor.lhs.false.82, %land.lhs.true
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @mosaic(%struct._GimpDrawable* %53, %struct._GimpPreview* null)
  %54 = load i32, i32* %run_mode, align 4
  %cmp87 = icmp ne i32 %54, 1
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.then.86
  %call90 = call i32 @gimp_displays_flush()
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.then.86
  %55 = load i32, i32* %run_mode, align 4
  %cmp92 = icmp eq i32 %55, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.91
  %call95 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (%struct.MosaicVals* @mvals to i8*), i32 80)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.91
  br label %if.end.101

if.else:                                          ; preds = %lor.lhs.false.82, %sw.epilog
  %56 = load i32, i32* %status, align 4
  %cmp97 = icmp eq i32 %56, 3
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.else
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.96
  %57 = load i32, i32* %status, align 4
  store i32 %57, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %58)
  br label %return

return:                                           ; preds = %if.end.101, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mosaic_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %row = alloca i32, align 4
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %row, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 -5, i8* null)
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
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @mosaic to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
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
  %call21 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 3, i32 0)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %table, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call22)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 1, i32 1, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call24)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %37, i32 6)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %40, i32 6)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #4
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)) #4
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0)) #4
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0)) #4
  %call32 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call28, i32 0, i8* %call29, i32 1, i8* %call30, i32 2, i8* %call31, i32 3, i8* null)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %combo, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_int_combo_box_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpIntComboBox*
  %45 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 9), align 4
  %call35 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %44, i32 %45, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 9) to i8*))
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call36)
  %48 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %49 = load i32, i32* %row, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %row, align 4
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0)) #4
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call39 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %48, i32 0, i32 %49, i8* %call38, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %50, i32 2, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 2)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call41)
  %57 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %58 = load i32, i32* %row, align 4
  %inc43 = add nsw i32 %58, 1
  store i32 %inc43, i32* %row, align 4
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0)) #4
  %59 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %call45 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %57, i32 0, i32 %58, i8* %call44, i32 150, i32 5, double %59, double 5.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call45, %struct._GtkObject** %scale_data, align 8
  %60 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %61 = bitcast %struct._GtkObject* %60 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.MosaicVals* @mvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %63 = bitcast %struct._GtkObject* %62 to i8*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 2)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call48)
  %68 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %69 = load i32, i32* %row, align 4
  %inc50 = add nsw i32 %69, 1
  store i32 %inc50, i32* %row, align 4
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0)) #4
  %70 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 1), align 8
  %call52 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %68, i32 0, i32 %69, i8* %call51, i32 150, i32 5, double %70, double 1.000000e+00, double 5.000000e+01, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call52, %struct._GtkObject** %scale_data, align 8
  %71 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %72 = bitcast %struct._GtkObject* %71 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %74 = bitcast %struct._GtkObject* %73 to i8*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 2)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call55)
  %79 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %80 = load i32, i32* %row, align 4
  %inc57 = add nsw i32 %80, 1
  store i32 %inc57, i32* %row, align 4
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0)) #4
  %81 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 2), align 8
  %call59 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %79, i32 0, i32 %80, i8* %call58, i32 150, i32 5, double %81, double 1.000000e+00, double 5.000000e+01, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call59, %struct._GtkObject** %scale_data, align 8
  %82 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %83 = bitcast %struct._GtkObject* %82 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %84 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %85 = bitcast %struct._GtkObject* %84 to i8*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %87, void (i8*, %struct._GClosure*)* null, i32 2)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_table_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call62)
  %90 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkTable*
  %91 = load i32, i32* %row, align 4
  %inc64 = add nsw i32 %91, 1
  store i32 %inc64, i32* %row, align 4
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0)) #4
  %92 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 3), align 8
  %call66 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %90, i32 0, i32 %91, i8* %call65, i32 150, i32 5, double %92, double 0.000000e+00, double 1.000000e+00, double 1.000000e-01, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call66, %struct._GtkObject** %scale_data, align 8
  %93 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %94 = bitcast %struct._GtkObject* %93 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %95 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %96 = bitcast %struct._GtkObject* %95 to i8*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %98, void (i8*, %struct._GClosure*)* null, i32 2)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call69)
  %101 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %102 = load i32, i32* %row, align 4
  %inc71 = add nsw i32 %102, 1
  store i32 %inc71, i32* %row, align 4
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0)) #4
  %103 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 5), align 8
  %call73 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %101, i32 0, i32 %102, i8* %call72, i32 150, i32 5, double %103, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call73, %struct._GtkObject** %scale_data, align 8
  %104 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %105 = bitcast %struct._GtkObject* %104 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %106 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %107 = bitcast %struct._GtkObject* %106 to i8*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %109, void (i8*, %struct._GClosure*)* null, i32 2)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call76)
  %112 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  %113 = load i32, i32* %row, align 4
  %inc78 = add nsw i32 %113, 1
  store i32 %inc78, i32* %row, align 4
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0)) #4
  %114 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 6), align 8
  %call80 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %112, i32 0, i32 %113, i8* %call79, i32 150, i32 5, double %114, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call80, %struct._GtkObject** %scale_data, align 8
  %115 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %116 = bitcast %struct._GtkObject* %115 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %118 = bitcast %struct._GtkObject* %117 to i8*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 2)
  %call83 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %vbox, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call84)
  %123 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %123, %struct._GtkWidget* %124, i32 0, i32 0, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0)) #4
  %call87 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call86)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %toggle, align 8
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_box_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call88)
  %128 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkBox*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %128, %struct._GtkWidget* %129, i32 0, i32 0, i32 0)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_toggle_button_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call90)
  %132 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkToggleButton*
  %133 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 7), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %132, i32 %133)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %136 = bitcast %struct._GtkWidget* %135 to i8*
  %call92 = call i64 @g_signal_connect_data(i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %138 = bitcast %struct._GtkWidget* %137 to i8*
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %140 = bitcast %struct._GtkWidget* %139 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %140, void (i8*, %struct._GClosure*)* null, i32 2)
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0)) #4
  %call95 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call94)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %toggle, align 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call96)
  %143 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %143, %struct._GtkWidget* %144, i32 0, i32 0, i32 0)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_toggle_button_get_type() #5
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call98)
  %147 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkToggleButton*
  %148 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %147, i32 %148)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %151 = bitcast %struct._GtkWidget* %150 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %153 = bitcast %struct._GtkWidget* %152 to i8*
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %155 = bitcast %struct._GtkWidget* %154 to i8*
  %call101 = call i64 @g_signal_connect_data(i8* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %155, void (i8*, %struct._GClosure*)* null, i32 2)
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0)) #4
  %call103 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call102)
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %toggle, align 8
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call104)
  %158 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %158, %struct._GtkWidget* %159, i32 0, i32 0, i32 0)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_toggle_button_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call106)
  %162 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkToggleButton*
  %163 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %162, i32 %163)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %164)
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %166 = bitcast %struct._GtkWidget* %165 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %168 = bitcast %struct._GtkWidget* %167 to i8*
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %170 = bitcast %struct._GtkWidget* %169 to i8*
  %call109 = call i64 @g_signal_connect_data(i8* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %170, void (i8*, %struct._GClosure*)* null, i32 2)
  %call110 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0)) #4
  %call111 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call110)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %toggle, align 8
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_box_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call112)
  %173 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkBox*
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %173, %struct._GtkWidget* %174, i32 0, i32 0, i32 0)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_toggle_button_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call114)
  %177 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkToggleButton*
  %178 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 10), align 4
  %cmp = icmp eq i32 %178, 1
  %conv = zext i1 %cmp to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %177, i32 %conv)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %179)
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %181 = bitcast %struct._GtkWidget* %180 to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %183 = bitcast %struct._GtkWidget* %182 to i8*
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %185 = bitcast %struct._GtkWidget* %184 to i8*
  %call117 = call i64 @g_signal_connect_data(i8* %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %185, void (i8*, %struct._GClosure*)* null, i32 2)
  %call118 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0)) #4
  %call119 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call118)
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %toggle, align 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_box_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call120)
  %188 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkBox*
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %188, %struct._GtkWidget* %189, i32 0, i32 0, i32 0)
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_toggle_button_get_type() #5
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call122)
  %192 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkToggleButton*
  %193 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 11), align 4
  %cmp124 = icmp eq i32 %193, 1
  %conv125 = zext i1 %cmp124 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %192, i32 %conv125)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %194)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %196 = bitcast %struct._GtkWidget* %195 to i8*
  %call126 = call i64 @g_signal_connect_data(i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %198 = bitcast %struct._GtkWidget* %197 to i8*
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %200 = bitcast %struct._GtkWidget* %199 to i8*
  %call127 = call i64 @g_signal_connect_data(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %200, void (i8*, %struct._GClosure*)* null, i32 2)
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %201)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %call128 = call i64 @gimp_dialog_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call128)
  %204 = bitcast %struct._GTypeInstance* %call129 to %struct._GimpDialog*
  %call130 = call i32 @gimp_dialog_run(%struct._GimpDialog* %204)
  %cmp131 = icmp eq i32 %call130, -5
  %conv132 = zext i1 %cmp131 to i32
  store i32 %conv132, i32* %run, align 4
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %205)
  %206 = load i32, i32* %run, align 4
  ret i32 %206
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

; Function Attrs: nounwind uwtable
define internal void @mosaic(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %x1, i32* %y1)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %width, i32* %height)
  %3 = load i32, i32* %x1, align 4
  %4 = load i32, i32* %width, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %x2, align 4
  %5 = load i32, i32* %y1, align 4
  %6 = load i32, i32* %height, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %y2, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  br label %if.end.39

if.end:                                           ; preds = %if.else
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* %width, align 4
  %add4 = add nsw i32 %9, %10
  store i32 %add4, i32* %x2, align 4
  %11 = load i32, i32* %y1, align 4
  %12 = load i32, i32* %height, align 4
  %add5 = add nsw i32 %11, %12
  store i32 %add5, i32* %y2, align 4
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0)) #4
  %call7 = call i32 @gimp_progress_init(i8* %call6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load double, double* @std_dev, align 8
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %y1, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %19 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @find_gradients(%struct._GimpDrawable* %13, double %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct._GimpPreview* %19)
  %20 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 9), align 4
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end.8
  %21 = load i32, i32* %x1, align 4
  %22 = load i32, i32* %y1, align 4
  %23 = load i32, i32* %x2, align 4
  %24 = load i32, i32* %y2, align 4
  call void @grid_create_squares(i32 %21, i32 %22, i32 %23, i32 %24)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end.8
  %25 = load i32, i32* %x1, align 4
  %26 = load i32, i32* %y1, align 4
  %27 = load i32, i32* %x2, align 4
  %28 = load i32, i32* %y2, align 4
  call void @grid_create_hexagons(i32 %25, i32 %26, i32 %27, i32 %28)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.8
  %29 = load i32, i32* %x1, align 4
  %30 = load i32, i32* %y1, align 4
  %31 = load i32, i32* %x2, align 4
  %32 = load i32, i32* %y2, align 4
  call void @grid_create_octagons(i32 %29, i32 %30, i32 %31, i32 %32)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.8
  %33 = load i32, i32* %x1, align 4
  %34 = load i32, i32* %y1, align 4
  %35 = load i32, i32* %x2, align 4
  %36 = load i32, i32* %y2, align 4
  call void @grid_create_triangles(i32 %33, i32 %34, i32 %35, i32 %36)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb
  %37 = load i32, i32* %x1, align 4
  %38 = load i32, i32* %y1, align 4
  %39 = load i32, i32* %x2, align 4
  %40 = load i32, i32* %y2, align 4
  call void @grid_localize(i32 %37, i32 %38, i32 %39, i32 %40)
  %41 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 11), align 4
  switch i32 %41, label %sw.epilog.18 [
    i32 0, label %sw.bb.12
    i32 1, label %sw.bb.13
  ]

sw.bb.12:                                         ; preds = %sw.epilog
  store i8 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fore, i32 0, i64 2), align 1
  store i8 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fore, i32 0, i64 1), align 1
  store i8 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fore, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @back, i32 0, i64 2), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @back, i32 0, i64 1), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @back, i32 0, i64 0), align 1
  br label %sw.epilog.18

sw.bb.13:                                         ; preds = %sw.epilog
  %call14 = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 0
  %43 = load i32, i32* %drawable_id15, align 4
  call void @gimp_drawable_get_color_uchar(i32 %43, %struct._GimpRGB* %color, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fore, i32 0, i32 0))
  %call16 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 0
  %45 = load i32, i32* %drawable_id17, align 4
  call void @gimp_drawable_get_color_uchar(i32 %45, %struct._GimpRGB* %color, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @back, i32 0, i32 0))
  br label %sw.epilog.18

sw.epilog.18:                                     ; preds = %sw.epilog, %sw.bb.13, %sw.bb.12
  %46 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 5), align 8
  %mul = fmul double %46, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  %call19 = call double @cos(double %div) #4
  %sub = fsub double -0.000000e+00, %call19
  store double %sub, double* @light_x, align 8
  %47 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 5), align 8
  %mul20 = fmul double %47, 0x400921FB54442D18
  %div21 = fdiv double %mul20, 1.800000e+02
  %call22 = call double @sin(double %div21) #4
  store double %call22, double* @light_y, align 8
  %48 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 2), align 8
  %49 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %div23 = fdiv double %49, 2.000000e+00
  %cmp = fcmp ogt double %48, %div23
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.18
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.18
  %50 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 2), align 8
  %51 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %div24 = fdiv double %50, %51
  %sub25 = fsub double 1.000000e+00, %div24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 5.000000e-01, %cond.true ], [ %sub25, %cond.false ]
  store double %cond, double* @scale, align 8
  %52 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool26 = icmp ne %struct._GimpPreview* %52, null
  br i1 %tobool26, label %if.end.30, label %if.then.27

if.then.27:                                       ; preds = %cond.end
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0)) #4
  %call29 = call i32 @gimp_progress_init(i8* %call28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %cond.end
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %54 = load i32, i32* %x1, align 4
  %55 = load i32, i32* %y1, align 4
  %56 = load i32, i32* %x2, align 4
  %57 = load i32, i32* %y2, align 4
  %58 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @grid_render(%struct._GimpDrawable* %53, i32 %54, i32 %55, i32 %56, i32 %57, %struct._GimpPreview* %58)
  %59 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool31 = icmp ne %struct._GimpPreview* %59, null
  br i1 %tobool31, label %if.end.39, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %60)
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 0
  %62 = load i32, i32* %drawable_id33, align 4
  %call34 = call i32 @gimp_drawable_merge_shadow(i32 %62, i32 1)
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 0
  %64 = load i32, i32* %drawable_id35, align 4
  %65 = load i32, i32* %x1, align 4
  %66 = load i32, i32* %y1, align 4
  %67 = load i32, i32* %x2, align 4
  %68 = load i32, i32* %x1, align 4
  %sub36 = sub nsw i32 %67, %68
  %69 = load i32, i32* %y2, align 4
  %70 = load i32, i32* %y1, align 4
  %sub37 = sub nsw i32 %69, %70
  %call38 = call i32 @gimp_drawable_update(i32 %64, i32 %65, i32 %66, i32 %sub36, i32 %sub37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.3, %if.then.32, %if.end.30
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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_gradients(%struct._GimpDrawable* %drawable, double %std_dev, i32 %x1, i32 %y1, i32 %width, i32 %height, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %std_dev.addr = alloca double, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %gr = alloca i8*, align 8
  %dh = alloca i8*, align 8
  %dv = alloca i8*, align 8
  %hmax = alloca i32, align 4
  %vmax = alloca i32, align 4
  %row = alloca i32, align 4
  %rows = alloca i32, align 4
  %ith_row = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %std_dev, double* %std_dev.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** @h_grad, align 8
  %2 = load i32, i32* %width.addr, align 4
  %3 = load i32, i32* %height.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %conv2 = sext i32 %mul1 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv2, i64 1)
  store i8* %call3, i8** @v_grad, align 8
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %mul4 = mul nsw i32 %4, %5
  %conv5 = sext i32 %mul4 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv5, i64 1)
  store i8* %call6, i8** @m_grad, align 8
  %6 = load i32, i32* %width.addr, align 4
  %mul7 = mul nsw i32 %6, 2
  %7 = load i32, i32* %height.addr, align 4
  %mul8 = mul nsw i32 %7, 2
  %add = add nsw i32 %mul7, %mul8
  store i32 %add, i32* %rows, align 4
  %8 = load i32, i32* %rows, align 4
  %div = sdiv i32 %8, 256
  store i32 %div, i32* %ith_row, align 4
  %9 = load i32, i32* %ith_row, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %ith_row, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %row, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = load i32, i32* %x1.addr, align 4
  %12 = load i32, i32* %y1.addr, align 4
  %13 = load i32, i32* %width.addr, align 4
  %14 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 0, i32 0)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load i32, i32* %x1.addr, align 4
  %17 = load i32, i32* %y1.addr, align 4
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %height.addr, align 4
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %20, null
  %conv9 = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %conv9, i32 1)
  %21 = load double, double* %std_dev.addr, align 8
  %22 = load i32, i32* %rows, align 4
  %23 = load i32, i32* %ith_row, align 4
  %24 = load i32, i32* %x1.addr, align 4
  %25 = load i32, i32* %y1.addr, align 4
  %26 = load i32, i32* %x1.addr, align 4
  %27 = load i32, i32* %width.addr, align 4
  %add10 = add nsw i32 %26, %27
  %28 = load i32, i32* %y1.addr, align 4
  %29 = load i32, i32* %height.addr, align 4
  %add11 = add nsw i32 %28, %29
  %30 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gaussian_deriv(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, double %21, i32* %row, i32 %22, i32 %23, i32 %24, i32 %25, i32 %add10, i32 %add11, %struct._GimpPreview* %30)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = load i32, i32* %x1.addr, align 4
  %33 = load i32, i32* %y1.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 0, i32 1)
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  store i32 0, i32* %y, align 4
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  store i32 0, i32* %x, align 4
  %36 = load i32, i32* %width.addr, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  store i32 %36, i32* %w, align 4
  %37 = load i32, i32* %height.addr, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  store i32 %37, i32* %h, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  store i32 1, i32* %bpp, align 4
  %38 = load i32, i32* %width.addr, align 4
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  store i32 %38, i32* %rowstride, align 4
  %39 = load i8*, i8** @h_grad, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  store i8* %39, i8** %data, align 8
  call void @find_max_gradient(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %41 = load i32, i32* %x1.addr, align 4
  %42 = load i32, i32* %y1.addr, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 0, i32 0)
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %46 = load i32, i32* %x1.addr, align 4
  %47 = load i32, i32* %y1.addr, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %height.addr, align 4
  %50 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp12 = icmp eq %struct._GimpPreview* %50, null
  %conv13 = zext i1 %cmp12 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %conv13, i32 1)
  %51 = load double, double* %std_dev.addr, align 8
  %52 = load i32, i32* %rows, align 4
  %53 = load i32, i32* %ith_row, align 4
  %54 = load i32, i32* %x1.addr, align 4
  %55 = load i32, i32* %y1.addr, align 4
  %56 = load i32, i32* %x1.addr, align 4
  %57 = load i32, i32* %width.addr, align 4
  %add14 = add nsw i32 %56, %57
  %58 = load i32, i32* %y1.addr, align 4
  %59 = load i32, i32* %height.addr, align 4
  %add15 = add nsw i32 %58, %59
  %60 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gaussian_deriv(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, i32 1, double %51, i32* %row, i32 %52, i32 %53, i32 %54, i32 %55, i32 %add14, i32 %add15, %struct._GimpPreview* %60)
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %62 = load i32, i32* %x1.addr, align 4
  %63 = load i32, i32* %y1.addr, align 4
  %64 = load i32, i32* %width.addr, align 4
  %65 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 0, i32 1)
  %y16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  store i32 0, i32* %y16, align 4
  %x17 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  store i32 0, i32* %x17, align 4
  %66 = load i32, i32* %width.addr, align 4
  %w18 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  store i32 %66, i32* %w18, align 4
  %67 = load i32, i32* %height.addr, align 4
  %h19 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  store i32 %67, i32* %h19, align 4
  %bpp20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  store i32 1, i32* %bpp20, align 4
  %68 = load i32, i32* %width.addr, align 4
  %rowstride21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  store i32 %68, i32* %rowstride21, align 4
  %69 = load i8*, i8** @v_grad, align 8
  %data22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  store i8* %69, i8** %data22, align 8
  call void @find_max_gradient(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  %70 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool23 = icmp ne %struct._GimpPreview* %70, null
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end
  %call25 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end
  %71 = load i8*, i8** @m_grad, align 8
  store i8* %71, i8** %gr, align 8
  %72 = load i8*, i8** @h_grad, align 8
  store i8* %72, i8** %dh, align 8
  %73 = load i8*, i8** @v_grad, align 8
  store i8* %73, i8** %dv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %if.end.26
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %height.addr, align 4
  %cmp27 = icmp slt i32 %74, %75
  br i1 %cmp27, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %for.body
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %width.addr, align 4
  %cmp30 = icmp slt i32 %76, %77
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %78 = load i32, i32* %j, align 4
  %tobool33 = icmp ne i32 %78, 0
  br i1 %tobool33, label %lor.lhs.false, label %if.then.42

lor.lhs.false:                                    ; preds = %for.body.32
  %79 = load i32, i32* %i, align 4
  %tobool34 = icmp ne i32 %79, 0
  br i1 %tobool34, label %lor.lhs.false.35, label %if.then.42

lor.lhs.false.35:                                 ; preds = %lor.lhs.false
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %81, 1
  %cmp36 = icmp eq i32 %80, %sub
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.35
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %height.addr, align 4
  %sub39 = sub nsw i32 %83, 1
  %cmp40 = icmp eq i32 %82, %sub39
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.35, %lor.lhs.false, %for.body.32
  %84 = load i8*, i8** %gr, align 8
  store i8 7, i8* %84, align 1
  br label %if.end.53

if.else:                                          ; preds = %lor.lhs.false.38
  %85 = load i8*, i8** %dh, align 8
  %86 = load i8, i8* %85, align 1
  %conv43 = zext i8 %86 to i32
  %sub44 = sub nsw i32 %conv43, 128
  store i32 %sub44, i32* %hmax, align 4
  %87 = load i8*, i8** %dv, align 8
  %88 = load i8, i8* %87, align 1
  %conv45 = zext i8 %88 to i32
  %sub46 = sub nsw i32 %conv45, 128
  store i32 %sub46, i32* %vmax, align 4
  %89 = load i32, i32* %hmax, align 4
  %90 = load i32, i32* %hmax, align 4
  %mul47 = mul nsw i32 %89, %90
  %91 = load i32, i32* %vmax, align 4
  %92 = load i32, i32* %vmax, align 4
  %mul48 = mul nsw i32 %91, %92
  %add49 = add nsw i32 %mul47, %mul48
  %conv50 = sitofp i32 %add49 to double
  %call51 = call double @sqrt(double %conv50) #4
  %conv52 = fptoui double %call51 to i8
  %93 = load i8*, i8** %gr, align 8
  store i8 %conv52, i8* %93, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %94 = load i32, i32* %j, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %j, align 4
  %95 = load i8*, i8** %dh, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr, i8** %dh, align 8
  %96 = load i8*, i8** %dv, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr54, i8** %dv, align 8
  %97 = load i8*, i8** %gr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr55, i8** %gr, align 8
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %98 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %98, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grid_create_squares(i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %pt = alloca %struct.Vertex*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* %size, align 4
  %1 = load i32, i32* %x2.addr, align 4
  %2 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %width, align 4
  %3 = load i32, i32* %y2.addr, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %3, %4
  store i32 %sub1, i32* %height, align 4
  %5 = load i32, i32* %height, align 4
  %6 = load i32, i32* %size, align 4
  %add = add nsw i32 %5, %6
  %sub2 = sub nsw i32 %add, 1
  %7 = load i32, i32* %size, align 4
  %div = sdiv i32 %sub2, %7
  store i32 %div, i32* %rows, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %size, align 4
  %add3 = add nsw i32 %8, %9
  %sub4 = sub nsw i32 %add3, 1
  %10 = load i32, i32* %size, align 4
  %div5 = sdiv i32 %sub4, %10
  store i32 %div5, i32* %cols, align 4
  %11 = load i32, i32* %cols, align 4
  %add6 = add nsw i32 %11, 2
  %12 = load i32, i32* %rows, align 4
  %add7 = add nsw i32 %12, 2
  %mul = mul nsw i32 %add6, %add7
  %conv8 = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv8, i64 16)
  %13 = bitcast i8* %call to %struct.Vertex*
  store %struct.Vertex* %13, %struct.Vertex** @grid, align 8
  %14 = load i32, i32* %cols, align 4
  %add9 = add nsw i32 %14, 2
  %add10 = add nsw i32 %add9, 1
  %15 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %idx.ext = sext i32 %add10 to i64
  %add.ptr = getelementptr inbounds %struct.Vertex, %struct.Vertex* %15, i64 %idx.ext
  store %struct.Vertex* %add.ptr, %struct.Vertex** @grid, align 8
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %rows, align 4
  %cmp = icmp sle i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %cols, align 4
  %cmp13 = icmp sle i32 %18, %19
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %20 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %cols, align 4
  %add16 = add nsw i32 %22, 2
  %mul17 = mul nsw i32 %21, %add16
  %23 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %mul17, %23
  %idx.ext19 = sext i32 %add18 to i64
  %add.ptr20 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %20, i64 %idx.ext19
  store %struct.Vertex* %add.ptr20, %struct.Vertex** %pt, align 8
  %24 = load i32, i32* %x1.addr, align 4
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %size, align 4
  %mul21 = mul nsw i32 %25, %26
  %add22 = add nsw i32 %24, %mul21
  %27 = load i32, i32* %size, align 4
  %div23 = sdiv i32 %27, 2
  %add24 = add nsw i32 %add22, %div23
  %conv25 = sitofp i32 %add24 to double
  %28 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %28, i32 0, i32 0
  store double %conv25, double* %x, align 8
  %29 = load i32, i32* %y1.addr, align 4
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %size, align 4
  %mul26 = mul nsw i32 %30, %31
  %add27 = add nsw i32 %29, %mul26
  %32 = load i32, i32* %size, align 4
  %div28 = sdiv i32 %32, 2
  %add29 = add nsw i32 %add27, %div28
  %conv30 = sitofp i32 %add29 to double
  %33 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %33, i32 0, i32 1
  store double %conv30, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %34 = load i32, i32* %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %35 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %35, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %36 = load i32, i32* %rows, align 4
  store i32 %36, i32* @grid_rows, align 4
  %37 = load i32, i32* %cols, align 4
  store i32 %37, i32* @grid_cols, align 4
  store i32 1, i32* @grid_row_pad, align 4
  store i32 1, i32* @grid_col_pad, align 4
  store i32 1, i32* @grid_multiple, align 4
  %38 = load i32, i32* %cols, align 4
  %add34 = add nsw i32 %38, 2
  store i32 %add34, i32* @grid_rowstride, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grid_create_hexagons(i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %hex_l1 = alloca double, align 8
  %hex_l2 = alloca double, align 8
  %hex_l3 = alloca double, align 8
  %hex_width = alloca double, align 8
  %hex_height = alloca double, align 8
  %pt = alloca %struct.Vertex*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %width, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %3 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %height, align 4
  %4 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %div = fdiv double %4, 2.000000e+00
  store double %div, double* %hex_l1, align 8
  %5 = load double, double* %hex_l1, align 8
  %mul = fmul double %5, 2.000000e+00
  %call = call double @sqrt(double 3.000000e+00) #4
  %div2 = fdiv double %mul, %call
  store double %div2, double* %hex_l2, align 8
  %6 = load double, double* %hex_l1, align 8
  %call3 = call double @sqrt(double 3.000000e+00) #4
  %div4 = fdiv double %6, %call3
  store double %div4, double* %hex_l3, align 8
  %7 = load double, double* %hex_l1, align 8
  %mul5 = fmul double 6.000000e+00, %7
  %call6 = call double @sqrt(double 3.000000e+00) #4
  %div7 = fdiv double %mul5, %call6
  store double %div7, double* %hex_width, align 8
  %8 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  store double %8, double* %hex_height, align 8
  %9 = load i32, i32* %height, align 4
  %conv = sitofp i32 %9 to double
  %10 = load double, double* %hex_height, align 8
  %add = fadd double %conv, %10
  %sub8 = fsub double %add, 1.000000e+00
  %11 = load double, double* %hex_height, align 8
  %div9 = fdiv double %sub8, %11
  %conv10 = fptosi double %div9 to i32
  store i32 %conv10, i32* %rows, align 4
  %12 = load i32, i32* %width, align 4
  %conv11 = sitofp i32 %12 to double
  %13 = load double, double* %hex_width, align 8
  %mul12 = fmul double %13, 2.000000e+00
  %add13 = fadd double %conv11, %mul12
  %sub14 = fsub double %add13, 1.000000e+00
  %14 = load double, double* %hex_width, align 8
  %div15 = fdiv double %sub14, %14
  %conv16 = fptosi double %div15 to i32
  store i32 %conv16, i32* %cols, align 4
  %15 = load i32, i32* %cols, align 4
  %add17 = add nsw i32 %15, 2
  %mul18 = mul nsw i32 %add17, 4
  %16 = load i32, i32* %rows, align 4
  %add19 = add nsw i32 %16, 2
  %mul20 = mul nsw i32 %mul18, %add19
  %conv21 = sext i32 %mul20 to i64
  %call22 = call noalias i8* @g_malloc_n(i64 %conv21, i64 16)
  %17 = bitcast i8* %call22 to %struct.Vertex*
  store %struct.Vertex* %17, %struct.Vertex** @grid, align 8
  %18 = load i32, i32* %cols, align 4
  %add23 = add nsw i32 %18, 2
  %mul24 = mul nsw i32 %add23, 4
  %add25 = add nsw i32 %mul24, 4
  %19 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %idx.ext = sext i32 %add25 to i64
  %add.ptr = getelementptr inbounds %struct.Vertex, %struct.Vertex* %19, i64 %idx.ext
  store %struct.Vertex* %add.ptr, %struct.Vertex** @grid, align 8
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %entry
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %rows, align 4
  %cmp = icmp sle i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %cols, align 4
  %cmp28 = icmp sle i32 %22, %23
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %24 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %cols, align 4
  %add31 = add nsw i32 %26, 2
  %mul32 = mul nsw i32 %25, %add31
  %mul33 = mul nsw i32 %mul32, 4
  %27 = load i32, i32* %j, align 4
  %mul34 = mul nsw i32 %27, 4
  %add35 = add nsw i32 %mul33, %mul34
  %idx.ext36 = sext i32 %add35 to i64
  %add.ptr37 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %24, i64 %idx.ext36
  store %struct.Vertex* %add.ptr37, %struct.Vertex** %pt, align 8
  %28 = load i32, i32* %x1.addr, align 4
  %conv38 = sitofp i32 %28 to double
  %29 = load double, double* %hex_width, align 8
  %30 = load i32, i32* %j, align 4
  %conv39 = sitofp i32 %30 to double
  %mul40 = fmul double %29, %conv39
  %add41 = fadd double %conv38, %mul40
  %31 = load double, double* %hex_l3, align 8
  %add42 = fadd double %add41, %31
  %32 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx = getelementptr inbounds %struct.Vertex, %struct.Vertex* %32, i64 0
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  store double %add42, double* %x, align 8
  %33 = load i32, i32* %y1.addr, align 4
  %conv43 = sitofp i32 %33 to double
  %34 = load double, double* %hex_height, align 8
  %35 = load i32, i32* %i, align 4
  %conv44 = sitofp i32 %35 to double
  %mul45 = fmul double %34, %conv44
  %add46 = fadd double %conv43, %mul45
  %36 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx47 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %36, i64 0
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx47, i32 0, i32 1
  store double %add46, double* %y, align 8
  %37 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx48 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %37, i64 0
  %x49 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx48, i32 0, i32 0
  %38 = load double, double* %x49, align 8
  %39 = load double, double* %hex_l2, align 8
  %add50 = fadd double %38, %39
  %40 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx51 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %40, i64 1
  %x52 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx51, i32 0, i32 0
  store double %add50, double* %x52, align 8
  %41 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx53 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %41, i64 0
  %y54 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx53, i32 0, i32 1
  %42 = load double, double* %y54, align 8
  %43 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx55 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %43, i64 1
  %y56 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx55, i32 0, i32 1
  store double %42, double* %y56, align 8
  %44 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx57 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %44, i64 1
  %x58 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx57, i32 0, i32 0
  %45 = load double, double* %x58, align 8
  %46 = load double, double* %hex_l3, align 8
  %add59 = fadd double %45, %46
  %47 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx60 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %47, i64 2
  %x61 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx60, i32 0, i32 0
  store double %add59, double* %x61, align 8
  %48 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx62 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %48, i64 1
  %y63 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx62, i32 0, i32 1
  %49 = load double, double* %y63, align 8
  %50 = load double, double* %hex_l1, align 8
  %add64 = fadd double %49, %50
  %51 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx65 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %51, i64 2
  %y66 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx65, i32 0, i32 1
  store double %add64, double* %y66, align 8
  %52 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx67 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %52, i64 0
  %x68 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx67, i32 0, i32 0
  %53 = load double, double* %x68, align 8
  %54 = load double, double* %hex_l3, align 8
  %sub69 = fsub double %53, %54
  %55 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx70 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %55, i64 3
  %x71 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx70, i32 0, i32 0
  store double %sub69, double* %x71, align 8
  %56 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx72 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %56, i64 0
  %y73 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx72, i32 0, i32 1
  %57 = load double, double* %y73, align 8
  %58 = load double, double* %hex_l1, align 8
  %add74 = fadd double %57, %58
  %59 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx75 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %59, i64 3
  %y76 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx75, i32 0, i32 1
  store double %add74, double* %y76, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %60 = load i32, i32* %j, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end
  %61 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %61, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %62 = load i32, i32* %rows, align 4
  store i32 %62, i32* @grid_rows, align 4
  %63 = load i32, i32* %cols, align 4
  store i32 %63, i32* @grid_cols, align 4
  store i32 1, i32* @grid_row_pad, align 4
  store i32 1, i32* @grid_col_pad, align 4
  store i32 4, i32* @grid_multiple, align 4
  %64 = load i32, i32* %cols, align 4
  %add80 = add nsw i32 %64, 2
  %mul81 = mul nsw i32 %add80, 4
  store i32 %mul81, i32* @grid_rowstride, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grid_create_octagons(i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ts = alloca double, align 8
  %side = alloca double, align 8
  %leg = alloca double, align 8
  %oct_size = alloca double, align 8
  %pt = alloca %struct.Vertex*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %width, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %3 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %height, align 4
  %4 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  store double %4, double* %ts, align 8
  %5 = load double, double* %ts, align 8
  %call = call double @sqrt(double 2.000000e+00) #4
  %add = fadd double %call, 1.000000e+00
  %div = fdiv double %5, %add
  store double %div, double* %side, align 8
  %6 = load double, double* %side, align 8
  %call2 = call double @sqrt(double 2.000000e+00) #4
  %mul = fmul double %6, %call2
  %mul3 = fmul double %mul, 5.000000e-01
  store double %mul3, double* %leg, align 8
  %7 = load double, double* %ts, align 8
  %8 = load double, double* %side, align 8
  %add4 = fadd double %7, %8
  store double %add4, double* %oct_size, align 8
  %9 = load i32, i32* %height, align 4
  %conv = sitofp i32 %9 to double
  %10 = load double, double* %oct_size, align 8
  %add5 = fadd double %conv, %10
  %sub6 = fsub double %add5, 1.000000e+00
  %11 = load double, double* %oct_size, align 8
  %div7 = fdiv double %sub6, %11
  %conv8 = fptosi double %div7 to i32
  store i32 %conv8, i32* %rows, align 4
  %12 = load i32, i32* %width, align 4
  %conv9 = sitofp i32 %12 to double
  %13 = load double, double* %oct_size, align 8
  %mul10 = fmul double %13, 2.000000e+00
  %add11 = fadd double %conv9, %mul10
  %sub12 = fsub double %add11, 1.000000e+00
  %14 = load double, double* %oct_size, align 8
  %div13 = fdiv double %sub12, %14
  %conv14 = fptosi double %div13 to i32
  store i32 %conv14, i32* %cols, align 4
  %15 = load i32, i32* %cols, align 4
  %add15 = add nsw i32 %15, 2
  %mul16 = mul nsw i32 %add15, 8
  %16 = load i32, i32* %rows, align 4
  %add17 = add nsw i32 %16, 2
  %mul18 = mul nsw i32 %mul16, %add17
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 16)
  %17 = bitcast i8* %call20 to %struct.Vertex*
  store %struct.Vertex* %17, %struct.Vertex** @grid, align 8
  %18 = load i32, i32* %cols, align 4
  %add21 = add nsw i32 %18, 2
  %mul22 = mul nsw i32 %add21, 8
  %add23 = add nsw i32 %mul22, 8
  %19 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %idx.ext = sext i32 %add23 to i64
  %add.ptr = getelementptr inbounds %struct.Vertex, %struct.Vertex* %19, i64 %idx.ext
  store %struct.Vertex* %add.ptr, %struct.Vertex** @grid, align 8
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.113, %entry
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %rows, align 4
  %add24 = add nsw i32 %21, 1
  %cmp = icmp slt i32 %20, %add24
  br i1 %cmp, label %for.body, label %for.end.115

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %cols, align 4
  %add27 = add nsw i32 %23, 1
  %cmp28 = icmp slt i32 %22, %add27
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.26
  %24 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %cols, align 4
  %add31 = add nsw i32 %26, 2
  %mul32 = mul nsw i32 %25, %add31
  %mul33 = mul nsw i32 %mul32, 8
  %27 = load i32, i32* %j, align 4
  %mul34 = mul nsw i32 %27, 8
  %add35 = add nsw i32 %mul33, %mul34
  %idx.ext36 = sext i32 %add35 to i64
  %add.ptr37 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %24, i64 %idx.ext36
  store %struct.Vertex* %add.ptr37, %struct.Vertex** %pt, align 8
  %28 = load i32, i32* %x1.addr, align 4
  %conv38 = sitofp i32 %28 to double
  %29 = load double, double* %oct_size, align 8
  %30 = load i32, i32* %j, align 4
  %conv39 = sitofp i32 %30 to double
  %mul40 = fmul double %29, %conv39
  %add41 = fadd double %conv38, %mul40
  %31 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx = getelementptr inbounds %struct.Vertex, %struct.Vertex* %31, i64 0
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  store double %add41, double* %x, align 8
  %32 = load i32, i32* %y1.addr, align 4
  %conv42 = sitofp i32 %32 to double
  %33 = load double, double* %oct_size, align 8
  %34 = load i32, i32* %i, align 4
  %conv43 = sitofp i32 %34 to double
  %mul44 = fmul double %33, %conv43
  %add45 = fadd double %conv42, %mul44
  %35 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx46 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %35, i64 0
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx46, i32 0, i32 1
  store double %add45, double* %y, align 8
  %36 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx47 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %36, i64 0
  %x48 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx47, i32 0, i32 0
  %37 = load double, double* %x48, align 8
  %38 = load double, double* %side, align 8
  %add49 = fadd double %37, %38
  %39 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx50 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %39, i64 1
  %x51 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx50, i32 0, i32 0
  store double %add49, double* %x51, align 8
  %40 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx52 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %40, i64 0
  %y53 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx52, i32 0, i32 1
  %41 = load double, double* %y53, align 8
  %42 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx54 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %42, i64 1
  %y55 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx54, i32 0, i32 1
  store double %41, double* %y55, align 8
  %43 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx56 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %43, i64 0
  %x57 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx56, i32 0, i32 0
  %44 = load double, double* %x57, align 8
  %45 = load double, double* %leg, align 8
  %add58 = fadd double %44, %45
  %46 = load double, double* %side, align 8
  %add59 = fadd double %add58, %46
  %47 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx60 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %47, i64 2
  %x61 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx60, i32 0, i32 0
  store double %add59, double* %x61, align 8
  %48 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx62 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %48, i64 0
  %y63 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx62, i32 0, i32 1
  %49 = load double, double* %y63, align 8
  %50 = load double, double* %leg, align 8
  %add64 = fadd double %49, %50
  %51 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx65 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %51, i64 2
  %y66 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx65, i32 0, i32 1
  store double %add64, double* %y66, align 8
  %52 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx67 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %52, i64 2
  %x68 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx67, i32 0, i32 0
  %53 = load double, double* %x68, align 8
  %54 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx69 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %54, i64 3
  %x70 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx69, i32 0, i32 0
  store double %53, double* %x70, align 8
  %55 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx71 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %55, i64 0
  %y72 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx71, i32 0, i32 1
  %56 = load double, double* %y72, align 8
  %57 = load double, double* %leg, align 8
  %add73 = fadd double %56, %57
  %58 = load double, double* %side, align 8
  %add74 = fadd double %add73, %58
  %59 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx75 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %59, i64 3
  %y76 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx75, i32 0, i32 1
  store double %add74, double* %y76, align 8
  %60 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx77 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %60, i64 1
  %x78 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx77, i32 0, i32 0
  %61 = load double, double* %x78, align 8
  %62 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx79 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %62, i64 4
  %x80 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx79, i32 0, i32 0
  store double %61, double* %x80, align 8
  %63 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx81 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %63, i64 0
  %y82 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx81, i32 0, i32 1
  %64 = load double, double* %y82, align 8
  %65 = load double, double* %leg, align 8
  %mul83 = fmul double 2.000000e+00, %65
  %add84 = fadd double %64, %mul83
  %66 = load double, double* %side, align 8
  %add85 = fadd double %add84, %66
  %67 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx86 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %67, i64 4
  %y87 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx86, i32 0, i32 1
  store double %add85, double* %y87, align 8
  %68 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx88 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %68, i64 0
  %x89 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx88, i32 0, i32 0
  %69 = load double, double* %x89, align 8
  %70 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx90 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %70, i64 5
  %x91 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx90, i32 0, i32 0
  store double %69, double* %x91, align 8
  %71 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx92 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %71, i64 4
  %y93 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx92, i32 0, i32 1
  %72 = load double, double* %y93, align 8
  %73 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx94 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %73, i64 5
  %y95 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx94, i32 0, i32 1
  store double %72, double* %y95, align 8
  %74 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx96 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %74, i64 0
  %x97 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx96, i32 0, i32 0
  %75 = load double, double* %x97, align 8
  %76 = load double, double* %leg, align 8
  %sub98 = fsub double %75, %76
  %77 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx99 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %77, i64 6
  %x100 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx99, i32 0, i32 0
  store double %sub98, double* %x100, align 8
  %78 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx101 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %78, i64 3
  %y102 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx101, i32 0, i32 1
  %79 = load double, double* %y102, align 8
  %80 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx103 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %80, i64 6
  %y104 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx103, i32 0, i32 1
  store double %79, double* %y104, align 8
  %81 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx105 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %81, i64 6
  %x106 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx105, i32 0, i32 0
  %82 = load double, double* %x106, align 8
  %83 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx107 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %83, i64 7
  %x108 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx107, i32 0, i32 0
  store double %82, double* %x108, align 8
  %84 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx109 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %84, i64 2
  %y110 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx109, i32 0, i32 1
  %85 = load double, double* %y110, align 8
  %86 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx111 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %86, i64 7
  %y112 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx111, i32 0, i32 1
  store double %85, double* %y112, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %87 = load i32, i32* %j, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end
  %88 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %88, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond

for.end.115:                                      ; preds = %for.cond
  %89 = load i32, i32* %rows, align 4
  store i32 %89, i32* @grid_rows, align 4
  %90 = load i32, i32* %cols, align 4
  store i32 %90, i32* @grid_cols, align 4
  store i32 1, i32* @grid_row_pad, align 4
  store i32 1, i32* @grid_col_pad, align 4
  store i32 8, i32* @grid_multiple, align 4
  %91 = load i32, i32* %cols, align 4
  %add116 = add nsw i32 %91, 2
  %mul117 = mul nsw i32 %add116, 8
  store i32 %mul117, i32* @grid_rowstride, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grid_create_triangles(i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tri_mid = alloca double, align 8
  %tri_height = alloca double, align 8
  %pt = alloca %struct.Vertex*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %width, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %3 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %height, align 4
  %4 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %div = fdiv double %4, 2.000000e+00
  store double %div, double* %tri_mid, align 8
  %5 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %div2 = fdiv double %5, 2.000000e+00
  %call = call double @sqrt(double 3.000000e+00) #4
  %mul = fmul double %div2, %call
  store double %mul, double* %tri_height, align 8
  %6 = load i32, i32* %height, align 4
  %conv = sitofp i32 %6 to double
  %7 = load double, double* %tri_height, align 8
  %mul3 = fmul double 2.000000e+00, %7
  %add = fadd double %conv, %mul3
  %sub4 = fsub double %add, 1.000000e+00
  %8 = load double, double* %tri_height, align 8
  %mul5 = fmul double 2.000000e+00, %8
  %div6 = fdiv double %sub4, %mul5
  %conv7 = fptosi double %div6 to i32
  store i32 %conv7, i32* %rows, align 4
  %9 = load i32, i32* %width, align 4
  %conv8 = sitofp i32 %9 to double
  %10 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %add9 = fadd double %conv8, %10
  %sub10 = fsub double %add9, 1.000000e+00
  %11 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %div11 = fdiv double %sub10, %11
  %conv12 = fptosi double %div11 to i32
  store i32 %conv12, i32* %cols, align 4
  %12 = load i32, i32* %cols, align 4
  %add13 = add nsw i32 %12, 2
  %mul14 = mul nsw i32 %add13, 2
  %13 = load i32, i32* %rows, align 4
  %add15 = add nsw i32 %13, 2
  %mul16 = mul nsw i32 %mul14, %add15
  %conv17 = sext i32 %mul16 to i64
  %call18 = call noalias i8* @g_malloc_n(i64 %conv17, i64 16)
  %14 = bitcast i8* %call18 to %struct.Vertex*
  store %struct.Vertex* %14, %struct.Vertex** @grid, align 8
  %15 = load i32, i32* %cols, align 4
  %add19 = add nsw i32 %15, 2
  %mul20 = mul nsw i32 %add19, 2
  %add21 = add nsw i32 %mul20, 2
  %16 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %idx.ext = sext i32 %add21 to i64
  %add.ptr = getelementptr inbounds %struct.Vertex, %struct.Vertex* %16, i64 %idx.ext
  store %struct.Vertex* %add.ptr, %struct.Vertex** @grid, align 8
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %rows, align 4
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %cols, align 4
  %cmp24 = icmp sle i32 %19, %20
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %21 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %cols, align 4
  %add27 = add nsw i32 %23, 2
  %mul28 = mul nsw i32 %22, %add27
  %mul29 = mul nsw i32 %mul28, 2
  %24 = load i32, i32* %j, align 4
  %mul30 = mul nsw i32 %24, 2
  %add31 = add nsw i32 %mul29, %mul30
  %idx.ext32 = sext i32 %add31 to i64
  %add.ptr33 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %21, i64 %idx.ext32
  store %struct.Vertex* %add.ptr33, %struct.Vertex** %pt, align 8
  %25 = load i32, i32* %x1.addr, align 4
  %conv34 = sitofp i32 %25 to double
  %26 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %27 = load i32, i32* %j, align 4
  %conv35 = sitofp i32 %27 to double
  %mul36 = fmul double %26, %conv35
  %add37 = fadd double %conv34, %mul36
  %28 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx = getelementptr inbounds %struct.Vertex, %struct.Vertex* %28, i64 0
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  store double %add37, double* %x, align 8
  %29 = load i32, i32* %y1.addr, align 4
  %conv38 = sitofp i32 %29 to double
  %30 = load double, double* %tri_height, align 8
  %mul39 = fmul double %30, 2.000000e+00
  %31 = load i32, i32* %i, align 4
  %conv40 = sitofp i32 %31 to double
  %mul41 = fmul double %mul39, %conv40
  %add42 = fadd double %conv38, %mul41
  %32 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx43 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %32, i64 0
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx43, i32 0, i32 1
  store double %add42, double* %y, align 8
  %33 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx44 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %33, i64 0
  %x45 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx44, i32 0, i32 0
  %34 = load double, double* %x45, align 8
  %35 = load double, double* %tri_mid, align 8
  %add46 = fadd double %34, %35
  %36 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx47 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %36, i64 1
  %x48 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx47, i32 0, i32 0
  store double %add46, double* %x48, align 8
  %37 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx49 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %37, i64 0
  %y50 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx49, i32 0, i32 1
  %38 = load double, double* %y50, align 8
  %39 = load double, double* %tri_height, align 8
  %add51 = fadd double %38, %39
  %40 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %arrayidx52 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %40, i64 1
  %y53 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx52, i32 0, i32 1
  store double %add51, double* %y53, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %41 = load i32, i32* %j, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end
  %42 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %42, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  %43 = load i32, i32* %rows, align 4
  store i32 %43, i32* @grid_rows, align 4
  %44 = load i32, i32* %cols, align 4
  store i32 %44, i32* @grid_cols, align 4
  store i32 1, i32* @grid_row_pad, align 4
  store i32 1, i32* @grid_col_pad, align 4
  store i32 2, i32* @grid_multiple, align 4
  %45 = load i32, i32* %cols, align 4
  %add57 = add nsw i32 %45, 2
  %mul58 = mul nsw i32 %add57, 2
  store i32 %mul58, i32* @grid_rowstride, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grid_localize(i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %size = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %max = alloca i32, align 4
  %data = alloca i8*, align 8
  %rand_localize = alloca double, align 8
  %pt = alloca %struct.Vertex*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %width, align 4
  %2 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %conv = fptosi double %2 to i32
  store i32 %conv, i32* %size, align 4
  %3 = load i32, i32* %size, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 3), align 8
  %sub2 = fsub double 1.000000e+00, %4
  %mul = fmul double %conv1, %sub2
  store double %mul, double* %rand_localize, align 8
  %5 = load i32, i32* @grid_row_pad, align 4
  %sub3 = sub nsw i32 0, %5
  store i32 %sub3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.135, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @grid_rows, align 4
  %8 = load i32, i32* @grid_row_pad, align 4
  %add = add nsw i32 %7, %8
  %cmp = icmp slt i32 %6, %add
  br i1 %cmp, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* @grid_col_pad, align 4
  %sub5 = sub nsw i32 0, %9
  %10 = load i32, i32* @grid_multiple, align 4
  %mul6 = mul nsw i32 %sub5, %10
  store i32 %mul6, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.132, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* @grid_cols, align 4
  %13 = load i32, i32* @grid_col_pad, align 4
  %add8 = add nsw i32 %12, %13
  %14 = load i32, i32* @grid_multiple, align 4
  %mul9 = mul nsw i32 %add8, %14
  %cmp10 = icmp slt i32 %11, %mul9
  br i1 %cmp10, label %for.body.12, label %for.end.134

for.body.12:                                      ; preds = %for.cond.7
  %15 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @grid_rowstride, align 4
  %mul13 = mul nsw i32 %16, %17
  %18 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %mul13, %18
  %idx.ext = sext i32 %add14 to i64
  %add.ptr = getelementptr inbounds %struct.Vertex, %struct.Vertex* %15, i64 %idx.ext
  store %struct.Vertex* %add.ptr, %struct.Vertex** %pt, align 8
  %19 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %19, i32 0, i32 0
  %20 = load double, double* %x, align 8
  %21 = load double, double* %rand_localize, align 8
  %call = call double @fp_rand(double %21)
  %22 = load double, double* %rand_localize, align 8
  %div = fdiv double %22, 2.000000e+00
  %sub15 = fsub double %call, %div
  %conv16 = fptosi double %sub15 to i32
  %conv17 = sitofp i32 %conv16 to double
  %add18 = fadd double %20, %conv17
  %conv19 = fptosi double %add18 to i32
  store i32 %conv19, i32* %max_x, align 4
  %23 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %23, i32 0, i32 1
  %24 = load double, double* %y, align 8
  %25 = load double, double* %rand_localize, align 8
  %call20 = call double @fp_rand(double %25)
  %26 = load double, double* %rand_localize, align 8
  %div21 = fdiv double %26, 2.000000e+00
  %sub22 = fsub double %call20, %div21
  %conv23 = fptosi double %sub22 to i32
  %conv24 = sitofp i32 %conv23 to double
  %add25 = fadd double %24, %conv24
  %conv26 = fptosi double %add25 to i32
  store i32 %conv26, i32* %max_y, align 4
  %27 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %x27 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %27, i32 0, i32 0
  %28 = load double, double* %x27, align 8
  %29 = load double, double* %rand_localize, align 8
  %div28 = fdiv double %29, 2.000000e+00
  %conv29 = fptosi double %div28 to i32
  %conv30 = sitofp i32 %conv29 to double
  %sub31 = fsub double %28, %conv30
  %conv32 = fptosi double %sub31 to i32
  store i32 %conv32, i32* %x3, align 4
  %30 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %y33 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %30, i32 0, i32 1
  %31 = load double, double* %y33, align 8
  %32 = load double, double* %rand_localize, align 8
  %div34 = fdiv double %32, 2.000000e+00
  %conv35 = fptosi double %div34 to i32
  %conv36 = sitofp i32 %conv35 to double
  %sub37 = fsub double %31, %conv36
  %conv38 = fptosi double %sub37 to i32
  store i32 %conv38, i32* %y3, align 4
  %33 = load i32, i32* %x3, align 4
  %34 = load double, double* %rand_localize, align 8
  %conv39 = fptosi double %34 to i32
  %add40 = add nsw i32 %33, %conv39
  store i32 %add40, i32* %x4, align 4
  %35 = load i32, i32* %y3, align 4
  %36 = load double, double* %rand_localize, align 8
  %conv41 = fptosi double %36 to i32
  %add42 = add nsw i32 %35, %conv41
  store i32 %add42, i32* %y4, align 4
  %37 = load i32, i32* %x3, align 4
  %38 = load i32, i32* %x2.addr, align 4
  %sub43 = sub nsw i32 %38, 1
  %cmp44 = icmp sgt i32 %37, %sub43
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.12
  %39 = load i32, i32* %x2.addr, align 4
  %sub46 = sub nsw i32 %39, 1
  br label %cond.end.51

cond.false:                                       ; preds = %for.body.12
  %40 = load i32, i32* %x3, align 4
  %41 = load i32, i32* %x1.addr, align 4
  %cmp47 = icmp slt i32 %40, %41
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.false
  %42 = load i32, i32* %x1.addr, align 4
  br label %cond.end

cond.false.50:                                    ; preds = %cond.false
  %43 = load i32, i32* %x3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.50, %cond.true.49
  %cond = phi i32 [ %42, %cond.true.49 ], [ %43, %cond.false.50 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end, %cond.true
  %cond52 = phi i32 [ %sub46, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond52, i32* %x3, align 4
  %44 = load i32, i32* %y3, align 4
  %45 = load i32, i32* %y2.addr, align 4
  %sub53 = sub nsw i32 %45, 1
  %cmp54 = icmp sgt i32 %44, %sub53
  br i1 %cmp54, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.end.51
  %46 = load i32, i32* %y2.addr, align 4
  %sub57 = sub nsw i32 %46, 1
  br label %cond.end.65

cond.false.58:                                    ; preds = %cond.end.51
  %47 = load i32, i32* %y3, align 4
  %48 = load i32, i32* %y1.addr, align 4
  %cmp59 = icmp slt i32 %47, %48
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.58
  %49 = load i32, i32* %y1.addr, align 4
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.false.58
  %50 = load i32, i32* %y3, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ %49, %cond.true.61 ], [ %50, %cond.false.62 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %cond.true.56
  %cond66 = phi i32 [ %sub57, %cond.true.56 ], [ %cond64, %cond.end.63 ]
  store i32 %cond66, i32* %y3, align 4
  %51 = load i32, i32* %x4, align 4
  %52 = load i32, i32* %x2.addr, align 4
  %sub67 = sub nsw i32 %52, 1
  %cmp68 = icmp sgt i32 %51, %sub67
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %cond.end.65
  %53 = load i32, i32* %x2.addr, align 4
  %sub71 = sub nsw i32 %53, 1
  br label %cond.end.79

cond.false.72:                                    ; preds = %cond.end.65
  %54 = load i32, i32* %x4, align 4
  %55 = load i32, i32* %x1.addr, align 4
  %cmp73 = icmp slt i32 %54, %55
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false.72
  %56 = load i32, i32* %x1.addr, align 4
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.false.72
  %57 = load i32, i32* %x4, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i32 [ %56, %cond.true.75 ], [ %57, %cond.false.76 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.true.70
  %cond80 = phi i32 [ %sub71, %cond.true.70 ], [ %cond78, %cond.end.77 ]
  store i32 %cond80, i32* %x4, align 4
  %58 = load i32, i32* %y4, align 4
  %59 = load i32, i32* %y2.addr, align 4
  %sub81 = sub nsw i32 %59, 1
  %cmp82 = icmp sgt i32 %58, %sub81
  br i1 %cmp82, label %cond.true.84, label %cond.false.86

cond.true.84:                                     ; preds = %cond.end.79
  %60 = load i32, i32* %y2.addr, align 4
  %sub85 = sub nsw i32 %60, 1
  br label %cond.end.93

cond.false.86:                                    ; preds = %cond.end.79
  %61 = load i32, i32* %y4, align 4
  %62 = load i32, i32* %y1.addr, align 4
  %cmp87 = icmp slt i32 %61, %62
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.false.86
  %63 = load i32, i32* %y1.addr, align 4
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.false.86
  %64 = load i32, i32* %y4, align 4
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi i32 [ %63, %cond.true.89 ], [ %64, %cond.false.90 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.84
  %cond94 = phi i32 [ %sub85, %cond.true.84 ], [ %cond92, %cond.end.91 ]
  store i32 %cond94, i32* %y4, align 4
  %65 = load i8*, i8** @m_grad, align 8
  %66 = load i32, i32* %y3, align 4
  %67 = load i32, i32* %y1.addr, align 4
  %sub95 = sub nsw i32 %66, %67
  %68 = load i32, i32* %width, align 4
  %mul96 = mul nsw i32 %sub95, %68
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %65, i64 %idx.ext97
  %69 = load i32, i32* %x3, align 4
  %70 = load i32, i32* %x1.addr, align 4
  %sub99 = sub nsw i32 %69, %70
  %idx.ext100 = sext i32 %sub99 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %add.ptr98, i64 %idx.ext100
  %71 = load i8, i8* %add.ptr101, align 1
  %conv102 = zext i8 %71 to i32
  store i32 %conv102, i32* %max, align 4
  %72 = load i8*, i8** @m_grad, align 8
  %73 = load i32, i32* %width, align 4
  %74 = load i32, i32* %y3, align 4
  %75 = load i32, i32* %y1.addr, align 4
  %sub103 = sub nsw i32 %74, %75
  %mul104 = mul nsw i32 %73, %sub103
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %72, i64 %idx.ext105
  store i8* %add.ptr106, i8** %data, align 8
  %76 = load i32, i32* %y3, align 4
  store i32 %76, i32* %k, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.125, %cond.end.93
  %77 = load i32, i32* %k, align 4
  %78 = load i32, i32* %y4, align 4
  %cmp108 = icmp sle i32 %77, %78
  br i1 %cmp108, label %for.body.110, label %for.end.127

for.body.110:                                     ; preds = %for.cond.107
  %79 = load i32, i32* %x3, align 4
  store i32 %79, i32* %l, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc, %for.body.110
  %80 = load i32, i32* %l, align 4
  %81 = load i32, i32* %x4, align 4
  %cmp112 = icmp sle i32 %80, %81
  br i1 %cmp112, label %for.body.114, label %for.end

for.body.114:                                     ; preds = %for.cond.111
  %82 = load i32, i32* %l, align 4
  %83 = load i32, i32* %x1.addr, align 4
  %sub115 = sub nsw i32 %82, %83
  %idxprom = sext i32 %sub115 to i64
  %84 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %84, i64 %idxprom
  %85 = load i8, i8* %arrayidx, align 1
  %conv116 = zext i8 %85 to i32
  %86 = load i32, i32* %max, align 4
  %cmp117 = icmp sgt i32 %conv116, %86
  br i1 %cmp117, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.114
  %87 = load i32, i32* %k, align 4
  store i32 %87, i32* %max_y, align 4
  %88 = load i32, i32* %l, align 4
  store i32 %88, i32* %max_x, align 4
  %89 = load i32, i32* %l, align 4
  %90 = load i32, i32* %x1.addr, align 4
  %sub119 = sub nsw i32 %89, %90
  %idxprom120 = sext i32 %sub119 to i64
  %91 = load i8*, i8** %data, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %91, i64 %idxprom120
  %92 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %92 to i32
  store i32 %conv122, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.114
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %93 = load i32, i32* %l, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.111

for.end:                                          ; preds = %for.cond.111
  %94 = load i32, i32* %width, align 4
  %95 = load i8*, i8** %data, align 8
  %idx.ext123 = sext i32 %94 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %95, i64 %idx.ext123
  store i8* %add.ptr124, i8** %data, align 8
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.end
  %96 = load i32, i32* %k, align 4
  %inc126 = add nsw i32 %96, 1
  store i32 %inc126, i32* %k, align 4
  br label %for.cond.107

for.end.127:                                      ; preds = %for.cond.107
  %97 = load i32, i32* %max_x, align 4
  %conv128 = sitofp i32 %97 to double
  %98 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %x129 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %98, i32 0, i32 0
  store double %conv128, double* %x129, align 8
  %99 = load i32, i32* %max_y, align 4
  %conv130 = sitofp i32 %99 to double
  %100 = load %struct.Vertex*, %struct.Vertex** %pt, align 8
  %y131 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %100, i32 0, i32 1
  store double %conv130, double* %y131, align 8
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.end.127
  %101 = load i32, i32* %j, align 4
  %inc133 = add nsw i32 %101, 1
  store i32 %inc133, i32* %j, align 4
  br label %for.cond.7

for.end.134:                                      ; preds = %for.cond.7
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.end.134
  %102 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %102, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  ret void
}

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_drawable_get_color_uchar(i32, %struct._GimpRGB*, i8*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define internal void @grid_render(%struct._GimpDrawable* %drawable, i32 %x1, i32 %y1, i32 %x2, i32 %y2, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %col = alloca [4 x i8], align 1
  %bytes = alloca i32, align 4
  %size = alloca i32, align 4
  %frac_size = alloca i32, align 4
  %count = alloca i32, align 4
  %index = alloca i32, align 4
  %vary = alloca i32, align 4
  %poly = alloca %struct.Polygon, align 8
  %pr = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %dest, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bytes, align 4
  %4 = load i32, i32* %x2.addr, align 4
  %5 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %4, %5
  %mul = mul nsw i32 %3, %sub
  %6 = load i32, i32* %y2.addr, align 4
  %7 = load i32, i32* %y1.addr, align 4
  %sub1 = sub nsw i32 %6, %7
  %mul2 = mul nsw i32 %mul, %sub1
  %conv = sext i32 %mul2 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %dest, align 8
  %8 = load i8*, i8** %dest, align 8
  store i8* %8, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %x2.addr, align 4
  %11 = load i32, i32* %x1.addr, align 4
  %sub3 = sub nsw i32 %10, %11
  %12 = load i32, i32* %y2.addr, align 4
  %13 = load i32, i32* %y1.addr, align 4
  %sub4 = sub nsw i32 %12, %13
  %mul5 = mul nsw i32 %sub3, %sub4
  %cmp = icmp slt i32 %9, %mul5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %d, align 8
  %15 = load i32, i32* %bytes, align 4
  %conv7 = sext i32 %15 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @back, i32 0, i32 0), i64 %conv7, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  %17 = load i32, i32* %bytes, align 4
  %18 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load i32, i32* %x1.addr, align 4
  %21 = load i32, i32* %y1.addr, align 4
  %22 = load i32, i32* %x2.addr, align 4
  %23 = load i32, i32* %x1.addr, align 4
  %sub8 = sub nsw i32 %22, %23
  %24 = load i32, i32* %y2.addr, align 4
  %25 = load i32, i32* %y1.addr, align 4
  %sub9 = sub nsw i32 %24, %25
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %19, i32 %20, i32 %21, i32 %sub8, i32 %sub9, i32 1, i32 1)
  %call10 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  store i8* %call10, i8** %pr, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.42, %if.else
  %26 = load i8*, i8** %pr, align 8
  %cmp12 = icmp ne i8* %26, null
  br i1 %cmp12, label %for.body.14, label %for.end.44

for.body.14:                                      ; preds = %for.cond.11
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  store i8* %27, i8** %dest, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.39, %for.body.14
  %28 = load i32, i32* %i, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %29 = load i32, i32* %h, align 4
  %cmp16 = icmp slt i32 %28, %29
  br i1 %cmp16, label %for.body.18, label %for.end.41

for.body.18:                                      ; preds = %for.cond.15
  %30 = load i8*, i8** %dest, align 8
  store i8* %30, i8** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.34, %for.body.18
  %31 = load i32, i32* %j, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %32 = load i32, i32* %w, align 4
  %cmp20 = icmp slt i32 %31, %32
  br i1 %cmp20, label %for.body.22, label %for.end.36

for.body.22:                                      ; preds = %for.cond.19
  store i32 0, i32* %k, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.29, %for.body.22
  %33 = load i32, i32* %k, align 4
  %34 = load i32, i32* %bytes, align 4
  %cmp24 = icmp slt i32 %33, %34
  br i1 %cmp24, label %for.body.26, label %for.end.31

for.body.26:                                      ; preds = %for.cond.23
  %35 = load i32, i32* %k, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @back, i32 0, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1
  %37 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %37 to i64
  %38 = load i8*, i8** %d, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %38, i64 %idxprom27
  store i8 %36, i8* %arrayidx28, align 1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.26
  %39 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond.23

for.end.31:                                       ; preds = %for.cond.23
  %40 = load i32, i32* %bytes, align 4
  %41 = load i8*, i8** %d, align 8
  %idx.ext32 = sext i32 %40 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %41, i64 %idx.ext32
  store i8* %add.ptr33, i8** %d, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.31
  %42 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %42, 1
  store i32 %inc35, i32* %j, align 4
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %43 = load i32, i32* %rowstride, align 4
  %44 = load i8*, i8** %dest, align 8
  %idx.ext37 = sext i32 %43 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %44, i64 %idx.ext37
  store i8* %add.ptr38, i8** %dest, align 8
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.36
  %45 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.15

for.end.41:                                       ; preds = %for.cond.15
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.41
  %46 = load i8*, i8** %pr, align 8
  %call43 = call i8* @gimp_pixel_rgns_process(i8* %46)
  store i8* %call43, i8** %pr, align 8
  br label %for.cond.11

for.end.44:                                       ; preds = %for.cond.11
  store i8* null, i8** %dest, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.44, %for.end
  %47 = load i32, i32* @grid_rows, align 4
  %48 = load i32, i32* @grid_row_pad, align 4
  %add = add nsw i32 %47, %48
  %49 = load i32, i32* @grid_cols, align 4
  %50 = load i32, i32* @grid_col_pad, align 4
  %add45 = add nsw i32 %49, %50
  %mul46 = mul nsw i32 %add, %add45
  store i32 %mul46, i32* %size, align 4
  %51 = load i32, i32* %size, align 4
  %conv47 = sitofp i32 %51 to double
  %52 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 6), align 8
  %mul48 = fmul double %conv47, %52
  %conv49 = fptosi double %mul48 to i32
  store i32 %conv49, i32* %frac_size, align 4
  store i32 0, i32* %count, align 4
  %53 = load i32, i32* @grid_row_pad, align 4
  %sub50 = sub nsw i32 0, %53
  store i32 %sub50, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.504, %if.end
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* @grid_rows, align 4
  %cmp52 = icmp slt i32 %54, %55
  br i1 %cmp52, label %for.body.54, label %for.end.506

for.body.54:                                      ; preds = %for.cond.51
  %56 = load i32, i32* @grid_col_pad, align 4
  %sub55 = sub nsw i32 0, %56
  store i32 %sub55, i32* %j, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.501, %for.body.54
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* @grid_cols, align 4
  %cmp57 = icmp slt i32 %57, %58
  br i1 %cmp57, label %for.body.59, label %for.end.503

for.body.59:                                      ; preds = %for.cond.56
  %59 = load i32, i32* %size, align 4
  %call60 = call i32 @g_random_int_range(i32 0, i32 %59)
  %60 = load i32, i32* %frac_size, align 4
  %cmp61 = icmp slt i32 %call60, %60
  %cond = select i1 %cmp61, i32 1, i32 0
  store i32 %cond, i32* %vary, align 4
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* @grid_rowstride, align 4
  %mul63 = mul nsw i32 %61, %62
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* @grid_multiple, align 4
  %mul64 = mul nsw i32 %63, %64
  %add65 = add nsw i32 %mul63, %mul64
  store i32 %add65, i32* %index, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 9), align 4
  switch i32 %65, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.96
    i32 2, label %sw.bb.209
    i32 3, label %sw.bb.387
  ]

sw.bb:                                            ; preds = %for.body.59
  call void @polygon_reset(%struct.Polygon* %poly)
  %66 = load i32, i32* %index, align 4
  %idxprom66 = sext i32 %66 to i64
  %67 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx67 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %67, i64 %idxprom66
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx67, i32 0, i32 0
  %68 = load double, double* %x, align 8
  %69 = load i32, i32* %index, align 4
  %idxprom68 = sext i32 %69 to i64
  %70 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx69 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %70, i64 %idxprom68
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx69, i32 0, i32 1
  %71 = load double, double* %y, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %68, double %71)
  %72 = load i32, i32* %index, align 4
  %add70 = add nsw i32 %72, 1
  %idxprom71 = sext i32 %add70 to i64
  %73 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx72 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %73, i64 %idxprom71
  %x73 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx72, i32 0, i32 0
  %74 = load double, double* %x73, align 8
  %75 = load i32, i32* %index, align 4
  %add74 = add nsw i32 %75, 1
  %idxprom75 = sext i32 %add74 to i64
  %76 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx76 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %76, i64 %idxprom75
  %y77 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx76, i32 0, i32 1
  %77 = load double, double* %y77, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %74, double %77)
  %78 = load i32, i32* %index, align 4
  %79 = load i32, i32* @grid_rowstride, align 4
  %add78 = add nsw i32 %78, %79
  %add79 = add nsw i32 %add78, 1
  %idxprom80 = sext i32 %add79 to i64
  %80 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx81 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %80, i64 %idxprom80
  %x82 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx81, i32 0, i32 0
  %81 = load double, double* %x82, align 8
  %82 = load i32, i32* %index, align 4
  %83 = load i32, i32* @grid_rowstride, align 4
  %add83 = add nsw i32 %82, %83
  %add84 = add nsw i32 %add83, 1
  %idxprom85 = sext i32 %add84 to i64
  %84 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx86 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %84, i64 %idxprom85
  %y87 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx86, i32 0, i32 1
  %85 = load double, double* %y87, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %81, double %85)
  %86 = load i32, i32* %index, align 4
  %87 = load i32, i32* @grid_rowstride, align 4
  %add88 = add nsw i32 %86, %87
  %idxprom89 = sext i32 %add88 to i64
  %88 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx90 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %88, i64 %idxprom89
  %x91 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx90, i32 0, i32 0
  %89 = load double, double* %x91, align 8
  %90 = load i32, i32* %index, align 4
  %91 = load i32, i32* @grid_rowstride, align 4
  %add92 = add nsw i32 %90, %91
  %idxprom93 = sext i32 %add92 to i64
  %92 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx94 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %92, i64 %idxprom93
  %y95 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx94, i32 0, i32 1
  %93 = load double, double* %y95, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %89, double %93)
  %94 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %96 = load i32, i32* %vary, align 4
  %97 = load i32, i32* %x1.addr, align 4
  %98 = load i32, i32* %y1.addr, align 4
  %99 = load i32, i32* %x2.addr, align 4
  %100 = load i32, i32* %y2.addr, align 4
  %101 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %94, %struct._GimpDrawable* %95, i8* %arraydecay, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i8* %101)
  br label %sw.epilog

sw.bb.96:                                         ; preds = %for.body.59
  call void @polygon_reset(%struct.Polygon* %poly)
  %102 = load i32, i32* %index, align 4
  %idxprom97 = sext i32 %102 to i64
  %103 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx98 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %103, i64 %idxprom97
  %x99 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx98, i32 0, i32 0
  %104 = load double, double* %x99, align 8
  %105 = load i32, i32* %index, align 4
  %idxprom100 = sext i32 %105 to i64
  %106 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx101 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %106, i64 %idxprom100
  %y102 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx101, i32 0, i32 1
  %107 = load double, double* %y102, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %104, double %107)
  %108 = load i32, i32* %index, align 4
  %add103 = add nsw i32 %108, 1
  %idxprom104 = sext i32 %add103 to i64
  %109 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx105 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %109, i64 %idxprom104
  %x106 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx105, i32 0, i32 0
  %110 = load double, double* %x106, align 8
  %111 = load i32, i32* %index, align 4
  %add107 = add nsw i32 %111, 1
  %idxprom108 = sext i32 %add107 to i64
  %112 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx109 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %112, i64 %idxprom108
  %y110 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx109, i32 0, i32 1
  %113 = load double, double* %y110, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %110, double %113)
  %114 = load i32, i32* %index, align 4
  %add111 = add nsw i32 %114, 2
  %idxprom112 = sext i32 %add111 to i64
  %115 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx113 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %115, i64 %idxprom112
  %x114 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx113, i32 0, i32 0
  %116 = load double, double* %x114, align 8
  %117 = load i32, i32* %index, align 4
  %add115 = add nsw i32 %117, 2
  %idxprom116 = sext i32 %add115 to i64
  %118 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx117 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %118, i64 %idxprom116
  %y118 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx117, i32 0, i32 1
  %119 = load double, double* %y118, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %116, double %119)
  %120 = load i32, i32* %index, align 4
  %121 = load i32, i32* @grid_rowstride, align 4
  %add119 = add nsw i32 %120, %121
  %add120 = add nsw i32 %add119, 1
  %idxprom121 = sext i32 %add120 to i64
  %122 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx122 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %122, i64 %idxprom121
  %x123 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx122, i32 0, i32 0
  %123 = load double, double* %x123, align 8
  %124 = load i32, i32* %index, align 4
  %125 = load i32, i32* @grid_rowstride, align 4
  %add124 = add nsw i32 %124, %125
  %add125 = add nsw i32 %add124, 1
  %idxprom126 = sext i32 %add125 to i64
  %126 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx127 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %126, i64 %idxprom126
  %y128 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx127, i32 0, i32 1
  %127 = load double, double* %y128, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %123, double %127)
  %128 = load i32, i32* %index, align 4
  %129 = load i32, i32* @grid_rowstride, align 4
  %add129 = add nsw i32 %128, %129
  %idxprom130 = sext i32 %add129 to i64
  %130 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx131 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %130, i64 %idxprom130
  %x132 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx131, i32 0, i32 0
  %131 = load double, double* %x132, align 8
  %132 = load i32, i32* %index, align 4
  %133 = load i32, i32* @grid_rowstride, align 4
  %add133 = add nsw i32 %132, %133
  %idxprom134 = sext i32 %add133 to i64
  %134 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx135 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %134, i64 %idxprom134
  %y136 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx135, i32 0, i32 1
  %135 = load double, double* %y136, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %131, double %135)
  %136 = load i32, i32* %index, align 4
  %add137 = add nsw i32 %136, 3
  %idxprom138 = sext i32 %add137 to i64
  %137 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx139 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %137, i64 %idxprom138
  %x140 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx139, i32 0, i32 0
  %138 = load double, double* %x140, align 8
  %139 = load i32, i32* %index, align 4
  %add141 = add nsw i32 %139, 3
  %idxprom142 = sext i32 %add141 to i64
  %140 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx143 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %140, i64 %idxprom142
  %y144 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx143, i32 0, i32 1
  %141 = load double, double* %y144, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %138, double %141)
  %142 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %143 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay145 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %144 = load i32, i32* %vary, align 4
  %145 = load i32, i32* %x1.addr, align 4
  %146 = load i32, i32* %y1.addr, align 4
  %147 = load i32, i32* %x2.addr, align 4
  %148 = load i32, i32* %y2.addr, align 4
  %149 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %142, %struct._GimpDrawable* %143, i8* %arraydecay145, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i8* %149)
  call void @polygon_reset(%struct.Polygon* %poly)
  %150 = load i32, i32* %index, align 4
  %add146 = add nsw i32 %150, 2
  %idxprom147 = sext i32 %add146 to i64
  %151 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx148 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %151, i64 %idxprom147
  %x149 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx148, i32 0, i32 0
  %152 = load double, double* %x149, align 8
  %153 = load i32, i32* %index, align 4
  %add150 = add nsw i32 %153, 2
  %idxprom151 = sext i32 %add150 to i64
  %154 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx152 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %154, i64 %idxprom151
  %y153 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx152, i32 0, i32 1
  %155 = load double, double* %y153, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %152, double %155)
  %156 = load i32, i32* %index, align 4
  %157 = load i32, i32* @grid_multiple, align 4
  %mul154 = mul nsw i32 %157, 2
  %add155 = add nsw i32 %156, %mul154
  %sub156 = sub nsw i32 %add155, 1
  %idxprom157 = sext i32 %sub156 to i64
  %158 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx158 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %158, i64 %idxprom157
  %x159 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx158, i32 0, i32 0
  %159 = load double, double* %x159, align 8
  %160 = load i32, i32* %index, align 4
  %161 = load i32, i32* @grid_multiple, align 4
  %mul160 = mul nsw i32 %161, 2
  %add161 = add nsw i32 %160, %mul160
  %sub162 = sub nsw i32 %add161, 1
  %idxprom163 = sext i32 %sub162 to i64
  %162 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx164 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %162, i64 %idxprom163
  %y165 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx164, i32 0, i32 1
  %163 = load double, double* %y165, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %159, double %163)
  %164 = load i32, i32* %index, align 4
  %165 = load i32, i32* @grid_rowstride, align 4
  %add166 = add nsw i32 %164, %165
  %166 = load i32, i32* @grid_multiple, align 4
  %add167 = add nsw i32 %add166, %166
  %idxprom168 = sext i32 %add167 to i64
  %167 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx169 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %167, i64 %idxprom168
  %x170 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx169, i32 0, i32 0
  %168 = load double, double* %x170, align 8
  %169 = load i32, i32* %index, align 4
  %170 = load i32, i32* @grid_rowstride, align 4
  %add171 = add nsw i32 %169, %170
  %171 = load i32, i32* @grid_multiple, align 4
  %add172 = add nsw i32 %add171, %171
  %idxprom173 = sext i32 %add172 to i64
  %172 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx174 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %172, i64 %idxprom173
  %y175 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx174, i32 0, i32 1
  %173 = load double, double* %y175, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %168, double %173)
  %174 = load i32, i32* %index, align 4
  %175 = load i32, i32* @grid_rowstride, align 4
  %add176 = add nsw i32 %174, %175
  %176 = load i32, i32* @grid_multiple, align 4
  %add177 = add nsw i32 %add176, %176
  %add178 = add nsw i32 %add177, 3
  %idxprom179 = sext i32 %add178 to i64
  %177 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx180 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %177, i64 %idxprom179
  %x181 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx180, i32 0, i32 0
  %178 = load double, double* %x181, align 8
  %179 = load i32, i32* %index, align 4
  %180 = load i32, i32* @grid_rowstride, align 4
  %add182 = add nsw i32 %179, %180
  %181 = load i32, i32* @grid_multiple, align 4
  %add183 = add nsw i32 %add182, %181
  %add184 = add nsw i32 %add183, 3
  %idxprom185 = sext i32 %add184 to i64
  %182 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx186 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %182, i64 %idxprom185
  %y187 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx186, i32 0, i32 1
  %183 = load double, double* %y187, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %178, double %183)
  %184 = load i32, i32* %index, align 4
  %185 = load i32, i32* @grid_rowstride, align 4
  %add188 = add nsw i32 %184, %185
  %add189 = add nsw i32 %add188, 2
  %idxprom190 = sext i32 %add189 to i64
  %186 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx191 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %186, i64 %idxprom190
  %x192 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx191, i32 0, i32 0
  %187 = load double, double* %x192, align 8
  %188 = load i32, i32* %index, align 4
  %189 = load i32, i32* @grid_rowstride, align 4
  %add193 = add nsw i32 %188, %189
  %add194 = add nsw i32 %add193, 2
  %idxprom195 = sext i32 %add194 to i64
  %190 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx196 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %190, i64 %idxprom195
  %y197 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx196, i32 0, i32 1
  %191 = load double, double* %y197, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %187, double %191)
  %192 = load i32, i32* %index, align 4
  %193 = load i32, i32* @grid_rowstride, align 4
  %add198 = add nsw i32 %192, %193
  %add199 = add nsw i32 %add198, 1
  %idxprom200 = sext i32 %add199 to i64
  %194 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx201 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %194, i64 %idxprom200
  %x202 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx201, i32 0, i32 0
  %195 = load double, double* %x202, align 8
  %196 = load i32, i32* %index, align 4
  %197 = load i32, i32* @grid_rowstride, align 4
  %add203 = add nsw i32 %196, %197
  %add204 = add nsw i32 %add203, 1
  %idxprom205 = sext i32 %add204 to i64
  %198 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx206 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %198, i64 %idxprom205
  %y207 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx206, i32 0, i32 1
  %199 = load double, double* %y207, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %195, double %199)
  %200 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %201 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay208 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %202 = load i32, i32* %vary, align 4
  %203 = load i32, i32* %x1.addr, align 4
  %204 = load i32, i32* %y1.addr, align 4
  %205 = load i32, i32* %x2.addr, align 4
  %206 = load i32, i32* %y2.addr, align 4
  %207 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %200, %struct._GimpDrawable* %201, i8* %arraydecay208, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i8* %207)
  br label %sw.epilog

sw.bb.209:                                        ; preds = %for.body.59
  call void @polygon_reset(%struct.Polygon* %poly)
  store i32 0, i32* %k, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.222, %sw.bb.209
  %208 = load i32, i32* %k, align 4
  %cmp211 = icmp slt i32 %208, 8
  br i1 %cmp211, label %for.body.213, label %for.end.224

for.body.213:                                     ; preds = %for.cond.210
  %209 = load i32, i32* %index, align 4
  %210 = load i32, i32* %k, align 4
  %add214 = add nsw i32 %209, %210
  %idxprom215 = sext i32 %add214 to i64
  %211 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx216 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %211, i64 %idxprom215
  %x217 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx216, i32 0, i32 0
  %212 = load double, double* %x217, align 8
  %213 = load i32, i32* %index, align 4
  %214 = load i32, i32* %k, align 4
  %add218 = add nsw i32 %213, %214
  %idxprom219 = sext i32 %add218 to i64
  %215 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx220 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %215, i64 %idxprom219
  %y221 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx220, i32 0, i32 1
  %216 = load double, double* %y221, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %212, double %216)
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.213
  %217 = load i32, i32* %k, align 4
  %inc223 = add nsw i32 %217, 1
  store i32 %inc223, i32* %k, align 4
  br label %for.cond.210

for.end.224:                                      ; preds = %for.cond.210
  %218 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %219 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay225 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %220 = load i32, i32* %vary, align 4
  %221 = load i32, i32* %x1.addr, align 4
  %222 = load i32, i32* %y1.addr, align 4
  %223 = load i32, i32* %x2.addr, align 4
  %224 = load i32, i32* %y2.addr, align 4
  %225 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %218, %struct._GimpDrawable* %219, i8* %arraydecay225, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i8* %225)
  call void @polygon_reset(%struct.Polygon* %poly)
  %226 = load i32, i32* %index, align 4
  %add226 = add nsw i32 %226, 3
  %idxprom227 = sext i32 %add226 to i64
  %227 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx228 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %227, i64 %idxprom227
  %x229 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx228, i32 0, i32 0
  %228 = load double, double* %x229, align 8
  %229 = load i32, i32* %index, align 4
  %add230 = add nsw i32 %229, 3
  %idxprom231 = sext i32 %add230 to i64
  %230 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx232 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %230, i64 %idxprom231
  %y233 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx232, i32 0, i32 1
  %231 = load double, double* %y233, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %228, double %231)
  %232 = load i32, i32* %index, align 4
  %233 = load i32, i32* @grid_multiple, align 4
  %mul234 = mul nsw i32 %233, 2
  %add235 = add nsw i32 %232, %mul234
  %sub236 = sub nsw i32 %add235, 2
  %idxprom237 = sext i32 %sub236 to i64
  %234 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx238 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %234, i64 %idxprom237
  %x239 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx238, i32 0, i32 0
  %235 = load double, double* %x239, align 8
  %236 = load i32, i32* %index, align 4
  %237 = load i32, i32* @grid_multiple, align 4
  %mul240 = mul nsw i32 %237, 2
  %add241 = add nsw i32 %236, %mul240
  %sub242 = sub nsw i32 %add241, 2
  %idxprom243 = sext i32 %sub242 to i64
  %238 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx244 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %238, i64 %idxprom243
  %y245 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx244, i32 0, i32 1
  %239 = load double, double* %y245, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %235, double %239)
  %240 = load i32, i32* %index, align 4
  %241 = load i32, i32* @grid_multiple, align 4
  %mul246 = mul nsw i32 %241, 2
  %add247 = add nsw i32 %240, %mul246
  %sub248 = sub nsw i32 %add247, 3
  %idxprom249 = sext i32 %sub248 to i64
  %242 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx250 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %242, i64 %idxprom249
  %x251 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx250, i32 0, i32 0
  %243 = load double, double* %x251, align 8
  %244 = load i32, i32* %index, align 4
  %245 = load i32, i32* @grid_multiple, align 4
  %mul252 = mul nsw i32 %245, 2
  %add253 = add nsw i32 %244, %mul252
  %sub254 = sub nsw i32 %add253, 3
  %idxprom255 = sext i32 %sub254 to i64
  %246 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx256 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %246, i64 %idxprom255
  %y257 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx256, i32 0, i32 1
  %247 = load double, double* %y257, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %243, double %247)
  %248 = load i32, i32* %index, align 4
  %249 = load i32, i32* @grid_rowstride, align 4
  %add258 = add nsw i32 %248, %249
  %250 = load i32, i32* @grid_multiple, align 4
  %add259 = add nsw i32 %add258, %250
  %idxprom260 = sext i32 %add259 to i64
  %251 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx261 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %251, i64 %idxprom260
  %x262 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx261, i32 0, i32 0
  %252 = load double, double* %x262, align 8
  %253 = load i32, i32* %index, align 4
  %254 = load i32, i32* @grid_rowstride, align 4
  %add263 = add nsw i32 %253, %254
  %255 = load i32, i32* @grid_multiple, align 4
  %add264 = add nsw i32 %add263, %255
  %idxprom265 = sext i32 %add264 to i64
  %256 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx266 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %256, i64 %idxprom265
  %y267 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx266, i32 0, i32 1
  %257 = load double, double* %y267, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %252, double %257)
  %258 = load i32, i32* %index, align 4
  %259 = load i32, i32* @grid_rowstride, align 4
  %add268 = add nsw i32 %258, %259
  %260 = load i32, i32* @grid_multiple, align 4
  %mul269 = mul nsw i32 %260, 2
  %add270 = add nsw i32 %add268, %mul269
  %sub271 = sub nsw i32 %add270, 1
  %idxprom272 = sext i32 %sub271 to i64
  %261 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx273 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %261, i64 %idxprom272
  %x274 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx273, i32 0, i32 0
  %262 = load double, double* %x274, align 8
  %263 = load i32, i32* %index, align 4
  %264 = load i32, i32* @grid_rowstride, align 4
  %add275 = add nsw i32 %263, %264
  %265 = load i32, i32* @grid_multiple, align 4
  %mul276 = mul nsw i32 %265, 2
  %add277 = add nsw i32 %add275, %mul276
  %sub278 = sub nsw i32 %add277, 1
  %idxprom279 = sext i32 %sub278 to i64
  %266 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx280 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %266, i64 %idxprom279
  %y281 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx280, i32 0, i32 1
  %267 = load double, double* %y281, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %262, double %267)
  %268 = load i32, i32* %index, align 4
  %269 = load i32, i32* @grid_rowstride, align 4
  %add282 = add nsw i32 %268, %269
  %add283 = add nsw i32 %add282, 2
  %idxprom284 = sext i32 %add283 to i64
  %270 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx285 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %270, i64 %idxprom284
  %x286 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx285, i32 0, i32 0
  %271 = load double, double* %x286, align 8
  %272 = load i32, i32* %index, align 4
  %273 = load i32, i32* @grid_rowstride, align 4
  %add287 = add nsw i32 %272, %273
  %add288 = add nsw i32 %add287, 2
  %idxprom289 = sext i32 %add288 to i64
  %274 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx290 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %274, i64 %idxprom289
  %y291 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx290, i32 0, i32 1
  %275 = load double, double* %y291, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %271, double %275)
  %276 = load i32, i32* %index, align 4
  %277 = load i32, i32* @grid_rowstride, align 4
  %add292 = add nsw i32 %276, %277
  %add293 = add nsw i32 %add292, 1
  %idxprom294 = sext i32 %add293 to i64
  %278 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx295 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %278, i64 %idxprom294
  %x296 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx295, i32 0, i32 0
  %279 = load double, double* %x296, align 8
  %280 = load i32, i32* %index, align 4
  %281 = load i32, i32* @grid_rowstride, align 4
  %add297 = add nsw i32 %280, %281
  %add298 = add nsw i32 %add297, 1
  %idxprom299 = sext i32 %add298 to i64
  %282 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx300 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %282, i64 %idxprom299
  %y301 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx300, i32 0, i32 1
  %283 = load double, double* %y301, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %279, double %283)
  %284 = load i32, i32* %index, align 4
  %add302 = add nsw i32 %284, 4
  %idxprom303 = sext i32 %add302 to i64
  %285 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx304 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %285, i64 %idxprom303
  %x305 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx304, i32 0, i32 0
  %286 = load double, double* %x305, align 8
  %287 = load i32, i32* %index, align 4
  %add306 = add nsw i32 %287, 4
  %idxprom307 = sext i32 %add306 to i64
  %288 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx308 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %288, i64 %idxprom307
  %y309 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx308, i32 0, i32 1
  %289 = load double, double* %y309, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %286, double %289)
  %290 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %291 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay310 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %292 = load i32, i32* %vary, align 4
  %293 = load i32, i32* %x1.addr, align 4
  %294 = load i32, i32* %y1.addr, align 4
  %295 = load i32, i32* %x2.addr, align 4
  %296 = load i32, i32* %y2.addr, align 4
  %297 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %290, %struct._GimpDrawable* %291, i8* %arraydecay310, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i8* %297)
  call void @polygon_reset(%struct.Polygon* %poly)
  %298 = load i32, i32* %index, align 4
  %add311 = add nsw i32 %298, 2
  %idxprom312 = sext i32 %add311 to i64
  %299 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx313 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %299, i64 %idxprom312
  %x314 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx313, i32 0, i32 0
  %300 = load double, double* %x314, align 8
  %301 = load i32, i32* %index, align 4
  %add315 = add nsw i32 %301, 2
  %idxprom316 = sext i32 %add315 to i64
  %302 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx317 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %302, i64 %idxprom316
  %y318 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx317, i32 0, i32 1
  %303 = load double, double* %y318, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %300, double %303)
  %304 = load i32, i32* %index, align 4
  %305 = load i32, i32* @grid_multiple, align 4
  %mul319 = mul nsw i32 %305, 2
  %add320 = add nsw i32 %304, %mul319
  %sub321 = sub nsw i32 %add320, 1
  %idxprom322 = sext i32 %sub321 to i64
  %306 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx323 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %306, i64 %idxprom322
  %x324 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx323, i32 0, i32 0
  %307 = load double, double* %x324, align 8
  %308 = load i32, i32* %index, align 4
  %309 = load i32, i32* @grid_multiple, align 4
  %mul325 = mul nsw i32 %309, 2
  %add326 = add nsw i32 %308, %mul325
  %sub327 = sub nsw i32 %add326, 1
  %idxprom328 = sext i32 %sub327 to i64
  %310 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx329 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %310, i64 %idxprom328
  %y330 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx329, i32 0, i32 1
  %311 = load double, double* %y330, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %307, double %311)
  %312 = load i32, i32* %index, align 4
  %313 = load i32, i32* @grid_multiple, align 4
  %mul331 = mul nsw i32 %313, 2
  %add332 = add nsw i32 %312, %mul331
  %sub333 = sub nsw i32 %add332, 2
  %idxprom334 = sext i32 %sub333 to i64
  %314 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx335 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %314, i64 %idxprom334
  %x336 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx335, i32 0, i32 0
  %315 = load double, double* %x336, align 8
  %316 = load i32, i32* %index, align 4
  %317 = load i32, i32* @grid_multiple, align 4
  %mul337 = mul nsw i32 %317, 2
  %add338 = add nsw i32 %316, %mul337
  %sub339 = sub nsw i32 %add338, 2
  %idxprom340 = sext i32 %sub339 to i64
  %318 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx341 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %318, i64 %idxprom340
  %y342 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx341, i32 0, i32 1
  %319 = load double, double* %y342, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %315, double %319)
  %320 = load i32, i32* %index, align 4
  %add343 = add nsw i32 %320, 3
  %idxprom344 = sext i32 %add343 to i64
  %321 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx345 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %321, i64 %idxprom344
  %x346 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx345, i32 0, i32 0
  %322 = load double, double* %x346, align 8
  %323 = load i32, i32* %index, align 4
  %add347 = add nsw i32 %323, 3
  %idxprom348 = sext i32 %add347 to i64
  %324 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx349 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %324, i64 %idxprom348
  %y350 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx349, i32 0, i32 1
  %325 = load double, double* %y350, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %322, double %325)
  %326 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay351 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %327 = load i32, i32* %vary, align 4
  %328 = load i32, i32* %x1.addr, align 4
  %329 = load i32, i32* %y1.addr, align 4
  %330 = load i32, i32* %x2.addr, align 4
  %331 = load i32, i32* %y2.addr, align 4
  %332 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 0, %struct._GimpDrawable* %326, i8* %arraydecay351, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i8* %332)
  call void @polygon_reset(%struct.Polygon* %poly)
  %333 = load i32, i32* %index, align 4
  %add352 = add nsw i32 %333, 5
  %idxprom353 = sext i32 %add352 to i64
  %334 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx354 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %334, i64 %idxprom353
  %x355 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx354, i32 0, i32 0
  %335 = load double, double* %x355, align 8
  %336 = load i32, i32* %index, align 4
  %add356 = add nsw i32 %336, 5
  %idxprom357 = sext i32 %add356 to i64
  %337 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx358 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %337, i64 %idxprom357
  %y359 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx358, i32 0, i32 1
  %338 = load double, double* %y359, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %335, double %338)
  %339 = load i32, i32* %index, align 4
  %add360 = add nsw i32 %339, 4
  %idxprom361 = sext i32 %add360 to i64
  %340 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx362 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %340, i64 %idxprom361
  %x363 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx362, i32 0, i32 0
  %341 = load double, double* %x363, align 8
  %342 = load i32, i32* %index, align 4
  %add364 = add nsw i32 %342, 4
  %idxprom365 = sext i32 %add364 to i64
  %343 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx366 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %343, i64 %idxprom365
  %y367 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx366, i32 0, i32 1
  %344 = load double, double* %y367, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %341, double %344)
  %345 = load i32, i32* %index, align 4
  %346 = load i32, i32* @grid_rowstride, align 4
  %add368 = add nsw i32 %345, %346
  %add369 = add nsw i32 %add368, 1
  %idxprom370 = sext i32 %add369 to i64
  %347 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx371 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %347, i64 %idxprom370
  %x372 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx371, i32 0, i32 0
  %348 = load double, double* %x372, align 8
  %349 = load i32, i32* %index, align 4
  %350 = load i32, i32* @grid_rowstride, align 4
  %add373 = add nsw i32 %349, %350
  %add374 = add nsw i32 %add373, 1
  %idxprom375 = sext i32 %add374 to i64
  %351 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx376 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %351, i64 %idxprom375
  %y377 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx376, i32 0, i32 1
  %352 = load double, double* %y377, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %348, double %352)
  %353 = load i32, i32* %index, align 4
  %354 = load i32, i32* @grid_rowstride, align 4
  %add378 = add nsw i32 %353, %354
  %idxprom379 = sext i32 %add378 to i64
  %355 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx380 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %355, i64 %idxprom379
  %x381 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx380, i32 0, i32 0
  %356 = load double, double* %x381, align 8
  %357 = load i32, i32* %index, align 4
  %358 = load i32, i32* @grid_rowstride, align 4
  %add382 = add nsw i32 %357, %358
  %idxprom383 = sext i32 %add382 to i64
  %359 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx384 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %359, i64 %idxprom383
  %y385 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx384, i32 0, i32 1
  %360 = load double, double* %y385, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %356, double %360)
  %361 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay386 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %362 = load i32, i32* %vary, align 4
  %363 = load i32, i32* %x1.addr, align 4
  %364 = load i32, i32* %y1.addr, align 4
  %365 = load i32, i32* %x2.addr, align 4
  %366 = load i32, i32* %y2.addr, align 4
  %367 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 0, %struct._GimpDrawable* %361, i8* %arraydecay386, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366, i8* %367)
  br label %sw.epilog

sw.bb.387:                                        ; preds = %for.body.59
  call void @polygon_reset(%struct.Polygon* %poly)
  %368 = load i32, i32* %index, align 4
  %idxprom388 = sext i32 %368 to i64
  %369 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx389 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %369, i64 %idxprom388
  %x390 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx389, i32 0, i32 0
  %370 = load double, double* %x390, align 8
  %371 = load i32, i32* %index, align 4
  %idxprom391 = sext i32 %371 to i64
  %372 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx392 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %372, i64 %idxprom391
  %y393 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx392, i32 0, i32 1
  %373 = load double, double* %y393, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %370, double %373)
  %374 = load i32, i32* %index, align 4
  %375 = load i32, i32* @grid_multiple, align 4
  %add394 = add nsw i32 %374, %375
  %idxprom395 = sext i32 %add394 to i64
  %376 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx396 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %376, i64 %idxprom395
  %x397 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx396, i32 0, i32 0
  %377 = load double, double* %x397, align 8
  %378 = load i32, i32* %index, align 4
  %379 = load i32, i32* @grid_multiple, align 4
  %add398 = add nsw i32 %378, %379
  %idxprom399 = sext i32 %add398 to i64
  %380 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx400 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %380, i64 %idxprom399
  %y401 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx400, i32 0, i32 1
  %381 = load double, double* %y401, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %377, double %381)
  %382 = load i32, i32* %index, align 4
  %add402 = add nsw i32 %382, 1
  %idxprom403 = sext i32 %add402 to i64
  %383 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx404 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %383, i64 %idxprom403
  %x405 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx404, i32 0, i32 0
  %384 = load double, double* %x405, align 8
  %385 = load i32, i32* %index, align 4
  %add406 = add nsw i32 %385, 1
  %idxprom407 = sext i32 %add406 to i64
  %386 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx408 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %386, i64 %idxprom407
  %y409 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx408, i32 0, i32 1
  %387 = load double, double* %y409, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %384, double %387)
  %388 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %389 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay410 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %390 = load i32, i32* %vary, align 4
  %391 = load i32, i32* %x1.addr, align 4
  %392 = load i32, i32* %y1.addr, align 4
  %393 = load i32, i32* %x2.addr, align 4
  %394 = load i32, i32* %y2.addr, align 4
  %395 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %388, %struct._GimpDrawable* %389, i8* %arraydecay410, i32 %390, i32 %391, i32 %392, i32 %393, i32 %394, i8* %395)
  call void @polygon_reset(%struct.Polygon* %poly)
  %396 = load i32, i32* %index, align 4
  %add411 = add nsw i32 %396, 1
  %idxprom412 = sext i32 %add411 to i64
  %397 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx413 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %397, i64 %idxprom412
  %x414 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx413, i32 0, i32 0
  %398 = load double, double* %x414, align 8
  %399 = load i32, i32* %index, align 4
  %add415 = add nsw i32 %399, 1
  %idxprom416 = sext i32 %add415 to i64
  %400 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx417 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %400, i64 %idxprom416
  %y418 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx417, i32 0, i32 1
  %401 = load double, double* %y418, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %398, double %401)
  %402 = load i32, i32* %index, align 4
  %403 = load i32, i32* @grid_multiple, align 4
  %add419 = add nsw i32 %402, %403
  %idxprom420 = sext i32 %add419 to i64
  %404 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx421 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %404, i64 %idxprom420
  %x422 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx421, i32 0, i32 0
  %405 = load double, double* %x422, align 8
  %406 = load i32, i32* %index, align 4
  %407 = load i32, i32* @grid_multiple, align 4
  %add423 = add nsw i32 %406, %407
  %idxprom424 = sext i32 %add423 to i64
  %408 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx425 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %408, i64 %idxprom424
  %y426 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx425, i32 0, i32 1
  %409 = load double, double* %y426, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %405, double %409)
  %410 = load i32, i32* %index, align 4
  %411 = load i32, i32* @grid_multiple, align 4
  %add427 = add nsw i32 %410, %411
  %add428 = add nsw i32 %add427, 1
  %idxprom429 = sext i32 %add428 to i64
  %412 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx430 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %412, i64 %idxprom429
  %x431 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx430, i32 0, i32 0
  %413 = load double, double* %x431, align 8
  %414 = load i32, i32* %index, align 4
  %415 = load i32, i32* @grid_multiple, align 4
  %add432 = add nsw i32 %414, %415
  %add433 = add nsw i32 %add432, 1
  %idxprom434 = sext i32 %add433 to i64
  %416 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx435 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %416, i64 %idxprom434
  %y436 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx435, i32 0, i32 1
  %417 = load double, double* %y436, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %413, double %417)
  %418 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %419 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay437 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %420 = load i32, i32* %vary, align 4
  %421 = load i32, i32* %x1.addr, align 4
  %422 = load i32, i32* %y1.addr, align 4
  %423 = load i32, i32* %x2.addr, align 4
  %424 = load i32, i32* %y2.addr, align 4
  %425 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %418, %struct._GimpDrawable* %419, i8* %arraydecay437, i32 %420, i32 %421, i32 %422, i32 %423, i32 %424, i8* %425)
  call void @polygon_reset(%struct.Polygon* %poly)
  %426 = load i32, i32* %index, align 4
  %add438 = add nsw i32 %426, 1
  %idxprom439 = sext i32 %add438 to i64
  %427 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx440 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %427, i64 %idxprom439
  %x441 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx440, i32 0, i32 0
  %428 = load double, double* %x441, align 8
  %429 = load i32, i32* %index, align 4
  %add442 = add nsw i32 %429, 1
  %idxprom443 = sext i32 %add442 to i64
  %430 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx444 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %430, i64 %idxprom443
  %y445 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx444, i32 0, i32 1
  %431 = load double, double* %y445, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %428, double %431)
  %432 = load i32, i32* %index, align 4
  %433 = load i32, i32* @grid_multiple, align 4
  %add446 = add nsw i32 %432, %433
  %434 = load i32, i32* @grid_rowstride, align 4
  %add447 = add nsw i32 %add446, %434
  %idxprom448 = sext i32 %add447 to i64
  %435 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx449 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %435, i64 %idxprom448
  %x450 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx449, i32 0, i32 0
  %436 = load double, double* %x450, align 8
  %437 = load i32, i32* %index, align 4
  %438 = load i32, i32* @grid_multiple, align 4
  %add451 = add nsw i32 %437, %438
  %439 = load i32, i32* @grid_rowstride, align 4
  %add452 = add nsw i32 %add451, %439
  %idxprom453 = sext i32 %add452 to i64
  %440 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx454 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %440, i64 %idxprom453
  %y455 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx454, i32 0, i32 1
  %441 = load double, double* %y455, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %436, double %441)
  %442 = load i32, i32* %index, align 4
  %443 = load i32, i32* @grid_rowstride, align 4
  %add456 = add nsw i32 %442, %443
  %idxprom457 = sext i32 %add456 to i64
  %444 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx458 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %444, i64 %idxprom457
  %x459 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx458, i32 0, i32 0
  %445 = load double, double* %x459, align 8
  %446 = load i32, i32* %index, align 4
  %447 = load i32, i32* @grid_rowstride, align 4
  %add460 = add nsw i32 %446, %447
  %idxprom461 = sext i32 %add460 to i64
  %448 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx462 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %448, i64 %idxprom461
  %y463 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx462, i32 0, i32 1
  %449 = load double, double* %y463, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %445, double %449)
  %450 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %451 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay464 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %452 = load i32, i32* %vary, align 4
  %453 = load i32, i32* %x1.addr, align 4
  %454 = load i32, i32* %y1.addr, align 4
  %455 = load i32, i32* %x2.addr, align 4
  %456 = load i32, i32* %y2.addr, align 4
  %457 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %450, %struct._GimpDrawable* %451, i8* %arraydecay464, i32 %452, i32 %453, i32 %454, i32 %455, i32 %456, i8* %457)
  call void @polygon_reset(%struct.Polygon* %poly)
  %458 = load i32, i32* %index, align 4
  %add465 = add nsw i32 %458, 1
  %idxprom466 = sext i32 %add465 to i64
  %459 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx467 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %459, i64 %idxprom466
  %x468 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx467, i32 0, i32 0
  %460 = load double, double* %x468, align 8
  %461 = load i32, i32* %index, align 4
  %add469 = add nsw i32 %461, 1
  %idxprom470 = sext i32 %add469 to i64
  %462 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx471 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %462, i64 %idxprom470
  %y472 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx471, i32 0, i32 1
  %463 = load double, double* %y472, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %460, double %463)
  %464 = load i32, i32* %index, align 4
  %465 = load i32, i32* @grid_multiple, align 4
  %add473 = add nsw i32 %464, %465
  %add474 = add nsw i32 %add473, 1
  %idxprom475 = sext i32 %add474 to i64
  %466 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx476 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %466, i64 %idxprom475
  %x477 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx476, i32 0, i32 0
  %467 = load double, double* %x477, align 8
  %468 = load i32, i32* %index, align 4
  %469 = load i32, i32* @grid_multiple, align 4
  %add478 = add nsw i32 %468, %469
  %add479 = add nsw i32 %add478, 1
  %idxprom480 = sext i32 %add479 to i64
  %470 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx481 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %470, i64 %idxprom480
  %y482 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx481, i32 0, i32 1
  %471 = load double, double* %y482, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %467, double %471)
  %472 = load i32, i32* %index, align 4
  %473 = load i32, i32* @grid_multiple, align 4
  %add483 = add nsw i32 %472, %473
  %474 = load i32, i32* @grid_rowstride, align 4
  %add484 = add nsw i32 %add483, %474
  %idxprom485 = sext i32 %add484 to i64
  %475 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx486 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %475, i64 %idxprom485
  %x487 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx486, i32 0, i32 0
  %476 = load double, double* %x487, align 8
  %477 = load i32, i32* %index, align 4
  %478 = load i32, i32* @grid_multiple, align 4
  %add488 = add nsw i32 %477, %478
  %479 = load i32, i32* @grid_rowstride, align 4
  %add489 = add nsw i32 %add488, %479
  %idxprom490 = sext i32 %add489 to i64
  %480 = load %struct.Vertex*, %struct.Vertex** @grid, align 8
  %arrayidx491 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %480, i64 %idxprom490
  %y492 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx491, i32 0, i32 1
  %481 = load double, double* %y492, align 8
  call void @polygon_add_point(%struct.Polygon* %poly, double %476, double %481)
  %482 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 4), align 4
  %483 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay493 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %484 = load i32, i32* %vary, align 4
  %485 = load i32, i32* %x1.addr, align 4
  %486 = load i32, i32* %y1.addr, align 4
  %487 = load i32, i32* %x2.addr, align 4
  %488 = load i32, i32* %y2.addr, align 4
  %489 = load i8*, i8** %dest, align 8
  call void @process_poly(%struct.Polygon* %poly, i32 %482, %struct._GimpDrawable* %483, i8* %arraydecay493, i32 %484, i32 %485, i32 %486, i32 %487, i32 %488, i8* %489)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.59, %sw.bb.387, %for.end.224, %sw.bb.96, %sw.bb
  %490 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool494 = icmp ne %struct._GimpPreview* %490, null
  br i1 %tobool494, label %if.end.500, label %if.then.495

if.then.495:                                      ; preds = %sw.epilog
  %491 = load i32, i32* %count, align 4
  %inc496 = add nsw i32 %491, 1
  store i32 %inc496, i32* %count, align 4
  %conv497 = sitofp i32 %491 to double
  %492 = load i32, i32* %size, align 4
  %conv498 = sitofp i32 %492 to double
  %div = fdiv double %conv497, %conv498
  %call499 = call i32 @gimp_progress_update(double %div)
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.495, %sw.epilog
  br label %for.inc.501

for.inc.501:                                      ; preds = %if.end.500
  %493 = load i32, i32* %j, align 4
  %inc502 = add nsw i32 %493, 1
  store i32 %inc502, i32* %j, align 4
  br label %for.cond.56

for.end.503:                                      ; preds = %for.cond.56
  br label %for.inc.504

for.inc.504:                                      ; preds = %for.end.503
  %494 = load i32, i32* %i, align 4
  %inc505 = add nsw i32 %494, 1
  store i32 %inc505, i32* %i, align 4
  br label %for.cond.51

for.end.506:                                      ; preds = %for.cond.51
  %495 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool507 = icmp ne %struct._GimpPreview* %495, null
  br i1 %tobool507, label %if.then.508, label %if.else.511

if.then.508:                                      ; preds = %for.end.506
  %496 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %497 = load i8*, i8** %dest, align 8
  %498 = load i32, i32* %x2.addr, align 4
  %499 = load i32, i32* %x1.addr, align 4
  %sub509 = sub nsw i32 %498, %499
  %500 = load i32, i32* %bytes, align 4
  %mul510 = mul nsw i32 %sub509, %500
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %496, i8* %497, i32 %mul510)
  br label %if.end.513

if.else.511:                                      ; preds = %for.end.506
  %call512 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.513

if.end.513:                                       ; preds = %if.else.511, %if.then.508
  ret void
}

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gaussian_deriv(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn, i32 %type, double %std_dev, i32* %prog, i32 %max_prog, i32 %ith_prog, i32 %x1, i32 %y1, i32 %x2, i32 %y2, %struct._GimpPreview* %preview) #0 {
entry:
  %src_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %dest_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %type.addr = alloca i32, align 4
  %std_dev.addr = alloca double, align 8
  %prog.addr = alloca i32*, align 8
  %max_prog.addr = alloca i32, align 4
  %ith_prog.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %dest = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %src = alloca i8*, align 8
  %sp = alloca i8*, align 8
  %s = alloca i8*, align 8
  %data = alloca i8*, align 8
  %buf = alloca i32*, align 8
  %b = alloca i32*, align 8
  %chan = alloca i32, align 4
  %i = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %curve_array = alloca [9 x i32], align 16
  %sum_array = alloca [9 x i32], align 16
  %curve = alloca i32*, align 8
  %sum = alloca i32*, align 8
  %bytes = alloca i32, align 4
  %val = alloca i32, align 4
  %total = alloca i32, align 4
  %length = alloca i32, align 4
  %initial_p = alloca [4 x i32], align 16
  %initial_m = alloca [4 x i32], align 16
  store %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  store %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store double %std_dev, double* %std_dev.addr, align 8
  store i32* %prog, i32** %prog.addr, align 8
  store i32 %max_prog, i32* %max_prog.addr, align 4
  store i32 %ith_prog, i32* %ith_prog.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 2
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %2, i32 0, i32 6
  %3 = load i32, i32* %w, align 4
  %4 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %4, i32 0, i32 7
  %5 = load i32, i32* %h, align 4
  %cmp = icmp sgt i32 %3, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %w1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %6, i32 0, i32 6
  %7 = load i32, i32* %w1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %h2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %8, i32 0, i32 7
  %9 = load i32, i32* %h2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %cond, %10
  store i32 %mul, i32* %length, align 4
  %11 = load i32, i32* %length, align 4
  %mul3 = mul nsw i32 %11, 2
  %conv = sext i32 %mul3 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %data, align 8
  %12 = load i8*, i8** %data, align 8
  store i8* %12, i8** %src, align 8
  %13 = load i8*, i8** %data, align 8
  %14 = load i32, i32* %length, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %curve_array, i32 0, i32 0
  %add.ptr4 = getelementptr inbounds i32, i32* %arraydecay, i64 3
  store i32* %add.ptr4, i32** %curve, align 8
  %arraydecay5 = getelementptr inbounds [9 x i32], [9 x i32]* %sum_array, i32 0, i32 0
  %add.ptr6 = getelementptr inbounds i32, i32* %arraydecay5, i64 3
  store i32* %add.ptr6, i32** %sum, align 8
  %15 = load i32, i32* %x2.addr, align 4
  %16 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %15, %16
  %17 = load i32, i32* %y2.addr, align 4
  %18 = load i32, i32* %y1.addr, align 4
  %sub7 = sub nsw i32 %17, %18
  %cmp8 = icmp sgt i32 %sub, %sub7
  br i1 %cmp8, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.end
  %19 = load i32, i32* %x2.addr, align 4
  %20 = load i32, i32* %x1.addr, align 4
  %sub11 = sub nsw i32 %19, %20
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end
  %21 = load i32, i32* %y2.addr, align 4
  %22 = load i32, i32* %y1.addr, align 4
  %sub13 = sub nsw i32 %21, %22
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.10
  %cond15 = phi i32 [ %sub11, %cond.true.10 ], [ %sub13, %cond.false.12 ]
  %23 = load i32, i32* %bytes, align 4
  %mul16 = mul nsw i32 %cond15, %23
  %conv17 = sext i32 %mul16 to i64
  %call18 = call noalias i8* @g_malloc_n(i64 %conv17, i64 4)
  %24 = bitcast i8* %call18 to i32*
  store i32* %24, i32** %buf, align 8
  %25 = load i32, i32* %type.addr, align 4
  %cmp19 = icmp eq i32 %25, 1
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.14
  %26 = load i32*, i32** %curve, align 8
  %27 = load i32*, i32** %sum, align 8
  %28 = load double, double* %std_dev.addr, align 8
  call void @make_curve_d(i32* %26, i32* %27, double %28, i32 3)
  %29 = load i32*, i32** %sum, align 8
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx, align 4
  %mul21 = mul nsw i32 %30, -2
  store i32 %mul21, i32* %total, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.14
  %31 = load i32*, i32** %curve, align 8
  %32 = load i32*, i32** %sum, align 8
  %33 = load double, double* %std_dev.addr, align 8
  call void @make_curve(i32* %31, i32* %32, double %33, i32 3)
  %34 = load i32*, i32** %sum, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %34, i64 3
  %35 = load i32, i32* %arrayidx22, align 4
  %36 = load i32*, i32** %curve, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx23, align 4
  %add = add nsw i32 %35, %37
  store i32 %add, i32* %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load i32, i32* %x1.addr, align 4
  store i32 %38, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.215, %if.end
  %39 = load i32, i32* %col, align 4
  %40 = load i32, i32* %x2.addr, align 4
  %cmp24 = icmp slt i32 %39, %40
  br i1 %cmp24, label %for.body, label %for.end.217

for.body:                                         ; preds = %for.cond
  %41 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %42 = load i8*, i8** %src, align 8
  %43 = load i32, i32* %col, align 4
  %44 = load i32, i32* %y1.addr, align 4
  %45 = load i32, i32* %y2.addr, align 4
  %46 = load i32, i32* %y1.addr, align 4
  %sub26 = sub nsw i32 %45, %46
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %41, i8* %42, i32 %43, i32 %44, i32 %sub26)
  %47 = load i8*, i8** %src, align 8
  store i8* %47, i8** %sp, align 8
  %48 = load i8*, i8** %dest, align 8
  store i8* %48, i8** %dp, align 8
  %49 = load i32*, i32** %buf, align 8
  store i32* %49, i32** %b, align 8
  store i32 0, i32* %chan, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body
  %50 = load i32, i32* %chan, align 4
  %51 = load i32, i32* %bytes, align 4
  %cmp28 = icmp slt i32 %50, %51
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %52 = load i32, i32* %chan, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load i8*, i8** %sp, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %53, i64 %idxprom
  %54 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %54 to i32
  %55 = load i32, i32* %chan, align 4
  %idxprom33 = sext i32 %55 to i64
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom33
  store i32 %conv32, i32* %arrayidx34, align 4
  %56 = load i32, i32* %y2.addr, align 4
  %57 = load i32, i32* %y1.addr, align 4
  %sub35 = sub nsw i32 %56, %57
  %sub36 = sub nsw i32 %sub35, 1
  %58 = load i32, i32* %bytes, align 4
  %mul37 = mul nsw i32 %sub36, %58
  %59 = load i32, i32* %chan, align 4
  %add38 = add nsw i32 %mul37, %59
  %idxprom39 = sext i32 %add38 to i64
  %60 = load i8*, i8** %sp, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %60, i64 %idxprom39
  %61 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %61 to i32
  %62 = load i32, i32* %chan, align 4
  %idxprom42 = sext i32 %62 to i64
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom42
  store i32 %conv41, i32* %arrayidx43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %63 = load i32, i32* %chan, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %chan, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  %64 = load i32, i32* %y1.addr, align 4
  store i32 %64, i32* %row, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.117, %for.end
  %65 = load i32, i32* %row, align 4
  %66 = load i32, i32* %y2.addr, align 4
  %cmp45 = icmp slt i32 %65, %66
  br i1 %cmp45, label %for.body.47, label %for.end.119

for.body.47:                                      ; preds = %for.cond.44
  %67 = load i32, i32* %row, align 4
  %68 = load i32, i32* %y1.addr, align 4
  %sub48 = sub nsw i32 %67, %68
  %cmp49 = icmp slt i32 %sub48, 3
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %for.body.47
  %69 = load i32, i32* %y1.addr, align 4
  %70 = load i32, i32* %row, align 4
  %sub52 = sub nsw i32 %69, %70
  br label %cond.end.54

cond.false.53:                                    ; preds = %for.body.47
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.51
  %cond55 = phi i32 [ %sub52, %cond.true.51 ], [ -3, %cond.false.53 ]
  store i32 %cond55, i32* %start, align 4
  %71 = load i32, i32* %y2.addr, align 4
  %72 = load i32, i32* %row, align 4
  %sub56 = sub nsw i32 %71, %72
  %sub57 = sub nsw i32 %sub56, 1
  %cmp58 = icmp slt i32 %sub57, 3
  br i1 %cmp58, label %cond.true.60, label %cond.false.63

cond.true.60:                                     ; preds = %cond.end.54
  %73 = load i32, i32* %y2.addr, align 4
  %74 = load i32, i32* %row, align 4
  %sub61 = sub nsw i32 %73, %74
  %sub62 = sub nsw i32 %sub61, 1
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.end.54
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.60
  %cond65 = phi i32 [ %sub62, %cond.true.60 ], [ 3, %cond.false.63 ]
  store i32 %cond65, i32* %end, align 4
  store i32 0, i32* %chan, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.112, %cond.end.64
  %75 = load i32, i32* %chan, align 4
  %76 = load i32, i32* %bytes, align 4
  %cmp67 = icmp slt i32 %75, %76
  br i1 %cmp67, label %for.body.69, label %for.end.114

for.body.69:                                      ; preds = %for.cond.66
  %77 = load i8*, i8** %sp, align 8
  %78 = load i32, i32* %start, align 4
  %79 = load i32, i32* %bytes, align 4
  %mul70 = mul nsw i32 %78, %79
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %77, i64 %idx.ext71
  %80 = load i32, i32* %chan, align 4
  %idx.ext73 = sext i32 %80 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %add.ptr72, i64 %idx.ext73
  store i8* %add.ptr74, i8** %s, align 8
  store i32 0, i32* %val, align 4
  %81 = load i32, i32* %start, align 4
  store i32 %81, i32* %i, align 4
  %82 = load i32, i32* %start, align 4
  %cmp75 = icmp ne i32 %82, -3
  br i1 %cmp75, label %if.then.77, label %if.end.86

if.then.77:                                       ; preds = %for.body.69
  %83 = load i32, i32* %chan, align 4
  %idxprom78 = sext i32 %83 to i64
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom78
  %84 = load i32, i32* %arrayidx79, align 4
  %85 = load i32, i32* %start, align 4
  %idxprom80 = sext i32 %85 to i64
  %86 = load i32*, i32** %sum, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %86, i64 %idxprom80
  %87 = load i32, i32* %arrayidx81, align 4
  %88 = load i32*, i32** %sum, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %88, i64 -3
  %89 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %87, %89
  %mul84 = mul nsw i32 %84, %sub83
  %90 = load i32, i32* %val, align 4
  %add85 = add nsw i32 %90, %mul84
  store i32 %add85, i32* %val, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.77, %for.body.69
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.86
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %end, align 4
  %cmp87 = icmp sle i32 %91, %92
  br i1 %cmp87, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %93 = load i8*, i8** %s, align 8
  %94 = load i8, i8* %93, align 1
  %conv89 = zext i8 %94 to i32
  %95 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %95, 1
  store i32 %inc90, i32* %i, align 4
  %idxprom91 = sext i32 %95 to i64
  %96 = load i32*, i32** %curve, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %96, i64 %idxprom91
  %97 = load i32, i32* %arrayidx92, align 4
  %mul93 = mul nsw i32 %conv89, %97
  %98 = load i32, i32* %val, align 4
  %add94 = add nsw i32 %98, %mul93
  store i32 %add94, i32* %val, align 4
  %99 = load i32, i32* %bytes, align 4
  %100 = load i8*, i8** %s, align 8
  %idx.ext95 = sext i32 %99 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %100, i64 %idx.ext95
  store i8* %add.ptr96, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %101 = load i32, i32* %end, align 4
  %cmp97 = icmp ne i32 %101, 3
  br i1 %cmp97, label %if.then.99, label %if.end.111

if.then.99:                                       ; preds = %while.end
  %102 = load i32, i32* %chan, align 4
  %idxprom100 = sext i32 %102 to i64
  %arrayidx101 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom100
  %103 = load i32, i32* %arrayidx101, align 4
  %104 = load i32*, i32** %sum, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %104, i64 3
  %105 = load i32, i32* %arrayidx102, align 4
  %106 = load i32*, i32** %curve, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %106, i64 3
  %107 = load i32, i32* %arrayidx103, align 4
  %add104 = add nsw i32 %105, %107
  %108 = load i32, i32* %end, align 4
  %add105 = add nsw i32 %108, 1
  %idxprom106 = sext i32 %add105 to i64
  %109 = load i32*, i32** %sum, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %109, i64 %idxprom106
  %110 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %add104, %110
  %mul109 = mul nsw i32 %103, %sub108
  %111 = load i32, i32* %val, align 4
  %add110 = add nsw i32 %111, %mul109
  store i32 %add110, i32* %val, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.99, %while.end
  %112 = load i32, i32* %val, align 4
  %113 = load i32, i32* %total, align 4
  %div = sdiv i32 %112, %113
  %114 = load i32*, i32** %b, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr, i32** %b, align 8
  store i32 %div, i32* %114, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %115 = load i32, i32* %chan, align 4
  %inc113 = add nsw i32 %115, 1
  store i32 %inc113, i32* %chan, align 4
  br label %for.cond.66

for.end.114:                                      ; preds = %for.cond.66
  %116 = load i32, i32* %bytes, align 4
  %117 = load i8*, i8** %sp, align 8
  %idx.ext115 = sext i32 %116 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %117, i64 %idx.ext115
  store i8* %add.ptr116, i8** %sp, align 8
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.end.114
  %118 = load i32, i32* %row, align 4
  %inc118 = add nsw i32 %118, 1
  store i32 %inc118, i32* %row, align 4
  br label %for.cond.44

for.end.119:                                      ; preds = %for.cond.44
  %119 = load i32*, i32** %buf, align 8
  store i32* %119, i32** %b, align 8
  %120 = load i32, i32* %type.addr, align 4
  %cmp120 = icmp eq i32 %120, 1
  br i1 %cmp120, label %if.then.122, label %if.else.165

if.then.122:                                      ; preds = %for.end.119
  %121 = load i32, i32* %y1.addr, align 4
  store i32 %121, i32* %row, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.162, %if.then.122
  %122 = load i32, i32* %row, align 4
  %123 = load i32, i32* %y2.addr, align 4
  %cmp124 = icmp slt i32 %122, %123
  br i1 %cmp124, label %for.body.126, label %for.end.164

for.body.126:                                     ; preds = %for.cond.123
  store i32 0, i32* %chan, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.155, %for.body.126
  %124 = load i32, i32* %chan, align 4
  %125 = load i32, i32* %bytes, align 4
  %cmp128 = icmp slt i32 %124, %125
  br i1 %cmp128, label %for.body.130, label %for.end.157

for.body.130:                                     ; preds = %for.cond.127
  %126 = load i32, i32* %chan, align 4
  %idxprom131 = sext i32 %126 to i64
  %127 = load i32*, i32** %b, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %127, i64 %idxprom131
  %128 = load i32, i32* %arrayidx132, align 4
  %add133 = add nsw i32 %128, 128
  store i32 %add133, i32* %arrayidx132, align 4
  %129 = load i32, i32* %chan, align 4
  %idxprom134 = sext i32 %129 to i64
  %130 = load i32*, i32** %b, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %130, i64 %idxprom134
  %131 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp sgt i32 %131, 255
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %for.body.130
  br label %cond.end.150

cond.false.139:                                   ; preds = %for.body.130
  %132 = load i32, i32* %chan, align 4
  %idxprom140 = sext i32 %132 to i64
  %133 = load i32*, i32** %b, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %133, i64 %idxprom140
  %134 = load i32, i32* %arrayidx141, align 4
  %cmp142 = icmp slt i32 %134, 0
  br i1 %cmp142, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %cond.false.139
  br label %cond.end.148

cond.false.145:                                   ; preds = %cond.false.139
  %135 = load i32, i32* %chan, align 4
  %idxprom146 = sext i32 %135 to i64
  %136 = load i32*, i32** %b, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %136, i64 %idxprom146
  %137 = load i32, i32* %arrayidx147, align 4
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.145, %cond.true.144
  %cond149 = phi i32 [ 0, %cond.true.144 ], [ %137, %cond.false.145 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.138
  %cond151 = phi i32 [ 255, %cond.true.138 ], [ %cond149, %cond.end.148 ]
  %conv152 = trunc i32 %cond151 to i8
  %138 = load i32, i32* %chan, align 4
  %idxprom153 = sext i32 %138 to i64
  %139 = load i8*, i8** %dp, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %139, i64 %idxprom153
  store i8 %conv152, i8* %arrayidx154, align 1
  br label %for.inc.155

for.inc.155:                                      ; preds = %cond.end.150
  %140 = load i32, i32* %chan, align 4
  %inc156 = add nsw i32 %140, 1
  store i32 %inc156, i32* %chan, align 4
  br label %for.cond.127

for.end.157:                                      ; preds = %for.cond.127
  %141 = load i32, i32* %bytes, align 4
  %142 = load i32*, i32** %b, align 8
  %idx.ext158 = sext i32 %141 to i64
  %add.ptr159 = getelementptr inbounds i32, i32* %142, i64 %idx.ext158
  store i32* %add.ptr159, i32** %b, align 8
  %143 = load i32, i32* %bytes, align 4
  %144 = load i8*, i8** %dp, align 8
  %idx.ext160 = sext i32 %143 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %144, i64 %idx.ext160
  store i8* %add.ptr161, i8** %dp, align 8
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.end.157
  %145 = load i32, i32* %row, align 4
  %inc163 = add nsw i32 %145, 1
  store i32 %inc163, i32* %row, align 4
  br label %for.cond.123

for.end.164:                                      ; preds = %for.cond.123
  br label %if.end.205

if.else.165:                                      ; preds = %for.end.119
  %146 = load i32, i32* %y1.addr, align 4
  store i32 %146, i32* %row, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.202, %if.else.165
  %147 = load i32, i32* %row, align 4
  %148 = load i32, i32* %y2.addr, align 4
  %cmp167 = icmp slt i32 %147, %148
  br i1 %cmp167, label %for.body.169, label %for.end.204

for.body.169:                                     ; preds = %for.cond.166
  store i32 0, i32* %chan, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.195, %for.body.169
  %149 = load i32, i32* %chan, align 4
  %150 = load i32, i32* %bytes, align 4
  %cmp171 = icmp slt i32 %149, %150
  br i1 %cmp171, label %for.body.173, label %for.end.197

for.body.173:                                     ; preds = %for.cond.170
  %151 = load i32, i32* %chan, align 4
  %idxprom174 = sext i32 %151 to i64
  %152 = load i32*, i32** %b, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %152, i64 %idxprom174
  %153 = load i32, i32* %arrayidx175, align 4
  %cmp176 = icmp sgt i32 %153, 255
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %for.body.173
  br label %cond.end.190

cond.false.179:                                   ; preds = %for.body.173
  %154 = load i32, i32* %chan, align 4
  %idxprom180 = sext i32 %154 to i64
  %155 = load i32*, i32** %b, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %155, i64 %idxprom180
  %156 = load i32, i32* %arrayidx181, align 4
  %cmp182 = icmp slt i32 %156, 0
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %cond.false.179
  br label %cond.end.188

cond.false.185:                                   ; preds = %cond.false.179
  %157 = load i32, i32* %chan, align 4
  %idxprom186 = sext i32 %157 to i64
  %158 = load i32*, i32** %b, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %158, i64 %idxprom186
  %159 = load i32, i32* %arrayidx187, align 4
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.185, %cond.true.184
  %cond189 = phi i32 [ 0, %cond.true.184 ], [ %159, %cond.false.185 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.178
  %cond191 = phi i32 [ 255, %cond.true.178 ], [ %cond189, %cond.end.188 ]
  %conv192 = trunc i32 %cond191 to i8
  %160 = load i32, i32* %chan, align 4
  %idxprom193 = sext i32 %160 to i64
  %161 = load i8*, i8** %dp, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %161, i64 %idxprom193
  store i8 %conv192, i8* %arrayidx194, align 1
  br label %for.inc.195

for.inc.195:                                      ; preds = %cond.end.190
  %162 = load i32, i32* %chan, align 4
  %inc196 = add nsw i32 %162, 1
  store i32 %inc196, i32* %chan, align 4
  br label %for.cond.170

for.end.197:                                      ; preds = %for.cond.170
  %163 = load i32, i32* %bytes, align 4
  %164 = load i32*, i32** %b, align 8
  %idx.ext198 = sext i32 %163 to i64
  %add.ptr199 = getelementptr inbounds i32, i32* %164, i64 %idx.ext198
  store i32* %add.ptr199, i32** %b, align 8
  %165 = load i32, i32* %bytes, align 4
  %166 = load i8*, i8** %dp, align 8
  %idx.ext200 = sext i32 %165 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %166, i64 %idx.ext200
  store i8* %add.ptr201, i8** %dp, align 8
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end.197
  %167 = load i32, i32* %row, align 4
  %inc203 = add nsw i32 %167, 1
  store i32 %inc203, i32* %row, align 4
  br label %for.cond.166

for.end.204:                                      ; preds = %for.cond.166
  br label %if.end.205

if.end.205:                                       ; preds = %for.end.204, %for.end.164
  %168 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %169 = load i8*, i8** %dest, align 8
  %170 = load i32, i32* %col, align 4
  %171 = load i32, i32* %y1.addr, align 4
  %172 = load i32, i32* %y2.addr, align 4
  %173 = load i32, i32* %y1.addr, align 4
  %sub206 = sub nsw i32 %172, %173
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %168, i8* %169, i32 %170, i32 %171, i32 %sub206)
  %174 = load i32*, i32** %prog.addr, align 8
  %175 = load i32, i32* %174, align 4
  %inc207 = add nsw i32 %175, 1
  store i32 %inc207, i32* %174, align 4
  %176 = load i32, i32* %ith_prog.addr, align 4
  %rem = srem i32 %175, %176
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end.214, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.205
  %177 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool208 = icmp ne %struct._GimpPreview* %177, null
  br i1 %tobool208, label %if.end.214, label %if.then.209

if.then.209:                                      ; preds = %land.lhs.true
  %178 = load i32*, i32** %prog.addr, align 8
  %179 = load i32, i32* %178, align 4
  %conv210 = sitofp i32 %179 to double
  %180 = load i32, i32* %max_prog.addr, align 4
  %conv211 = sitofp i32 %180 to double
  %div212 = fdiv double %conv210, %conv211
  %call213 = call i32 @gimp_progress_update(double %div212)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.209, %land.lhs.true, %if.end.205
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.214
  %181 = load i32, i32* %col, align 4
  %inc216 = add nsw i32 %181, 1
  store i32 %inc216, i32* %col, align 4
  br label %for.cond

for.end.217:                                      ; preds = %for.cond
  %182 = load i32, i32* %type.addr, align 4
  %cmp218 = icmp eq i32 %182, 0
  br i1 %cmp218, label %if.then.220, label %if.else.223

if.then.220:                                      ; preds = %for.end.217
  %183 = load i32*, i32** %curve, align 8
  %184 = load i32*, i32** %sum, align 8
  %185 = load double, double* %std_dev.addr, align 8
  call void @make_curve_d(i32* %183, i32* %184, double %185, i32 3)
  %186 = load i32*, i32** %sum, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %186, i64 0
  %187 = load i32, i32* %arrayidx221, align 4
  %mul222 = mul nsw i32 %187, -2
  store i32 %mul222, i32* %total, align 4
  br label %if.end.227

if.else.223:                                      ; preds = %for.end.217
  %188 = load i32*, i32** %curve, align 8
  %189 = load i32*, i32** %sum, align 8
  %190 = load double, double* %std_dev.addr, align 8
  call void @make_curve(i32* %188, i32* %189, double %190, i32 3)
  %191 = load i32*, i32** %sum, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %191, i64 3
  %192 = load i32, i32* %arrayidx224, align 4
  %193 = load i32*, i32** %curve, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %193, i64 3
  %194 = load i32, i32* %arrayidx225, align 4
  %add226 = add nsw i32 %192, %194
  store i32 %add226, i32* %total, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.223, %if.then.220
  %195 = load i32, i32* %y1.addr, align 4
  store i32 %195, i32* %row, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.433, %if.end.227
  %196 = load i32, i32* %row, align 4
  %197 = load i32, i32* %y2.addr, align 4
  %cmp229 = icmp slt i32 %196, %197
  br i1 %cmp229, label %for.body.231, label %for.end.435

for.body.231:                                     ; preds = %for.cond.228
  %198 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %199 = load i8*, i8** %src, align 8
  %200 = load i32, i32* %x1.addr, align 4
  %201 = load i32, i32* %row, align 4
  %202 = load i32, i32* %x2.addr, align 4
  %203 = load i32, i32* %x1.addr, align 4
  %sub232 = sub nsw i32 %202, %203
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %198, i8* %199, i32 %200, i32 %201, i32 %sub232)
  %204 = load i8*, i8** %src, align 8
  store i8* %204, i8** %sp, align 8
  %205 = load i8*, i8** %dest, align 8
  store i8* %205, i8** %dp, align 8
  %206 = load i32*, i32** %buf, align 8
  store i32* %206, i32** %b, align 8
  store i32 0, i32* %chan, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.251, %for.body.231
  %207 = load i32, i32* %chan, align 4
  %208 = load i32, i32* %bytes, align 4
  %cmp234 = icmp slt i32 %207, %208
  br i1 %cmp234, label %for.body.236, label %for.end.253

for.body.236:                                     ; preds = %for.cond.233
  %209 = load i32, i32* %chan, align 4
  %idxprom237 = sext i32 %209 to i64
  %210 = load i8*, i8** %sp, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %210, i64 %idxprom237
  %211 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %211 to i32
  %212 = load i32, i32* %chan, align 4
  %idxprom240 = sext i32 %212 to i64
  %arrayidx241 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom240
  store i32 %conv239, i32* %arrayidx241, align 4
  %213 = load i32, i32* %x2.addr, align 4
  %214 = load i32, i32* %x1.addr, align 4
  %sub242 = sub nsw i32 %213, %214
  %sub243 = sub nsw i32 %sub242, 1
  %215 = load i32, i32* %bytes, align 4
  %mul244 = mul nsw i32 %sub243, %215
  %216 = load i32, i32* %chan, align 4
  %add245 = add nsw i32 %mul244, %216
  %idxprom246 = sext i32 %add245 to i64
  %217 = load i8*, i8** %sp, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %217, i64 %idxprom246
  %218 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %218 to i32
  %219 = load i32, i32* %chan, align 4
  %idxprom249 = sext i32 %219 to i64
  %arrayidx250 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom249
  store i32 %conv248, i32* %arrayidx250, align 4
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.body.236
  %220 = load i32, i32* %chan, align 4
  %inc252 = add nsw i32 %220, 1
  store i32 %inc252, i32* %chan, align 4
  br label %for.cond.233

for.end.253:                                      ; preds = %for.cond.233
  %221 = load i32, i32* %x1.addr, align 4
  store i32 %221, i32* %col, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.332, %for.end.253
  %222 = load i32, i32* %col, align 4
  %223 = load i32, i32* %x2.addr, align 4
  %cmp255 = icmp slt i32 %222, %223
  br i1 %cmp255, label %for.body.257, label %for.end.334

for.body.257:                                     ; preds = %for.cond.254
  %224 = load i32, i32* %col, align 4
  %225 = load i32, i32* %x1.addr, align 4
  %sub258 = sub nsw i32 %224, %225
  %cmp259 = icmp slt i32 %sub258, 3
  br i1 %cmp259, label %cond.true.261, label %cond.false.263

cond.true.261:                                    ; preds = %for.body.257
  %226 = load i32, i32* %x1.addr, align 4
  %227 = load i32, i32* %col, align 4
  %sub262 = sub nsw i32 %226, %227
  br label %cond.end.264

cond.false.263:                                   ; preds = %for.body.257
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.263, %cond.true.261
  %cond265 = phi i32 [ %sub262, %cond.true.261 ], [ -3, %cond.false.263 ]
  store i32 %cond265, i32* %start, align 4
  %228 = load i32, i32* %x2.addr, align 4
  %229 = load i32, i32* %col, align 4
  %sub266 = sub nsw i32 %228, %229
  %sub267 = sub nsw i32 %sub266, 1
  %cmp268 = icmp slt i32 %sub267, 3
  br i1 %cmp268, label %cond.true.270, label %cond.false.273

cond.true.270:                                    ; preds = %cond.end.264
  %230 = load i32, i32* %x2.addr, align 4
  %231 = load i32, i32* %col, align 4
  %sub271 = sub nsw i32 %230, %231
  %sub272 = sub nsw i32 %sub271, 1
  br label %cond.end.274

cond.false.273:                                   ; preds = %cond.end.264
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.273, %cond.true.270
  %cond275 = phi i32 [ %sub272, %cond.true.270 ], [ 3, %cond.false.273 ]
  store i32 %cond275, i32* %end, align 4
  store i32 0, i32* %chan, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.327, %cond.end.274
  %232 = load i32, i32* %chan, align 4
  %233 = load i32, i32* %bytes, align 4
  %cmp277 = icmp slt i32 %232, %233
  br i1 %cmp277, label %for.body.279, label %for.end.329

for.body.279:                                     ; preds = %for.cond.276
  %234 = load i8*, i8** %sp, align 8
  %235 = load i32, i32* %start, align 4
  %236 = load i32, i32* %bytes, align 4
  %mul280 = mul nsw i32 %235, %236
  %idx.ext281 = sext i32 %mul280 to i64
  %add.ptr282 = getelementptr inbounds i8, i8* %234, i64 %idx.ext281
  %237 = load i32, i32* %chan, align 4
  %idx.ext283 = sext i32 %237 to i64
  %add.ptr284 = getelementptr inbounds i8, i8* %add.ptr282, i64 %idx.ext283
  store i8* %add.ptr284, i8** %s, align 8
  store i32 0, i32* %val, align 4
  %238 = load i32, i32* %start, align 4
  store i32 %238, i32* %i, align 4
  %239 = load i32, i32* %start, align 4
  %cmp285 = icmp ne i32 %239, -3
  br i1 %cmp285, label %if.then.287, label %if.end.296

if.then.287:                                      ; preds = %for.body.279
  %240 = load i32, i32* %chan, align 4
  %idxprom288 = sext i32 %240 to i64
  %arrayidx289 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_p, i32 0, i64 %idxprom288
  %241 = load i32, i32* %arrayidx289, align 4
  %242 = load i32, i32* %start, align 4
  %idxprom290 = sext i32 %242 to i64
  %243 = load i32*, i32** %sum, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %243, i64 %idxprom290
  %244 = load i32, i32* %arrayidx291, align 4
  %245 = load i32*, i32** %sum, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %245, i64 -3
  %246 = load i32, i32* %arrayidx292, align 4
  %sub293 = sub nsw i32 %244, %246
  %mul294 = mul nsw i32 %241, %sub293
  %247 = load i32, i32* %val, align 4
  %add295 = add nsw i32 %247, %mul294
  store i32 %add295, i32* %val, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.287, %for.body.279
  br label %while.cond.297

while.cond.297:                                   ; preds = %while.body.300, %if.end.296
  %248 = load i32, i32* %i, align 4
  %249 = load i32, i32* %end, align 4
  %cmp298 = icmp sle i32 %248, %249
  br i1 %cmp298, label %while.body.300, label %while.end.309

while.body.300:                                   ; preds = %while.cond.297
  %250 = load i8*, i8** %s, align 8
  %251 = load i8, i8* %250, align 1
  %conv301 = zext i8 %251 to i32
  %252 = load i32, i32* %i, align 4
  %inc302 = add nsw i32 %252, 1
  store i32 %inc302, i32* %i, align 4
  %idxprom303 = sext i32 %252 to i64
  %253 = load i32*, i32** %curve, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %253, i64 %idxprom303
  %254 = load i32, i32* %arrayidx304, align 4
  %mul305 = mul nsw i32 %conv301, %254
  %255 = load i32, i32* %val, align 4
  %add306 = add nsw i32 %255, %mul305
  store i32 %add306, i32* %val, align 4
  %256 = load i32, i32* %bytes, align 4
  %257 = load i8*, i8** %s, align 8
  %idx.ext307 = sext i32 %256 to i64
  %add.ptr308 = getelementptr inbounds i8, i8* %257, i64 %idx.ext307
  store i8* %add.ptr308, i8** %s, align 8
  br label %while.cond.297

while.end.309:                                    ; preds = %while.cond.297
  %258 = load i32, i32* %end, align 4
  %cmp310 = icmp ne i32 %258, 3
  br i1 %cmp310, label %if.then.312, label %if.end.324

if.then.312:                                      ; preds = %while.end.309
  %259 = load i32, i32* %chan, align 4
  %idxprom313 = sext i32 %259 to i64
  %arrayidx314 = getelementptr inbounds [4 x i32], [4 x i32]* %initial_m, i32 0, i64 %idxprom313
  %260 = load i32, i32* %arrayidx314, align 4
  %261 = load i32*, i32** %sum, align 8
  %arrayidx315 = getelementptr inbounds i32, i32* %261, i64 3
  %262 = load i32, i32* %arrayidx315, align 4
  %263 = load i32*, i32** %curve, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %263, i64 3
  %264 = load i32, i32* %arrayidx316, align 4
  %add317 = add nsw i32 %262, %264
  %265 = load i32, i32* %end, align 4
  %add318 = add nsw i32 %265, 1
  %idxprom319 = sext i32 %add318 to i64
  %266 = load i32*, i32** %sum, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %266, i64 %idxprom319
  %267 = load i32, i32* %arrayidx320, align 4
  %sub321 = sub nsw i32 %add317, %267
  %mul322 = mul nsw i32 %260, %sub321
  %268 = load i32, i32* %val, align 4
  %add323 = add nsw i32 %268, %mul322
  store i32 %add323, i32* %val, align 4
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.312, %while.end.309
  %269 = load i32, i32* %val, align 4
  %270 = load i32, i32* %total, align 4
  %div325 = sdiv i32 %269, %270
  %271 = load i32*, i32** %b, align 8
  %incdec.ptr326 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %incdec.ptr326, i32** %b, align 8
  store i32 %div325, i32* %271, align 4
  br label %for.inc.327

for.inc.327:                                      ; preds = %if.end.324
  %272 = load i32, i32* %chan, align 4
  %inc328 = add nsw i32 %272, 1
  store i32 %inc328, i32* %chan, align 4
  br label %for.cond.276

for.end.329:                                      ; preds = %for.cond.276
  %273 = load i32, i32* %bytes, align 4
  %274 = load i8*, i8** %sp, align 8
  %idx.ext330 = sext i32 %273 to i64
  %add.ptr331 = getelementptr inbounds i8, i8* %274, i64 %idx.ext330
  store i8* %add.ptr331, i8** %sp, align 8
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.end.329
  %275 = load i32, i32* %col, align 4
  %inc333 = add nsw i32 %275, 1
  store i32 %inc333, i32* %col, align 4
  br label %for.cond.254

for.end.334:                                      ; preds = %for.cond.254
  %276 = load i32*, i32** %buf, align 8
  store i32* %276, i32** %b, align 8
  %277 = load i32, i32* %type.addr, align 4
  %cmp335 = icmp eq i32 %277, 0
  br i1 %cmp335, label %if.then.337, label %if.else.380

if.then.337:                                      ; preds = %for.end.334
  %278 = load i32, i32* %x1.addr, align 4
  store i32 %278, i32* %col, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.377, %if.then.337
  %279 = load i32, i32* %col, align 4
  %280 = load i32, i32* %x2.addr, align 4
  %cmp339 = icmp slt i32 %279, %280
  br i1 %cmp339, label %for.body.341, label %for.end.379

for.body.341:                                     ; preds = %for.cond.338
  store i32 0, i32* %chan, align 4
  br label %for.cond.342

for.cond.342:                                     ; preds = %for.inc.370, %for.body.341
  %281 = load i32, i32* %chan, align 4
  %282 = load i32, i32* %bytes, align 4
  %cmp343 = icmp slt i32 %281, %282
  br i1 %cmp343, label %for.body.345, label %for.end.372

for.body.345:                                     ; preds = %for.cond.342
  %283 = load i32, i32* %chan, align 4
  %idxprom346 = sext i32 %283 to i64
  %284 = load i32*, i32** %b, align 8
  %arrayidx347 = getelementptr inbounds i32, i32* %284, i64 %idxprom346
  %285 = load i32, i32* %arrayidx347, align 4
  %add348 = add nsw i32 %285, 128
  store i32 %add348, i32* %arrayidx347, align 4
  %286 = load i32, i32* %chan, align 4
  %idxprom349 = sext i32 %286 to i64
  %287 = load i32*, i32** %b, align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %287, i64 %idxprom349
  %288 = load i32, i32* %arrayidx350, align 4
  %cmp351 = icmp sgt i32 %288, 255
  br i1 %cmp351, label %cond.true.353, label %cond.false.354

cond.true.353:                                    ; preds = %for.body.345
  br label %cond.end.365

cond.false.354:                                   ; preds = %for.body.345
  %289 = load i32, i32* %chan, align 4
  %idxprom355 = sext i32 %289 to i64
  %290 = load i32*, i32** %b, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %290, i64 %idxprom355
  %291 = load i32, i32* %arrayidx356, align 4
  %cmp357 = icmp slt i32 %291, 0
  br i1 %cmp357, label %cond.true.359, label %cond.false.360

cond.true.359:                                    ; preds = %cond.false.354
  br label %cond.end.363

cond.false.360:                                   ; preds = %cond.false.354
  %292 = load i32, i32* %chan, align 4
  %idxprom361 = sext i32 %292 to i64
  %293 = load i32*, i32** %b, align 8
  %arrayidx362 = getelementptr inbounds i32, i32* %293, i64 %idxprom361
  %294 = load i32, i32* %arrayidx362, align 4
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.false.360, %cond.true.359
  %cond364 = phi i32 [ 0, %cond.true.359 ], [ %294, %cond.false.360 ]
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.end.363, %cond.true.353
  %cond366 = phi i32 [ 255, %cond.true.353 ], [ %cond364, %cond.end.363 ]
  %conv367 = trunc i32 %cond366 to i8
  %295 = load i32, i32* %chan, align 4
  %idxprom368 = sext i32 %295 to i64
  %296 = load i8*, i8** %dp, align 8
  %arrayidx369 = getelementptr inbounds i8, i8* %296, i64 %idxprom368
  store i8 %conv367, i8* %arrayidx369, align 1
  br label %for.inc.370

for.inc.370:                                      ; preds = %cond.end.365
  %297 = load i32, i32* %chan, align 4
  %inc371 = add nsw i32 %297, 1
  store i32 %inc371, i32* %chan, align 4
  br label %for.cond.342

for.end.372:                                      ; preds = %for.cond.342
  %298 = load i32, i32* %bytes, align 4
  %299 = load i32*, i32** %b, align 8
  %idx.ext373 = sext i32 %298 to i64
  %add.ptr374 = getelementptr inbounds i32, i32* %299, i64 %idx.ext373
  store i32* %add.ptr374, i32** %b, align 8
  %300 = load i32, i32* %bytes, align 4
  %301 = load i8*, i8** %dp, align 8
  %idx.ext375 = sext i32 %300 to i64
  %add.ptr376 = getelementptr inbounds i8, i8* %301, i64 %idx.ext375
  store i8* %add.ptr376, i8** %dp, align 8
  br label %for.inc.377

for.inc.377:                                      ; preds = %for.end.372
  %302 = load i32, i32* %col, align 4
  %inc378 = add nsw i32 %302, 1
  store i32 %inc378, i32* %col, align 4
  br label %for.cond.338

for.end.379:                                      ; preds = %for.cond.338
  br label %if.end.420

if.else.380:                                      ; preds = %for.end.334
  %303 = load i32, i32* %x1.addr, align 4
  store i32 %303, i32* %col, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.417, %if.else.380
  %304 = load i32, i32* %col, align 4
  %305 = load i32, i32* %x2.addr, align 4
  %cmp382 = icmp slt i32 %304, %305
  br i1 %cmp382, label %for.body.384, label %for.end.419

for.body.384:                                     ; preds = %for.cond.381
  store i32 0, i32* %chan, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.410, %for.body.384
  %306 = load i32, i32* %chan, align 4
  %307 = load i32, i32* %bytes, align 4
  %cmp386 = icmp slt i32 %306, %307
  br i1 %cmp386, label %for.body.388, label %for.end.412

for.body.388:                                     ; preds = %for.cond.385
  %308 = load i32, i32* %chan, align 4
  %idxprom389 = sext i32 %308 to i64
  %309 = load i32*, i32** %b, align 8
  %arrayidx390 = getelementptr inbounds i32, i32* %309, i64 %idxprom389
  %310 = load i32, i32* %arrayidx390, align 4
  %cmp391 = icmp sgt i32 %310, 255
  br i1 %cmp391, label %cond.true.393, label %cond.false.394

cond.true.393:                                    ; preds = %for.body.388
  br label %cond.end.405

cond.false.394:                                   ; preds = %for.body.388
  %311 = load i32, i32* %chan, align 4
  %idxprom395 = sext i32 %311 to i64
  %312 = load i32*, i32** %b, align 8
  %arrayidx396 = getelementptr inbounds i32, i32* %312, i64 %idxprom395
  %313 = load i32, i32* %arrayidx396, align 4
  %cmp397 = icmp slt i32 %313, 0
  br i1 %cmp397, label %cond.true.399, label %cond.false.400

cond.true.399:                                    ; preds = %cond.false.394
  br label %cond.end.403

cond.false.400:                                   ; preds = %cond.false.394
  %314 = load i32, i32* %chan, align 4
  %idxprom401 = sext i32 %314 to i64
  %315 = load i32*, i32** %b, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %315, i64 %idxprom401
  %316 = load i32, i32* %arrayidx402, align 4
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.400, %cond.true.399
  %cond404 = phi i32 [ 0, %cond.true.399 ], [ %316, %cond.false.400 ]
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.end.403, %cond.true.393
  %cond406 = phi i32 [ 255, %cond.true.393 ], [ %cond404, %cond.end.403 ]
  %conv407 = trunc i32 %cond406 to i8
  %317 = load i32, i32* %chan, align 4
  %idxprom408 = sext i32 %317 to i64
  %318 = load i8*, i8** %dp, align 8
  %arrayidx409 = getelementptr inbounds i8, i8* %318, i64 %idxprom408
  store i8 %conv407, i8* %arrayidx409, align 1
  br label %for.inc.410

for.inc.410:                                      ; preds = %cond.end.405
  %319 = load i32, i32* %chan, align 4
  %inc411 = add nsw i32 %319, 1
  store i32 %inc411, i32* %chan, align 4
  br label %for.cond.385

for.end.412:                                      ; preds = %for.cond.385
  %320 = load i32, i32* %bytes, align 4
  %321 = load i32*, i32** %b, align 8
  %idx.ext413 = sext i32 %320 to i64
  %add.ptr414 = getelementptr inbounds i32, i32* %321, i64 %idx.ext413
  store i32* %add.ptr414, i32** %b, align 8
  %322 = load i32, i32* %bytes, align 4
  %323 = load i8*, i8** %dp, align 8
  %idx.ext415 = sext i32 %322 to i64
  %add.ptr416 = getelementptr inbounds i8, i8* %323, i64 %idx.ext415
  store i8* %add.ptr416, i8** %dp, align 8
  br label %for.inc.417

for.inc.417:                                      ; preds = %for.end.412
  %324 = load i32, i32* %col, align 4
  %inc418 = add nsw i32 %324, 1
  store i32 %inc418, i32* %col, align 4
  br label %for.cond.381

for.end.419:                                      ; preds = %for.cond.381
  br label %if.end.420

if.end.420:                                       ; preds = %for.end.419, %for.end.379
  %325 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %326 = load i8*, i8** %dest, align 8
  %327 = load i32, i32* %x1.addr, align 4
  %328 = load i32, i32* %row, align 4
  %329 = load i32, i32* %x2.addr, align 4
  %330 = load i32, i32* %x1.addr, align 4
  %sub421 = sub nsw i32 %329, %330
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %325, i8* %326, i32 %327, i32 %328, i32 %sub421)
  %331 = load i32*, i32** %prog.addr, align 8
  %332 = load i32, i32* %331, align 4
  %inc422 = add nsw i32 %332, 1
  store i32 %inc422, i32* %331, align 4
  %333 = load i32, i32* %ith_prog.addr, align 4
  %rem423 = srem i32 %332, %333
  %tobool424 = icmp ne i32 %rem423, 0
  br i1 %tobool424, label %if.end.432, label %land.lhs.true.425

land.lhs.true.425:                                ; preds = %if.end.420
  %334 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool426 = icmp ne %struct._GimpPreview* %334, null
  br i1 %tobool426, label %if.end.432, label %if.then.427

if.then.427:                                      ; preds = %land.lhs.true.425
  %335 = load i32*, i32** %prog.addr, align 8
  %336 = load i32, i32* %335, align 4
  %conv428 = sitofp i32 %336 to double
  %337 = load i32, i32* %max_prog.addr, align 4
  %conv429 = sitofp i32 %337 to double
  %div430 = fdiv double %conv428, %conv429
  %call431 = call i32 @gimp_progress_update(double %div430)
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.427, %land.lhs.true.425, %if.end.420
  br label %for.inc.433

for.inc.433:                                      ; preds = %if.end.432
  %338 = load i32, i32* %row, align 4
  %inc434 = add nsw i32 %338, 1
  store i32 %inc434, i32* %row, align 4
  br label %for.cond.228

for.end.435:                                      ; preds = %for.cond.228
  %339 = load i32*, i32** %buf, align 8
  %340 = bitcast i32* %339 to i8*
  call void @g_free(i8* %340)
  %341 = load i8*, i8** %data, align 8
  call void @g_free(i8* %341)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_max_gradient(%struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn) #0 {
entry:
  %src_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %dest_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %s_iter = alloca i8*, align 8
  %s_end = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  %max = alloca i32, align 4
  store %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  store %struct._GimpPixelRgn* %dest_rgn, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %0, %struct._GimpPixelRgn* %1)
  store i8* %call, i8** %pr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.38, %entry
  %2 = load i8*, i8** %pr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %s, align 8
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %data1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %5, i32 0, i32 0
  %6 = load i8*, i8** %data1, align 8
  store i8* %6, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %while.body
  %7 = load i32, i32* %i, align 4
  %8 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %8, i32 0, i32 7
  %9 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.24, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %11, i32 0, i32 6
  %12 = load i32, i32* %w, align 4
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %for.body.4, label %for.end.25

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %max, align 4
  %13 = load i8*, i8** %s, align 8
  store i8* %13, i8** %s_iter, align 8
  %14 = load i8*, i8** %s, align 8
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %15, i32 0, i32 2
  %16 = load i32, i32* %bpp, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %s_end, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %17 = load i8*, i8** %s_iter, align 8
  %18 = load i8*, i8** %s_end, align 8
  %cmp6 = icmp ult i8* %17, %18
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %19 = load i8*, i8** %s, align 8
  %20 = load i8, i8* %19, align 1
  %conv = zext i8 %20 to i32
  store i32 %conv, i32* %val, align 4
  %21 = load i32, i32* %val, align 4
  %cmp8 = icmp sge i32 %21, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.7
  %22 = load i32, i32* %val, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.7
  %23 = load i32, i32* %val, align 4
  %sub = sub nsw i32 0, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %sub, %cond.false ]
  %24 = load i32, i32* %max, align 4
  %cmp10 = icmp sge i32 %24, 0
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %25 = load i32, i32* %max, align 4
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %26 = load i32, i32* %max, align 4
  %sub14 = sub nsw i32 0, %26
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i32 [ %25, %cond.true.12 ], [ %sub14, %cond.false.13 ]
  %cmp17 = icmp sgt i32 %cond, %cond16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.15
  %27 = load i32, i32* %val, align 4
  store i32 %27, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i8*, i8** %s_iter, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %s_iter, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %29 = load i32, i32* %max, align 4
  %conv19 = trunc i32 %29 to i8
  %30 = load i8*, i8** %d, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr20, i8** %d, align 8
  store i8 %conv19, i8* %30, align 1
  %31 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %bpp21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %31, i32 0, i32 2
  %32 = load i32, i32* %bpp21, align 4
  %33 = load i8*, i8** %s, align 8
  %idx.ext22 = sext i32 %32 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %33, i64 %idx.ext22
  store i8* %add.ptr23, i8** %s, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %34 = load i32, i32* %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end.25:                                       ; preds = %for.cond.2
  %35 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %35, i32 0, i32 3
  %36 = load i32, i32* %rowstride, align 4
  %37 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %w26 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %37, i32 0, i32 6
  %38 = load i32, i32* %w26, align 4
  %39 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %src_rgn.addr, align 8
  %bpp27 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %39, i32 0, i32 2
  %40 = load i32, i32* %bpp27, align 4
  %mul = mul nsw i32 %38, %40
  %sub28 = sub nsw i32 %36, %mul
  %41 = load i8*, i8** %s, align 8
  %idx.ext29 = sext i32 %sub28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %41, i64 %idx.ext29
  store i8* %add.ptr30, i8** %s, align 8
  %42 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %rowstride31 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %42, i32 0, i32 3
  %43 = load i32, i32* %rowstride31, align 4
  %44 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %dest_rgn.addr, align 8
  %w32 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %44, i32 0, i32 6
  %45 = load i32, i32* %w32, align 4
  %sub33 = sub nsw i32 %43, %45
  %46 = load i8*, i8** %d, align 8
  %idx.ext34 = sext i32 %sub33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %46, i64 %idx.ext34
  store i8* %add.ptr35, i8** %d, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.25
  %47 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %47, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %48 = load i8*, i8** %pr, align 8
  %call39 = call i8* @gimp_pixel_rgns_process(i8* %48)
  store i8* %call39, i8** %pr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal void @make_curve_d(i32* %curve, i32* %sum, double %sigma, i32 %length) #0 {
entry:
  %curve.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sigma.addr = alloca double, align 8
  %length.addr = alloca i32, align 4
  %sigma2 = alloca double, align 8
  %i = alloca i32, align 4
  store i32* %curve, i32** %curve.addr, align 8
  store i32* %sum, i32** %sum.addr, align 8
  store double %sigma, double* %sigma.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load double, double* %sigma.addr, align 8
  %1 = load double, double* %sigma.addr, align 8
  %mul = fmul double %0, %1
  store double %mul, double* %sigma2, align 8
  %2 = load i32*, i32** %curve.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %length.addr, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %conv = sitofp i32 %5 to double
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 %6, %7
  %sub = sub nsw i32 0, %mul1
  %conv2 = sitofp i32 %sub to double
  %8 = load double, double* %sigma2, align 8
  %mul3 = fmul double 2.000000e+00, %8
  %div = fdiv double %conv2, %mul3
  %call = call double @exp(double %div) #4
  %mul4 = fmul double %conv, %call
  %9 = load double, double* %sigma2, align 8
  %div5 = fdiv double %mul4, %9
  %mul6 = fmul double %div5, 2.550000e+02
  %conv7 = fptosi double %mul6 to i32
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %curve.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %conv7, i32* %arrayidx8, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i32*, i32** %curve.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i64 %idxprom9
  %14 = load i32, i32* %arrayidx10, align 4
  %sub11 = sub nsw i32 0, %14
  %15 = load i32, i32* %i, align 4
  %sub12 = sub nsw i32 0, %15
  %idxprom13 = sext i32 %sub12 to i64
  %16 = load i32*, i32** %curve.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %16, i64 %idxprom13
  store i32 %sub11, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %length.addr, align 4
  %sub15 = sub nsw i32 0, %18
  %idxprom16 = sext i32 %sub15 to i64
  %19 = load i32*, i32** %sum.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %19, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4
  %20 = load i32*, i32** %sum.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %arrayidx18, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.46, %for.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %length.addr, align 4
  %cmp20 = icmp sle i32 %21, %22
  br i1 %cmp20, label %for.body.22, label %for.end.48

for.body.22:                                      ; preds = %for.cond.19
  %23 = load i32, i32* %length.addr, align 4
  %sub23 = sub nsw i32 0, %23
  %24 = load i32, i32* %i, align 4
  %add = add nsw i32 %sub23, %24
  %sub24 = sub nsw i32 %add, 1
  %idxprom25 = sext i32 %sub24 to i64
  %25 = load i32*, i32** %sum.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %25, i64 %idxprom25
  %26 = load i32, i32* %arrayidx26, align 4
  %27 = load i32, i32* %length.addr, align 4
  %sub27 = sub nsw i32 0, %27
  %28 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %sub27, %28
  %sub29 = sub nsw i32 %add28, 1
  %idxprom30 = sext i32 %sub29 to i64
  %29 = load i32*, i32** %curve.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %29, i64 %idxprom30
  %30 = load i32, i32* %arrayidx31, align 4
  %add32 = add nsw i32 %26, %30
  %31 = load i32, i32* %length.addr, align 4
  %sub33 = sub nsw i32 0, %31
  %32 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %sub33, %32
  %idxprom35 = sext i32 %add34 to i64
  %33 = load i32*, i32** %sum.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %33, i64 %idxprom35
  store i32 %add32, i32* %arrayidx36, align 4
  %34 = load i32, i32* %i, align 4
  %sub37 = sub nsw i32 %34, 1
  %idxprom38 = sext i32 %sub37 to i64
  %35 = load i32*, i32** %sum.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %35, i64 %idxprom38
  %36 = load i32, i32* %arrayidx39, align 4
  %37 = load i32, i32* %i, align 4
  %sub40 = sub nsw i32 %37, 1
  %idxprom41 = sext i32 %sub40 to i64
  %38 = load i32*, i32** %curve.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %38, i64 %idxprom41
  %39 = load i32, i32* %arrayidx42, align 4
  %add43 = add nsw i32 %36, %39
  %40 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %40 to i64
  %41 = load i32*, i32** %sum.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %41, i64 %idxprom44
  store i32 %add43, i32* %arrayidx45, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.22
  %42 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %42, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.19

for.end.48:                                       ; preds = %for.cond.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_curve(i32* %curve, i32* %sum, double %sigma, i32 %length) #0 {
entry:
  %curve.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sigma.addr = alloca double, align 8
  %length.addr = alloca i32, align 4
  %sigma2 = alloca double, align 8
  %i = alloca i32, align 4
  store i32* %curve, i32** %curve.addr, align 8
  store i32* %sum, i32** %sum.addr, align 8
  store double %sigma, double* %sigma.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load double, double* %sigma.addr, align 8
  %1 = load double, double* %sigma.addr, align 8
  %mul = fmul double %0, %1
  store double %mul, double* %sigma2, align 8
  %2 = load i32*, i32** %curve.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 255, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %length.addr, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 %5, %6
  %sub = sub nsw i32 0, %mul1
  %conv = sitofp i32 %sub to double
  %7 = load double, double* %sigma2, align 8
  %mul2 = fmul double 2.000000e+00, %7
  %div = fdiv double %conv, %mul2
  %call = call double @exp(double %div) #4
  %mul3 = fmul double %call, 2.550000e+02
  %conv4 = fptosi double %mul3 to i32
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %curve.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 %conv4, i32* %arrayidx5, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %curve.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load i32, i32* %i, align 4
  %sub8 = sub nsw i32 0, %13
  %idxprom9 = sext i32 %sub8 to i64
  %14 = load i32*, i32** %curve.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  store i32 %12, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %length.addr, align 4
  %sub11 = sub nsw i32 0, %16
  %idxprom12 = sext i32 %sub11 to i64
  %17 = load i32*, i32** %sum.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  %18 = load i32, i32* %length.addr, align 4
  %sub14 = sub nsw i32 0, %18
  %add = add nsw i32 %sub14, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.28, %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %length.addr, align 4
  %cmp16 = icmp sle i32 %19, %20
  br i1 %cmp16, label %for.body.18, label %for.end.30

for.body.18:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %21, 1
  %idxprom20 = sext i32 %sub19 to i64
  %22 = load i32*, i32** %sum.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %22, i64 %idxprom20
  %23 = load i32, i32* %arrayidx21, align 4
  %24 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 %24, 1
  %idxprom23 = sext i32 %sub22 to i64
  %25 = load i32*, i32** %curve.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %25, i64 %idxprom23
  %26 = load i32, i32* %arrayidx24, align 4
  %add25 = add nsw i32 %23, %26
  %27 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load i32*, i32** %sum.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %28, i64 %idxprom26
  store i32 %add25, i32* %arrayidx27, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.18
  %29 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %29, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.15

for.end.30:                                       ; preds = %for.cond.15
  ret void
}

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @exp(double) #2

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

; Function Attrs: nounwind uwtable
define internal double @fp_rand(double %val) #0 {
entry:
  %val.addr = alloca double, align 8
  store double %val, double* %val.addr, align 8
  %call = call double @g_random_double()
  %0 = load double, double* %val.addr, align 8
  %mul = fmul double %call, %0
  ret double %mul
}

declare double @g_random_double() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @g_random_int_range(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @polygon_reset(%struct.Polygon* %poly) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  store i32 0, i32* %npts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_add_point(%struct.Polygon* %poly, double %x, double %y) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  %1 = load i32, i32* %npts, align 4
  %cmp = icmp ult i32 %1, 12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  %3 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts1 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %3, i32 0, i32 0
  %4 = load i32, i32* %npts1, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom
  %x2 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  store double %2, double* %x2, align 8
  %6 = load double, double* %y.addr, align 8
  %7 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts3 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %7, i32 0, i32 0
  %8 = load i32, i32* %npts3, align 4
  %idxprom4 = zext i32 %8 to i64
  %9 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts5 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts5, i32 0, i64 %idxprom4
  %y7 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx6, i32 0, i32 1
  store double %6, double* %y7, align 8
  %10 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts8 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %10, i32 0, i32 0
  %11 = load i32, i32* %npts8, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %npts8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_poly(%struct.Polygon* %poly, i32 %allow_split, %struct._GimpDrawable* %drawable, i8* %col, i32 %vary, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8* %dest) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %allow_split.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %col.addr = alloca i8*, align 8
  %vary.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %dir = alloca [2 x double], align 16
  %loc = alloca [2 x double], align 16
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %magnitude = alloca double, align 8
  %distance = alloca double, align 8
  %color_vary = alloca double, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store i32 %allow_split, i32* %allow_split.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store i32 %vary, i32* %vary.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store double 0.000000e+00, double* %cx, align 8
  store double 0.000000e+00, double* %cy, align 8
  %0 = load i32, i32* %vary.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 6), align 8
  %call = call double @fp_rand(double %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond, double* %color_vary, align 8
  %call1 = call i32 @g_random_int_range(i32 0, i32 2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %2 = load double, double* %color_vary, align 8
  %mul = fmul double %2, 1.270000e+02
  br label %cond.end.6

cond.false.4:                                     ; preds = %cond.end
  %3 = load double, double* %color_vary, align 8
  %sub = fsub double -0.000000e+00, %3
  %mul5 = fmul double %sub, 1.270000e+02
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.4, %cond.true.3
  %cond7 = phi double [ %mul, %cond.true.3 ], [ %mul5, %cond.false.4 ]
  store double %cond7, double* %color_vary, align 8
  %4 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %5 = load i8*, i8** @m_grad, align 8
  %6 = load i8*, i8** @h_grad, align 8
  %7 = load i8*, i8** @v_grad, align 8
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %dir, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [2 x double], [2 x double]* %loc, i32 0, i32 0
  %8 = load i32, i32* %x1.addr, align 4
  %9 = load i32, i32* %y1.addr, align 4
  %10 = load i32, i32* %x2.addr, align 4
  %11 = load i32, i32* %y2.addr, align 4
  call void @find_poly_dir(%struct.Polygon* %4, i8* %5, i8* %6, i8* %7, double* %arraydecay, double* %arraydecay8, i32 %8, i32 %9, i32 %10, i32 %11)
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %dir, i32 0, i64 0
  %12 = load double, double* %arrayidx, align 8
  %sub9 = fsub double %12, 1.280000e+02
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %dir, i32 0, i64 0
  %13 = load double, double* %arrayidx10, align 8
  %sub11 = fsub double %13, 1.280000e+02
  %mul12 = fmul double %sub9, %sub11
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %dir, i32 0, i64 1
  %14 = load double, double* %arrayidx13, align 8
  %sub14 = fsub double %14, 1.280000e+02
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %dir, i32 0, i64 1
  %15 = load double, double* %arrayidx15, align 8
  %sub16 = fsub double %15, 1.280000e+02
  %mul17 = fmul double %sub14, %sub16
  %add = fadd double %mul12, %mul17
  %call18 = call double @sqrt(double %add) #4
  store double %call18, double* %magnitude, align 8
  %16 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call19 = call i32 @polygon_find_center(%struct.Polygon* %16, double* %cx, double* %cy)
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* %loc, i32 0, i64 0
  %17 = load double, double* %arrayidx20, align 8
  %18 = load double, double* %cx, align 8
  %sub21 = fsub double %17, %18
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %loc, i32 0, i64 0
  %19 = load double, double* %arrayidx22, align 8
  %20 = load double, double* %cx, align 8
  %sub23 = fsub double %19, %20
  %mul24 = fmul double %sub21, %sub23
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %loc, i32 0, i64 1
  %21 = load double, double* %arrayidx25, align 8
  %22 = load double, double* %cy, align 8
  %sub26 = fsub double %21, %22
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %loc, i32 0, i64 1
  %23 = load double, double* %arrayidx27, align 8
  %24 = load double, double* %cy, align 8
  %sub28 = fsub double %23, %24
  %mul29 = fmul double %sub26, %sub28
  %add30 = fadd double %mul24, %mul29
  %call31 = call double @sqrt(double %add30) #4
  store double %call31, double* %distance, align 8
  %25 = load double, double* %magnitude, align 8
  %cmp = fcmp ogt double %25, 7.500000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.6
  %26 = load double, double* %distance, align 8
  %mul32 = fmul double 2.000000e+00, %26
  %27 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 0), align 8
  %div = fdiv double %mul32, %27
  %cmp33 = fcmp olt double %div, 5.000000e-01
  br i1 %cmp33, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %28 = load i32, i32* %allow_split.addr, align 4
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.34
  %29 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = load i8*, i8** %col.addr, align 8
  %arraydecay36 = getelementptr inbounds [2 x double], [2 x double]* %dir, i32 0, i32 0
  %32 = load double, double* %color_vary, align 8
  %33 = load i32, i32* %x1.addr, align 4
  %34 = load i32, i32* %y1.addr, align 4
  %35 = load i32, i32* %x2.addr, align 4
  %36 = load i32, i32* %y2.addr, align 4
  %37 = load i8*, i8** %dest.addr, align 8
  call void @split_poly(%struct.Polygon* %29, %struct._GimpDrawable* %30, i8* %31, double* %arraydecay36, double %32, i32 %33, i32 %34, i32 %35, i32 %36, i8* %37)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.34, %land.lhs.true, %cond.end.6
  %38 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = load i8*, i8** %col.addr, align 8
  %41 = load double, double* %color_vary, align 8
  %42 = load i32, i32* %x1.addr, align 4
  %43 = load i32, i32* %y1.addr, align 4
  %44 = load i32, i32* %x2.addr, align 4
  %45 = load i32, i32* %y2.addr, align 4
  %46 = load i8*, i8** %dest.addr, align 8
  call void @render_poly(%struct.Polygon* %38, %struct._GimpDrawable* %39, i8* %40, double %41, i32 %42, i32 %43, i32 %44, i32 %45, i8* %46)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @find_poly_dir(%struct.Polygon* %poly, i8* %m_gr, i8* %h_gr, i8* %v_gr, double* %dir, double* %loc, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %m_gr.addr = alloca i8*, align 8
  %h_gr.addr = alloca i8*, align 8
  %v_gr.addr = alloca i8*, align 8
  %dir.addr = alloca double*, align 8
  %loc.addr = alloca double*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dmin_x = alloca double, align 8
  %dmin_y = alloca double, align 8
  %dmax_x = alloca double, align 8
  %dmax_y = alloca double, align 8
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %size_y = alloca i32, align 4
  %max_scanlines = alloca i32*, align 8
  %min_scanlines = alloca i32*, align 8
  %dm = alloca i8*, align 8
  %dv = alloca i8*, align 8
  %dh = alloca i8*, align 8
  %count = alloca i32, align 4
  %total = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store i8* %m_gr, i8** %m_gr.addr, align 8
  store i8* %h_gr, i8** %h_gr.addr, align 8
  store i8* %v_gr, i8** %v_gr.addr, align 8
  store double* %dir, double** %dir.addr, align 8
  store double* %loc, double** %loc.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store double 0.000000e+00, double* %dmin_x, align 8
  store double 0.000000e+00, double* %dmin_y, align 8
  store double 0.000000e+00, double* %dmax_x, align 8
  store double 0.000000e+00, double* %dmax_y, align 8
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %rowstride, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %total, align 4
  %2 = load double*, double** %dir.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  store double 0.000000e+00, double* %arrayidx, align 8
  %3 = load double*, double** %dir.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %3, i64 1
  store double 0.000000e+00, double* %arrayidx1, align 8
  %4 = load double*, double** %loc.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 0
  store double 0.000000e+00, double* %arrayidx2, align 8
  %5 = load double*, double** %loc.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 1
  store double 0.000000e+00, double* %arrayidx3, align 8
  %6 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call = call i32 @polygon_extents(%struct.Polygon* %6, double* %dmin_x, double* %dmin_y, double* %dmax_x, double* %dmax_y)
  %7 = load double, double* %dmin_x, align 8
  %conv = fptosi double %7 to i32
  store i32 %conv, i32* %min_x, align 4
  %8 = load double, double* %dmin_y, align 8
  %conv4 = fptosi double %8 to i32
  store i32 %conv4, i32* %min_y, align 4
  %9 = load double, double* %dmax_x, align 8
  %conv5 = fptosi double %9 to i32
  store i32 %conv5, i32* %max_x, align 4
  %10 = load double, double* %dmax_y, align 8
  %conv6 = fptosi double %10 to i32
  store i32 %conv6, i32* %max_y, align 4
  %11 = load i32, i32* %max_y, align 4
  %12 = load i32, i32* %min_y, align 4
  %sub7 = sub nsw i32 %11, %12
  store i32 %sub7, i32* %size_y, align 4
  %13 = load i32, i32* %size_y, align 4
  %conv8 = sext i32 %13 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv8, i64 4)
  %14 = bitcast i8* %call9 to i32*
  store i32* %14, i32** %min_scanlines, align 8
  %15 = load i32, i32* %size_y, align 4
  %conv10 = sext i32 %15 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 4)
  %16 = bitcast i8* %call11 to i32*
  store i32* %16, i32** %max_scanlines, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %size_y, align 4
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %max_x, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32*, i32** %min_scanlines, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom
  store i32 %19, i32* %arrayidx13, align 4
  %22 = load i32, i32* %min_x, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i32*, i32** %max_scanlines, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 %idxprom14
  store i32 %22, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.56, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %27, i32 0, i32 0
  %28 = load i32, i32* %npts, align 4
  %cmp17 = icmp ult i32 %26, %28
  br i1 %cmp17, label %for.body.19, label %for.end.58

for.body.19:                                      ; preds = %for.cond.16
  %29 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.19
  %30 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %30, 1
  %idxprom21 = sext i32 %sub20 to i64
  %31 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %31, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom21
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx22, i32 0, i32 0
  %32 = load double, double* %x, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.19
  %33 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts23 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %33, i32 0, i32 0
  %34 = load i32, i32* %npts23, align 4
  %sub24 = sub i32 %34, 1
  %idxprom25 = zext i32 %sub24 to i64
  %35 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts26 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %35, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts26, i32 0, i64 %idxprom25
  %x28 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx27, i32 0, i32 0
  %36 = load double, double* %x28, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %32, %cond.true ], [ %36, %cond.false ]
  %conv29 = fptosi double %cond to i32
  store i32 %conv29, i32* %xs, align 4
  %37 = load i32, i32* %i, align 4
  %tobool30 = icmp ne i32 %37, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.36

cond.true.31:                                     ; preds = %cond.end
  %38 = load i32, i32* %i, align 4
  %sub32 = sub nsw i32 %38, 1
  %idxprom33 = sext i32 %sub32 to i64
  %39 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts34 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %39, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts34, i32 0, i64 %idxprom33
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx35, i32 0, i32 1
  %40 = load double, double* %y, align 8
  br label %cond.end.43

cond.false.36:                                    ; preds = %cond.end
  %41 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts37 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %41, i32 0, i32 0
  %42 = load i32, i32* %npts37, align 4
  %sub38 = sub i32 %42, 1
  %idxprom39 = zext i32 %sub38 to i64
  %43 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts40 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %43, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts40, i32 0, i64 %idxprom39
  %y42 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx41, i32 0, i32 1
  %44 = load double, double* %y42, align 8
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.36, %cond.true.31
  %cond44 = phi double [ %40, %cond.true.31 ], [ %44, %cond.false.36 ]
  %conv45 = fptosi double %cond44 to i32
  store i32 %conv45, i32* %ys, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %45 to i64
  %46 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts47 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %46, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts47, i32 0, i64 %idxprom46
  %x49 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx48, i32 0, i32 0
  %47 = load double, double* %x49, align 8
  %conv50 = fptosi double %47 to i32
  store i32 %conv50, i32* %xe, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %48 to i64
  %49 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts52 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %49, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts52, i32 0, i64 %idxprom51
  %y54 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx53, i32 0, i32 1
  %50 = load double, double* %y54, align 8
  %conv55 = fptosi double %50 to i32
  store i32 %conv55, i32* %ye, align 4
  %51 = load i32, i32* %xs, align 4
  %52 = load i32, i32* %ys, align 4
  %53 = load i32, i32* %xe, align 4
  %54 = load i32, i32* %ye, align 4
  %55 = load i32, i32* %min_y, align 4
  %56 = load i32*, i32** %min_scanlines, align 8
  %57 = load i32*, i32** %max_scanlines, align 8
  call void @convert_segment(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32* %56, i32* %57)
  br label %for.inc.56

for.inc.56:                                       ; preds = %cond.end.43
  %58 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %58, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.16

for.end.58:                                       ; preds = %for.cond.16
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.135, %for.end.58
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %size_y, align 4
  %cmp60 = icmp slt i32 %59, %60
  br i1 %cmp60, label %for.body.62, label %for.end.137

for.body.62:                                      ; preds = %for.cond.59
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %min_y, align 4
  %add = add nsw i32 %61, %62
  %63 = load i32, i32* %y1.addr, align 4
  %cmp63 = icmp sge i32 %add, %63
  br i1 %cmp63, label %land.lhs.true, label %if.end.134

land.lhs.true:                                    ; preds = %for.body.62
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %min_y, align 4
  %add65 = add nsw i32 %64, %65
  %66 = load i32, i32* %y2.addr, align 4
  %cmp66 = icmp slt i32 %add65, %66
  br i1 %cmp66, label %if.then, label %if.end.134

if.then:                                          ; preds = %land.lhs.true
  %67 = load i8*, i8** %m_gr.addr, align 8
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %min_y, align 4
  %add68 = add nsw i32 %68, %69
  %70 = load i32, i32* %y1.addr, align 4
  %sub69 = sub nsw i32 %add68, %70
  %71 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %sub69, %71
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  %72 = load i32, i32* %x1.addr, align 4
  %idx.ext70 = sext i32 %72 to i64
  %idx.neg = sub i64 0, %idx.ext70
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr71, i8** %dm, align 8
  %73 = load i8*, i8** %h_gr.addr, align 8
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %min_y, align 4
  %add72 = add nsw i32 %74, %75
  %76 = load i32, i32* %y1.addr, align 4
  %sub73 = sub nsw i32 %add72, %76
  %77 = load i32, i32* %rowstride, align 4
  %mul74 = mul nsw i32 %sub73, %77
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %73, i64 %idx.ext75
  %78 = load i32, i32* %x1.addr, align 4
  %idx.ext77 = sext i32 %78 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr76, i64 %idx.neg78
  store i8* %add.ptr79, i8** %dh, align 8
  %79 = load i8*, i8** %v_gr.addr, align 8
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %min_y, align 4
  %add80 = add nsw i32 %80, %81
  %82 = load i32, i32* %y1.addr, align 4
  %sub81 = sub nsw i32 %add80, %82
  %83 = load i32, i32* %rowstride, align 4
  %mul82 = mul nsw i32 %sub81, %83
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %79, i64 %idx.ext83
  %84 = load i32, i32* %x1.addr, align 4
  %idx.ext85 = sext i32 %84 to i64
  %idx.neg86 = sub i64 0, %idx.ext85
  %add.ptr87 = getelementptr inbounds i8, i8* %add.ptr84, i64 %idx.neg86
  store i8* %add.ptr87, i8** %dv, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %85 to i64
  %86 = load i32*, i32** %min_scanlines, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %86, i64 %idxprom88
  %87 = load i32, i32* %arrayidx89, align 4
  store i32 %87, i32* %j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.131, %if.then
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %89 to i64
  %90 = load i32*, i32** %max_scanlines, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %90, i64 %idxprom91
  %91 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp slt i32 %88, %91
  br i1 %cmp93, label %for.body.95, label %for.end.133

for.body.95:                                      ; preds = %for.cond.90
  %92 = load i32, i32* %j, align 4
  %93 = load i32, i32* %x1.addr, align 4
  %cmp96 = icmp sge i32 %92, %93
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.130

land.lhs.true.98:                                 ; preds = %for.body.95
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %x2.addr, align 4
  %cmp99 = icmp slt i32 %94, %95
  br i1 %cmp99, label %if.then.101, label %if.end.130

if.then.101:                                      ; preds = %land.lhs.true.98
  %96 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %96 to i64
  %97 = load i8*, i8** %dm, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %97, i64 %idxprom102
  %98 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %98 to i32
  %conv105 = sitofp i32 %conv104 to double
  %cmp106 = fcmp ogt double %conv105, 7.500000e+00
  br i1 %cmp106, label %if.then.108, label %if.end

if.then.108:                                      ; preds = %if.then.101
  %99 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %99 to i64
  %100 = load i8*, i8** %dh, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %100, i64 %idxprom109
  %101 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %101 to i32
  %conv112 = sitofp i32 %conv111 to double
  %102 = load double*, double** %dir.addr, align 8
  %arrayidx113 = getelementptr inbounds double, double* %102, i64 0
  %103 = load double, double* %arrayidx113, align 8
  %add114 = fadd double %103, %conv112
  store double %add114, double* %arrayidx113, align 8
  %104 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %104 to i64
  %105 = load i8*, i8** %dv, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %105, i64 %idxprom115
  %106 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %106 to i32
  %conv118 = sitofp i32 %conv117 to double
  %107 = load double*, double** %dir.addr, align 8
  %arrayidx119 = getelementptr inbounds double, double* %107, i64 1
  %108 = load double, double* %arrayidx119, align 8
  %add120 = fadd double %108, %conv118
  store double %add120, double* %arrayidx119, align 8
  %109 = load i32, i32* %j, align 4
  %conv121 = sitofp i32 %109 to double
  %110 = load double*, double** %loc.addr, align 8
  %arrayidx122 = getelementptr inbounds double, double* %110, i64 0
  %111 = load double, double* %arrayidx122, align 8
  %add123 = fadd double %111, %conv121
  store double %add123, double* %arrayidx122, align 8
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* %min_y, align 4
  %add124 = add nsw i32 %112, %113
  %conv125 = sitofp i32 %add124 to double
  %114 = load double*, double** %loc.addr, align 8
  %arrayidx126 = getelementptr inbounds double, double* %114, i64 1
  %115 = load double, double* %arrayidx126, align 8
  %add127 = fadd double %115, %conv125
  store double %add127, double* %arrayidx126, align 8
  %116 = load i32, i32* %count, align 4
  %inc128 = add nsw i32 %116, 1
  store i32 %inc128, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.108, %if.then.101
  %117 = load i32, i32* %total, align 4
  %inc129 = add nsw i32 %117, 1
  store i32 %inc129, i32* %total, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.end, %land.lhs.true.98, %for.body.95
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %118 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %118, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.90

for.end.133:                                      ; preds = %for.cond.90
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.133, %land.lhs.true, %for.body.62
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %119 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %119, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond.59

for.end.137:                                      ; preds = %for.cond.59
  %120 = load i32, i32* %total, align 4
  %tobool138 = icmp ne i32 %120, 0
  br i1 %tobool138, label %if.end.140, label %if.then.139

if.then.139:                                      ; preds = %for.end.137
  %121 = load i32*, i32** %max_scanlines, align 8
  %122 = bitcast i32* %121 to i8*
  call void @g_free(i8* %122)
  %123 = load i32*, i32** %min_scanlines, align 8
  %124 = bitcast i32* %123 to i8*
  call void @g_free(i8* %124)
  br label %return

if.end.140:                                       ; preds = %for.end.137
  %125 = load i32, i32* %count, align 4
  %conv141 = sitofp i32 %125 to double
  %126 = load i32, i32* %total, align 4
  %conv142 = sitofp i32 %126 to double
  %div = fdiv double %conv141, %conv142
  %cmp143 = fcmp ogt double %div, 1.000000e-01
  br i1 %cmp143, label %if.then.145, label %if.else

if.then.145:                                      ; preds = %if.end.140
  %127 = load i32, i32* %count, align 4
  %conv146 = sitofp i32 %127 to double
  %128 = load double*, double** %dir.addr, align 8
  %arrayidx147 = getelementptr inbounds double, double* %128, i64 0
  %129 = load double, double* %arrayidx147, align 8
  %div148 = fdiv double %129, %conv146
  store double %div148, double* %arrayidx147, align 8
  %130 = load i32, i32* %count, align 4
  %conv149 = sitofp i32 %130 to double
  %131 = load double*, double** %dir.addr, align 8
  %arrayidx150 = getelementptr inbounds double, double* %131, i64 1
  %132 = load double, double* %arrayidx150, align 8
  %div151 = fdiv double %132, %conv149
  store double %div151, double* %arrayidx150, align 8
  %133 = load i32, i32* %count, align 4
  %conv152 = sitofp i32 %133 to double
  %134 = load double*, double** %loc.addr, align 8
  %arrayidx153 = getelementptr inbounds double, double* %134, i64 0
  %135 = load double, double* %arrayidx153, align 8
  %div154 = fdiv double %135, %conv152
  store double %div154, double* %arrayidx153, align 8
  %136 = load i32, i32* %count, align 4
  %conv155 = sitofp i32 %136 to double
  %137 = load double*, double** %loc.addr, align 8
  %arrayidx156 = getelementptr inbounds double, double* %137, i64 1
  %138 = load double, double* %arrayidx156, align 8
  %div157 = fdiv double %138, %conv155
  store double %div157, double* %arrayidx156, align 8
  br label %if.end.162

if.else:                                          ; preds = %if.end.140
  %139 = load double*, double** %dir.addr, align 8
  %arrayidx158 = getelementptr inbounds double, double* %139, i64 0
  store double 1.280000e+02, double* %arrayidx158, align 8
  %140 = load double*, double** %dir.addr, align 8
  %arrayidx159 = getelementptr inbounds double, double* %140, i64 1
  store double 1.280000e+02, double* %arrayidx159, align 8
  %141 = load double*, double** %loc.addr, align 8
  %arrayidx160 = getelementptr inbounds double, double* %141, i64 0
  store double 0.000000e+00, double* %arrayidx160, align 8
  %142 = load double*, double** %loc.addr, align 8
  %arrayidx161 = getelementptr inbounds double, double* %142, i64 1
  store double 0.000000e+00, double* %arrayidx161, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.else, %if.then.145
  %143 = load i32*, i32** %min_scanlines, align 8
  %144 = bitcast i32* %143 to i8*
  call void @g_free(i8* %144)
  %145 = load i32*, i32** %max_scanlines, align 8
  %146 = bitcast i32* %145 to i8*
  call void @g_free(i8* %146)
  br label %return

return:                                           ; preds = %if.end.162, %if.then.139
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @polygon_find_center(%struct.Polygon* %poly, double* %cx, double* %cy) #0 {
entry:
  %retval = alloca i32, align 4
  %poly.addr = alloca %struct.Polygon*, align 8
  %cx.addr = alloca double*, align 8
  %cy.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double* %cx, double** %cx.addr, align 8
  store double* %cy, double** %cy.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  %1 = load i32, i32* %npts, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double*, double** %cx.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = load double*, double** %cy.addr, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts1 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %5, i32 0, i32 0
  %6 = load i32, i32* %npts1, align 4
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  %9 = load double, double* %x, align 8
  %10 = load double*, double** %cx.addr, align 8
  %11 = load double, double* %10, align 8
  %add = fadd double %11, %9
  store double %add, double* %10, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %12 to i64
  %13 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts3 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %13, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts3, i32 0, i64 %idxprom2
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx4, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load double*, double** %cy.addr, align 8
  %16 = load double, double* %15, align 8
  %add5 = fadd double %16, %14
  store double %add5, double* %15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts6 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %18, i32 0, i32 0
  %19 = load i32, i32* %npts6, align 4
  %conv = uitofp i32 %19 to double
  %20 = load double*, double** %cx.addr, align 8
  %21 = load double, double* %20, align 8
  %div = fdiv double %21, %conv
  store double %div, double* %20, align 8
  %22 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts7 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %22, i32 0, i32 0
  %23 = load i32, i32* %npts7, align 4
  %conv8 = uitofp i32 %23 to double
  %24 = load double*, double** %cy.addr, align 8
  %25 = load double, double* %24, align 8
  %div9 = fdiv double %25, %conv8
  store double %div9, double* %24, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @split_poly(%struct.Polygon* %poly, %struct._GimpDrawable* %drawable, i8* %col, double* %dir, double %vary, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8* %dest) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %col.addr = alloca i8*, align 8
  %dir.addr = alloca double*, align 8
  %vary.addr = alloca double, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %new_poly = alloca %struct.Polygon, align 8
  %spacing = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %magnitude = alloca double, align 8
  %vec = alloca [2 x double], align 16
  %pt = alloca [2 x double], align 16
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store double* %dir, double** %dir.addr, align 8
  store double %vary, double* %vary.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store double 0.000000e+00, double* %cx, align 8
  store double 0.000000e+00, double* %cy, align 8
  %0 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 2), align 8
  %1 = load double, double* @scale, align 8
  %mul = fmul double 2.000000e+00, %1
  %div = fdiv double %0, %mul
  store double %div, double* %spacing, align 8
  %2 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call = call i32 @polygon_find_center(%struct.Polygon* %2, double* %cx, double* %cy)
  %3 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %4 = load double, double* %cx, align 8
  %sub = fsub double -0.000000e+00, %4
  %5 = load double, double* %cy, align 8
  %sub1 = fsub double -0.000000e+00, %5
  call void @polygon_translate(%struct.Polygon* %3, double %sub, double %sub1)
  %6 = load double*, double** %dir.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 0
  %7 = load double, double* %arrayidx, align 8
  %sub2 = fsub double %7, 1.280000e+02
  %8 = load double*, double** %dir.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx3, align 8
  %sub4 = fsub double %9, 1.280000e+02
  %mul5 = fmul double %sub2, %sub4
  %10 = load double*, double** %dir.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 1
  %11 = load double, double* %arrayidx6, align 8
  %sub7 = fsub double %11, 1.280000e+02
  %12 = load double*, double** %dir.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx8, align 8
  %sub9 = fsub double %13, 1.280000e+02
  %mul10 = fmul double %sub7, %sub9
  %add = fadd double %mul5, %mul10
  %call11 = call double @sqrt(double %add) #4
  store double %call11, double* %magnitude, align 8
  %14 = load double*, double** %dir.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx12, align 8
  %sub13 = fsub double %15, 1.280000e+02
  %sub14 = fsub double -0.000000e+00, %sub13
  %16 = load double, double* %magnitude, align 8
  %div15 = fdiv double %sub14, %16
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  store double %div15, double* %arrayidx16, align 8
  %17 = load double*, double** %dir.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx17, align 8
  %sub18 = fsub double %18, 1.280000e+02
  %19 = load double, double* %magnitude, align 8
  %div19 = fdiv double %sub18, %19
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  store double %div19, double* %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  %20 = load double, double* %arrayidx21, align 8
  %sub22 = fsub double -0.000000e+00, %20
  %21 = load double, double* %spacing, align 8
  %mul23 = fmul double %sub22, %21
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i64 0
  store double %mul23, double* %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  %22 = load double, double* %arrayidx25, align 8
  %23 = load double, double* %spacing, align 8
  %mul26 = fmul double %22, %23
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i64 1
  store double %mul26, double* %arrayidx27, align 8
  call void @polygon_reset(%struct.Polygon* %new_poly)
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i32 0
  %24 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  call void @clip_poly(double* %arraydecay, double* %arraydecay28, %struct.Polygon* %24, %struct.Polygon* %new_poly)
  %25 = load double, double* %cx, align 8
  %26 = load double, double* %cy, align 8
  call void @polygon_translate(%struct.Polygon* %new_poly, double %25, double %26)
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %new_poly, i32 0, i32 0
  %27 = load i32, i32* %npts, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %28 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  %tobool29 = icmp ne i32 %28, 0
  br i1 %tobool29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = load i8*, i8** %col.addr, align 8
  %31 = load double, double* %vary.addr, align 8
  %32 = load i32, i32* %x1.addr, align 4
  %33 = load i32, i32* %y1.addr, align 4
  %34 = load i32, i32* %x2.addr, align 4
  %35 = load i32, i32* %y2.addr, align 4
  call void @find_poly_color(%struct.Polygon* %new_poly, %struct._GimpDrawable* %29, i8* %30, double %31, i32 %32, i32 %33, i32 %34, i32 %35)
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.then
  %36 = load double, double* %cx, align 8
  %37 = load double, double* %cy, align 8
  %38 = load double, double* @scale, align 8
  call void @scale_poly(%struct.Polygon* %new_poly, double %36, double %37, double %38)
  %39 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %41 = load i8*, i8** %col.addr, align 8
  %42 = load i32, i32* %x1.addr, align 4
  %43 = load i32, i32* %y1.addr, align 4
  %44 = load i32, i32* %x2.addr, align 4
  %45 = load i32, i32* %y2.addr, align 4
  %46 = load i8*, i8** %dest.addr, align 8
  call void @fill_poly_color(%struct.Polygon* %new_poly, %struct._GimpDrawable* %40, i8* %41, i32 %42, i32 %43, i32 %44, i32 %45, i8* %46)
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = load double, double* %vary.addr, align 8
  %49 = load i32, i32* %x1.addr, align 4
  %50 = load i32, i32* %y1.addr, align 4
  %51 = load i32, i32* %x2.addr, align 4
  %52 = load i32, i32* %y2.addr, align 4
  %53 = load i8*, i8** %dest.addr, align 8
  call void @fill_poly_image(%struct.Polygon* %new_poly, %struct._GimpDrawable* %47, double %48, i32 %49, i32 %50, i32 %51, i32 %52, i8* %53)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %entry
  %arrayidx35 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  %54 = load double, double* %arrayidx35, align 8
  %sub36 = fsub double -0.000000e+00, %54
  %arrayidx37 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  store double %sub36, double* %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  %55 = load double, double* %arrayidx38, align 8
  %sub39 = fsub double -0.000000e+00, %55
  %arrayidx40 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  store double %sub39, double* %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i64 0
  %56 = load double, double* %arrayidx41, align 8
  %sub42 = fsub double -0.000000e+00, %56
  %arrayidx43 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i64 0
  store double %sub42, double* %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i64 1
  %57 = load double, double* %arrayidx44, align 8
  %sub45 = fsub double -0.000000e+00, %57
  %arrayidx46 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i64 1
  store double %sub45, double* %arrayidx46, align 8
  call void @polygon_reset(%struct.Polygon* %new_poly)
  %arraydecay47 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [2 x double], [2 x double]* %pt, i32 0, i32 0
  %58 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  call void @clip_poly(double* %arraydecay47, double* %arraydecay48, %struct.Polygon* %58, %struct.Polygon* %new_poly)
  %59 = load double, double* %cx, align 8
  %60 = load double, double* %cy, align 8
  call void @polygon_translate(%struct.Polygon* %new_poly, double %59, double %60)
  %npts49 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %new_poly, i32 0, i32 0
  %61 = load i32, i32* %npts49, align 4
  %tobool50 = icmp ne i32 %61, 0
  br i1 %tobool50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %if.end.34
  %62 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  %tobool52 = icmp ne i32 %62, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.51
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %64 = load i8*, i8** %col.addr, align 8
  %65 = load double, double* %vary.addr, align 8
  %66 = load i32, i32* %x1.addr, align 4
  %67 = load i32, i32* %y1.addr, align 4
  %68 = load i32, i32* %x2.addr, align 4
  %69 = load i32, i32* %y2.addr, align 4
  call void @find_poly_color(%struct.Polygon* %new_poly, %struct._GimpDrawable* %63, i8* %64, double %65, i32 %66, i32 %67, i32 %68, i32 %69)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.51
  %70 = load double, double* %cx, align 8
  %71 = load double, double* %cy, align 8
  %72 = load double, double* @scale, align 8
  call void @scale_poly(%struct.Polygon* %new_poly, double %70, double %71, double %72)
  %73 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  %tobool55 = icmp ne i32 %73, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.54
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %75 = load i8*, i8** %col.addr, align 8
  %76 = load i32, i32* %x1.addr, align 4
  %77 = load i32, i32* %y1.addr, align 4
  %78 = load i32, i32* %x2.addr, align 4
  %79 = load i32, i32* %y2.addr, align 4
  %80 = load i8*, i8** %dest.addr, align 8
  call void @fill_poly_color(%struct.Polygon* %new_poly, %struct._GimpDrawable* %74, i8* %75, i32 %76, i32 %77, i32 %78, i32 %79, i8* %80)
  br label %if.end.58

if.else.57:                                       ; preds = %if.end.54
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %82 = load double, double* %vary.addr, align 8
  %83 = load i32, i32* %x1.addr, align 4
  %84 = load i32, i32* %y1.addr, align 4
  %85 = load i32, i32* %x2.addr, align 4
  %86 = load i32, i32* %y2.addr, align 4
  %87 = load i8*, i8** %dest.addr, align 8
  call void @fill_poly_image(%struct.Polygon* %new_poly, %struct._GimpDrawable* %81, double %82, i32 %83, i32 %84, i32 %85, i32 %86, i8* %87)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_poly(%struct.Polygon* %poly, %struct._GimpDrawable* %drawable, i8* %col, double %vary, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8* %dest) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %col.addr = alloca i8*, align 8
  %vary.addr = alloca double, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store double %vary, double* %vary.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store double 0.000000e+00, double* %cx, align 8
  store double 0.000000e+00, double* %cy, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call = call i32 @polygon_find_center(%struct.Polygon* %0, double* %cx, double* %cy)
  %1 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = load i8*, i8** %col.addr, align 8
  %5 = load double, double* %vary.addr, align 8
  %6 = load i32, i32* %x1.addr, align 4
  %7 = load i32, i32* %y1.addr, align 4
  %8 = load i32, i32* %x2.addr, align 4
  %9 = load i32, i32* %y2.addr, align 4
  call void @find_poly_color(%struct.Polygon* %2, %struct._GimpDrawable* %3, i8* %4, double %5, i32 %6, i32 %7, i32 %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %11 = load double, double* %cx, align 8
  %12 = load double, double* %cy, align 8
  %13 = load double, double* @scale, align 8
  call void @scale_poly(%struct.Polygon* %10, double %11, double %12, double %13)
  %14 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 8), align 4
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %15 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = load i8*, i8** %col.addr, align 8
  %18 = load i32, i32* %x1.addr, align 4
  %19 = load i32, i32* %y1.addr, align 4
  %20 = load i32, i32* %x2.addr, align 4
  %21 = load i32, i32* %y2.addr, align 4
  %22 = load i8*, i8** %dest.addr, align 8
  call void @fill_poly_color(%struct.Polygon* %15, %struct._GimpDrawable* %16, i8* %17, i32 %18, i32 %19, i32 %20, i32 %21, i8* %22)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %23 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = load double, double* %vary.addr, align 8
  %26 = load i32, i32* %x1.addr, align 4
  %27 = load i32, i32* %y1.addr, align 4
  %28 = load i32, i32* %x2.addr, align 4
  %29 = load i32, i32* %y2.addr, align 4
  %30 = load i8*, i8** %dest.addr, align 8
  call void @fill_poly_image(%struct.Polygon* %23, %struct._GimpDrawable* %24, double %25, i32 %26, i32 %27, i32 %28, i32 %29, i8* %30)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @polygon_extents(%struct.Polygon* %poly, double* %min_x, double* %min_y, double* %max_x, double* %max_y) #0 {
entry:
  %retval = alloca i32, align 4
  %poly.addr = alloca %struct.Polygon*, align 8
  %min_x.addr = alloca double*, align 8
  %min_y.addr = alloca double*, align 8
  %max_x.addr = alloca double*, align 8
  %max_y.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double* %min_x, double** %min_x.addr, align 8
  store double* %min_y, double** %min_y.addr, align 8
  store double* %max_x, double** %max_x.addr, align 8
  store double* %max_y, double** %max_y.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  %1 = load i32, i32* %npts, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 0
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %4 = load double*, double** %max_x.addr, align 8
  store double %3, double* %4, align 8
  %5 = load double*, double** %min_x.addr, align 8
  store double %3, double* %5, align 8
  %6 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts1 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts1, i32 0, i64 0
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx2, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load double*, double** %max_y.addr, align 8
  store double %7, double* %8, align 8
  %9 = load double*, double** %min_y.addr, align 8
  store double %7, double* %9, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts3 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %11, i32 0, i32 0
  %12 = load i32, i32* %npts3, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load double*, double** %min_x.addr, align 8
  %14 = load double, double* %13, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts4 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %16, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts4, i32 0, i64 %idxprom
  %x6 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx5, i32 0, i32 0
  %17 = load double, double* %x6, align 8
  %cmp7 = fcmp olt double %14, %17
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %18 = load double*, double** %min_x.addr, align 8
  %19 = load double, double* %18, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %20 to i64
  %21 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts9 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %21, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts9, i32 0, i64 %idxprom8
  %x11 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx10, i32 0, i32 0
  %22 = load double, double* %x11, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %19, %cond.true ], [ %22, %cond.false ]
  %23 = load double*, double** %min_x.addr, align 8
  store double %cond, double* %23, align 8
  %24 = load double*, double** %max_x.addr, align 8
  %25 = load double, double* %24, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %26 to i64
  %27 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts13 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %27, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts13, i32 0, i64 %idxprom12
  %x15 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx14, i32 0, i32 0
  %28 = load double, double* %x15, align 8
  %cmp16 = fcmp ogt double %25, %28
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  %29 = load double*, double** %max_x.addr, align 8
  %30 = load double, double* %29, align 8
  br label %cond.end.23

cond.false.18:                                    ; preds = %cond.end
  %31 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %31 to i64
  %32 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts20 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %32, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts20, i32 0, i64 %idxprom19
  %x22 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx21, i32 0, i32 0
  %33 = load double, double* %x22, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.18, %cond.true.17
  %cond24 = phi double [ %30, %cond.true.17 ], [ %33, %cond.false.18 ]
  %34 = load double*, double** %max_x.addr, align 8
  store double %cond24, double* %34, align 8
  %35 = load double*, double** %min_y.addr, align 8
  %36 = load double, double* %35, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom25 = zext i32 %37 to i64
  %38 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts26 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %38, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts26, i32 0, i64 %idxprom25
  %y28 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx27, i32 0, i32 1
  %39 = load double, double* %y28, align 8
  %cmp29 = fcmp olt double %36, %39
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.23
  %40 = load double*, double** %min_y.addr, align 8
  %41 = load double, double* %40, align 8
  br label %cond.end.36

cond.false.31:                                    ; preds = %cond.end.23
  %42 = load i32, i32* %i, align 4
  %idxprom32 = zext i32 %42 to i64
  %43 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts33 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %43, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts33, i32 0, i64 %idxprom32
  %y35 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx34, i32 0, i32 1
  %44 = load double, double* %y35, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.31, %cond.true.30
  %cond37 = phi double [ %41, %cond.true.30 ], [ %44, %cond.false.31 ]
  %45 = load double*, double** %min_y.addr, align 8
  store double %cond37, double* %45, align 8
  %46 = load double*, double** %max_y.addr, align 8
  %47 = load double, double* %46, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom38 = zext i32 %48 to i64
  %49 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts39 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %49, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts39, i32 0, i64 %idxprom38
  %y41 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx40, i32 0, i32 1
  %50 = load double, double* %y41, align 8
  %cmp42 = fcmp ogt double %47, %50
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.end.36
  %51 = load double*, double** %max_y.addr, align 8
  %52 = load double, double* %51, align 8
  br label %cond.end.49

cond.false.44:                                    ; preds = %cond.end.36
  %53 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %53 to i64
  %54 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts46 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %54, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts46, i32 0, i64 %idxprom45
  %y48 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx47, i32 0, i32 1
  %55 = load double, double* %y48, align 8
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.44, %cond.true.43
  %cond50 = phi double [ %52, %cond.true.43 ], [ %55, %cond.false.44 ]
  %56 = load double*, double** %max_y.addr, align 8
  store double %cond50, double* %56, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.49
  %57 = load i32, i32* %i, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal void @convert_segment(i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %offset, i32* %min, i32* %max) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %min.addr = alloca i32*, align 8
  %max.addr = alloca i32*, align 8
  %ydiff = alloca i32, align 4
  %y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %xinc = alloca double, align 8
  %xstart = alloca double, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32* %min, i32** %min.addr, align 8
  store i32* %max, i32** %max.addr, align 8
  %0 = load i32, i32* %y1.addr, align 4
  %1 = load i32, i32* %y2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %y2.addr, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32, i32* %y1.addr, align 4
  store i32 %3, i32* %y2.addr, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %y1.addr, align 4
  %5 = load i32, i32* %x2.addr, align 4
  store i32 %5, i32* %tmp, align 4
  %6 = load i32, i32* %x1.addr, align 4
  store i32 %6, i32* %x2.addr, align 4
  %7 = load i32, i32* %tmp, align 4
  store i32 %7, i32* %x1.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %y2.addr, align 4
  %9 = load i32, i32* %y1.addr, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %ydiff, align 4
  %10 = load i32, i32* %ydiff, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.end.40

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %x2.addr, align 4
  %12 = load i32, i32* %x1.addr, align 4
  %sub4 = sub nsw i32 %11, %12
  %conv = sitofp i32 %sub4 to double
  %13 = load i32, i32* %ydiff, align 4
  %conv5 = sitofp i32 %13 to double
  %div = fdiv double %conv, %conv5
  store double %div, double* %xinc, align 8
  %14 = load i32, i32* %x1.addr, align 4
  %conv6 = sitofp i32 %14 to double
  %15 = load double, double* %xinc, align 8
  %mul = fmul double 5.000000e-01, %15
  %add = fadd double %conv6, %mul
  store double %add, double* %xstart, align 8
  %16 = load i32, i32* %y1.addr, align 4
  store i32 %16, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %y2.addr, align 4
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %offset.addr, align 4
  %sub9 = sub nsw i32 %19, %20
  %idxprom = sext i32 %sub9 to i64
  %21 = load i32*, i32** %min.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %conv10 = sitofp i32 %22 to double
  %23 = load double, double* %xstart, align 8
  %cmp11 = fcmp olt double %conv10, %23
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %offset.addr, align 4
  %sub13 = sub nsw i32 %24, %25
  %idxprom14 = sext i32 %sub13 to i64
  %26 = load i32*, i32** %min.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %26, i64 %idxprom14
  %27 = load i32, i32* %arrayidx15, align 4
  %conv16 = sitofp i32 %27 to double
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %28 = load double, double* %xstart, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv16, %cond.true ], [ %28, %cond.false ]
  %conv17 = fptosi double %cond to i32
  %29 = load i32, i32* %y, align 4
  %30 = load i32, i32* %offset.addr, align 4
  %sub18 = sub nsw i32 %29, %30
  %idxprom19 = sext i32 %sub18 to i64
  %31 = load i32*, i32** %min.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %31, i64 %idxprom19
  store i32 %conv17, i32* %arrayidx20, align 4
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %offset.addr, align 4
  %sub21 = sub nsw i32 %32, %33
  %idxprom22 = sext i32 %sub21 to i64
  %34 = load i32*, i32** %max.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx23, align 4
  %conv24 = sitofp i32 %35 to double
  %36 = load double, double* %xstart, align 8
  %cmp25 = fcmp ogt double %conv24, %36
  br i1 %cmp25, label %cond.true.27, label %cond.false.32

cond.true.27:                                     ; preds = %cond.end
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %offset.addr, align 4
  %sub28 = sub nsw i32 %37, %38
  %idxprom29 = sext i32 %sub28 to i64
  %39 = load i32*, i32** %max.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %39, i64 %idxprom29
  %40 = load i32, i32* %arrayidx30, align 4
  %conv31 = sitofp i32 %40 to double
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end
  %41 = load double, double* %xstart, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.27
  %cond34 = phi double [ %conv31, %cond.true.27 ], [ %41, %cond.false.32 ]
  %conv35 = fptosi double %cond34 to i32
  %42 = load i32, i32* %y, align 4
  %43 = load i32, i32* %offset.addr, align 4
  %sub36 = sub nsw i32 %42, %43
  %idxprom37 = sext i32 %sub36 to i64
  %44 = load i32*, i32** %max.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %44, i64 %idxprom37
  store i32 %conv35, i32* %arrayidx38, align 4
  %45 = load double, double* %xinc, align 8
  %46 = load double, double* %xstart, align 8
  %add39 = fadd double %46, %45
  store double %add39, double* %xstart, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.33
  %47 = load i32, i32* %y, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.40

if.end.40:                                        ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_translate(%struct.Polygon* %poly, double %tx, double %ty) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %tx.addr = alloca double, align 8
  %ty.addr = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double %tx, double* %tx.addr, align 8
  store double %ty, double* %ty.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %1, i32 0, i32 0
  %2 = load i32, i32* %npts, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %tx.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %add = fadd double %6, %3
  store double %add, double* %x, align 8
  %7 = load double, double* %ty.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %8 to i64
  %9 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts2 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts2, i32 0, i64 %idxprom1
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx3, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %add4 = fadd double %10, %7
  store double %add4, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_poly(double* %dir, double* %pt, %struct.Polygon* %poly, %struct.Polygon* %poly_new) #0 {
entry:
  %dir.addr = alloca double*, align 8
  %pt.addr = alloca double*, align 8
  %poly.addr = alloca %struct.Polygon*, align 8
  %poly_new.addr = alloca %struct.Polygon*, align 8
  %i = alloca i32, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store double* %dir, double** %dir.addr, align 8
  store double* %pt, double** %pt.addr, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store %struct.Polygon* %poly_new, %struct.Polygon** %poly_new.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %1, i32 0, i32 0
  %2 = load i32, i32* %npts, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  %6 = load double, double* %x, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts1 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %7, i32 0, i32 0
  %8 = load i32, i32* %npts1, align 4
  %sub2 = sub i32 %8, 1
  %idxprom3 = zext i32 %sub2 to i64
  %9 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts4 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts4, i32 0, i64 %idxprom3
  %x6 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx5, i32 0, i32 0
  %10 = load double, double* %x6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %6, %cond.true ], [ %10, %cond.false ]
  store double %cond, double* %x1, align 8
  %11 = load i32, i32* %i, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.13

cond.true.8:                                      ; preds = %cond.end
  %12 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %12, 1
  %idxprom10 = sext i32 %sub9 to i64
  %13 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts11 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts11, i32 0, i64 %idxprom10
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx12, i32 0, i32 1
  %14 = load double, double* %y, align 8
  br label %cond.end.20

cond.false.13:                                    ; preds = %cond.end
  %15 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts14 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %15, i32 0, i32 0
  %16 = load i32, i32* %npts14, align 4
  %sub15 = sub i32 %16, 1
  %idxprom16 = zext i32 %sub15 to i64
  %17 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts17 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts17, i32 0, i64 %idxprom16
  %y19 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx18, i32 0, i32 1
  %18 = load double, double* %y19, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.13, %cond.true.8
  %cond21 = phi double [ %14, %cond.true.8 ], [ %18, %cond.false.13 ]
  store double %cond21, double* %y1, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts23 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %20, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts23, i32 0, i64 %idxprom22
  %x25 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx24, i32 0, i32 0
  %21 = load double, double* %x25, align 8
  store double %21, double* %x2, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts27 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %23, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts27, i32 0, i64 %idxprom26
  %y29 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx28, i32 0, i32 1
  %24 = load double, double* %y29, align 8
  store double %24, double* %y2, align 8
  %25 = load double*, double** %dir.addr, align 8
  %26 = load double*, double** %pt.addr, align 8
  %27 = load double, double* %x1, align 8
  %28 = load double, double* %y1, align 8
  %29 = load double, double* %x2, align 8
  %30 = load double, double* %y2, align 8
  %31 = load %struct.Polygon*, %struct.Polygon** %poly_new.addr, align 8
  call void @clip_point(double* %25, double* %26, double %27, double %28, double %29, double %30, %struct.Polygon* %31)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.20
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_poly_color(%struct.Polygon* %poly, %struct._GimpDrawable* %drawable, i8* %col, double %color_var, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %col.addr = alloca i8*, align 8
  %color_var.addr = alloca double, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dmin_x = alloca double, align 8
  %dmin_y = alloca double, align 8
  %dmax_x = alloca double, align 8
  %dmax_y = alloca double, align 8
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %size_y = alloca i32, align 4
  %max_scanlines = alloca i32*, align 8
  %min_scanlines = alloca i32*, align 8
  %col_sum = alloca [4 x i32], align 16
  %bytes = alloca i32, align 4
  %b = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store double %color_var, double* %color_var.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store double 0.000000e+00, double* %dmin_x, align 8
  store double 0.000000e+00, double* %dmin_y, align 8
  store double 0.000000e+00, double* %dmax_x, align 8
  store double 0.000000e+00, double* %dmax_y, align 8
  %0 = bitcast [4 x i32]* %col_sum to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  store i32 0, i32* %count, align 4
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 3
  %2 = load i32, i32* %bpp, align 4
  store i32 %2, i32* %bytes, align 4
  %3 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call = call i32 @polygon_extents(%struct.Polygon* %3, double* %dmin_x, double* %dmin_y, double* %dmax_x, double* %dmax_y)
  %4 = load double, double* %dmin_x, align 8
  %conv = fptosi double %4 to i32
  store i32 %conv, i32* %min_x, align 4
  %5 = load double, double* %dmin_y, align 8
  %conv1 = fptosi double %5 to i32
  store i32 %conv1, i32* %min_y, align 4
  %6 = load double, double* %dmax_x, align 8
  %conv2 = fptosi double %6 to i32
  store i32 %conv2, i32* %max_x, align 4
  %7 = load double, double* %dmax_y, align 8
  %conv3 = fptosi double %7 to i32
  store i32 %conv3, i32* %max_y, align 4
  %8 = load i32, i32* %max_y, align 4
  %9 = load i32, i32* %min_y, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %size_y, align 4
  %10 = load i32, i32* %size_y, align 4
  %conv4 = sext i32 %10 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 4)
  %11 = bitcast i8* %call5 to i32*
  store i32* %11, i32** %min_scanlines, align 8
  %12 = load i32, i32* %size_y, align 4
  %conv6 = sext i32 %12 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv6, i64 4)
  %13 = bitcast i8* %call7 to i32*
  store i32* %13, i32** %max_scanlines, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %size_y, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %max_x, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** %min_scanlines, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %idxprom
  store i32 %16, i32* %arrayidx, align 4
  %19 = load i32, i32* %min_x, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %20 to i64
  %21 = load i32*, i32** %max_scanlines, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %21, i64 %idxprom9
  store i32 %19, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.52, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %24, i32 0, i32 0
  %25 = load i32, i32* %npts, align 4
  %cmp12 = icmp ult i32 %23, %25
  br i1 %cmp12, label %for.body.14, label %for.end.54

for.body.14:                                      ; preds = %for.cond.11
  %26 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.14
  %27 = load i32, i32* %i, align 4
  %sub15 = sub nsw i32 %27, 1
  %idxprom16 = sext i32 %sub15 to i64
  %28 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %28, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom16
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx17, i32 0, i32 0
  %29 = load double, double* %x, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.14
  %30 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts18 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %30, i32 0, i32 0
  %31 = load i32, i32* %npts18, align 4
  %sub19 = sub i32 %31, 1
  %idxprom20 = zext i32 %sub19 to i64
  %32 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts21 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %32, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts21, i32 0, i64 %idxprom20
  %x23 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx22, i32 0, i32 0
  %33 = load double, double* %x23, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %29, %cond.true ], [ %33, %cond.false ]
  %conv24 = fptosi double %cond to i32
  store i32 %conv24, i32* %xs, align 4
  %34 = load i32, i32* %i, align 4
  %tobool25 = icmp ne i32 %34, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.32

cond.true.26:                                     ; preds = %cond.end
  %35 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 %35, 1
  %idxprom28 = sext i32 %sub27 to i64
  %36 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts29 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %36, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts29, i32 0, i64 %idxprom28
  %y31 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx30, i32 0, i32 1
  %37 = load double, double* %y31, align 8
  br label %cond.end.39

cond.false.32:                                    ; preds = %cond.end
  %38 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts33 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %38, i32 0, i32 0
  %39 = load i32, i32* %npts33, align 4
  %sub34 = sub i32 %39, 1
  %idxprom35 = zext i32 %sub34 to i64
  %40 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts36 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %40, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts36, i32 0, i64 %idxprom35
  %y38 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx37, i32 0, i32 1
  %41 = load double, double* %y38, align 8
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.32, %cond.true.26
  %cond40 = phi double [ %37, %cond.true.26 ], [ %41, %cond.false.32 ]
  %conv41 = fptosi double %cond40 to i32
  store i32 %conv41, i32* %ys, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %42 to i64
  %43 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts43 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %43, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts43, i32 0, i64 %idxprom42
  %x45 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx44, i32 0, i32 0
  %44 = load double, double* %x45, align 8
  %conv46 = fptosi double %44 to i32
  store i32 %conv46, i32* %xe, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts48 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %46, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts48, i32 0, i64 %idxprom47
  %y50 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx49, i32 0, i32 1
  %47 = load double, double* %y50, align 8
  %conv51 = fptosi double %47 to i32
  store i32 %conv51, i32* %ye, align 4
  %48 = load i32, i32* %xs, align 4
  %49 = load i32, i32* %ys, align 4
  %50 = load i32, i32* %xe, align 4
  %51 = load i32, i32* %ye, align 4
  %52 = load i32, i32* %min_y, align 4
  %53 = load i32*, i32** %min_scanlines, align 8
  %54 = load i32*, i32** %max_scanlines, align 8
  call void @convert_segment(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32* %53, i32* %54)
  br label %for.inc.52

for.inc.52:                                       ; preds = %cond.end.39
  %55 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %55, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.11

for.end.54:                                       ; preds = %for.cond.11
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %57, i32 0, i32 1
  %58 = load i32, i32* %width, align 4
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %59, i32 0, i32 2
  %60 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %56, i32 0, i32 0, i32 %58, i32 %60, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.95, %for.end.54
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %size_y, align 4
  %cmp56 = icmp slt i32 %61, %62
  br i1 %cmp56, label %for.body.58, label %for.end.97

for.body.58:                                      ; preds = %for.cond.55
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %min_y, align 4
  %add = add nsw i32 %63, %64
  store i32 %add, i32* %y, align 4
  %65 = load i32, i32* %y, align 4
  %66 = load i32, i32* %y1.addr, align 4
  %cmp59 = icmp sge i32 %65, %66
  br i1 %cmp59, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %for.body.58
  %67 = load i32, i32* %y, align 4
  %68 = load i32, i32* %y2.addr, align 4
  %cmp61 = icmp slt i32 %67, %68
  br i1 %cmp61, label %if.then, label %if.end.94

if.then:                                          ; preds = %land.lhs.true
  %69 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %69 to i64
  %70 = load i32*, i32** %min_scanlines, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %70, i64 %idxprom63
  %71 = load i32, i32* %arrayidx64, align 4
  store i32 %71, i32* %j, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.91, %if.then
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %73 to i64
  %74 = load i32*, i32** %max_scanlines, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %74, i64 %idxprom66
  %75 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp slt i32 %72, %75
  br i1 %cmp68, label %for.body.70, label %for.end.93

for.body.70:                                      ; preds = %for.cond.65
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %x1.addr, align 4
  %cmp71 = icmp sge i32 %76, %77
  br i1 %cmp71, label %land.lhs.true.73, label %if.end

land.lhs.true.73:                                 ; preds = %for.body.70
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* %x2.addr, align 4
  %cmp74 = icmp slt i32 %78, %79
  br i1 %cmp74, label %if.then.76, label %if.end

if.then.76:                                       ; preds = %land.lhs.true.73
  %80 = load i8*, i8** %col.addr, align 8
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %src_rgn, i8* %80, i32 %81, i32 %82)
  store i32 0, i32* %b, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.87, %if.then.76
  %83 = load i32, i32* %b, align 4
  %84 = load i32, i32* %bytes, align 4
  %cmp78 = icmp slt i32 %83, %84
  br i1 %cmp78, label %for.body.80, label %for.end.89

for.body.80:                                      ; preds = %for.cond.77
  %85 = load i32, i32* %b, align 4
  %idxprom81 = sext i32 %85 to i64
  %86 = load i8*, i8** %col.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %86, i64 %idxprom81
  %87 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %87 to i32
  %88 = load i32, i32* %b, align 4
  %idxprom84 = sext i32 %88 to i64
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %col_sum, i32 0, i64 %idxprom84
  %89 = load i32, i32* %arrayidx85, align 4
  %add86 = add nsw i32 %89, %conv83
  store i32 %add86, i32* %arrayidx85, align 4
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.80
  %90 = load i32, i32* %b, align 4
  %inc88 = add nsw i32 %90, 1
  store i32 %inc88, i32* %b, align 4
  br label %for.cond.77

for.end.89:                                       ; preds = %for.cond.77
  %91 = load i32, i32* %count, align 4
  %inc90 = add nsw i32 %91, 1
  store i32 %inc90, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.89, %land.lhs.true.73, %for.body.70
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end
  %92 = load i32, i32* %j, align 4
  %inc92 = add nsw i32 %92, 1
  store i32 %inc92, i32* %j, align 4
  br label %for.cond.65

for.end.93:                                       ; preds = %for.cond.65
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.93, %land.lhs.true, %for.body.58
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %93 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %93, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.55

for.end.97:                                       ; preds = %for.cond.55
  %94 = load i32, i32* %count, align 4
  %tobool98 = icmp ne i32 %94, 0
  br i1 %tobool98, label %if.then.99, label %if.end.135

if.then.99:                                       ; preds = %for.end.97
  store i32 0, i32* %b, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.132, %if.then.99
  %95 = load i32, i32* %b, align 4
  %96 = load i32, i32* %bytes, align 4
  %cmp101 = icmp slt i32 %95, %96
  br i1 %cmp101, label %for.body.103, label %for.end.134

for.body.103:                                     ; preds = %for.cond.100
  %97 = load i32, i32* %b, align 4
  %idxprom104 = sext i32 %97 to i64
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %col_sum, i32 0, i64 %idxprom104
  %98 = load i32, i32* %arrayidx105, align 4
  %99 = load i32, i32* %count, align 4
  %div = sdiv i32 %98, %99
  %conv106 = sitofp i32 %div to double
  %100 = load double, double* %color_var.addr, align 8
  %add107 = fadd double %conv106, %100
  %conv108 = fptosi double %add107 to i32
  %101 = load i32, i32* %b, align 4
  %idxprom109 = sext i32 %101 to i64
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %col_sum, i32 0, i64 %idxprom109
  store i32 %conv108, i32* %arrayidx110, align 4
  %102 = load i32, i32* %b, align 4
  %idxprom111 = sext i32 %102 to i64
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %col_sum, i32 0, i64 %idxprom111
  %103 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp sgt i32 %103, 255
  br i1 %cmp113, label %cond.true.115, label %cond.false.116

cond.true.115:                                    ; preds = %for.body.103
  br label %cond.end.127

cond.false.116:                                   ; preds = %for.body.103
  %104 = load i32, i32* %b, align 4
  %idxprom117 = sext i32 %104 to i64
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %col_sum, i32 0, i64 %idxprom117
  %105 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp slt i32 %105, 0
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.false.116
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.false.116
  %106 = load i32, i32* %b, align 4
  %idxprom123 = sext i32 %106 to i64
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %col_sum, i32 0, i64 %idxprom123
  %107 = load i32, i32* %arrayidx124, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.121
  %cond126 = phi i32 [ 0, %cond.true.121 ], [ %107, %cond.false.122 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.115
  %cond128 = phi i32 [ 255, %cond.true.115 ], [ %cond126, %cond.end.125 ]
  %conv129 = trunc i32 %cond128 to i8
  %108 = load i32, i32* %b, align 4
  %idxprom130 = sext i32 %108 to i64
  %109 = load i8*, i8** %col.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %109, i64 %idxprom130
  store i8 %conv129, i8* %arrayidx131, align 1
  br label %for.inc.132

for.inc.132:                                      ; preds = %cond.end.127
  %110 = load i32, i32* %b, align 4
  %inc133 = add nsw i32 %110, 1
  store i32 %inc133, i32* %b, align 4
  br label %for.cond.100

for.end.134:                                      ; preds = %for.cond.100
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end.97
  %111 = load i32*, i32** %min_scanlines, align 8
  %112 = bitcast i32* %111 to i8*
  call void @g_free(i8* %112)
  %113 = load i32*, i32** %max_scanlines, align 8
  %114 = bitcast i32* %113 to i8*
  call void @g_free(i8* %114)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scale_poly(%struct.Polygon* %poly, double %tx, double %ty, double %poly_scale) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %tx.addr = alloca double, align 8
  %ty.addr = alloca double, align 8
  %poly_scale.addr = alloca double, align 8
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double %tx, double* %tx.addr, align 8
  store double %ty, double* %ty.addr, align 8
  store double %poly_scale, double* %poly_scale.addr, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %1 = load double, double* %tx.addr, align 8
  %sub = fsub double -0.000000e+00, %1
  %2 = load double, double* %ty.addr, align 8
  %sub1 = fsub double -0.000000e+00, %2
  call void @polygon_translate(%struct.Polygon* %0, double %sub, double %sub1)
  %3 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %4 = load double, double* %poly_scale.addr, align 8
  call void @polygon_scale(%struct.Polygon* %3, double %4)
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %6 = load double, double* %tx.addr, align 8
  %7 = load double, double* %ty.addr, align 8
  call void @polygon_translate(%struct.Polygon* %5, double %6, double %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fill_poly_color(%struct.Polygon* %poly, %struct._GimpDrawable* %drawable, i8* %col, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8* %dest) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %col.addr = alloca i8*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dmin_x = alloca double, align 8
  %dmin_y = alloca double, align 8
  %dmax_x = alloca double, align 8
  %dmax_y = alloca double, align 8
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %size_x = alloca i32, align 4
  %size_y = alloca i32, align 4
  %max_scanlines = alloca i32*, align 8
  %max_scanlines_iter = alloca i32*, align 8
  %min_scanlines = alloca i32*, align 8
  %min_scanlines_iter = alloca i32*, align 8
  %vals = alloca i32*, align 8
  %val = alloca i32, align 4
  %pixel = alloca i32, align 4
  %bytes = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %contrib = alloca double, align 8
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %supersample = alloca i32, align 4
  %supersample2 = alloca i32, align 4
  %pts_tmp = alloca %struct.Vertex*, align 8
  %poly_npts = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store double 0.000000e+00, double* %dmin_x, align 8
  store double 0.000000e+00, double* %dmin_y, align 8
  store double 0.000000e+00, double* %dmax_x, align 8
  store double 0.000000e+00, double* %dmax_y, align 8
  %0 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %0, i32 0, i32 0
  %1 = load i32, i32* %npts, align 4
  store i32 %1, i32* %poly_npts, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 7), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %supersample, align 4
  %3 = load i32, i32* %supersample, align 4
  %4 = load i32, i32* %supersample, align 4
  %mul = mul nsw i32 %3, %4
  store i32 %mul, i32* %supersample2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %supersample2, align 4
  store i32 1, i32* %supersample, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  store i32 %6, i32* %bytes, align 4
  %7 = load i32, i32* %poly_npts, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.22

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i32 0
  store %struct.Vertex* %arraydecay, %struct.Vertex** %pts_tmp, align 8
  %9 = load i32, i32* %poly_npts, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %10 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %arrayidx = getelementptr inbounds %struct.Vertex, %struct.Vertex* %10, i64 %idxprom
  %x3 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  %11 = load double, double* %x3, align 8
  %conv = fptosi double %11 to i32
  store i32 %conv, i32* %xs, align 4
  %12 = load i32, i32* %poly_npts, align 4
  %sub4 = sub nsw i32 %12, 1
  %idxprom5 = sext i32 %sub4 to i64
  %13 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %arrayidx6 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %13, i64 %idxprom5
  %y7 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx6, i32 0, i32 1
  %14 = load double, double* %y7, align 8
  %conv8 = fptosi double %14 to i32
  store i32 %conv8, i32* %ys, align 4
  %15 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %x9 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %15, i32 0, i32 0
  %16 = load double, double* %x9, align 8
  %conv10 = fptosi double %16 to i32
  store i32 %conv10, i32* %xe, align 4
  %17 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %y11 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %17, i32 0, i32 1
  %18 = load double, double* %y11, align 8
  %conv12 = fptosi double %18 to i32
  store i32 %conv12, i32* %ye, align 4
  %19 = load i32, i32* %xs, align 4
  %20 = load i32, i32* %ys, align 4
  %21 = load i32, i32* %xe, align 4
  %22 = load i32, i32* %ye, align 4
  call void @calc_spec_vec(%struct.SpecVec* getelementptr inbounds ([12 x %struct.SpecVec], [12 x %struct.SpecVec]* @vecs, i32 0, i32 0), i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %poly_npts, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %x14 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %25, i32 0, i32 0
  %26 = load double, double* %x14, align 8
  %conv15 = fptosi double %26 to i32
  store i32 %conv15, i32* %xs, align 4
  %27 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %y16 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %27, i32 0, i32 1
  %28 = load double, double* %y16, align 8
  %conv17 = fptosi double %28 to i32
  store i32 %conv17, i32* %ys, align 4
  %29 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %incdec.ptr = getelementptr inbounds %struct.Vertex, %struct.Vertex* %29, i32 1
  store %struct.Vertex* %incdec.ptr, %struct.Vertex** %pts_tmp, align 8
  %30 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %x18 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %30, i32 0, i32 0
  %31 = load double, double* %x18, align 8
  %conv19 = fptosi double %31 to i32
  store i32 %conv19, i32* %xe, align 4
  %32 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %y20 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %32, i32 0, i32 1
  %33 = load double, double* %y20, align 8
  %conv21 = fptosi double %33 to i32
  store i32 %conv21, i32* %ye, align 4
  %34 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* getelementptr inbounds ([12 x %struct.SpecVec], [12 x %struct.SpecVec]* @vecs, i32 0, i32 0), i64 %idx.ext
  %35 = load i32, i32* %xs, align 4
  %36 = load i32, i32* %ys, align 4
  %37 = load i32, i32* %xe, align 4
  %38 = load i32, i32* %ye, align 4
  call void @calc_spec_vec(%struct.SpecVec* %add.ptr, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.end
  %40 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call = call i32 @polygon_extents(%struct.Polygon* %40, double* %dmin_x, double* %dmin_y, double* %dmax_x, double* %dmax_y)
  %41 = load double, double* %dmin_x, align 8
  %conv23 = fptosi double %41 to i32
  store i32 %conv23, i32* %min_x, align 4
  %42 = load double, double* %dmin_y, align 8
  %conv24 = fptosi double %42 to i32
  store i32 %conv24, i32* %min_y, align 4
  %43 = load double, double* %dmax_x, align 8
  %conv25 = fptosi double %43 to i32
  store i32 %conv25, i32* %max_x, align 4
  %44 = load double, double* %dmax_y, align 8
  %conv26 = fptosi double %44 to i32
  store i32 %conv26, i32* %max_y, align 4
  %45 = load i32, i32* %max_y, align 4
  %46 = load i32, i32* %min_y, align 4
  %sub27 = sub nsw i32 %45, %46
  %47 = load i32, i32* %supersample, align 4
  %mul28 = mul nsw i32 %sub27, %47
  store i32 %mul28, i32* %size_y, align 4
  %48 = load i32, i32* %max_x, align 4
  %49 = load i32, i32* %min_x, align 4
  %sub29 = sub nsw i32 %48, %49
  %50 = load i32, i32* %supersample, align 4
  %mul30 = mul nsw i32 %sub29, %50
  store i32 %mul30, i32* %size_x, align 4
  %51 = load i32, i32* %size_y, align 4
  %conv31 = sext i32 %51 to i64
  %call32 = call noalias i8* @g_malloc_n(i64 %conv31, i64 4)
  %52 = bitcast i8* %call32 to i32*
  store i32* %52, i32** %min_scanlines_iter, align 8
  store i32* %52, i32** %min_scanlines, align 8
  %53 = load i32, i32* %size_y, align 4
  %conv33 = sext i32 %53 to i64
  %call34 = call noalias i8* @g_malloc_n(i64 %conv33, i64 4)
  %54 = bitcast i8* %call34 to i32*
  store i32* %54, i32** %max_scanlines_iter, align 8
  store i32* %54, i32** %max_scanlines, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.45, %if.end.22
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %size_y, align 4
  %cmp36 = icmp slt i32 %55, %56
  br i1 %cmp36, label %for.body.38, label %for.end.47

for.body.38:                                      ; preds = %for.cond.35
  %57 = load i32, i32* %max_x, align 4
  %58 = load i32, i32* %supersample, align 4
  %mul39 = mul nsw i32 %57, %58
  %59 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %59 to i64
  %60 = load i32*, i32** %min_scanlines, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %60, i64 %idxprom40
  store i32 %mul39, i32* %arrayidx41, align 4
  %61 = load i32, i32* %min_x, align 4
  %62 = load i32, i32* %supersample, align 4
  %mul42 = mul nsw i32 %61, %62
  %63 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %63 to i64
  %64 = load i32*, i32** %max_scanlines, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %64, i64 %idxprom43
  store i32 %mul42, i32* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.38
  %65 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %65, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.35

for.end.47:                                       ; preds = %for.cond.35
  %66 = load i32, i32* %poly_npts, align 4
  %tobool48 = icmp ne i32 %66, 0
  br i1 %tobool48, label %if.then.49, label %if.end.92

if.then.49:                                       ; preds = %for.end.47
  %67 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts50 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %67, i32 0, i32 1
  %arraydecay51 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts50, i32 0, i32 0
  store %struct.Vertex* %arraydecay51, %struct.Vertex** %pts_tmp, align 8
  %68 = load i32, i32* %poly_npts, align 4
  %sub52 = sub nsw i32 %68, 1
  %idxprom53 = sext i32 %sub52 to i64
  %69 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %arrayidx54 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %69, i64 %idxprom53
  %x55 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx54, i32 0, i32 0
  %70 = load double, double* %x55, align 8
  %conv56 = fptosi double %70 to i32
  store i32 %conv56, i32* %xs, align 4
  %71 = load i32, i32* %poly_npts, align 4
  %sub57 = sub nsw i32 %71, 1
  %idxprom58 = sext i32 %sub57 to i64
  %72 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %arrayidx59 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %72, i64 %idxprom58
  %y60 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx59, i32 0, i32 1
  %73 = load double, double* %y60, align 8
  %conv61 = fptosi double %73 to i32
  store i32 %conv61, i32* %ys, align 4
  %74 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %x62 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %74, i32 0, i32 0
  %75 = load double, double* %x62, align 8
  %conv63 = fptosi double %75 to i32
  store i32 %conv63, i32* %xe, align 4
  %76 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %y64 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %76, i32 0, i32 1
  %77 = load double, double* %y64, align 8
  %conv65 = fptosi double %77 to i32
  store i32 %conv65, i32* %ye, align 4
  %78 = load i32, i32* %supersample, align 4
  %79 = load i32, i32* %xs, align 4
  %mul66 = mul nsw i32 %79, %78
  store i32 %mul66, i32* %xs, align 4
  %80 = load i32, i32* %supersample, align 4
  %81 = load i32, i32* %ys, align 4
  %mul67 = mul nsw i32 %81, %80
  store i32 %mul67, i32* %ys, align 4
  %82 = load i32, i32* %supersample, align 4
  %83 = load i32, i32* %xe, align 4
  %mul68 = mul nsw i32 %83, %82
  store i32 %mul68, i32* %xe, align 4
  %84 = load i32, i32* %supersample, align 4
  %85 = load i32, i32* %ye, align 4
  %mul69 = mul nsw i32 %85, %84
  store i32 %mul69, i32* %ye, align 4
  %86 = load i32, i32* %xs, align 4
  %87 = load i32, i32* %ys, align 4
  %88 = load i32, i32* %xe, align 4
  %89 = load i32, i32* %ye, align 4
  %90 = load i32, i32* %min_y, align 4
  %91 = load i32, i32* %supersample, align 4
  %mul70 = mul nsw i32 %90, %91
  %92 = load i32*, i32** %min_scanlines, align 8
  %93 = load i32*, i32** %max_scanlines, align 8
  call void @convert_segment(i32 %86, i32 %87, i32 %88, i32 %89, i32 %mul70, i32* %92, i32* %93)
  store i32 1, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.89, %if.then.49
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %poly_npts, align 4
  %cmp72 = icmp slt i32 %94, %95
  br i1 %cmp72, label %for.body.74, label %for.end.91

for.body.74:                                      ; preds = %for.cond.71
  %96 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %x75 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %96, i32 0, i32 0
  %97 = load double, double* %x75, align 8
  %conv76 = fptosi double %97 to i32
  store i32 %conv76, i32* %xs, align 4
  %98 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %y77 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %98, i32 0, i32 1
  %99 = load double, double* %y77, align 8
  %conv78 = fptosi double %99 to i32
  store i32 %conv78, i32* %ys, align 4
  %100 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %incdec.ptr79 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %100, i32 1
  store %struct.Vertex* %incdec.ptr79, %struct.Vertex** %pts_tmp, align 8
  %101 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %x80 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %101, i32 0, i32 0
  %102 = load double, double* %x80, align 8
  %conv81 = fptosi double %102 to i32
  store i32 %conv81, i32* %xe, align 4
  %103 = load %struct.Vertex*, %struct.Vertex** %pts_tmp, align 8
  %y82 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %103, i32 0, i32 1
  %104 = load double, double* %y82, align 8
  %conv83 = fptosi double %104 to i32
  store i32 %conv83, i32* %ye, align 4
  %105 = load i32, i32* %supersample, align 4
  %106 = load i32, i32* %xs, align 4
  %mul84 = mul nsw i32 %106, %105
  store i32 %mul84, i32* %xs, align 4
  %107 = load i32, i32* %supersample, align 4
  %108 = load i32, i32* %ys, align 4
  %mul85 = mul nsw i32 %108, %107
  store i32 %mul85, i32* %ys, align 4
  %109 = load i32, i32* %supersample, align 4
  %110 = load i32, i32* %xe, align 4
  %mul86 = mul nsw i32 %110, %109
  store i32 %mul86, i32* %xe, align 4
  %111 = load i32, i32* %supersample, align 4
  %112 = load i32, i32* %ye, align 4
  %mul87 = mul nsw i32 %112, %111
  store i32 %mul87, i32* %ye, align 4
  %113 = load i32, i32* %xs, align 4
  %114 = load i32, i32* %ys, align 4
  %115 = load i32, i32* %xe, align 4
  %116 = load i32, i32* %ye, align 4
  %117 = load i32, i32* %min_y, align 4
  %118 = load i32, i32* %supersample, align 4
  %mul88 = mul nsw i32 %117, %118
  %119 = load i32*, i32** %min_scanlines, align 8
  %120 = load i32*, i32** %max_scanlines, align 8
  call void @convert_segment(i32 %113, i32 %114, i32 %115, i32 %116, i32 %mul88, i32* %119, i32* %120)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.74
  %121 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %121, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.71

for.end.91:                                       ; preds = %for.cond.71
  br label %if.end.92

if.end.92:                                        ; preds = %for.end.91, %for.end.47
  %122 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %123 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %123, i32 0, i32 1
  %124 = load i32, i32* %width, align 4
  %125 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %125, i32 0, i32 2
  %126 = load i32, i32* %height, align 4
  %127 = load i8*, i8** %dest.addr, align 8
  %cmp93 = icmp eq i8* %127, null
  %conv94 = zext i1 %cmp93 to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %122, i32 0, i32 0, i32 %124, i32 %126, i32 %conv94, i32 1)
  %128 = load i32, i32* %size_x, align 4
  %conv95 = sext i32 %128 to i64
  %call96 = call noalias i8* @g_malloc_n(i64 %conv95, i64 4)
  %129 = bitcast i8* %call96 to i32*
  store i32* %129, i32** %vals, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.227, %if.end.92
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %size_y, align 4
  %cmp98 = icmp slt i32 %130, %131
  br i1 %cmp98, label %for.body.100, label %for.end.231

for.body.100:                                     ; preds = %for.cond.97
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %supersample, align 4
  %rem = srem i32 %132, %133
  %tobool101 = icmp ne i32 %rem, 0
  br i1 %tobool101, label %if.end.105, label %if.then.102

if.then.102:                                      ; preds = %for.body.100
  %134 = load i32*, i32** %vals, align 8
  %135 = bitcast i32* %134 to i8*
  %136 = load i32, i32* %size_x, align 4
  %conv103 = sext i32 %136 to i64
  %mul104 = mul i64 4, %conv103
  call void @llvm.memset.p0i8.i64(i8* %135, i8 0, i64 %mul104, i32 4, i1 false)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %for.body.100
  %137 = load i32, i32* %i, align 4
  %conv106 = sitofp i32 %137 to double
  %138 = load i32, i32* %supersample, align 4
  %conv107 = sitofp i32 %138 to double
  %div = fdiv double %conv106, %conv107
  %139 = load i32, i32* %min_y, align 4
  %conv108 = sitofp i32 %139 to double
  %add = fadd double %div, %conv108
  store double %add, double* %yy, align 8
  %140 = load i32*, i32** %min_scanlines_iter, align 8
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %j, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.118, %if.end.105
  %142 = load i32, i32* %j, align 4
  %143 = load i32*, i32** %max_scanlines_iter, align 8
  %144 = load i32, i32* %143, align 4
  %cmp110 = icmp slt i32 %142, %144
  br i1 %cmp110, label %for.body.112, label %for.end.120

for.body.112:                                     ; preds = %for.cond.109
  %145 = load i32, i32* %j, align 4
  %146 = load i32, i32* %min_x, align 4
  %147 = load i32, i32* %supersample, align 4
  %mul113 = mul nsw i32 %146, %147
  %sub114 = sub nsw i32 %145, %mul113
  store i32 %sub114, i32* %x, align 4
  %148 = load i32, i32* %x, align 4
  %idxprom115 = sext i32 %148 to i64
  %149 = load i32*, i32** %vals, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %149, i64 %idxprom115
  %150 = load i32, i32* %arrayidx116, align 4
  %add117 = add nsw i32 %150, 255
  store i32 %add117, i32* %arrayidx116, align 4
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.112
  %151 = load i32, i32* %j, align 4
  %inc119 = add nsw i32 %151, 1
  store i32 %inc119, i32* %j, align 4
  br label %for.cond.109

for.end.120:                                      ; preds = %for.cond.109
  %152 = load i32, i32* %i, align 4
  %add121 = add nsw i32 %152, 1
  %153 = load i32, i32* %supersample, align 4
  %rem122 = srem i32 %add121, %153
  %tobool123 = icmp ne i32 %rem122, 0
  br i1 %tobool123, label %if.end.226, label %if.then.124

if.then.124:                                      ; preds = %for.end.120
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* %supersample, align 4
  %div125 = sdiv i32 %154, %155
  %156 = load i32, i32* %min_y, align 4
  %add126 = add nsw i32 %div125, %156
  store i32 %add126, i32* %y, align 4
  %157 = load i32, i32* %y, align 4
  %158 = load i32, i32* %y1.addr, align 4
  %cmp127 = icmp sge i32 %157, %158
  br i1 %cmp127, label %land.lhs.true, label %if.end.225

land.lhs.true:                                    ; preds = %if.then.124
  %159 = load i32, i32* %y, align 4
  %160 = load i32, i32* %y2.addr, align 4
  %cmp129 = icmp slt i32 %159, %160
  br i1 %cmp129, label %if.then.131, label %if.end.225

if.then.131:                                      ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.222, %if.then.131
  %161 = load i32, i32* %j, align 4
  %162 = load i32, i32* %size_x, align 4
  %cmp133 = icmp slt i32 %161, %162
  br i1 %cmp133, label %for.body.135, label %for.end.224

for.body.135:                                     ; preds = %for.cond.132
  %163 = load i32, i32* %j, align 4
  %164 = load i32, i32* %supersample, align 4
  %div136 = sdiv i32 %163, %164
  %165 = load i32, i32* %min_x, align 4
  %add137 = add nsw i32 %div136, %165
  store i32 %add137, i32* %x, align 4
  %166 = load i32, i32* %x, align 4
  %167 = load i32, i32* %x1.addr, align 4
  %cmp138 = icmp sge i32 %166, %167
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.221

land.lhs.true.140:                                ; preds = %for.body.135
  %168 = load i32, i32* %x, align 4
  %169 = load i32, i32* %x2.addr, align 4
  %cmp141 = icmp slt i32 %168, %169
  br i1 %cmp141, label %if.then.143, label %if.end.221

if.then.143:                                      ; preds = %land.lhs.true.140
  store i32 0, i32* %val, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.152, %if.then.143
  %170 = load i32, i32* %k, align 4
  %171 = load i32, i32* %supersample, align 4
  %cmp145 = icmp slt i32 %170, %171
  br i1 %cmp145, label %for.body.147, label %for.end.154

for.body.147:                                     ; preds = %for.cond.144
  %172 = load i32, i32* %j, align 4
  %173 = load i32, i32* %k, align 4
  %add148 = add nsw i32 %172, %173
  %idxprom149 = sext i32 %add148 to i64
  %174 = load i32*, i32** %vals, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %174, i64 %idxprom149
  %175 = load i32, i32* %arrayidx150, align 4
  %176 = load i32, i32* %val, align 4
  %add151 = add nsw i32 %176, %175
  store i32 %add151, i32* %val, align 4
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.147
  %177 = load i32, i32* %k, align 4
  %inc153 = add nsw i32 %177, 1
  store i32 %inc153, i32* %k, align 4
  br label %for.cond.144

for.end.154:                                      ; preds = %for.cond.144
  %178 = load i32, i32* %supersample2, align 4
  %179 = load i32, i32* %val, align 4
  %div155 = sdiv i32 %179, %178
  store i32 %div155, i32* %val, align 4
  %180 = load i32, i32* %val, align 4
  %cmp156 = icmp sgt i32 %180, 0
  br i1 %cmp156, label %if.then.158, label %if.end.220

if.then.158:                                      ; preds = %for.end.154
  %181 = load i32, i32* %j, align 4
  %conv159 = sitofp i32 %181 to double
  %182 = load i32, i32* %supersample, align 4
  %conv160 = sitofp i32 %182 to double
  %div161 = fdiv double %conv159, %conv160
  %183 = load i32, i32* %min_x, align 4
  %conv162 = sitofp i32 %183 to double
  %add163 = fadd double %div161, %conv162
  store double %add163, double* %xx, align 8
  %184 = load i32, i32* %poly_npts, align 4
  %185 = load double, double* %xx, align 8
  %186 = load double, double* %yy, align 8
  %call164 = call double @calc_spec_contrib(%struct.SpecVec* getelementptr inbounds ([12 x %struct.SpecVec], [12 x %struct.SpecVec]* @vecs, i32 0, i32 0), i32 %184, double %185, double %186)
  store double %call164, double* %contrib, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.203, %if.then.158
  %187 = load i32, i32* %b, align 4
  %188 = load i32, i32* %bytes, align 4
  %cmp166 = icmp slt i32 %187, %188
  br i1 %cmp166, label %for.body.168, label %for.end.205

for.body.168:                                     ; preds = %for.cond.165
  %189 = load i32, i32* %b, align 4
  %idxprom169 = sext i32 %189 to i64
  %190 = load i8*, i8** %col.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %190, i64 %idxprom169
  %191 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %191 to i32
  %192 = load double, double* %contrib, align 8
  %cmp172 = fcmp olt double %192, 0.000000e+00
  br i1 %cmp172, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.168
  %193 = load i32, i32* %b, align 4
  %idxprom174 = sext i32 %193 to i64
  %194 = load i8*, i8** %col.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %194, i64 %idxprom174
  %195 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %195 to i32
  %196 = load i32, i32* %b, align 4
  %idxprom177 = sext i32 %196 to i64
  %arrayidx178 = getelementptr inbounds [4 x i8], [4 x i8]* @back, i32 0, i64 %idxprom177
  %197 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %197 to i32
  %sub180 = sub nsw i32 %conv176, %conv179
  br label %cond.end

cond.false:                                       ; preds = %for.body.168
  %198 = load i32, i32* %b, align 4
  %idxprom181 = sext i32 %198 to i64
  %arrayidx182 = getelementptr inbounds [4 x i8], [4 x i8]* @fore, i32 0, i64 %idxprom181
  %199 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %199 to i32
  %200 = load i32, i32* %b, align 4
  %idxprom184 = sext i32 %200 to i64
  %201 = load i8*, i8** %col.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %201, i64 %idxprom184
  %202 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %202 to i32
  %sub187 = sub nsw i32 %conv183, %conv186
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub180, %cond.true ], [ %sub187, %cond.false ]
  %conv188 = sitofp i32 %cond to double
  %203 = load double, double* %contrib, align 8
  %mul189 = fmul double %conv188, %203
  %conv190 = fptosi double %mul189 to i32
  %add191 = add nsw i32 %conv171, %conv190
  store i32 %add191, i32* %pixel, align 4
  %204 = load i32, i32* %pixel, align 4
  %205 = load i32, i32* %val, align 4
  %mul192 = mul nsw i32 %204, %205
  %206 = load i32, i32* %b, align 4
  %idxprom193 = sext i32 %206 to i64
  %arrayidx194 = getelementptr inbounds [4 x i8], [4 x i8]* @back, i32 0, i64 %idxprom193
  %207 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %207 to i32
  %208 = load i32, i32* %val, align 4
  %sub196 = sub nsw i32 255, %208
  %mul197 = mul nsw i32 %conv195, %sub196
  %add198 = add nsw i32 %mul192, %mul197
  %div199 = sdiv i32 %add198, 255
  %conv200 = trunc i32 %div199 to i8
  %209 = load i32, i32* %b, align 4
  %idxprom201 = sext i32 %209 to i64
  %arrayidx202 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom201
  store i8 %conv200, i8* %arrayidx202, align 1
  br label %for.inc.203

for.inc.203:                                      ; preds = %cond.end
  %210 = load i32, i32* %b, align 4
  %inc204 = add nsw i32 %210, 1
  store i32 %inc204, i32* %b, align 4
  br label %for.cond.165

for.end.205:                                      ; preds = %for.cond.165
  %211 = load i8*, i8** %dest.addr, align 8
  %tobool206 = icmp ne i8* %211, null
  br i1 %tobool206, label %if.then.207, label %if.else.217

if.then.207:                                      ; preds = %for.end.205
  %212 = load i8*, i8** %dest.addr, align 8
  %213 = load i32, i32* %y, align 4
  %214 = load i32, i32* %y1.addr, align 4
  %sub208 = sub nsw i32 %213, %214
  %215 = load i32, i32* %x2.addr, align 4
  %216 = load i32, i32* %x1.addr, align 4
  %sub209 = sub nsw i32 %215, %216
  %mul210 = mul nsw i32 %sub208, %sub209
  %217 = load i32, i32* %x, align 4
  %218 = load i32, i32* %x1.addr, align 4
  %sub211 = sub nsw i32 %217, %218
  %add212 = add nsw i32 %mul210, %sub211
  %219 = load i32, i32* %bytes, align 4
  %mul213 = mul nsw i32 %add212, %219
  %idx.ext214 = sext i32 %mul213 to i64
  %add.ptr215 = getelementptr inbounds i8, i8* %212, i64 %idx.ext214
  %220 = bitcast [4 x i8]* %buf to i8*
  %221 = load i32, i32* %bytes, align 4
  %conv216 = sext i32 %221 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr215, i8* %220, i64 %conv216, i32 1, i1 false)
  br label %if.end.219

if.else.217:                                      ; preds = %for.end.205
  %arraydecay218 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %222 = load i32, i32* %x, align 4
  %223 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* %src_rgn, i8* %arraydecay218, i32 %222, i32 %223)
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.217, %if.then.207
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %for.end.154
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %land.lhs.true.140, %for.body.135
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %224 = load i32, i32* %supersample, align 4
  %225 = load i32, i32* %j, align 4
  %add223 = add nsw i32 %225, %224
  store i32 %add223, i32* %j, align 4
  br label %for.cond.132

for.end.224:                                      ; preds = %for.cond.132
  br label %if.end.225

if.end.225:                                       ; preds = %for.end.224, %land.lhs.true, %if.then.124
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %for.end.120
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226
  %226 = load i32, i32* %i, align 4
  %inc228 = add nsw i32 %226, 1
  store i32 %inc228, i32* %i, align 4
  %227 = load i32*, i32** %min_scanlines_iter, align 8
  %incdec.ptr229 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %incdec.ptr229, i32** %min_scanlines_iter, align 8
  %228 = load i32*, i32** %max_scanlines_iter, align 8
  %incdec.ptr230 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %incdec.ptr230, i32** %max_scanlines_iter, align 8
  br label %for.cond.97

for.end.231:                                      ; preds = %for.cond.97
  %229 = load i32*, i32** %vals, align 8
  %230 = bitcast i32* %229 to i8*
  call void @g_free(i8* %230)
  %231 = load i32*, i32** %min_scanlines, align 8
  %232 = bitcast i32* %231 to i8*
  call void @g_free(i8* %232)
  %233 = load i32*, i32** %max_scanlines, align 8
  %234 = bitcast i32* %233 to i8*
  call void @g_free(i8* %234)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fill_poly_image(%struct.Polygon* %poly, %struct._GimpDrawable* %drawable, double %vary, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i8* %dest) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %vary.addr = alloca double, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %dmin_x = alloca double, align 8
  %dmin_y = alloca double, align 8
  %dmax_x = alloca double, align 8
  %dmax_y = alloca double, align 8
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %size_x = alloca i32, align 4
  %size_y = alloca i32, align 4
  %max_scanlines = alloca i32*, align 8
  %min_scanlines = alloca i32*, align 8
  %vals = alloca i32*, align 8
  %val = alloca i32, align 4
  %pixel = alloca i32, align 4
  %bytes = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %contrib = alloca double, align 8
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %supersample = alloca i32, align 4
  %supersample2 = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %vary, double* %vary.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store double 0.000000e+00, double* %dmin_x, align 8
  store double 0.000000e+00, double* %dmin_y, align 8
  store double 0.000000e+00, double* %dmax_x, align 8
  store double 0.000000e+00, double* %dmax_y, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 7), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %supersample, align 4
  %1 = load i32, i32* %supersample, align 4
  %2 = load i32, i32* %supersample, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %supersample2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %supersample2, align 4
  store i32 1, i32* %supersample, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 3
  %4 = load i32, i32* %bpp, align 4
  store i32 %4, i32* %bytes, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %6, i32 0, i32 0
  %7 = load i32, i32* %npts, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %10 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom
  %x3 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  %11 = load double, double* %x3, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts4 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %12, i32 0, i32 0
  %13 = load i32, i32* %npts4, align 4
  %sub5 = sub i32 %13, 1
  %idxprom6 = zext i32 %sub5 to i64
  %14 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts7 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts7, i32 0, i64 %idxprom6
  %x9 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx8, i32 0, i32 0
  %15 = load double, double* %x9, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %11, %cond.true ], [ %15, %cond.false ]
  %conv = fptosi double %cond to i32
  store i32 %conv, i32* %xs, align 4
  %16 = load i32, i32* %i, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.17

cond.true.11:                                     ; preds = %cond.end
  %17 = load i32, i32* %i, align 4
  %sub12 = sub nsw i32 %17, 1
  %idxprom13 = sext i32 %sub12 to i64
  %18 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts14 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %18, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts14, i32 0, i64 %idxprom13
  %y16 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx15, i32 0, i32 1
  %19 = load double, double* %y16, align 8
  br label %cond.end.24

cond.false.17:                                    ; preds = %cond.end
  %20 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts18 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %20, i32 0, i32 0
  %21 = load i32, i32* %npts18, align 4
  %sub19 = sub i32 %21, 1
  %idxprom20 = zext i32 %sub19 to i64
  %22 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts21 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %22, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts21, i32 0, i64 %idxprom20
  %y23 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx22, i32 0, i32 1
  %23 = load double, double* %y23, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.17, %cond.true.11
  %cond25 = phi double [ %19, %cond.true.11 ], [ %23, %cond.false.17 ]
  %conv26 = fptosi double %cond25 to i32
  store i32 %conv26, i32* %ys, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts28 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %25, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts28, i32 0, i64 %idxprom27
  %x30 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx29, i32 0, i32 0
  %26 = load double, double* %x30, align 8
  %conv31 = fptosi double %26 to i32
  store i32 %conv31, i32* %xe, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts33 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %28, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts33, i32 0, i64 %idxprom32
  %y35 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx34, i32 0, i32 1
  %29 = load double, double* %y35, align 8
  %conv36 = fptosi double %29 to i32
  store i32 %conv36, i32* %ye, align 4
  %30 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* getelementptr inbounds ([12 x %struct.SpecVec], [12 x %struct.SpecVec]* @vecs, i32 0, i32 0), i64 %idx.ext
  %31 = load i32, i32* %xs, align 4
  %32 = load i32, i32* %ys, align 4
  %33 = load i32, i32* %xe, align 4
  %34 = load i32, i32* %ye, align 4
  call void @calc_spec_vec(%struct.SpecVec* %add.ptr, i32 %31, i32 %32, i32 %33, i32 %34)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.24
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %call = call i32 @polygon_extents(%struct.Polygon* %36, double* %dmin_x, double* %dmin_y, double* %dmax_x, double* %dmax_y)
  %37 = load double, double* %dmin_x, align 8
  %conv37 = fptosi double %37 to i32
  store i32 %conv37, i32* %min_x, align 4
  %38 = load double, double* %dmin_y, align 8
  %conv38 = fptosi double %38 to i32
  store i32 %conv38, i32* %min_y, align 4
  %39 = load double, double* %dmax_x, align 8
  %conv39 = fptosi double %39 to i32
  store i32 %conv39, i32* %max_x, align 4
  %40 = load double, double* %dmax_y, align 8
  %conv40 = fptosi double %40 to i32
  store i32 %conv40, i32* %max_y, align 4
  %41 = load i32, i32* %max_y, align 4
  %42 = load i32, i32* %min_y, align 4
  %sub41 = sub nsw i32 %41, %42
  %43 = load i32, i32* %supersample, align 4
  %mul42 = mul nsw i32 %sub41, %43
  store i32 %mul42, i32* %size_y, align 4
  %44 = load i32, i32* %max_x, align 4
  %45 = load i32, i32* %min_x, align 4
  %sub43 = sub nsw i32 %44, %45
  %46 = load i32, i32* %supersample, align 4
  %mul44 = mul nsw i32 %sub43, %46
  store i32 %mul44, i32* %size_x, align 4
  %47 = load i32, i32* %size_y, align 4
  %conv45 = sext i32 %47 to i64
  %call46 = call noalias i8* @g_malloc_n(i64 %conv45, i64 4)
  %48 = bitcast i8* %call46 to i32*
  store i32* %48, i32** %min_scanlines, align 8
  %49 = load i32, i32* %size_y, align 4
  %conv47 = sext i32 %49 to i64
  %call48 = call noalias i8* @g_malloc_n(i64 %conv47, i64 4)
  %50 = bitcast i8* %call48 to i32*
  store i32* %50, i32** %max_scanlines, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.59, %for.end
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %size_y, align 4
  %cmp50 = icmp slt i32 %51, %52
  br i1 %cmp50, label %for.body.52, label %for.end.61

for.body.52:                                      ; preds = %for.cond.49
  %53 = load i32, i32* %max_x, align 4
  %54 = load i32, i32* %supersample, align 4
  %mul53 = mul nsw i32 %53, %54
  %55 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %55 to i64
  %56 = load i32*, i32** %min_scanlines, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %56, i64 %idxprom54
  store i32 %mul53, i32* %arrayidx55, align 4
  %57 = load i32, i32* %min_x, align 4
  %58 = load i32, i32* %supersample, align 4
  %mul56 = mul nsw i32 %57, %58
  %59 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %59 to i64
  %60 = load i32*, i32** %max_scanlines, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %60, i64 %idxprom57
  store i32 %mul56, i32* %arrayidx58, align 4
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.52
  %61 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %61, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.49

for.end.61:                                       ; preds = %for.cond.49
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.116, %for.end.61
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts63 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %63, i32 0, i32 0
  %64 = load i32, i32* %npts63, align 4
  %cmp64 = icmp ult i32 %62, %64
  br i1 %cmp64, label %for.body.66, label %for.end.118

for.body.66:                                      ; preds = %for.cond.62
  %65 = load i32, i32* %i, align 4
  %tobool67 = icmp ne i32 %65, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.74

cond.true.68:                                     ; preds = %for.body.66
  %66 = load i32, i32* %i, align 4
  %sub69 = sub nsw i32 %66, 1
  %idxprom70 = sext i32 %sub69 to i64
  %67 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts71 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %67, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts71, i32 0, i64 %idxprom70
  %x73 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx72, i32 0, i32 0
  %68 = load double, double* %x73, align 8
  br label %cond.end.81

cond.false.74:                                    ; preds = %for.body.66
  %69 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts75 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %69, i32 0, i32 0
  %70 = load i32, i32* %npts75, align 4
  %sub76 = sub i32 %70, 1
  %idxprom77 = zext i32 %sub76 to i64
  %71 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts78 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %71, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts78, i32 0, i64 %idxprom77
  %x80 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx79, i32 0, i32 0
  %72 = load double, double* %x80, align 8
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.74, %cond.true.68
  %cond82 = phi double [ %68, %cond.true.68 ], [ %72, %cond.false.74 ]
  %conv83 = fptosi double %cond82 to i32
  store i32 %conv83, i32* %xs, align 4
  %73 = load i32, i32* %i, align 4
  %tobool84 = icmp ne i32 %73, 0
  br i1 %tobool84, label %cond.true.85, label %cond.false.91

cond.true.85:                                     ; preds = %cond.end.81
  %74 = load i32, i32* %i, align 4
  %sub86 = sub nsw i32 %74, 1
  %idxprom87 = sext i32 %sub86 to i64
  %75 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts88 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %75, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts88, i32 0, i64 %idxprom87
  %y90 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx89, i32 0, i32 1
  %76 = load double, double* %y90, align 8
  br label %cond.end.98

cond.false.91:                                    ; preds = %cond.end.81
  %77 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts92 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %77, i32 0, i32 0
  %78 = load i32, i32* %npts92, align 4
  %sub93 = sub i32 %78, 1
  %idxprom94 = zext i32 %sub93 to i64
  %79 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts95 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %79, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts95, i32 0, i64 %idxprom94
  %y97 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx96, i32 0, i32 1
  %80 = load double, double* %y97, align 8
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.91, %cond.true.85
  %cond99 = phi double [ %76, %cond.true.85 ], [ %80, %cond.false.91 ]
  %conv100 = fptosi double %cond99 to i32
  store i32 %conv100, i32* %ys, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %81 to i64
  %82 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts102 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %82, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts102, i32 0, i64 %idxprom101
  %x104 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx103, i32 0, i32 0
  %83 = load double, double* %x104, align 8
  %conv105 = fptosi double %83 to i32
  store i32 %conv105, i32* %xe, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %84 to i64
  %85 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts107 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %85, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts107, i32 0, i64 %idxprom106
  %y109 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx108, i32 0, i32 1
  %86 = load double, double* %y109, align 8
  %conv110 = fptosi double %86 to i32
  store i32 %conv110, i32* %ye, align 4
  %87 = load i32, i32* %supersample, align 4
  %88 = load i32, i32* %xs, align 4
  %mul111 = mul nsw i32 %88, %87
  store i32 %mul111, i32* %xs, align 4
  %89 = load i32, i32* %supersample, align 4
  %90 = load i32, i32* %ys, align 4
  %mul112 = mul nsw i32 %90, %89
  store i32 %mul112, i32* %ys, align 4
  %91 = load i32, i32* %supersample, align 4
  %92 = load i32, i32* %xe, align 4
  %mul113 = mul nsw i32 %92, %91
  store i32 %mul113, i32* %xe, align 4
  %93 = load i32, i32* %supersample, align 4
  %94 = load i32, i32* %ye, align 4
  %mul114 = mul nsw i32 %94, %93
  store i32 %mul114, i32* %ye, align 4
  %95 = load i32, i32* %xs, align 4
  %96 = load i32, i32* %ys, align 4
  %97 = load i32, i32* %xe, align 4
  %98 = load i32, i32* %ye, align 4
  %99 = load i32, i32* %min_y, align 4
  %100 = load i32, i32* %supersample, align 4
  %mul115 = mul nsw i32 %99, %100
  %101 = load i32*, i32** %min_scanlines, align 8
  %102 = load i32*, i32** %max_scanlines, align 8
  call void @convert_segment(i32 %95, i32 %96, i32 %97, i32 %98, i32 %mul115, i32* %101, i32* %102)
  br label %for.inc.116

for.inc.116:                                      ; preds = %cond.end.98
  %103 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %103, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.62

for.end.118:                                      ; preds = %for.cond.62
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %105, i32 0, i32 1
  %106 = load i32, i32* %width, align 4
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %107, i32 0, i32 2
  %108 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %104, i32 0, i32 0, i32 %106, i32 %108, i32 0, i32 0)
  %109 = load i8*, i8** %dest.addr, align 8
  %tobool119 = icmp ne i8* %109, null
  br i1 %tobool119, label %if.end.123, label %if.then.120

if.then.120:                                      ; preds = %for.end.118
  %110 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width121 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 1
  %112 = load i32, i32* %width121, align 4
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height122 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %113, i32 0, i32 2
  %114 = load i32, i32* %height122, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %110, i32 0, i32 0, i32 %112, i32 %114, i32 1, i32 1)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %for.end.118
  %115 = load i32, i32* %size_x, align 4
  %conv124 = sext i32 %115 to i64
  %call125 = call noalias i8* @g_malloc_n(i64 %conv124, i64 4)
  %116 = bitcast i8* %call125 to i32*
  store i32* %116, i32** %vals, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.287, %if.end.123
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %size_y, align 4
  %cmp127 = icmp slt i32 %117, %118
  br i1 %cmp127, label %for.body.129, label %for.end.289

for.body.129:                                     ; preds = %for.cond.126
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %supersample, align 4
  %rem = srem i32 %119, %120
  %tobool130 = icmp ne i32 %rem, 0
  br i1 %tobool130, label %if.end.134, label %if.then.131

if.then.131:                                      ; preds = %for.body.129
  %121 = load i32*, i32** %vals, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = load i32, i32* %size_x, align 4
  %conv132 = sext i32 %123 to i64
  %mul133 = mul i64 4, %conv132
  call void @llvm.memset.p0i8.i64(i8* %122, i8 0, i64 %mul133, i32 4, i1 false)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %for.body.129
  %124 = load i32, i32* %i, align 4
  %conv135 = sitofp i32 %124 to double
  %125 = load i32, i32* %supersample, align 4
  %conv136 = sitofp i32 %125 to double
  %div = fdiv double %conv135, %conv136
  %126 = load i32, i32* %min_y, align 4
  %conv137 = sitofp i32 %126 to double
  %add = fadd double %div, %conv137
  store double %add, double* %yy, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %127 to i64
  %128 = load i32*, i32** %min_scanlines, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %128, i64 %idxprom138
  %129 = load i32, i32* %arrayidx139, align 4
  store i32 %129, i32* %j, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.151, %if.end.134
  %130 = load i32, i32* %j, align 4
  %131 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %131 to i64
  %132 = load i32*, i32** %max_scanlines, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %132, i64 %idxprom141
  %133 = load i32, i32* %arrayidx142, align 4
  %cmp143 = icmp slt i32 %130, %133
  br i1 %cmp143, label %for.body.145, label %for.end.153

for.body.145:                                     ; preds = %for.cond.140
  %134 = load i32, i32* %j, align 4
  %135 = load i32, i32* %min_x, align 4
  %136 = load i32, i32* %supersample, align 4
  %mul146 = mul nsw i32 %135, %136
  %sub147 = sub nsw i32 %134, %mul146
  store i32 %sub147, i32* %x, align 4
  %137 = load i32, i32* %x, align 4
  %idxprom148 = sext i32 %137 to i64
  %138 = load i32*, i32** %vals, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %138, i64 %idxprom148
  %139 = load i32, i32* %arrayidx149, align 4
  %add150 = add nsw i32 %139, 255
  store i32 %add150, i32* %arrayidx149, align 4
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.145
  %140 = load i32, i32* %j, align 4
  %inc152 = add nsw i32 %140, 1
  store i32 %inc152, i32* %j, align 4
  br label %for.cond.140

for.end.153:                                      ; preds = %for.cond.140
  %141 = load i32, i32* %i, align 4
  %add154 = add nsw i32 %141, 1
  %142 = load i32, i32* %supersample, align 4
  %rem155 = srem i32 %add154, %142
  %tobool156 = icmp ne i32 %rem155, 0
  br i1 %tobool156, label %if.end.286, label %if.then.157

if.then.157:                                      ; preds = %for.end.153
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %supersample, align 4
  %div158 = sdiv i32 %143, %144
  %145 = load i32, i32* %min_y, align 4
  %add159 = add nsw i32 %div158, %145
  store i32 %add159, i32* %y, align 4
  %146 = load i32, i32* %y, align 4
  %147 = load i32, i32* %y1.addr, align 4
  %cmp160 = icmp sge i32 %146, %147
  br i1 %cmp160, label %land.lhs.true, label %if.end.285

land.lhs.true:                                    ; preds = %if.then.157
  %148 = load i32, i32* %y, align 4
  %149 = load i32, i32* %y2.addr, align 4
  %cmp162 = icmp slt i32 %148, %149
  br i1 %cmp162, label %if.then.164, label %if.end.285

if.then.164:                                      ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.282, %if.then.164
  %150 = load i32, i32* %j, align 4
  %151 = load i32, i32* %size_x, align 4
  %cmp166 = icmp slt i32 %150, %151
  br i1 %cmp166, label %for.body.168, label %for.end.284

for.body.168:                                     ; preds = %for.cond.165
  %152 = load i32, i32* %j, align 4
  %153 = load i32, i32* %supersample, align 4
  %div169 = sdiv i32 %152, %153
  %154 = load i32, i32* %min_x, align 4
  %add170 = add nsw i32 %div169, %154
  store i32 %add170, i32* %x, align 4
  %155 = load i32, i32* %x, align 4
  %156 = load i32, i32* %x1.addr, align 4
  %cmp171 = icmp sge i32 %155, %156
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.281

land.lhs.true.173:                                ; preds = %for.body.168
  %157 = load i32, i32* %x, align 4
  %158 = load i32, i32* %x2.addr, align 4
  %cmp174 = icmp slt i32 %157, %158
  br i1 %cmp174, label %if.then.176, label %if.end.281

if.then.176:                                      ; preds = %land.lhs.true.173
  store i32 0, i32* %val, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.185, %if.then.176
  %159 = load i32, i32* %k, align 4
  %160 = load i32, i32* %supersample, align 4
  %cmp178 = icmp slt i32 %159, %160
  br i1 %cmp178, label %for.body.180, label %for.end.187

for.body.180:                                     ; preds = %for.cond.177
  %161 = load i32, i32* %j, align 4
  %162 = load i32, i32* %k, align 4
  %add181 = add nsw i32 %161, %162
  %idxprom182 = sext i32 %add181 to i64
  %163 = load i32*, i32** %vals, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %163, i64 %idxprom182
  %164 = load i32, i32* %arrayidx183, align 4
  %165 = load i32, i32* %val, align 4
  %add184 = add nsw i32 %165, %164
  store i32 %add184, i32* %val, align 4
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.180
  %166 = load i32, i32* %k, align 4
  %inc186 = add nsw i32 %166, 1
  store i32 %inc186, i32* %k, align 4
  br label %for.cond.177

for.end.187:                                      ; preds = %for.cond.177
  %167 = load i32, i32* %supersample2, align 4
  %168 = load i32, i32* %val, align 4
  %div188 = sdiv i32 %168, %167
  store i32 %div188, i32* %val, align 4
  %169 = load i32, i32* %val, align 4
  %cmp189 = icmp sgt i32 %169, 0
  br i1 %cmp189, label %if.then.191, label %if.end.280

if.then.191:                                      ; preds = %for.end.187
  %170 = load i32, i32* %j, align 4
  %conv192 = sitofp i32 %170 to double
  %171 = load i32, i32* %supersample, align 4
  %conv193 = sitofp i32 %171 to double
  %div194 = fdiv double %conv192, %conv193
  %172 = load i32, i32* %min_x, align 4
  %conv195 = sitofp i32 %172 to double
  %add196 = fadd double %div194, %conv195
  store double %add196, double* %xx, align 8
  %173 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts197 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %173, i32 0, i32 0
  %174 = load i32, i32* %npts197, align 4
  %175 = load double, double* %xx, align 8
  %176 = load double, double* %yy, align 8
  %call198 = call double @calc_spec_contrib(%struct.SpecVec* getelementptr inbounds ([12 x %struct.SpecVec], [12 x %struct.SpecVec]* @vecs, i32 0, i32 0), i32 %174, double %175, double %176)
  store double %call198, double* %contrib, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %177 = load i32, i32* %x, align 4
  %178 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %src_rgn, i8* %arraydecay, i32 %177, i32 %178)
  store i32 0, i32* %b, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.263, %if.then.191
  %179 = load i32, i32* %b, align 4
  %180 = load i32, i32* %bytes, align 4
  %cmp200 = icmp slt i32 %179, %180
  br i1 %cmp200, label %for.body.202, label %for.end.265

for.body.202:                                     ; preds = %for.cond.199
  %181 = load double, double* %contrib, align 8
  %cmp203 = fcmp olt double %181, 0.000000e+00
  br i1 %cmp203, label %if.then.205, label %if.else.220

if.then.205:                                      ; preds = %for.body.202
  %182 = load i32, i32* %b, align 4
  %idxprom206 = sext i32 %182 to i64
  %arrayidx207 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom206
  %183 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %183 to i32
  %184 = load i32, i32* %b, align 4
  %idxprom209 = sext i32 %184 to i64
  %arrayidx210 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom209
  %185 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %185 to i32
  %186 = load i32, i32* %b, align 4
  %idxprom212 = sext i32 %186 to i64
  %arrayidx213 = getelementptr inbounds [4 x i8], [4 x i8]* @back, i32 0, i64 %idxprom212
  %187 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %187 to i32
  %sub215 = sub nsw i32 %conv211, %conv214
  %conv216 = sitofp i32 %sub215 to double
  %188 = load double, double* %contrib, align 8
  %mul217 = fmul double %conv216, %188
  %conv218 = fptosi double %mul217 to i32
  %add219 = add nsw i32 %conv208, %conv218
  store i32 %add219, i32* %pixel, align 4
  br label %if.end.235

if.else.220:                                      ; preds = %for.body.202
  %189 = load i32, i32* %b, align 4
  %idxprom221 = sext i32 %189 to i64
  %arrayidx222 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom221
  %190 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %190 to i32
  %191 = load i32, i32* %b, align 4
  %idxprom224 = sext i32 %191 to i64
  %arrayidx225 = getelementptr inbounds [4 x i8], [4 x i8]* @fore, i32 0, i64 %idxprom224
  %192 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %192 to i32
  %193 = load i32, i32* %b, align 4
  %idxprom227 = sext i32 %193 to i64
  %arrayidx228 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom227
  %194 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %194 to i32
  %sub230 = sub nsw i32 %conv226, %conv229
  %conv231 = sitofp i32 %sub230 to double
  %195 = load double, double* %contrib, align 8
  %mul232 = fmul double %conv231, %195
  %conv233 = fptosi double %mul232 to i32
  %add234 = add nsw i32 %conv223, %conv233
  store i32 %add234, i32* %pixel, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.220, %if.then.205
  %196 = load double, double* %vary.addr, align 8
  %197 = load i32, i32* %pixel, align 4
  %conv236 = sitofp i32 %197 to double
  %add237 = fadd double %conv236, %196
  %conv238 = fptosi double %add237 to i32
  store i32 %conv238, i32* %pixel, align 4
  %198 = load i32, i32* %pixel, align 4
  %cmp239 = icmp sgt i32 %198, 255
  br i1 %cmp239, label %cond.true.241, label %cond.false.242

cond.true.241:                                    ; preds = %if.end.235
  br label %cond.end.249

cond.false.242:                                   ; preds = %if.end.235
  %199 = load i32, i32* %pixel, align 4
  %cmp243 = icmp slt i32 %199, 0
  br i1 %cmp243, label %cond.true.245, label %cond.false.246

cond.true.245:                                    ; preds = %cond.false.242
  br label %cond.end.247

cond.false.246:                                   ; preds = %cond.false.242
  %200 = load i32, i32* %pixel, align 4
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.246, %cond.true.245
  %cond248 = phi i32 [ 0, %cond.true.245 ], [ %200, %cond.false.246 ]
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.end.247, %cond.true.241
  %cond250 = phi i32 [ 255, %cond.true.241 ], [ %cond248, %cond.end.247 ]
  store i32 %cond250, i32* %pixel, align 4
  %201 = load i32, i32* %b, align 4
  %idxprom251 = sext i32 %201 to i64
  %arrayidx252 = getelementptr inbounds [4 x i8], [4 x i8]* @back, i32 0, i64 %idxprom251
  %202 = load i8, i8* %arrayidx252, align 1
  %conv253 = zext i8 %202 to i32
  %shl = shl i32 %conv253, 8
  %203 = load i32, i32* %pixel, align 4
  %204 = load i32, i32* %b, align 4
  %idxprom254 = sext i32 %204 to i64
  %arrayidx255 = getelementptr inbounds [4 x i8], [4 x i8]* @back, i32 0, i64 %idxprom254
  %205 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %205 to i32
  %sub257 = sub nsw i32 %203, %conv256
  %206 = load i32, i32* %val, align 4
  %mul258 = mul nsw i32 %sub257, %206
  %add259 = add nsw i32 %shl, %mul258
  %shr = ashr i32 %add259, 8
  %conv260 = trunc i32 %shr to i8
  %207 = load i32, i32* %b, align 4
  %idxprom261 = sext i32 %207 to i64
  %arrayidx262 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom261
  store i8 %conv260, i8* %arrayidx262, align 1
  br label %for.inc.263

for.inc.263:                                      ; preds = %cond.end.249
  %208 = load i32, i32* %b, align 4
  %inc264 = add nsw i32 %208, 1
  store i32 %inc264, i32* %b, align 4
  br label %for.cond.199

for.end.265:                                      ; preds = %for.cond.199
  %209 = load i8*, i8** %dest.addr, align 8
  %tobool266 = icmp ne i8* %209, null
  br i1 %tobool266, label %if.then.267, label %if.else.277

if.then.267:                                      ; preds = %for.end.265
  %210 = load i8*, i8** %dest.addr, align 8
  %211 = load i32, i32* %y, align 4
  %212 = load i32, i32* %y1.addr, align 4
  %sub268 = sub nsw i32 %211, %212
  %213 = load i32, i32* %x2.addr, align 4
  %214 = load i32, i32* %x1.addr, align 4
  %sub269 = sub nsw i32 %213, %214
  %mul270 = mul nsw i32 %sub268, %sub269
  %215 = load i32, i32* %x, align 4
  %216 = load i32, i32* %x1.addr, align 4
  %sub271 = sub nsw i32 %215, %216
  %add272 = add nsw i32 %mul270, %sub271
  %217 = load i32, i32* %bytes, align 4
  %mul273 = mul nsw i32 %add272, %217
  %idx.ext274 = sext i32 %mul273 to i64
  %add.ptr275 = getelementptr inbounds i8, i8* %210, i64 %idx.ext274
  %218 = bitcast [4 x i8]* %buf to i8*
  %219 = load i32, i32* %bytes, align 4
  %conv276 = sext i32 %219 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr275, i8* %218, i64 %conv276, i32 1, i1 false)
  br label %if.end.279

if.else.277:                                      ; preds = %for.end.265
  %arraydecay278 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %220 = load i32, i32* %x, align 4
  %221 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* %dest_rgn, i8* %arraydecay278, i32 %220, i32 %221)
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.277, %if.then.267
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %for.end.187
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %land.lhs.true.173, %for.body.168
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281
  %222 = load i32, i32* %supersample, align 4
  %223 = load i32, i32* %j, align 4
  %add283 = add nsw i32 %223, %222
  store i32 %add283, i32* %j, align 4
  br label %for.cond.165

for.end.284:                                      ; preds = %for.cond.165
  br label %if.end.285

if.end.285:                                       ; preds = %for.end.284, %land.lhs.true, %if.then.157
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %for.end.153
  br label %for.inc.287

for.inc.287:                                      ; preds = %if.end.286
  %224 = load i32, i32* %i, align 4
  %inc288 = add nsw i32 %224, 1
  store i32 %inc288, i32* %i, align 4
  br label %for.cond.126

for.end.289:                                      ; preds = %for.cond.126
  %225 = load i32*, i32** %vals, align 8
  %226 = bitcast i32* %225 to i8*
  call void @g_free(i8* %226)
  %227 = load i32*, i32** %min_scanlines, align 8
  %228 = bitcast i32* %227 to i8*
  call void @g_free(i8* %228)
  %229 = load i32*, i32** %max_scanlines, align 8
  %230 = bitcast i32* %229 to i8*
  call void @g_free(i8* %230)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_point(double* %dir, double* %pt, double %x1, double %y1, double %x2, double %y2, %struct.Polygon* %poly_new) #0 {
entry:
  %dir.addr = alloca double*, align 8
  %pt.addr = alloca double*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %poly_new.addr = alloca %struct.Polygon*, align 8
  %det = alloca double, align 8
  %m11 = alloca double, align 8
  %m12 = alloca double, align 8
  %side1 = alloca double, align 8
  %side2 = alloca double, align 8
  %t = alloca double, align 8
  %vec = alloca [2 x double], align 16
  store double* %dir, double** %dir.addr, align 8
  store double* %pt, double** %pt.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store %struct.Polygon* %poly_new, %struct.Polygon** %poly_new.addr, align 8
  %0 = load double*, double** %pt.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load double, double* %x1.addr, align 8
  %sub = fsub double %2, %1
  store double %sub, double* %x1.addr, align 8
  %3 = load double*, double** %pt.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %3, i64 0
  %4 = load double, double* %arrayidx1, align 8
  %5 = load double, double* %x2.addr, align 8
  %sub2 = fsub double %5, %4
  store double %sub2, double* %x2.addr, align 8
  %6 = load double*, double** %pt.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 1
  %7 = load double, double* %arrayidx3, align 8
  %8 = load double, double* %y1.addr, align 8
  %sub4 = fsub double %8, %7
  store double %sub4, double* %y1.addr, align 8
  %9 = load double*, double** %pt.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 1
  %10 = load double, double* %arrayidx5, align 8
  %11 = load double, double* %y2.addr, align 8
  %sub6 = fsub double %11, %10
  store double %sub6, double* %y2.addr, align 8
  %12 = load double, double* %x1.addr, align 8
  %13 = load double*, double** %dir.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %13, i64 1
  %14 = load double, double* %arrayidx7, align 8
  %sub8 = fsub double -0.000000e+00, %14
  %mul = fmul double %12, %sub8
  %15 = load double, double* %y1.addr, align 8
  %16 = load double*, double** %dir.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 0
  %17 = load double, double* %arrayidx9, align 8
  %mul10 = fmul double %15, %17
  %add = fadd double %mul, %mul10
  store double %add, double* %side1, align 8
  %18 = load double, double* %x2.addr, align 8
  %19 = load double*, double** %dir.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %19, i64 1
  %20 = load double, double* %arrayidx11, align 8
  %sub12 = fsub double -0.000000e+00, %20
  %mul13 = fmul double %18, %sub12
  %21 = load double, double* %y2.addr, align 8
  %22 = load double*, double** %dir.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %22, i64 0
  %23 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %21, %23
  %add16 = fadd double %mul13, %mul15
  store double %add16, double* %side2, align 8
  %24 = load double, double* %side1, align 8
  %cmp = fcmp olt double %24, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %25 = load double, double* %side2, align 8
  %cmp17 = fcmp olt double %25, 0.000000e+00
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true, %entry
  %26 = load double, double* %side1, align 8
  %cmp18 = fcmp oge double %26, 0.000000e+00
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.26

land.lhs.true.19:                                 ; preds = %if.else
  %27 = load double, double* %side2, align 8
  %cmp20 = fcmp oge double %27, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.else.26

if.then.21:                                       ; preds = %land.lhs.true.19
  %28 = load %struct.Polygon*, %struct.Polygon** %poly_new.addr, align 8
  %29 = load double, double* %x2.addr, align 8
  %30 = load double*, double** %pt.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %30, i64 0
  %31 = load double, double* %arrayidx22, align 8
  %add23 = fadd double %29, %31
  %32 = load double, double* %y2.addr, align 8
  %33 = load double*, double** %pt.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %33, i64 1
  %34 = load double, double* %arrayidx24, align 8
  %add25 = fadd double %32, %34
  call void @polygon_add_point(%struct.Polygon* %28, double %add23, double %add25)
  br label %if.end.78

if.else.26:                                       ; preds = %land.lhs.true.19, %if.else
  %35 = load double, double* %x1.addr, align 8
  %36 = load double, double* %x2.addr, align 8
  %sub27 = fsub double %35, %36
  %arrayidx28 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  store double %sub27, double* %arrayidx28, align 8
  %37 = load double, double* %y1.addr, align 8
  %38 = load double, double* %y2.addr, align 8
  %sub29 = fsub double %37, %38
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  store double %sub29, double* %arrayidx30, align 8
  %39 = load double*, double** %dir.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %39, i64 0
  %40 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  %41 = load double, double* %arrayidx32, align 8
  %mul33 = fmul double %40, %41
  %42 = load double*, double** %dir.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %42, i64 1
  %43 = load double, double* %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  %44 = load double, double* %arrayidx35, align 8
  %mul36 = fmul double %43, %44
  %sub37 = fsub double %mul33, %mul36
  store double %sub37, double* %det, align 8
  %45 = load double, double* %det, align 8
  %cmp38 = fcmp oeq double %45, 0.000000e+00
  br i1 %cmp38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.else.26
  %46 = load %struct.Polygon*, %struct.Polygon** %poly_new.addr, align 8
  %47 = load double, double* %x2.addr, align 8
  %48 = load double*, double** %pt.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %48, i64 0
  %49 = load double, double* %arrayidx40, align 8
  %add41 = fadd double %47, %49
  %50 = load double, double* %y2.addr, align 8
  %51 = load double*, double** %pt.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %51, i64 1
  %52 = load double, double* %arrayidx42, align 8
  %add43 = fadd double %50, %52
  call void @polygon_add_point(%struct.Polygon* %46, double %add41, double %add43)
  br label %if.end.78

if.end:                                           ; preds = %if.else.26
  %arrayidx44 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  %53 = load double, double* %arrayidx44, align 8
  %54 = load double, double* %det, align 8
  %div = fdiv double %53, %54
  store double %div, double* %m11, align 8
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  %55 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double -0.000000e+00, %55
  %56 = load double, double* %det, align 8
  %div47 = fdiv double %sub46, %56
  store double %div47, double* %m12, align 8
  %57 = load double, double* %m11, align 8
  %58 = load double, double* %x1.addr, align 8
  %mul48 = fmul double %57, %58
  %59 = load double, double* %m12, align 8
  %60 = load double, double* %y1.addr, align 8
  %mul49 = fmul double %59, %60
  %add50 = fadd double %mul48, %mul49
  store double %add50, double* %t, align 8
  %61 = load double, double* %side1, align 8
  %cmp51 = fcmp olt double %61, 0.000000e+00
  br i1 %cmp51, label %land.lhs.true.52, label %if.else.67

land.lhs.true.52:                                 ; preds = %if.end
  %62 = load double, double* %side2, align 8
  %cmp53 = fcmp ogt double %62, 0.000000e+00
  br i1 %cmp53, label %if.then.54, label %if.else.67

if.then.54:                                       ; preds = %land.lhs.true.52
  %63 = load %struct.Polygon*, %struct.Polygon** %poly_new.addr, align 8
  %64 = load double*, double** %dir.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %64, i64 0
  %65 = load double, double* %arrayidx55, align 8
  %66 = load double, double* %t, align 8
  %mul56 = fmul double %65, %66
  %67 = load double*, double** %pt.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %67, i64 0
  %68 = load double, double* %arrayidx57, align 8
  %add58 = fadd double %mul56, %68
  %69 = load double*, double** %dir.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %69, i64 1
  %70 = load double, double* %arrayidx59, align 8
  %71 = load double, double* %t, align 8
  %mul60 = fmul double %70, %71
  %72 = load double*, double** %pt.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %72, i64 1
  %73 = load double, double* %arrayidx61, align 8
  %add62 = fadd double %mul60, %73
  call void @polygon_add_point(%struct.Polygon* %63, double %add58, double %add62)
  %74 = load %struct.Polygon*, %struct.Polygon** %poly_new.addr, align 8
  %75 = load double, double* %x2.addr, align 8
  %76 = load double*, double** %pt.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %76, i64 0
  %77 = load double, double* %arrayidx63, align 8
  %add64 = fadd double %75, %77
  %78 = load double, double* %y2.addr, align 8
  %79 = load double*, double** %pt.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %79, i64 1
  %80 = load double, double* %arrayidx65, align 8
  %add66 = fadd double %78, %80
  call void @polygon_add_point(%struct.Polygon* %74, double %add64, double %add66)
  br label %if.end.76

if.else.67:                                       ; preds = %land.lhs.true.52, %if.end
  %81 = load %struct.Polygon*, %struct.Polygon** %poly_new.addr, align 8
  %82 = load double*, double** %dir.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %82, i64 0
  %83 = load double, double* %arrayidx68, align 8
  %84 = load double, double* %t, align 8
  %mul69 = fmul double %83, %84
  %85 = load double*, double** %pt.addr, align 8
  %arrayidx70 = getelementptr inbounds double, double* %85, i64 0
  %86 = load double, double* %arrayidx70, align 8
  %add71 = fadd double %mul69, %86
  %87 = load double*, double** %dir.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %87, i64 1
  %88 = load double, double* %arrayidx72, align 8
  %89 = load double, double* %t, align 8
  %mul73 = fmul double %88, %89
  %90 = load double*, double** %pt.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %90, i64 1
  %91 = load double, double* %arrayidx74, align 8
  %add75 = fadd double %mul73, %91
  call void @polygon_add_point(%struct.Polygon* %81, double %add71, double %add75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.67, %if.then.54
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %if.then, %if.then.21, %if.then.39, %if.end.77
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @polygon_scale(%struct.Polygon* %poly, double %poly_scale) #0 {
entry:
  %poly.addr = alloca %struct.Polygon*, align 8
  %poly_scale.addr = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.Polygon* %poly, %struct.Polygon** %poly.addr, align 8
  store double %poly_scale, double* %poly_scale.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %npts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %1, i32 0, i32 0
  %2 = load i32, i32* %npts, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %poly_scale.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts = getelementptr inbounds %struct.Polygon, %struct.Polygon* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %mul = fmul double %6, %3
  store double %mul, double* %x, align 8
  %7 = load double, double* %poly_scale.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %8 to i64
  %9 = load %struct.Polygon*, %struct.Polygon** %poly.addr, align 8
  %pts2 = getelementptr inbounds %struct.Polygon, %struct.Polygon* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [12 x %struct.Vertex], [12 x %struct.Vertex]* %pts2, i32 0, i64 %idxprom1
  %y = getelementptr inbounds %struct.Vertex, %struct.Vertex* %arrayidx3, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %mul4 = fmul double %10, %7
  store double %mul4, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_spec_vec(%struct.SpecVec* %vec, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %vec.addr = alloca %struct.SpecVec*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %r = alloca double, align 8
  store %struct.SpecVec* %vec, %struct.SpecVec** %vec.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x1.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %1, i32 0, i32 0
  store double %conv, double* %base_x, align 8
  %2 = load i32, i32* %y1.addr, align 4
  %conv1 = sitofp i32 %2 to double
  %3 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %3, i32 0, i32 1
  store double %conv1, double* %base_y, align 8
  %4 = load i32, i32* %x2.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %5 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x2 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %5, i32 0, i32 2
  store double %conv2, double* %base_x2, align 8
  %6 = load i32, i32* %y2.addr, align 4
  %conv3 = sitofp i32 %6 to double
  %7 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y2 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %7, i32 0, i32 3
  store double %conv3, double* %base_y2, align 8
  %8 = load i32, i32* %x2.addr, align 4
  %9 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32, i32* %x2.addr, align 4
  %11 = load i32, i32* %x1.addr, align 4
  %sub4 = sub nsw i32 %10, %11
  %mul = mul nsw i32 %sub, %sub4
  %12 = load i32, i32* %y2.addr, align 4
  %13 = load i32, i32* %y1.addr, align 4
  %sub5 = sub nsw i32 %12, %13
  %14 = load i32, i32* %y2.addr, align 4
  %15 = load i32, i32* %y1.addr, align 4
  %sub6 = sub nsw i32 %14, %15
  %mul7 = mul nsw i32 %sub5, %sub6
  %add = add nsw i32 %mul, %mul7
  %conv8 = sitofp i32 %add to double
  %call = call double @sqrt(double %conv8) #4
  store double %call, double* %r, align 8
  %16 = load double, double* %r, align 8
  %cmp = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %y2.addr, align 4
  %18 = load i32, i32* %y1.addr, align 4
  %sub10 = sub nsw i32 %17, %18
  %sub11 = sub nsw i32 0, %sub10
  %conv12 = sitofp i32 %sub11 to double
  %19 = load double, double* %r, align 8
  %div = fdiv double %conv12, %19
  %20 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %norm_x = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %20, i32 0, i32 4
  store double %div, double* %norm_x, align 8
  %21 = load i32, i32* %x2.addr, align 4
  %22 = load i32, i32* %x1.addr, align 4
  %sub13 = sub nsw i32 %21, %22
  %conv14 = sitofp i32 %sub13 to double
  %23 = load double, double* %r, align 8
  %div15 = fdiv double %conv14, %23
  %24 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %norm_y = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %24, i32 0, i32 5
  store double %div15, double* %norm_y, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %norm_x16 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %25, i32 0, i32 4
  store double 0.000000e+00, double* %norm_x16, align 8
  %26 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %norm_y17 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %26, i32 0, i32 5
  store double 0.000000e+00, double* %norm_y17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %norm_x18 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %27, i32 0, i32 4
  %28 = load double, double* %norm_x18, align 8
  %29 = load double, double* @light_x, align 8
  %mul19 = fmul double %28, %29
  %30 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %norm_y20 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %30, i32 0, i32 5
  %31 = load double, double* %norm_y20, align 8
  %32 = load double, double* @light_y, align 8
  %mul21 = fmul double %31, %32
  %add22 = fadd double %mul19, %mul21
  %33 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %light = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %33, i32 0, i32 6
  store double %add22, double* %light, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @calc_spec_contrib(%struct.SpecVec* %vecs, i32 %n, double %x, double %y) #0 {
entry:
  %vecs.addr = alloca %struct.SpecVec*, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %i = alloca i32, align 4
  %contrib = alloca double, align 8
  %dist = alloca double, align 8
  store %struct.SpecVec* %vecs, %struct.SpecVec** %vecs.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double 0.000000e+00, double* %contrib, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.SpecVec*, %struct.SpecVec** %vecs.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %2, i64 %idx.ext
  %4 = load double, double* %x.addr, align 8
  %conv = fptrunc double %4 to float
  %5 = load double, double* %y.addr, align 8
  %conv1 = fptrunc double %5 to float
  %call = call float @distance(%struct.SpecVec* %add.ptr, float %conv, float %conv1)
  %conv2 = fpext float %call to double
  store double %conv2, double* %dist, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 10), align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double, double* %dist, align 8
  %call5 = call double @g_random_double()
  %mul = fmul double %7, %call5
  %8 = load double, double* %dist, align 8
  %sub = fsub double %8, %mul
  store double %sub, double* %dist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load double, double* %dist, align 8
  %cmp6 = fcmp olt double %9, 1.000000e+00
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.SpecVec*, %struct.SpecVec** %vecs.addr, align 8
  %arrayidx = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %11, i64 %idxprom
  %light = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %arrayidx, i32 0, i32 6
  %12 = load double, double* %light, align 8
  %13 = load double, double* %contrib, align 8
  %add = fadd double %13, %12
  store double %add, double* %contrib, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %14 = load double, double* %dist, align 8
  %15 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 1), align 8
  %cmp9 = fcmp ole double %14, %15
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.else
  %16 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.SpecVec*, %struct.SpecVec** %vecs.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %17, i64 %idxprom12
  %light14 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %arrayidx13, i32 0, i32 6
  %18 = load double, double* %light14, align 8
  %19 = load double, double* %dist, align 8
  %20 = load double, double* getelementptr inbounds (%struct.MosaicVals, %struct.MosaicVals* @mvals, i32 0, i32 1), align 8
  %div = fdiv double %19, %20
  %sub15 = fsub double 1.000000e+00, %div
  %mul16 = fmul double %18, %sub15
  %21 = load double, double* %contrib, align 8
  %add17 = fadd double %21, %mul16
  store double %add17, double* %contrib, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load double, double* %contrib, align 8
  %div20 = fdiv double %23, 4.000000e+00
  ret double %div20
}

declare void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float @distance(%struct.SpecVec* %vec, float %x, float %y) #0 {
entry:
  %retval = alloca float, align 4
  %vec.addr = alloca %struct.SpecVec*, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %l2 = alloca float, align 4
  %t = alloca float, align 4
  %pv_x = alloca float, align 4
  %pv_y = alloca float, align 4
  %pw_x = alloca float, align 4
  %pw_y = alloca float, align 4
  %wv_x = alloca float, align 4
  %wv_y = alloca float, align 4
  %proj_x = alloca float, align 4
  %proj_y = alloca float, align 4
  store %struct.SpecVec* %vec, %struct.SpecVec** %vec.addr, align 8
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %0 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %0, i32 0, i32 0
  %1 = load double, double* %base_x, align 8
  %2 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x2 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %2, i32 0, i32 2
  %3 = load double, double* %base_x2, align 8
  %sub = fsub double %1, %3
  %4 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x1 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %4, i32 0, i32 0
  %5 = load double, double* %base_x1, align 8
  %6 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x22 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %6, i32 0, i32 2
  %7 = load double, double* %base_x22, align 8
  %sub3 = fsub double %5, %7
  %mul = fmul double %sub, %sub3
  %8 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %8, i32 0, i32 1
  %9 = load double, double* %base_y, align 8
  %10 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y2 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %10, i32 0, i32 3
  %11 = load double, double* %base_y2, align 8
  %sub4 = fsub double %9, %11
  %12 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y5 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %12, i32 0, i32 1
  %13 = load double, double* %base_y5, align 8
  %14 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y26 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %14, i32 0, i32 3
  %15 = load double, double* %base_y26, align 8
  %sub7 = fsub double %13, %15
  %mul8 = fmul double %sub4, %sub7
  %add = fadd double %mul, %mul8
  %conv = fptrunc double %add to float
  store float %conv, float* %l2, align 4
  %16 = load float, float* %l2, align 4
  %conv9 = fpext float %16 to double
  %cmp = fcmp olt double %conv9, 1.000000e-05
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x11 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %17, i32 0, i32 0
  %18 = load double, double* %base_x11, align 8
  %19 = load float, float* %x.addr, align 4
  %conv12 = fpext float %19 to double
  %sub13 = fsub double %18, %conv12
  %20 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x14 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %20, i32 0, i32 0
  %21 = load double, double* %base_x14, align 8
  %22 = load float, float* %x.addr, align 4
  %conv15 = fpext float %22 to double
  %sub16 = fsub double %21, %conv15
  %mul17 = fmul double %sub13, %sub16
  %23 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y18 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %23, i32 0, i32 1
  %24 = load double, double* %base_y18, align 8
  %25 = load float, float* %y.addr, align 4
  %conv19 = fpext float %25 to double
  %sub20 = fsub double %24, %conv19
  %26 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y21 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %26, i32 0, i32 1
  %27 = load double, double* %base_y21, align 8
  %28 = load float, float* %y.addr, align 4
  %conv22 = fpext float %28 to double
  %sub23 = fsub double %27, %conv22
  %mul24 = fmul double %sub20, %sub23
  %add25 = fadd double %mul17, %mul24
  %call = call double @sqrt(double %add25) #4
  %conv26 = fptrunc double %call to float
  store float %conv26, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %29 = load float, float* %x.addr, align 4
  %conv27 = fpext float %29 to double
  %30 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x28 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %30, i32 0, i32 0
  %31 = load double, double* %base_x28, align 8
  %sub29 = fsub double %conv27, %31
  %conv30 = fptrunc double %sub29 to float
  store float %conv30, float* %pv_x, align 4
  %32 = load float, float* %y.addr, align 4
  %conv31 = fpext float %32 to double
  %33 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y32 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %33, i32 0, i32 1
  %34 = load double, double* %base_y32, align 8
  %sub33 = fsub double %conv31, %34
  %conv34 = fptrunc double %sub33 to float
  store float %conv34, float* %pv_y, align 4
  %35 = load float, float* %x.addr, align 4
  %conv35 = fpext float %35 to double
  %36 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x236 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %36, i32 0, i32 2
  %37 = load double, double* %base_x236, align 8
  %sub37 = fsub double %conv35, %37
  %conv38 = fptrunc double %sub37 to float
  store float %conv38, float* %pw_x, align 4
  %38 = load float, float* %y.addr, align 4
  %conv39 = fpext float %38 to double
  %39 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y240 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %39, i32 0, i32 3
  %40 = load double, double* %base_y240, align 8
  %sub41 = fsub double %conv39, %40
  %conv42 = fptrunc double %sub41 to float
  store float %conv42, float* %pw_y, align 4
  %41 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x243 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %41, i32 0, i32 2
  %42 = load double, double* %base_x243, align 8
  %43 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x44 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %43, i32 0, i32 0
  %44 = load double, double* %base_x44, align 8
  %sub45 = fsub double %42, %44
  %conv46 = fptrunc double %sub45 to float
  store float %conv46, float* %wv_x, align 4
  %45 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y247 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %45, i32 0, i32 3
  %46 = load double, double* %base_y247, align 8
  %47 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y48 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %47, i32 0, i32 1
  %48 = load double, double* %base_y48, align 8
  %sub49 = fsub double %46, %48
  %conv50 = fptrunc double %sub49 to float
  store float %conv50, float* %wv_y, align 4
  %49 = load float, float* %pv_x, align 4
  %50 = load float, float* %wv_x, align 4
  %mul51 = fmul float %49, %50
  %51 = load float, float* %pv_y, align 4
  %52 = load float, float* %wv_y, align 4
  %mul52 = fmul float %51, %52
  %add53 = fadd float %mul51, %mul52
  %53 = load float, float* %l2, align 4
  %div = fdiv float %add53, %53
  store float %div, float* %t, align 4
  %54 = load float, float* %t, align 4
  %conv54 = fpext float %54 to double
  %cmp55 = fcmp olt double %conv54, 0.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end
  %55 = load float, float* %pv_x, align 4
  %56 = load float, float* %pv_x, align 4
  %mul58 = fmul float %55, %56
  %57 = load float, float* %pv_y, align 4
  %58 = load float, float* %pv_y, align 4
  %mul59 = fmul float %57, %58
  %add60 = fadd float %mul58, %mul59
  %conv61 = fpext float %add60 to double
  %call62 = call double @sqrt(double %conv61) #4
  %conv63 = fptrunc double %call62 to float
  store float %conv63, float* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %59 = load float, float* %t, align 4
  %conv64 = fpext float %59 to double
  %cmp65 = fcmp ogt double %conv64, 1.000000e+00
  br i1 %cmp65, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %if.else
  %60 = load float, float* %pw_x, align 4
  %61 = load float, float* %pw_x, align 4
  %mul68 = fmul float %60, %61
  %62 = load float, float* %pw_y, align 4
  %63 = load float, float* %pw_y, align 4
  %mul69 = fmul float %62, %63
  %add70 = fadd float %mul68, %mul69
  %conv71 = fpext float %add70 to double
  %call72 = call double @sqrt(double %conv71) #4
  %conv73 = fptrunc double %call72 to float
  store float %conv73, float* %retval
  br label %return

if.end.74:                                        ; preds = %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  %64 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_x76 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %64, i32 0, i32 0
  %65 = load double, double* %base_x76, align 8
  %66 = load float, float* %t, align 4
  %67 = load float, float* %wv_x, align 4
  %mul77 = fmul float %66, %67
  %conv78 = fpext float %mul77 to double
  %add79 = fadd double %65, %conv78
  %conv80 = fptrunc double %add79 to float
  store float %conv80, float* %proj_x, align 4
  %68 = load %struct.SpecVec*, %struct.SpecVec** %vec.addr, align 8
  %base_y81 = getelementptr inbounds %struct.SpecVec, %struct.SpecVec* %68, i32 0, i32 1
  %69 = load double, double* %base_y81, align 8
  %70 = load float, float* %t, align 4
  %71 = load float, float* %wv_y, align 4
  %mul82 = fmul float %70, %71
  %conv83 = fpext float %mul82 to double
  %add84 = fadd double %69, %conv83
  %conv85 = fptrunc double %add84 to float
  store float %conv85, float* %proj_y, align 4
  %72 = load float, float* %x.addr, align 4
  %73 = load float, float* %proj_x, align 4
  %sub86 = fsub float %72, %73
  %74 = load float, float* %x.addr, align 4
  %75 = load float, float* %proj_x, align 4
  %sub87 = fsub float %74, %75
  %mul88 = fmul float %sub86, %sub87
  %76 = load float, float* %y.addr, align 4
  %77 = load float, float* %proj_y, align 4
  %sub89 = fsub float %76, %77
  %78 = load float, float* %y.addr, align 4
  %79 = load float, float* %proj_y, align 4
  %sub90 = fsub float %78, %79
  %mul91 = fmul float %sub89, %sub90
  %add92 = fadd float %mul88, %mul91
  %conv93 = fpext float %add92 to double
  %call94 = call double @sqrt(double %conv93) #4
  %conv95 = fptrunc double %call94 to float
  store float %conv95, float* %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.67, %if.then.57, %if.then
  %80 = load float, float* %retval
  ret float %80
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
