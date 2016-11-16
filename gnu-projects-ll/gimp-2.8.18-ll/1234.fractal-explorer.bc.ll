; ModuleID = './plug-ins/fractal-explorer/fractal-explorer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.explorer_interface_t = type { %struct._GtkWidget*, i8*, i32 }
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
%struct.explorer_vals_t = type { i32, double, double, double, double, double, double, double, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DFigObj = type { i8*, i8*, i8*, %struct.explorer_vals_t, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.gucharRGB = type { i8, i8, i8 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPathEditor = type { %struct._GtkBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkTreeSelection*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@xmin = global double -2.000000e+00, align 8
@xmax = global double 1.000000e+00, align 8
@ymin = global double -1.500000e+00, align 8
@ymax = global double 1.500000e+00, align 8
@fractalexplorer_path = global i8* null, align 8
@wint = global %struct.explorer_interface_t zeroinitializer, align 8
@wvals = global %struct.explorer_vals_t { i32 0, double -2.000000e+00, double 2.000000e+00, double -1.500000e+00, double 1.500000e+00, double 5.000000e+01, double -7.500000e-01, double -2.000000e-01, i32 0, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 256, i32 0, i32 0 }, align 8
@current_obj = global %struct.DFigObj* null, align 8
@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@xdiff = global double 0.000000e+00, align 8
@ydiff = global double 0.000000e+00, align 8
@colormap = global [8192 x %struct.gucharRGB] zeroinitializer, align 16
@valuemap = global [8192 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"row-activated\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Select folder and rescan collection\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Apply currently selected fractal\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Delete currently selected fractal\00", align 1
@xbild = global double 0.000000e+00, align 8
@ybild = global double 0.000000e+00, align 8
@sel_x = global i32 0, align 4
@sel_y = global i32 0, align 4
@preview_width = global i32 0, align 4
@preview_height = global i32 0, align 4
@gg = global double* null, align 8
@line_no = global i32 0, align 4
@filename = global i8* null, align 8
@drawable = global %struct._GimpDrawable* null, align 8
@query.args = internal constant [22 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.32, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i32 0, i32 0) }], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"fractaltype\00", align 1
@.str.16 = private unnamed_addr constant [118 x i8] c"0: Mandelbrot; 1: Julia; 2: Barnsley 1; 3: Barnsley 2; 4: Barnsley 3; 5: Spider; 6: ManOWar; 7: Lambda; 8: Sierpinski\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"xmin\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"xmin fractal image delimiter\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"xmax\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"xmax fractal image delimiter\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"ymin\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"ymin fractal image delimiter\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"ymax\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"ymax fractal image delimiter\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Iteration value\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"cx value ( only Julia)\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"cy value ( only Julia)\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"colormode\00", align 1
@.str.32 = private unnamed_addr constant [96 x i8] c"0: Apply colormap as specified by the parameters below; 1: Apply active gradient to final image\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"redstretch\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Red stretching factor\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"greenstretch\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Green stretching factor\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"bluestretch\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"Blue stretching factor\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"redmode\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"Red application mode (0:SIN;1:COS;2:NONE)\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"greenmode\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"Green application mode (0:SIN;1:COS;2:NONE)\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"bluemode\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"Blue application mode (0:SIN;1:COS;2:NONE)\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"redinvert\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Red inversion mode (1: enabled; 0: disabled)\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"greeninvert\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"Green inversion mode (1: enabled; 0: disabled)\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"blueinvert\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"ncolors\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"Number of Colors for mapping (2<=ncolors<=8192)\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"plug-in-fractalexplorer\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"Render fractal art\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"No help yet.\00", align 1
@.str.55 = private unnamed_addr constant [68 x i8] c"Daniel Cotting (cotting@multimania.com, www.multimania.com/cotting)\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"December, 1998\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"_Fractal Explorer...\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"<Image>/Filters/Render\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"plug_in_fractalexplorer\00", align 1
@cx = internal global float -7.500000e-01, align 4
@cy = internal global float 0xBFC99999A0000000, align 4
@.str.63 = private unnamed_addr constant [18 x i8] c"Rendering fractal\00", align 1
@fractalexplorer_list = internal global %struct._GList* null, align 8
@.str.64 = private unnamed_addr constant [17 x i8] c"My first fractal\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"fractal-explorer.c\00", align 1
@__func__.fractalexplorer_free = private unnamed_addr constant [21 x i8] c"fractalexplorer_free\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"fractalexplorer != NULL\00", align 1
@__func__.fractalexplorer_load = private unnamed_addr constant [21 x i8] c"fractalexplorer_load\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.70 = private unnamed_addr constant [68 x i8] c"Fractal Explorer Plug-In Version 2 - (c) 1997 <cotting@mygale.org>\0A\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"File '%s' is not a FractalExplorer file\00", align 1
@.str.72 = private unnamed_addr constant [55 x i8] c"File '%s' is corrupt.\0ALine %d Option section incorrect\00", align 1
@delete_dialog = internal global %struct._GtkWidget* null, align 8
@.str.73 = private unnamed_addr constant [66 x i8] c"Are you sure you want to delete \22%s\22 from the list and from disk?\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"Delete Fractal\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"gtk-dialog-question\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@__func__.fractalexplorer_free_everything = private unnamed_addr constant [32 x i8] c"fractalexplorer_free_everything\00", align 1
@fractalexplorer_rescan_list.dlg = internal global %struct._GtkWidget* null, align 8
@.str.78 = private unnamed_addr constant [20 x i8] c"Rescan for Fractals\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"gimp-fractal-explorer\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"Add FractalExplorer Path\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 1, i32 22, i32 0, %struct._GimpParamDef* getelementptr inbounds ([22 x %struct._GimpParamDef], [22 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0))
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
  %pwidth = alloca i32, align 4
  %pheight = alloca i32, align 4
  %status = alloca i32, align 4
  %sel_width = alloca i32, align 4
  %sel_height = alloca i32, align 4
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
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** @drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_mask_intersect(i32 %8, i32* @sel_x, i32* @sel_y, i32* %sel_width, i32* %sel_height)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %9 = load i32, i32* %sel_width, align 4
  %10 = load i32, i32* %sel_height, align 4
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %11 = load i32, i32* %sel_width, align 4
  %cmp9 = icmp slt i32 %11, 256
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %12 = load i32, i32* %sel_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 256, %cond.false ]
  store i32 %cond, i32* %pwidth, align 4
  %13 = load i32, i32* %sel_height, align 4
  %14 = load i32, i32* %pwidth, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %sel_width, align 4
  %div = sdiv i32 %mul, %15
  store i32 %div, i32* %pheight, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %sel_height, align 4
  %cmp10 = icmp slt i32 %16, 256
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.else
  %17 = load i32, i32* %sel_height, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.else
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %17, %cond.true.11 ], [ 256, %cond.false.12 ]
  store i32 %cond14, i32* %pheight, align 4
  %18 = load i32, i32* %sel_width, align 4
  %19 = load i32, i32* %pheight, align 4
  %mul15 = mul nsw i32 %18, %19
  %20 = load i32, i32* %sel_height, align 4
  %div16 = sdiv i32 %mul15, %20
  store i32 %div16, i32* %pwidth, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %cond.end.13, %cond.end
  %21 = load i32, i32* %pwidth, align 4
  %cmp18 = icmp sgt i32 %21, 2
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.end.17
  %22 = load i32, i32* %pwidth, align 4
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.end.17
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i32 [ %22, %cond.true.19 ], [ 2, %cond.false.20 ]
  store i32 %cond22, i32* @preview_width, align 4
  %23 = load i32, i32* %pheight, align 4
  %cmp23 = icmp sgt i32 %23, 2
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.21
  %24 = load i32, i32* %pheight, align 4
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end.21
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ %24, %cond.true.24 ], [ 2, %cond.false.25 ]
  store i32 %cond27, i32* @preview_height, align 4
  %25 = load i32, i32* %run_mode, align 4
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.118
  ]

sw.bb:                                            ; preds = %cond.end.26
  %call28 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i8* bitcast (%struct.explorer_vals_t* @wvals to i8*))
  %call29 = call i32 @explorer_dialog()
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %sw.bb
  br label %return

if.end.32:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.33:                                         ; preds = %cond.end.26
  %26 = load i32, i32* %nparams.addr, align 4
  %cmp34 = icmp ne i32 %26, 22
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %sw.bb.33
  store i32 1, i32* %status, align 4
  br label %if.end.117

if.else.36:                                       ; preds = %sw.bb.33
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 3
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data38 to i8*
  %28 = load i8, i8* %d_int8, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 0), align 4
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 4
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data40 to double*
  %30 = load double, double* %d_float, align 8
  store double %30, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 5
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_float43 = bitcast %union._GimpParamData* %data42 to double*
  %32 = load double, double* %d_float43, align 8
  store double %32, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 6
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_float46 = bitcast %union._GimpParamData* %data45 to double*
  %34 = load double, double* %d_float46, align 8
  store double %34, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 7
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_float49 = bitcast %union._GimpParamData* %data48 to double*
  %36 = load double, double* %d_float49, align 8
  store double %36, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 8
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_float52 = bitcast %union._GimpParamData* %data51 to double*
  %38 = load double, double* %d_float52, align 8
  store double %38, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 5), align 8
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 9
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_float55 = bitcast %union._GimpParamData* %data54 to double*
  %40 = load double, double* %d_float55, align 8
  store double %40, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6), align 8
  %41 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 10
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_float58 = bitcast %union._GimpParamData* %data57 to double*
  %42 = load double, double* %d_float58, align 8
  store double %42, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7), align 8
  %43 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 11
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_int861 = bitcast %union._GimpParamData* %data60 to i8*
  %44 = load i8, i8* %d_int861, align 1
  %conv62 = zext i8 %44 to i32
  store i32 %conv62, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 8), align 4
  %45 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %45, i64 12
  %data64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 1
  %d_float65 = bitcast %union._GimpParamData* %data64 to double*
  %46 = load double, double* %d_float65, align 8
  store double %46, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 9), align 8
  %47 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %47, i64 13
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_float68 = bitcast %union._GimpParamData* %data67 to double*
  %48 = load double, double* %d_float68, align 8
  store double %48, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 10), align 8
  %49 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %49, i64 14
  %data70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx69, i32 0, i32 1
  %d_float71 = bitcast %union._GimpParamData* %data70 to double*
  %50 = load double, double* %d_float71, align 8
  store double %50, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 11), align 8
  %51 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %51, i64 15
  %data73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx72, i32 0, i32 1
  %d_int874 = bitcast %union._GimpParamData* %data73 to i8*
  %52 = load i8, i8* %d_int874, align 1
  %conv75 = zext i8 %52 to i32
  store i32 %conv75, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 12), align 4
  %53 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %53, i64 16
  %data77 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx76, i32 0, i32 1
  %d_int878 = bitcast %union._GimpParamData* %data77 to i8*
  %54 = load i8, i8* %d_int878, align 1
  %conv79 = zext i8 %54 to i32
  store i32 %conv79, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 13), align 4
  %55 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %55, i64 17
  %data81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx80, i32 0, i32 1
  %d_int882 = bitcast %union._GimpParamData* %data81 to i8*
  %56 = load i8, i8* %d_int882, align 1
  %conv83 = zext i8 %56 to i32
  store i32 %conv83, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 14), align 4
  %57 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %57, i64 18
  %data85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx84, i32 0, i32 1
  %d_int886 = bitcast %union._GimpParamData* %data85 to i8*
  %58 = load i8, i8* %d_int886, align 1
  %conv87 = zext i8 %58 to i32
  store i32 %conv87, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 15), align 4
  %59 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %59, i64 19
  %data89 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx88, i32 0, i32 1
  %d_int890 = bitcast %union._GimpParamData* %data89 to i8*
  %60 = load i8, i8* %d_int890, align 1
  %conv91 = zext i8 %60 to i32
  store i32 %conv91, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 16), align 4
  %61 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %61, i64 20
  %data93 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx92, i32 0, i32 1
  %d_int894 = bitcast %union._GimpParamData* %data93 to i8*
  %62 = load i8, i8* %d_int894, align 1
  %conv95 = zext i8 %62 to i32
  store i32 %conv95, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 17), align 4
  %63 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %63, i64 21
  %data97 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx96, i32 0, i32 1
  %d_int3298 = bitcast %union._GimpParamData* %data97 to i32*
  %64 = load i32, i32* %d_int3298, align 4
  %cmp99 = icmp sgt i32 %64, 8192
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %if.else.36
  br label %cond.end.115

cond.false.102:                                   ; preds = %if.else.36
  %65 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %65, i64 21
  %data104 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx103, i32 0, i32 1
  %d_int32105 = bitcast %union._GimpParamData* %data104 to i32*
  %66 = load i32, i32* %d_int32105, align 4
  %cmp106 = icmp slt i32 %66, 2
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %cond.false.102
  br label %cond.end.113

cond.false.109:                                   ; preds = %cond.false.102
  %67 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %67, i64 21
  %data111 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx110, i32 0, i32 1
  %d_int32112 = bitcast %union._GimpParamData* %data111 to i32*
  %68 = load i32, i32* %d_int32112, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.109, %cond.true.108
  %cond114 = phi i32 [ 2, %cond.true.108 ], [ %68, %cond.false.109 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.101
  %cond116 = phi i32 [ 8192, %cond.true.101 ], [ %cond114, %cond.end.113 ]
  store i32 %cond116, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  br label %if.end.117

if.end.117:                                       ; preds = %cond.end.115, %if.then.35
  call void @make_color_map()
  br label %sw.epilog

sw.bb.118:                                        ; preds = %cond.end.26
  %call119 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i8* bitcast (%struct.explorer_vals_t* @wvals to i8*))
  call void @make_color_map()
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.118, %if.end.117, %if.end.32
  %69 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 1), align 8
  store double %69, double* @xmin, align 8
  %70 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 2), align 8
  store double %70, double* @xmax, align 8
  %71 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 3), align 8
  store double %71, double* @ymin, align 8
  %72 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 4), align 8
  store double %72, double* @ymax, align 8
  %73 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6), align 8
  %conv120 = fptrunc double %73 to float
  store float %conv120, float* @cx, align 4
  %74 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7), align 8
  %conv121 = fptrunc double %74 to float
  store float %conv121, float* @cy, align 4
  %75 = load i32, i32* %status, align 4
  %cmp122 = icmp eq i32 %75, 3
  br i1 %cmp122, label %if.then.124, label %if.end.147

if.then.124:                                      ; preds = %sw.epilog
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id125 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %76, i32 0, i32 0
  %77 = load i32, i32* %drawable_id125, align 4
  %call126 = call i32 @gimp_drawable_is_indexed(i32 %77)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.else.145, label %if.then.128

if.then.128:                                      ; preds = %if.then.124
  %call129 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0)) #4
  %call130 = call i32 @gimp_progress_init(i8* %call129)
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %78, i32 0, i32 1
  %79 = load i32, i32* %width, align 4
  %call131 = call i32 @gimp_tile_width() #7
  %div132 = udiv i32 %79, %call131
  %add = add i32 %div132, 1
  %mul133 = mul i32 2, %add
  %conv134 = zext i32 %mul133 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv134)
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @explorer(%struct._GimpDrawable* %80)
  %81 = load i32, i32* %run_mode, align 4
  %cmp135 = icmp ne i32 %81, 1
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.then.128
  %call138 = call i32 @gimp_displays_flush()
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.then.128
  %82 = load i32, i32* %run_mode, align 4
  %cmp140 = icmp eq i32 %82, 0
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.end.139
  %call143 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i32 136)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.end.139
  br label %if.end.146

if.else.145:                                      ; preds = %if.then.124
  store i32 0, i32* %status, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.end.144
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %sw.epilog
  %83 = load i32, i32* %status, align 4
  store i32 %83, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %84)
  br label %return

return:                                           ; preds = %if.end.147, %if.then.31, %if.then
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

; Function Attrs: nounwind uwtable
define void @explorer_render_row(i8* %src_row, i8* %dest_row, i32 %row, i32 %row_width, i32 %bpp) #0 {
entry:
  %src_row.addr = alloca i8*, align 8
  %dest_row.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %row_width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %col = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %oldx = alloca double, align 8
  %oldy = alloca double, align 8
  %tempsqrx = alloca double, align 8
  %tempsqry = alloca double, align 8
  %tmpx = alloca double, align 8
  %tmpy = alloca double, align 8
  %foldxinitx = alloca double, align 8
  %foldxinity = alloca double, align 8
  %foldyinitx = alloca double, align 8
  %foldyinity = alloca double, align 8
  %xx = alloca double, align 8
  %adjust = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %counter = alloca i32, align 4
  %color = alloca i32, align 4
  %iteration = alloca i32, align 4
  %useloglog = alloca i32, align 4
  %log2 = alloca double, align 8
  %modulus_square = alloca double, align 8
  store i8* %src_row, i8** %src_row.addr, align 8
  store i8* %dest_row, i8** %dest_row.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %row_width, i32* %row_width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store double 0.000000e+00, double* %tmpx, align 8
  store double 0.000000e+00, double* %tmpy, align 8
  store double 0.000000e+00, double* %xx, align 8
  %0 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 6), align 8
  store double %0, double* %cx, align 8
  %1 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 7), align 8
  store double %1, double* %cy, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 21), align 4
  store i32 %2, i32* %useloglog, align 4
  %3 = load double, double* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 5), align 8
  %conv = fptosi double %3 to i32
  store i32 %conv, i32* %iteration, align 4
  %call = call double @log(double 2.000000e+00) #4
  store double %call, double* %log2, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.200, %entry
  %4 = load i32, i32* %col, align 4
  %5 = load i32, i32* %row_width.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.202

for.body:                                         ; preds = %for.cond
  %6 = load double, double* @xmin, align 8
  %7 = load i32, i32* %col, align 4
  %conv2 = sitofp i32 %7 to double
  %8 = load double, double* @xdiff, align 8
  %mul = fmul double %conv2, %8
  %add = fadd double %6, %mul
  store double %add, double* %a, align 8
  %9 = load double, double* @ymin, align 8
  %10 = load i32, i32* %row.addr, align 4
  %conv3 = sitofp i32 %10 to double
  %11 = load double, double* @ydiff, align 8
  %mul4 = fmul double %conv3, %11
  %add5 = fadd double %9, %mul4
  store double %add5, double* %b, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 0), align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load double, double* %a, align 8
  store double %13, double* %x, align 8
  store double %13, double* %tmpx, align 8
  %14 = load double, double* %b, align 8
  store double %14, double* %y, align 8
  store double %14, double* %tmpy, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %y, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %counter, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %15 = load i32, i32* %counter, align 4
  %16 = load i32, i32* %iteration, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %17 = load double, double* %x, align 8
  store double %17, double* %oldx, align 8
  %18 = load double, double* %y, align 8
  store double %18, double* %oldy, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 0), align 4
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.26
    i32 3, label %sw.bb.44
    i32 4, label %sw.bb.63
    i32 5, label %sw.bb.82
    i32 6, label %sw.bb.95
    i32 7, label %sw.bb.105
    i32 8, label %sw.bb.120
  ]

sw.bb:                                            ; preds = %for.body.11
  %20 = load double, double* %x, align 8
  %21 = load double, double* %x, align 8
  %mul12 = fmul double %20, %21
  %22 = load double, double* %y, align 8
  %23 = load double, double* %y, align 8
  %mul13 = fmul double %22, %23
  %sub = fsub double %mul12, %mul13
  %24 = load double, double* %a, align 8
  %add14 = fadd double %sub, %24
  store double %add14, double* %xx, align 8
  %25 = load double, double* %x, align 8
  %mul15 = fmul double 2.000000e+00, %25
  %26 = load double, double* %y, align 8
  %mul16 = fmul double %mul15, %26
  %27 = load double, double* %b, align 8
  %add17 = fadd double %mul16, %27
  store double %add17, double* %y, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body.11
  %28 = load double, double* %x, align 8
  %29 = load double, double* %x, align 8
  %mul19 = fmul double %28, %29
  %30 = load double, double* %y, align 8
  %31 = load double, double* %y, align 8
  %mul20 = fmul double %30, %31
  %sub21 = fsub double %mul19, %mul20
  %32 = load double, double* %cx, align 8
  %add22 = fadd double %sub21, %32
  store double %add22, double* %xx, align 8
  %33 = load double, double* %x, align 8
  %mul23 = fmul double 2.000000e+00, %33
  %34 = load double, double* %y, align 8
  %mul24 = fmul double %mul23, %34
  %35 = load double, double* %cy, align 8
  %add25 = fadd double %mul24, %35
  store double %add25, double* %y, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body.11
  %36 = load double, double* %oldx, align 8
  %37 = load double, double* %cx, align 8
  %mul27 = fmul double %36, %37
  store double %mul27, double* %foldxinitx, align 8
  %38 = load double, double* %oldy, align 8
  %39 = load double, double* %cy, align 8
  %mul28 = fmul double %38, %39
  store double %mul28, double* %foldyinity, align 8
  %40 = load double, double* %oldx, align 8
  %41 = load double, double* %cy, align 8
  %mul29 = fmul double %40, %41
  store double %mul29, double* %foldxinity, align 8
  %42 = load double, double* %oldy, align 8
  %43 = load double, double* %cx, align 8
  %mul30 = fmul double %42, %43
  store double %mul30, double* %foldyinitx, align 8
  %44 = load double, double* %oldx, align 8
  %cmp31 = fcmp oge double %44, 0.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.else.38

if.then.33:                                       ; preds = %sw.bb.26
  %45 = load double, double* %foldxinitx, align 8
  %46 = load double, double* %cx, align 8
  %sub34 = fsub double %45, %46
  %47 = load double, double* %foldyinity, align 8
  %sub35 = fsub double %sub34, %47
  store double %sub35, double* %xx, align 8
  %48 = load double, double* %foldyinitx, align 8
  %49 = load double, double* %cy, align 8
  %sub36 = fsub double %48, %49
  %50 = load double, double* %foldxinity, align 8
  %add37 = fadd double %sub36, %50
  store double %add37, double* %y, align 8
  br label %if.end.43

if.else.38:                                       ; preds = %sw.bb.26
  %51 = load double, double* %foldxinitx, align 8
  %52 = load double, double* %cx, align 8
  %add39 = fadd double %51, %52
  %53 = load double, double* %foldyinity, align 8
  %sub40 = fsub double %add39, %53
  store double %sub40, double* %xx, align 8
  %54 = load double, double* %foldyinitx, align 8
  %55 = load double, double* %cy, align 8
  %add41 = fadd double %54, %55
  %56 = load double, double* %foldxinity, align 8
  %add42 = fadd double %add41, %56
  store double %add42, double* %y, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.38, %if.then.33
  br label %sw.epilog

sw.bb.44:                                         ; preds = %for.body.11
  %57 = load double, double* %oldx, align 8
  %58 = load double, double* %cx, align 8
  %mul45 = fmul double %57, %58
  store double %mul45, double* %foldxinitx, align 8
  %59 = load double, double* %oldy, align 8
  %60 = load double, double* %cy, align 8
  %mul46 = fmul double %59, %60
  store double %mul46, double* %foldyinity, align 8
  %61 = load double, double* %oldx, align 8
  %62 = load double, double* %cy, align 8
  %mul47 = fmul double %61, %62
  store double %mul47, double* %foldxinity, align 8
  %63 = load double, double* %oldy, align 8
  %64 = load double, double* %cx, align 8
  %mul48 = fmul double %63, %64
  store double %mul48, double* %foldyinitx, align 8
  %65 = load double, double* %foldxinity, align 8
  %66 = load double, double* %foldyinitx, align 8
  %add49 = fadd double %65, %66
  %cmp50 = fcmp oge double %add49, 0.000000e+00
  br i1 %cmp50, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %sw.bb.44
  %67 = load double, double* %foldxinitx, align 8
  %68 = load double, double* %cx, align 8
  %sub53 = fsub double %67, %68
  %69 = load double, double* %foldyinity, align 8
  %sub54 = fsub double %sub53, %69
  store double %sub54, double* %xx, align 8
  %70 = load double, double* %foldyinitx, align 8
  %71 = load double, double* %cy, align 8
  %sub55 = fsub double %70, %71
  %72 = load double, double* %foldxinity, align 8
  %add56 = fadd double %sub55, %72
  store double %add56, double* %y, align 8
  br label %if.end.62

if.else.57:                                       ; preds = %sw.bb.44
  %73 = load double, double* %foldxinitx, align 8
  %74 = load double, double* %cx, align 8
  %add58 = fadd double %73, %74
  %75 = load double, double* %foldyinity, align 8
  %sub59 = fsub double %add58, %75
  store double %sub59, double* %xx, align 8
  %76 = load double, double* %foldyinitx, align 8
  %77 = load double, double* %cy, align 8
  %add60 = fadd double %76, %77
  %78 = load double, double* %foldxinity, align 8
  %add61 = fadd double %add60, %78
  store double %add61, double* %y, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.52
  br label %sw.epilog

sw.bb.63:                                         ; preds = %for.body.11
  %79 = load double, double* %oldx, align 8
  %80 = load double, double* %oldx, align 8
  %mul64 = fmul double %79, %80
  store double %mul64, double* %foldxinitx, align 8
  %81 = load double, double* %oldy, align 8
  %82 = load double, double* %oldy, align 8
  %mul65 = fmul double %81, %82
  store double %mul65, double* %foldyinity, align 8
  %83 = load double, double* %oldx, align 8
  %84 = load double, double* %oldy, align 8
  %mul66 = fmul double %83, %84
  store double %mul66, double* %foldxinity, align 8
  %85 = load double, double* %oldx, align 8
  %cmp67 = fcmp ogt double %85, 0.000000e+00
  br i1 %cmp67, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %sw.bb.63
  %86 = load double, double* %foldxinitx, align 8
  %87 = load double, double* %foldyinity, align 8
  %sub70 = fsub double %86, %87
  %sub71 = fsub double %sub70, 1.000000e+00
  store double %sub71, double* %xx, align 8
  %88 = load double, double* %foldxinity, align 8
  %mul72 = fmul double %88, 2.000000e+00
  store double %mul72, double* %y, align 8
  br label %if.end.81

if.else.73:                                       ; preds = %sw.bb.63
  %89 = load double, double* %foldxinitx, align 8
  %90 = load double, double* %foldyinity, align 8
  %sub74 = fsub double %89, %90
  %sub75 = fsub double %sub74, 1.000000e+00
  %91 = load double, double* %cx, align 8
  %92 = load double, double* %oldx, align 8
  %mul76 = fmul double %91, %92
  %add77 = fadd double %sub75, %mul76
  store double %add77, double* %xx, align 8
  %93 = load double, double* %foldxinity, align 8
  %mul78 = fmul double %93, 2.000000e+00
  store double %mul78, double* %y, align 8
  %94 = load double, double* %cy, align 8
  %95 = load double, double* %oldx, align 8
  %mul79 = fmul double %94, %95
  %96 = load double, double* %y, align 8
  %add80 = fadd double %96, %mul79
  store double %add80, double* %y, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.73, %if.then.69
  br label %sw.epilog

sw.bb.82:                                         ; preds = %for.body.11
  %97 = load double, double* %x, align 8
  %98 = load double, double* %x, align 8
  %mul83 = fmul double %97, %98
  %99 = load double, double* %y, align 8
  %100 = load double, double* %y, align 8
  %mul84 = fmul double %99, %100
  %sub85 = fsub double %mul83, %mul84
  %101 = load double, double* %tmpx, align 8
  %add86 = fadd double %sub85, %101
  %102 = load double, double* %cx, align 8
  %add87 = fadd double %add86, %102
  store double %add87, double* %xx, align 8
  %103 = load double, double* %oldx, align 8
  %mul88 = fmul double 2.000000e+00, %103
  %104 = load double, double* %oldy, align 8
  %mul89 = fmul double %mul88, %104
  %105 = load double, double* %tmpy, align 8
  %add90 = fadd double %mul89, %105
  %106 = load double, double* %cy, align 8
  %add91 = fadd double %add90, %106
  store double %add91, double* %y, align 8
  %107 = load double, double* %tmpx, align 8
  %div = fdiv double %107, 2.000000e+00
  %108 = load double, double* %xx, align 8
  %add92 = fadd double %div, %108
  store double %add92, double* %tmpx, align 8
  %109 = load double, double* %tmpy, align 8
  %div93 = fdiv double %109, 2.000000e+00
  %110 = load double, double* %y, align 8
  %add94 = fadd double %div93, %110
  store double %add94, double* %tmpy, align 8
  br label %sw.epilog

sw.bb.95:                                         ; preds = %for.body.11
  %111 = load double, double* %x, align 8
  %112 = load double, double* %x, align 8
  %mul96 = fmul double %111, %112
  %113 = load double, double* %y, align 8
  %114 = load double, double* %y, align 8
  %mul97 = fmul double %113, %114
  %sub98 = fsub double %mul96, %mul97
  %115 = load double, double* %tmpx, align 8
  %add99 = fadd double %sub98, %115
  %116 = load double, double* %cx, align 8
  %add100 = fadd double %add99, %116
  store double %add100, double* %xx, align 8
  %117 = load double, double* %x, align 8
  %mul101 = fmul double 2.000000e+00, %117
  %118 = load double, double* %y, align 8
  %mul102 = fmul double %mul101, %118
  %119 = load double, double* %tmpy, align 8
  %add103 = fadd double %mul102, %119
  %120 = load double, double* %cy, align 8
  %add104 = fadd double %add103, %120
  store double %add104, double* %y, align 8
  %121 = load double, double* %oldx, align 8
  store double %121, double* %tmpx, align 8
  %122 = load double, double* %oldy, align 8
  store double %122, double* %tmpy, align 8
  br label %sw.epilog

sw.bb.105:                                        ; preds = %for.body.11
  %123 = load double, double* %x, align 8
  %124 = load double, double* %x, align 8
  %mul106 = fmul double %123, %124
  store double %mul106, double* %tempsqrx, align 8
  %125 = load double, double* %y, align 8
  %126 = load double, double* %y, align 8
  %mul107 = fmul double %125, %126
  store double %mul107, double* %tempsqry, align 8
  %127 = load double, double* %oldx, align 8
  %128 = load double, double* %tempsqrx, align 8
  %sub108 = fsub double %127, %128
  %129 = load double, double* %tempsqry, align 8
  %add109 = fadd double %sub108, %129
  store double %add109, double* %tempsqrx, align 8
  %130 = load double, double* %oldy, align 8
  %131 = load double, double* %oldx, align 8
  %mul110 = fmul double %130, %131
  %sub111 = fsub double -0.000000e+00, %mul110
  store double %sub111, double* %tempsqry, align 8
  %132 = load double, double* %tempsqry, align 8
  %133 = load double, double* %oldy, align 8
  %add112 = fadd double %132, %133
  %134 = load double, double* %tempsqry, align 8
  %add113 = fadd double %134, %add112
  store double %add113, double* %tempsqry, align 8
  %135 = load double, double* %cx, align 8
  %136 = load double, double* %tempsqrx, align 8
  %mul114 = fmul double %135, %136
  %137 = load double, double* %cy, align 8
  %138 = load double, double* %tempsqry, align 8
  %mul115 = fmul double %137, %138
  %sub116 = fsub double %mul114, %mul115
  store double %sub116, double* %xx, align 8
  %139 = load double, double* %cx, align 8
  %140 = load double, double* %tempsqry, align 8
  %mul117 = fmul double %139, %140
  %141 = load double, double* %cy, align 8
  %142 = load double, double* %tempsqrx, align 8
  %mul118 = fmul double %141, %142
  %add119 = fadd double %mul117, %mul118
  store double %add119, double* %y, align 8
  br label %sw.epilog

sw.bb.120:                                        ; preds = %for.body.11
  %143 = load double, double* %oldx, align 8
  %144 = load double, double* %oldx, align 8
  %add121 = fadd double %143, %144
  store double %add121, double* %xx, align 8
  %145 = load double, double* %oldy, align 8
  %146 = load double, double* %oldy, align 8
  %add122 = fadd double %145, %146
  store double %add122, double* %y, align 8
  %147 = load double, double* %oldy, align 8
  %cmp123 = fcmp ogt double %147, 5.000000e-01
  br i1 %cmp123, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %sw.bb.120
  %148 = load double, double* %y, align 8
  %sub126 = fsub double %148, 1.000000e+00
  store double %sub126, double* %y, align 8
  br label %if.end.133

if.else.127:                                      ; preds = %sw.bb.120
  %149 = load double, double* %oldx, align 8
  %cmp128 = fcmp ogt double %149, 5.000000e-01
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.else.127
  %150 = load double, double* %xx, align 8
  %sub131 = fsub double %150, 1.000000e+00
  store double %sub131, double* %xx, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.else.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.125
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.133, %sw.bb.105, %sw.bb.95, %sw.bb.82, %if.end.81, %if.end.62, %if.end.43, %sw.bb.18, %sw.bb
  %151 = load double, double* %xx, align 8
  store double %151, double* %x, align 8
  %152 = load double, double* %x, align 8
  %153 = load double, double* %x, align 8
  %mul134 = fmul double %152, %153
  %154 = load double, double* %y, align 8
  %155 = load double, double* %y, align 8
  %mul135 = fmul double %154, %155
  %add136 = fadd double %mul134, %mul135
  %cmp137 = fcmp oge double %add136, 4.000000e+00
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %sw.epilog
  br label %for.end

if.end.140:                                       ; preds = %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.140
  %156 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %156, 1
  store i32 %inc, i32* %counter, align 4
  br label %for.cond.8

for.end:                                          ; preds = %if.then.139, %for.cond.8
  %157 = load i32, i32* %useloglog, align 4
  %tobool = icmp ne i32 %157, 0
  br i1 %tobool, label %if.then.141, label %if.else.154

if.then.141:                                      ; preds = %for.end
  %158 = load double, double* %x, align 8
  %159 = load double, double* %x, align 8
  %mul142 = fmul double %158, %159
  %160 = load double, double* %y, align 8
  %161 = load double, double* %y, align 8
  %mul143 = fmul double %160, %161
  %add144 = fadd double %mul142, %mul143
  store double %add144, double* %modulus_square, align 8
  %162 = load double, double* %modulus_square, align 8
  %cmp145 = fcmp ogt double %162, 0x401D8E64B8D4DDAD
  br i1 %cmp145, label %if.then.147, label %if.else.152

if.then.147:                                      ; preds = %if.then.141
  %163 = load double, double* %modulus_square, align 8
  %call148 = call double @log(double %163) #4
  %div149 = fdiv double %call148, 2.000000e+00
  %call150 = call double @log(double %div149) #4
  %164 = load double, double* %log2, align 8
  %div151 = fdiv double %call150, %164
  store double %div151, double* %adjust, align 8
  br label %if.end.153

if.else.152:                                      ; preds = %if.then.141
  store double 0.000000e+00, double* %adjust, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.152, %if.then.147
  br label %if.end.155

if.else.154:                                      ; preds = %for.end
  store double 0.000000e+00, double* %adjust, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %if.end.153
  %165 = load i32, i32* %counter, align 4
  %conv156 = sitofp i32 %165 to double
  %166 = load double, double* %adjust, align 8
  %sub157 = fsub double %conv156, %166
  %167 = load i32, i32* getelementptr inbounds (%struct.explorer_vals_t, %struct.explorer_vals_t* @wvals, i32 0, i32 19), align 4
  %sub158 = sub nsw i32 %167, 1
  %conv159 = sitofp i32 %sub158 to double
  %mul160 = fmul double %sub157, %conv159
  %168 = load i32, i32* %iteration, align 4
  %conv161 = sitofp i32 %168 to double
  %div162 = fdiv double %mul160, %conv161
  %conv163 = fptosi double %div162 to i32
  store i32 %conv163, i32* %color, align 4
  %169 = load i32, i32* %bpp.addr, align 4
  %cmp164 = icmp sge i32 %169, 3
  br i1 %cmp164, label %if.then.166, label %if.else.184

if.then.166:                                      ; preds = %if.end.155
  %170 = load i32, i32* %color, align 4
  %idxprom = sext i32 %170 to i64
  %arrayidx = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom
  %r = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx, i32 0, i32 0
  %171 = load i8, i8* %r, align 1
  %172 = load i32, i32* %col, align 4
  %173 = load i32, i32* %bpp.addr, align 4
  %mul167 = mul nsw i32 %172, %173
  %add168 = add nsw i32 %mul167, 0
  %idxprom169 = sext i32 %add168 to i64
  %174 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %174, i64 %idxprom169
  store i8 %171, i8* %arrayidx170, align 1
  %175 = load i32, i32* %color, align 4
  %idxprom171 = sext i32 %175 to i64
  %arrayidx172 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom171
  %g = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx172, i32 0, i32 1
  %176 = load i8, i8* %g, align 1
  %177 = load i32, i32* %col, align 4
  %178 = load i32, i32* %bpp.addr, align 4
  %mul173 = mul nsw i32 %177, %178
  %add174 = add nsw i32 %mul173, 1
  %idxprom175 = sext i32 %add174 to i64
  %179 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %179, i64 %idxprom175
  store i8 %176, i8* %arrayidx176, align 1
  %180 = load i32, i32* %color, align 4
  %idxprom177 = sext i32 %180 to i64
  %arrayidx178 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom177
  %b179 = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx178, i32 0, i32 2
  %181 = load i8, i8* %b179, align 1
  %182 = load i32, i32* %col, align 4
  %183 = load i32, i32* %bpp.addr, align 4
  %mul180 = mul nsw i32 %182, %183
  %add181 = add nsw i32 %mul180, 2
  %idxprom182 = sext i32 %add181 to i64
  %184 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %184, i64 %idxprom182
  store i8 %181, i8* %arrayidx183, align 1
  br label %if.end.191

if.else.184:                                      ; preds = %if.end.155
  %185 = load i32, i32* %color, align 4
  %idxprom185 = sext i32 %185 to i64
  %arrayidx186 = getelementptr inbounds [8192 x i8], [8192 x i8]* @valuemap, i32 0, i64 %idxprom185
  %186 = load i8, i8* %arrayidx186, align 1
  %187 = load i32, i32* %col, align 4
  %188 = load i32, i32* %bpp.addr, align 4
  %mul187 = mul nsw i32 %187, %188
  %add188 = add nsw i32 %mul187, 0
  %idxprom189 = sext i32 %add188 to i64
  %189 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %189, i64 %idxprom189
  store i8 %186, i8* %arrayidx190, align 1
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.184, %if.then.166
  %190 = load i32, i32* %bpp.addr, align 4
  %rem = srem i32 %190, 2
  %tobool192 = icmp ne i32 %rem, 0
  br i1 %tobool192, label %if.end.199, label %if.then.193

if.then.193:                                      ; preds = %if.end.191
  %191 = load i32, i32* %col, align 4
  %192 = load i32, i32* %bpp.addr, align 4
  %mul194 = mul nsw i32 %191, %192
  %193 = load i32, i32* %bpp.addr, align 4
  %add195 = add nsw i32 %mul194, %193
  %sub196 = sub nsw i32 %add195, 1
  %idxprom197 = sext i32 %sub196 to i64
  %194 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %194, i64 %idxprom197
  store i8 -1, i8* %arrayidx198, align 1
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.193, %if.end.191
  br label %for.inc.200

for.inc.200:                                      ; preds = %if.end.199
  %195 = load i32, i32* %col, align 4
  %inc201 = add nsw i32 %195, 1
  store i32 %inc201, i32* %col, align 4
  br label %for.cond

for.end.202:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @add_objects_list() #0 {
entry:
  %table = alloca %struct._GtkWidget*, align 8
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %col = alloca %struct._GtkTreeViewColumn*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %list_store = alloca %struct._GtkListStore*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %2, i32 6)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %5, i32 6)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call7 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %scrolled_win, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_scrolled_window_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %12, i32 1, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_scrolled_window_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %15, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_table_attach(%struct._GtkTable* %18, %struct._GtkWidget* %19, i32 0, i32 3, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call14 = call %struct._GtkWidget* @gtk_tree_view_new()
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %view, align 8
  %call15 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call15, %struct._GtkTreeViewColumn** %col, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_tree_view_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTreeView*
  %24 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call18 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %23, %struct._GtkTreeViewColumn* %24)
  %call19 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call19, %struct._GtkCellRenderer** %renderer, align 8
  %25 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %26 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %25, %struct._GtkCellRenderer* %26, i32 1)
  %27 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %28 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_tree_view_column_add_attribute(%struct._GtkTreeViewColumn* %27, %struct._GtkCellRenderer* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_view_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %31, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_tree_view_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTreeView*
  %call24 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %34)
  store %struct._GtkTreeSelection* %call24, %struct._GtkTreeSelection** %selection, align 8
  %35 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %35, i32 2)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i8*)* @activate_fractal_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %40, %struct._GtkWidget* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load i8*, i8** @fractalexplorer_path, align 8
  call void @fractalexplorer_list_load_all(i8* %43)
  %call28 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 64, i64 68)
  store %struct._GtkListStore* %call28, %struct._GtkListStore** %list_store, align 8
  %44 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  call void @fill_list_store(%struct._GtkListStore* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_tree_view_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call29)
  %47 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTreeView*
  %48 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %49 = bitcast %struct._GtkListStore* %48 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_tree_model_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call31)
  %50 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTreeModel*
  call void @gtk_tree_view_set_model(%struct._GtkTreeView* %47, %struct._GtkTreeModel* %50)
  %51 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store, align 8
  %52 = bitcast %struct._GtkListStore* %51 to i8*
  call void @g_object_unref(i8* %52)
  %call33 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call34)
  %55 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %55, %struct._GtkWidget* %56, i32 0, i32 1, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %58, i8* %call36, i8* null)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @fractalexplorer_rescan_list to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %call38 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %button, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call39)
  %65 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %65, %struct._GtkWidget* %66, i32 1, i32 2, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %68, i8* %call41, i8* null)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i8*)* @apply_fractal_callback to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 0)
  %call43 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %button, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call44)
  %75 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %75, %struct._GtkWidget* %76, i32 2, i32 3, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %78, i8* %call46, i8* null)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i8*)* @delete_fractal_callback to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %83
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_tree_view_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #3

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_add_attribute(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i8*, i32) #1

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @activate_fractal_callback(%struct._GtkTreeView* %view, %struct._GtkTreePath* %path, %struct._GtkTreeViewColumn* %col, i8* %data) #0 {
entry:
  %view.addr = alloca %struct._GtkTreeView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %col.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %data.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %sel_obj = alloca %struct.DFigObj*, align 8
  store %struct._GtkTreeView* %view, %struct._GtkTreeView** %view.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeViewColumn* %col, %struct._GtkTreeViewColumn** %col.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call1 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 1, %struct.DFigObj** %sel_obj, i32 -1)
  %4 = load %struct.DFigObj*, %struct.DFigObj** %sel_obj, align 8
  call void @activate_fractal(%struct.DFigObj* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @fractalexplorer_list_load_all(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %fractalexplorer = alloca %struct.DFigObj*, align 8
  store i8* %path, i8** %path.addr, align 8
  store %struct.DFigObj* null, %struct.DFigObj** @current_obj, align 8
  call void @fractalexplorer_list_free_all()
  %0 = load i8*, i8** %path.addr, align 8
  call void @gimp_datafiles_read_directories(i8* %0, i32 1, void (%struct._GimpDatafileData*, i8*)* @fractalexplorer_list_load_one, i8* null)
  %1 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.DFigObj* @fractalexplorer_new()
  store %struct.DFigObj* %call, %struct.DFigObj** %fractalexplorer, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0)) #4
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  %2 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %draw_name = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %2, i32 0, i32 2
  store i8* %call2, i8** %draw_name, align 8
  %3 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %call3 = call i32 @fractalexplorer_list_insert(%struct.DFigObj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct.DFigObj*
  store %struct.DFigObj* %6, %struct.DFigObj** @current_obj, align 8
  ret void
}

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @fill_list_store(%struct._GtkListStore* %list_store) #0 {
entry:
  %list_store.addr = alloca %struct._GtkListStore*, align 8
  %tmp = alloca %struct._GList*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %g = alloca %struct.DFigObj*, align 8
  store %struct._GtkListStore* %list_store, %struct._GtkListStore** %list_store.addr, align 8
  %0 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  store %struct._GList* %0, %struct._GList** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct.DFigObj*
  store %struct.DFigObj* %4, %struct.DFigObj** %g, align 8
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store.addr, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %5, %struct._GtkTreeIter* %iter)
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %list_store.addr, align 8
  %7 = load %struct.DFigObj*, %struct.DFigObj** %g, align 8
  %draw_name = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %7, i32 0, i32 2
  %8 = load i8*, i8** %draw_name, align 8
  %9 = load %struct.DFigObj*, %struct.DFigObj** %g, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter, i32 0, i8* %8, i32 1, %struct.DFigObj* %9, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %11, %struct._GList** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_tree_view_set_model(%struct._GtkTreeView*, %struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @fractalexplorer_rescan_list(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %patheditor = alloca %struct._GtkWidget*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %view, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  %tobool = icmp ne %struct._GtkWidget* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %5)
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0)) #4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %call3 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %6)
  %call4 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), %struct._GtkWidget* %call3, i32 3, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %9, i32 -5, i32 -6, i32 -1)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @fractalexplorer_rescan_list.dlg to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i32 0, i32 0)) #4
  %12 = load i8*, i8** @fractalexplorer_path, align 8
  %call9 = call %struct._GtkWidget* @gimp_path_editor_new(i8* %call8, i8* %12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %patheditor, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %patheditor, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %15, i32 12)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %18)
  %19 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %patheditor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 1, i32 1, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %patheditor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dialog_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDialog*
  %call19 = call i32 @gimp_dialog_run(%struct._GimpDialog* %25)
  %cmp = icmp eq i32 %call19, -5
  br i1 %cmp, label %if.then.20, label %if.end.45

if.then.20:                                       ; preds = %if.end
  %26 = load i8*, i8** @fractalexplorer_path, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %patheditor, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_path_editor_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpPathEditor*
  %call23 = call i8* @gimp_path_editor_get_path(%struct._GimpPathEditor* %29)
  store i8* %call23, i8** @fractalexplorer_path, align 8
  %30 = load i8*, i8** @fractalexplorer_path, align 8
  %tobool24 = icmp ne i8* %30, null
  br i1 %tobool24, label %if.then.25, label %if.end.44

if.then.25:                                       ; preds = %if.then.20
  %31 = load i8*, i8** @fractalexplorer_path, align 8
  call void @fractalexplorer_list_load_all(i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_tree_view_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call26)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTreeView*
  %call28 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %34)
  store %struct._GtkTreeModel* %call28, %struct._GtkTreeModel** %model, align 8
  %35 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %36 = bitcast %struct._GtkTreeModel* %35 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_list_store_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call29)
  %37 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkListStore*
  call void @gtk_list_store_clear(%struct._GtkListStore* %37)
  %38 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %39 = bitcast %struct._GtkTreeModel* %38 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_list_store_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call31)
  %40 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkListStore*
  call void @fill_list_store(%struct._GtkListStore* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_tree_view_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call33)
  %43 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTreeView*
  %call35 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %43)
  store %struct._GtkTreeSelection* %call35, %struct._GtkTreeSelection** %selection, align 8
  %44 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call36 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %44, %struct._GtkTreeIter* %iter)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.then.25
  %45 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %45, %struct._GtkTreeIter* %iter)
  %46 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call39 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %46, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call39, %struct._GtkTreePath** %path, align 8
  %47 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  %data40 = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 0
  %48 = load i8*, i8** %data40, align 8
  %49 = bitcast i8* %48 to %struct.DFigObj*
  store %struct.DFigObj* %49, %struct.DFigObj** @current_obj, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_tree_view_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call41)
  %52 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTreeView*
  %53 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %52, %struct._GtkTreePath* %53, %struct._GtkTreeViewColumn* null, i32 0, float 0.000000e+00, float 0.000000e+00)
  %54 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %54)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %if.then.25
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.20
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** @fractalexplorer_rescan_list.dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %55)
  br label %return

return:                                           ; preds = %if.end.45, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @apply_fractal_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %sel_obj = alloca %struct.DFigObj*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %view, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %4)
  store %struct._GtkTreeSelection* %call2, %struct._GtkTreeSelection** %selection, align 8
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call3 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %5, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %iter, i32 1, %struct.DFigObj** %sel_obj, i32 -1)
  %7 = load %struct.DFigObj*, %struct.DFigObj** %sel_obj, align 8
  call void @activate_fractal(%struct.DFigObj* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @delete_fractal_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %sel_obj = alloca %struct.DFigObj*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %view, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @delete_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %5)
  store %struct._GtkTreeSelection* %call2, %struct._GtkTreeSelection** %selection, align 8
  %6 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call3 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %6, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 1, %struct.DFigObj** %sel_obj, i32 -1)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.73, i32 0, i32 0)) #4
  %8 = load %struct.DFigObj*, %struct.DFigObj** %sel_obj, align 8
  %draw_name = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %8, i32 0, i32 2
  %9 = load i8*, i8** %draw_name, align 8
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call6, i8* %9)
  store i8* %call7, i8** %str, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0)) #4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %call9 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %10)
  %11 = load i8*, i8** %str, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %15 = load i8*, i8** %data.addr, align 8
  %call11 = call %struct._GtkWidget* @gimp_query_boolean_box(i8* %call8, %struct._GtkWidget* %call9, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), %struct._GObject* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), void (%struct._GtkWidget*, i32, i8*)* @delete_dialog_callback, i8* %15)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** @delete_dialog, align 8
  %16 = load i8*, i8** %str, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @delete_dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.5, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

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

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32 @explorer_dialog() #1

declare void @make_color_map() #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @explorer(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %row = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width1, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height2, align 4
  store i32 %5, i32* %height, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp3, align 4
  store i32 %7, i32* %bpp, align 4
  %8 = load i32, i32* %bpp, align 4
  %9 = load i32, i32* %x2, align 4
  %10 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %9, %10
  %mul = mul nsw i32 %8, %sub
  %conv = sext i32 %mul to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %src_row, align 8
  %11 = load i32, i32* %bpp, align 4
  %12 = load i32, i32* %x2, align 4
  %13 = load i32, i32* %x1, align 4
  %sub5 = sub nsw i32 %12, %13
  %mul6 = mul nsw i32 %11, %sub5
  %conv7 = sext i32 %mul6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 1)
  store i8* %call8, i8** %dest_row, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %14, i32 0, i32 0, i32 %15, i32 %16, i32 0, i32 0)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %17, i32 0, i32 0, i32 %18, i32 %19, i32 1, i32 1)
  %20 = load i32, i32* %width, align 4
  %conv9 = sitofp i32 %20 to double
  store double %conv9, double* @xbild, align 8
  %21 = load i32, i32* %height, align 4
  %conv10 = sitofp i32 %21 to double
  store double %conv10, double* @ybild, align 8
  %22 = load double, double* @xmax, align 8
  %23 = load double, double* @xmin, align 8
  %sub11 = fsub double %22, %23
  %24 = load double, double* @xbild, align 8
  %div = fdiv double %sub11, %24
  store double %div, double* @xdiff, align 8
  %25 = load double, double* @ymax, align 8
  %26 = load double, double* @ymin, align 8
  %sub12 = fsub double %25, %26
  %27 = load double, double* @ybild, align 8
  %div13 = fdiv double %sub12, %27
  store double %div13, double* @ydiff, align 8
  %28 = load i32, i32* %bpp, align 4
  %cmp = icmp slt i32 %28, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %29 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %29, 8192
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom
  %r = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx, i32 0, i32 0
  %31 = load i8, i8* %r, align 1
  %conv17 = zext i8 %31 to i32
  %conv18 = sitofp i32 %conv17 to double
  %mul19 = fmul double %conv18, 2.126000e-01
  %32 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom20
  %g = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx21, i32 0, i32 1
  %33 = load i8, i8* %g, align 1
  %conv22 = zext i8 %33 to i32
  %conv23 = sitofp i32 %conv22 to double
  %mul24 = fmul double %conv23, 7.152000e-01
  %add = fadd double %mul19, %mul24
  %34 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %34 to i64
  %arrayidx26 = getelementptr inbounds [8192 x %struct.gucharRGB], [8192 x %struct.gucharRGB]* @colormap, i32 0, i64 %idxprom25
  %b = getelementptr inbounds %struct.gucharRGB, %struct.gucharRGB* %arrayidx26, i32 0, i32 2
  %35 = load i8, i8* %b, align 1
  %conv27 = zext i8 %35 to i32
  %conv28 = sitofp i32 %conv27 to double
  %mul29 = fmul double %conv28, 7.220000e-02
  %add30 = fadd double %add, %mul29
  %conv31 = fptoui double %add30 to i8
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds [8192 x i8], [8192 x i8]* @valuemap, i32 0, i64 %idxprom32
  store i8 %conv31, i8* %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %38 = load i32, i32* %y1, align 4
  store i32 %38, i32* %row, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.50, %if.end
  %39 = load i32, i32* %row, align 4
  %40 = load i32, i32* %y2, align 4
  %cmp35 = icmp slt i32 %39, %40
  br i1 %cmp35, label %for.body.37, label %for.end.52

for.body.37:                                      ; preds = %for.cond.34
  %41 = load i8*, i8** %src_row, align 8
  %42 = load i32, i32* %x1, align 4
  %43 = load i32, i32* %row, align 4
  %44 = load i32, i32* %x2, align 4
  %45 = load i32, i32* %x1, align 4
  %sub38 = sub nsw i32 %44, %45
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %41, i32 %42, i32 %43, i32 %sub38)
  %46 = load i8*, i8** %src_row, align 8
  %47 = load i8*, i8** %dest_row, align 8
  %48 = load i32, i32* %row, align 4
  %49 = load i32, i32* %x2, align 4
  %50 = load i32, i32* %x1, align 4
  %sub39 = sub nsw i32 %49, %50
  %51 = load i32, i32* %bpp, align 4
  call void @explorer_render_row(i8* %46, i8* %47, i32 %48, i32 %sub39, i32 %51)
  %52 = load i8*, i8** %dest_row, align 8
  %53 = load i32, i32* %x1, align 4
  %54 = load i32, i32* %row, align 4
  %55 = load i32, i32* %x2, align 4
  %56 = load i32, i32* %x1, align 4
  %sub40 = sub nsw i32 %55, %56
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %52, i32 %53, i32 %54, i32 %sub40)
  %57 = load i32, i32* %row, align 4
  %rem = srem i32 %57, 10
  %cmp41 = icmp eq i32 %rem, 0
  br i1 %cmp41, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %for.body.37
  %58 = load i32, i32* %row, align 4
  %conv44 = sitofp i32 %58 to double
  %59 = load i32, i32* %y2, align 4
  %60 = load i32, i32* %y1, align 4
  %sub45 = sub nsw i32 %59, %60
  %conv46 = sitofp i32 %sub45 to double
  %div47 = fdiv double %conv44, %conv46
  %call48 = call i32 @gimp_progress_update(double %div47)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.43, %for.body.37
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %61 = load i32, i32* %row, align 4
  %inc51 = add nsw i32 %61, 1
  store i32 %inc51, i32* %row, align 4
  br label %for.cond.34

for.end.52:                                       ; preds = %for.cond.34
  %call53 = call i32 @gimp_progress_update(double 1.000000e+00)
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %62)
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id54 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 0
  %64 = load i32, i32* %drawable_id54, align 4
  %call55 = call i32 @gimp_drawable_merge_shadow(i32 %64, i32 1)
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id56 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %65, i32 0, i32 0
  %66 = load i32, i32* %drawable_id56, align 4
  %67 = load i32, i32* %x1, align 4
  %68 = load i32, i32* %y1, align 4
  %69 = load i32, i32* %x2, align 4
  %70 = load i32, i32* %x1, align 4
  %sub57 = sub nsw i32 %69, %70
  %71 = load i32, i32* %y2, align 4
  %72 = load i32, i32* %y1, align 4
  %sub58 = sub nsw i32 %71, %72
  %call59 = call i32 @gimp_drawable_update(i32 %66, i32 %67, i32 %68, i32 %sub57, i32 %sub58)
  %73 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %73)
  %74 = load i8*, i8** %dest_row, align 8
  call void @g_free(i8* %74)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @activate_fractal(%struct.DFigObj* %sel_obj) #0 {
entry:
  %sel_obj.addr = alloca %struct.DFigObj*, align 8
  store %struct.DFigObj* %sel_obj, %struct.DFigObj** %sel_obj.addr, align 8
  %0 = load %struct.DFigObj*, %struct.DFigObj** %sel_obj.addr, align 8
  store %struct.DFigObj* %0, %struct.DFigObj** @current_obj, align 8
  %1 = load %struct.DFigObj*, %struct.DFigObj** @current_obj, align 8
  %opts = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %1, i32 0, i32 3
  %2 = bitcast %struct.explorer_vals_t* %opts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.explorer_vals_t* @wvals to i8*), i8* %2, i64 136, i32 8, i1 false)
  call void @dialog_change_scale()
  call void @set_cmap_preview()
  call void @dialog_update_preview()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @dialog_change_scale() #1

declare void @set_cmap_preview() #1

declare void @dialog_update_preview() #1

; Function Attrs: nounwind uwtable
define internal void @fractalexplorer_list_free_all() #0 {
entry:
  %0 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  call void @g_list_free_full(%struct._GList* %0, void (i8*)* bitcast (void (%struct.DFigObj*)* @fractalexplorer_free to void (i8*)*))
  store %struct._GList* null, %struct._GList** @fractalexplorer_list, align 8
  ret void
}

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fractalexplorer_list_load_one(%struct._GimpDatafileData* %file_data, i8* %user_data) #0 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %fractalexplorer = alloca %struct.DFigObj*, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %0, i32 0, i32 0
  %1 = load i8*, i8** %filename, align 8
  %2 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %basename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %2, i32 0, i32 2
  %3 = load i8*, i8** %basename, align 8
  %call = call %struct.DFigObj* @fractalexplorer_load(i8* %1, i8* %3)
  store %struct.DFigObj* %call, %struct.DFigObj** %fractalexplorer, align 8
  %4 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %tobool = icmp ne %struct.DFigObj* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %call1 = call i32 @fractalexplorer_list_insert(%struct.DFigObj* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.DFigObj* @fractalexplorer_new() #0 {
entry:
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 192)
  %0 = bitcast i8* %call to %struct.DFigObj*
  ret %struct.DFigObj* %0
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fractalexplorer_list_insert(%struct.DFigObj* %fractalexplorer) #0 {
entry:
  %fractalexplorer.addr = alloca %struct.DFigObj*, align 8
  %n = alloca i32, align 4
  store %struct.DFigObj* %fractalexplorer, %struct.DFigObj** %fractalexplorer.addr, align 8
  %0 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %call = call i32 @fractalexplorer_list_pos(%struct.DFigObj* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  %2 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %3 = bitcast %struct.DFigObj* %2 to i8*
  %4 = load i32, i32* %n, align 4
  %call1 = call %struct._GList* @g_list_insert(%struct._GList* %1, i8* %3, i32 %4)
  store %struct._GList* %call1, %struct._GList** @fractalexplorer_list, align 8
  %5 = load i32, i32* %n, align 4
  ret i32 %5
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @fractalexplorer_free(%struct.DFigObj* %fractalexplorer) #0 {
entry:
  %fractalexplorer.addr = alloca %struct.DFigObj*, align 8
  store %struct.DFigObj* %fractalexplorer, %struct.DFigObj** %fractalexplorer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %cmp = icmp ne %struct.DFigObj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i32 884, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.fractalexplorer_free, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %name = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  %3 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %filename = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %3, i32 0, i32 1
  %4 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %4)
  %5 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %draw_name = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %5, i32 0, i32 2
  %6 = load i8*, i8** %draw_name, align 8
  call void @g_free(i8* %6)
  %7 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %8 = bitcast %struct.DFigObj* %7 to i8*
  call void @g_free(i8* %8)
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal %struct.DFigObj* @fractalexplorer_load(i8* %filename, i8* %name) #0 {
entry:
  %retval = alloca %struct.DFigObj*, align 8
  %filename.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %fractalexplorer = alloca %struct.DFigObj*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %load_buf = alloca [256 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i32 918, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.fractalexplorer_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end.6, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i32 0, i32 0)) #4
  %3 = load i8*, i8** %filename.addr, align 8
  %call3 = call i8* @gimp_filename_to_utf8(i8* %3)
  %call4 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call4, align 4
  %call5 = call i8* @g_strerror(i32 %4) #7
  call void (i8*, ...) @g_message(i8* %call2, i8* %call3, i8* %call5)
  store %struct.DFigObj* null, %struct.DFigObj** %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %call7 = call %struct.DFigObj* @fractalexplorer_new()
  store %struct.DFigObj* %call7, %struct.DFigObj** %fractalexplorer, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call8 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %name9 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %6, i32 0, i32 0
  store i8* %call8, i8** %name9, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call10 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %draw_name = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %8, i32 0, i32 2
  store i8* %call10, i8** %draw_name, align 8
  %9 = load i8*, i8** %filename.addr, align 8
  %call11 = call noalias i8* @g_strdup(i8* %9)
  %10 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %filename12 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %10, i32 0, i32 1
  store i8* %call11, i8** %filename12, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call13 = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %11, i32 1)
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call16 = call i64 @strlen(i8* %arraydecay15) #9
  %call17 = call i32 @strncmp(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.70, i32 0, i32 0), i8* %arraydecay14, i64 %call16) #9
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.6
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.71, i32 0, i32 0)) #4
  %12 = load i8*, i8** %filename.addr, align 8
  %call21 = call i8* @gimp_filename_to_utf8(i8* %12)
  call void (i8*, ...) @g_message(i8* %call20, i8* %call21)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %13)
  %14 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  call void @fractalexplorer_free(%struct.DFigObj* %14)
  store %struct.DFigObj* null, %struct.DFigObj** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.6
  %15 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i32 @load_options(%struct.DFigObj* %15, %struct._IO_FILE* %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.23
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.72, i32 0, i32 0)) #4
  %17 = load i8*, i8** %filename.addr, align 8
  %call28 = call i8* @gimp_filename_to_utf8(i8* %17)
  %18 = load i32, i32* @line_no, align 4
  call void (i8*, ...) @g_message(i8* %call27, i8* %call28, i32 %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %19)
  %20 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  call void @fractalexplorer_free(%struct.DFigObj* %20)
  store %struct.DFigObj* null, %struct.DFigObj** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.23
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i32 @fclose(%struct._IO_FILE* %21)
  %22 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  %obj_status = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %22, i32 0, i32 7
  store i32 0, i32* %obj_status, align 4
  %23 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer, align 8
  store %struct.DFigObj* %23, %struct.DFigObj** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.26, %if.then.19, %if.then.1
  %24 = load %struct.DFigObj*, %struct.DFigObj** %retval
  ret %struct.DFigObj* %24
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @get_line(i8*, i32, %struct._IO_FILE*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @load_options(%struct.DFigObj*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @fractalexplorer_list_pos(%struct.DFigObj* %fractalexplorer) #0 {
entry:
  %fractalexplorer.addr = alloca %struct.DFigObj*, align 8
  %g = alloca %struct.DFigObj*, align 8
  %n = alloca i32, align 4
  %tmp = alloca %struct._GList*, align 8
  store %struct.DFigObj* %fractalexplorer, %struct.DFigObj** %fractalexplorer.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  store %struct._GList* %0, %struct._GList** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct.DFigObj*
  store %struct.DFigObj* %4, %struct.DFigObj** %g, align 8
  %5 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %draw_name = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %5, i32 0, i32 2
  %6 = load i8*, i8** %draw_name, align 8
  %7 = load %struct.DFigObj*, %struct.DFigObj** %g, align 8
  %draw_name1 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %7, i32 0, i32 2
  %8 = load i8*, i8** %draw_name1, align 8
  %call = call i32 @strcmp(i8* %6, i8* %8) #9
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %n, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %n, align 4
  ret i32 %13
}

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkWidget* @gimp_query_boolean_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, i8*, i8*, i8*, %struct._GObject*, i8*, void (%struct._GtkWidget*, i32, i8*)*, i8*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @delete_dialog_callback(%struct._GtkWidget* %widget, i32 %delete, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %delete.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %valid = alloca i32, align 4
  %sel_obj = alloca %struct.DFigObj*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %delete, i32* %delete.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %view, align 8
  %2 = load i32, i32* %delete.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %5)
  store %struct._GtkTreeSelection* %call2, %struct._GtkTreeSelection** %selection, align 8
  %6 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call3 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %6, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 1, %struct.DFigObj** %sel_obj, i32 -1)
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %9 = bitcast %struct._GtkTreeModel* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_list_store_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkListStore*
  %call6 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %10, %struct._GtkTreeIter* %iter)
  store i32 %call6, i32* %valid, align 4
  %11 = load i32, i32* %valid, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call9 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter)
  store i32 %call9, i32* %valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %13 = load %struct._GList*, %struct._GList** @fractalexplorer_list, align 8
  %14 = load %struct.DFigObj*, %struct.DFigObj** %sel_obj, align 8
  %15 = bitcast %struct.DFigObj* %14 to i8*
  %call10 = call %struct._GList* @g_list_remove(%struct._GList* %13, i8* %15)
  store %struct._GList* %call10, %struct._GList** @fractalexplorer_list, align 8
  %16 = load %struct.DFigObj*, %struct.DFigObj** %sel_obj, align 8
  call void @fractalexplorer_free_everything(%struct.DFigObj* %16)
  %17 = load i32, i32* %valid, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %18 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %18, %struct._GtkTreeIter* %iter)
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter, i32 1, %struct.DFigObj** @current_obj, i32 -1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** @delete_dialog, align 8
  ret void
}

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fractalexplorer_free_everything(%struct.DFigObj* %fractalexplorer) #0 {
entry:
  %fractalexplorer.addr = alloca %struct.DFigObj*, align 8
  store %struct.DFigObj* %fractalexplorer, %struct.DFigObj** %fractalexplorer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %cmp = icmp ne %struct.DFigObj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i32 895, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.fractalexplorer_free_everything, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %filename = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %1, i32 0, i32 1
  %2 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  %filename2 = getelementptr inbounds %struct.DFigObj, %struct.DFigObj* %3, i32 0, i32 1
  %4 = load i8*, i8** %filename2, align 8
  %call = call i32 @remove(i8* %4) #4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %5 = load %struct.DFigObj*, %struct.DFigObj** %fractalexplorer.addr, align 8
  call void @fractalexplorer_free(%struct.DFigObj* %5)
  ret void
}

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GtkWidget* @gimp_path_editor_new(i8*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare i8* @gimp_path_editor_get_path(%struct._GimpPathEditor*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_path_editor_get_type() #3

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
