; ModuleID = './plug-ins/common/film.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.FilmVals = type { i32, %struct._GimpRGB, double, double, double, double, double, double, double, i32, %struct._GimpRGB, [256 x i8], [2 x i32], i32, i32, [64 x i32] }
%struct.FilmInterface = type { [7 x %struct._GtkObject*], %struct._GtkTreeModel*, %struct._GtkTreeModel* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GBinding = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GimpFontSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeRowReference = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [12 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Input image (only used as default image in interactive mode)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Input drawable (not used)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"film-height\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Height of film (0: fit to images)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"film-color\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Color of the film\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"number-start\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Start index for numbering\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"number-font\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Font for drawing numbers\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"number-color\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Color for numbers\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"at-top\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Flag for drawing numbers at top of film\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"at-bottom\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Flag for drawing numbers at bottom of film\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"num-images\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Number of images to be used for film\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"image-ids\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"num-images image IDs to be used for film\00", align 1
@query.return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0) }], align 16
@.str.24 = private unnamed_addr constant [10 x i8] c"new-image\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"plug-in-film\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Combine several images on a film strip\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Compose several images to a roll film\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Peter Kirchgessner\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"Peter Kirchgessner (peter@kirchgessner.net)\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"_Filmstrip...\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"INDEXED*, GRAY*, RGB*\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Combine\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@run_mode = internal global i32 0, align 4
@filmvals = internal global %struct.FilmVals { i32 256, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, double 6.950000e-01, double 4.000000e-02, double 5.800000e-02, double 5.200000e-02, double 8.100000e-02, double 8.100000e-02, double 5.200000e-02, i32 1, %struct._GimpRGB { double 9.300000e-01, double 6.100000e-01, double 0.000000e+00, double 1.000000e+00 }, [256 x i8] c"Monospace\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [2 x i32] [i32 1, i32 1], i32 0, i32 0, [64 x i32] zeroinitializer }, align 8
@.str.37 = private unnamed_addr constant [17 x i8] c"Composing images\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Filmstrip\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"gimp-film\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@filmint = internal global %struct.FilmInterface zeroinitializer, align 8
@.str.43 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"_Fit height to images\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Select Film Color\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"Co_lor:\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Numbering\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Start _index:\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"font-set\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"_Font:\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Select Number Color\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"At _bottom\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"At _top\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"Image Selection\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Available images:\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"On film:\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"gtk-add\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"gtk-remove\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"All Values are Fractions of the Strip Height\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"Ad_vanced\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"Image _height:\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Image spac_ing:\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"_Hole offset:\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Ho_le width:\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"Hol_e height:\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"Hole sp_acing:\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"_Number height:\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@advanced_defaults = internal global [7 x double] [double 6.950000e-01, double 4.000000e-02, double 5.800000e-02, double 5.200000e-02, double 8.100000e-02, double 8.100000e-02, double 5.200000e-02], align 16
@.str.78 = private unnamed_addr constant [10 x i8] c"Monospace\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"draw_number: Error in drawing text\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32 1, i32 12, i32 1, %struct._GimpParamDef* getelementptr inbounds ([12 x %struct._GimpParamDef], [12 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* @run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  store i32 -1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %5 = load i32, i32* @run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %do.end
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct.FilmVals* @filmvals to i8*))
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int327 = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_int327, align 4
  %call8 = call i32 @film_dialog(i32 %7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %8 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %8, 12
  br i1 %cmp, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.9
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 10
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_int3212 = bitcast %union._GimpParamData* %data11 to i32*
  %10 = load i32, i32* %d_int3212, align 4
  %cmp13 = icmp slt i32 %10, 1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.54

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int3217 = bitcast %union._GimpParamData* %data16 to i32*
  %12 = load i32, i32* %d_int3217, align 4
  %cmp18 = icmp sle i32 %12, 0
  %conv = zext i1 %cmp18 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 13), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 13), align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %15 = load i32, i32* %d_int3222, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 0), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 4
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data24 to %struct._GimpRGB*
  %17 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1) to i8*), i8* %17, i64 32, i32 8, i1 false)
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 5
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_int3227 = bitcast %union._GimpParamData* %data26 to i32*
  %19 = load i32, i32* %d_int3227, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 9), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 6
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data29 to i8**
  %21 = load i8*, i8** %d_string, align 8
  %call30 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 11, i32 0), i8* %21, i64 256)
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 7
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_color33 = bitcast %union._GimpParamData* %data32 to %struct._GimpRGB*
  %23 = bitcast %struct._GimpRGB* %d_color33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 10) to i8*), i8* %23, i64 32, i32 8, i1 false)
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 8
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_int3236 = bitcast %union._GimpParamData* %data35 to i32*
  %25 = load i32, i32* %d_int3236, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12, i64 0), align 4
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 9
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int3239 = bitcast %union._GimpParamData* %data38 to i32*
  %27 = load i32, i32* %d_int3239, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12, i64 1), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 10
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_int3242 = bitcast %union._GimpParamData* %data41 to i32*
  %29 = load i32, i32* %d_int3242, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 14), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 14), align 4
  %cmp43 = icmp sgt i32 %30, 64
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %cond.end
  store i32 64, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 14), align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %cond.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.46
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 14), align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %k, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 11
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data50 to i32**
  %35 = load i32*, i32** %d_int32array, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %35, i64 %idxprom
  %36 = load i32, i32* %arrayidx51, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 15), i32 0, i64 %idxprom52
  store i32 %36, i32* %arrayidx53, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %k, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %if.then.14
  br label %sw.epilog

sw.bb.55:                                         ; preds = %do.end
  %call56 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct.FilmVals* @filmvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.55, %if.end.54, %if.end
  %call57 = call i32 @check_filmvals()
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %sw.epilog
  store i32 1, i32* %status, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %sw.epilog
  %39 = load i32, i32* %status, align 4
  %cmp61 = icmp eq i32 %39, 3
  br i1 %cmp61, label %if.then.63, label %if.end.84

if.then.63:                                       ; preds = %if.end.60
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0)) #4
  %call65 = call i32 @gimp_progress_init(i8* %call64)
  %call66 = call i32 @film()
  store i32 %call66, i32* %image_ID, align 4
  %40 = load i32, i32* %image_ID, align 4
  %cmp67 = icmp slt i32 %40, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.then.63
  store i32 0, i32* %status, align 4
  br label %if.end.78

if.else.70:                                       ; preds = %if.then.63
  %41 = load i32, i32* %image_ID, align 4
  store i32 %41, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %42 = load i32, i32* %image_ID, align 4
  %call71 = call i32 @gimp_image_undo_enable(i32 %42)
  %43 = load i32, i32* %image_ID, align 4
  %call72 = call i32 @gimp_image_clean_all(i32 %43)
  %44 = load i32, i32* @run_mode, align 4
  %cmp73 = icmp ne i32 %44, 1
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.else.70
  %45 = load i32, i32* %image_ID, align 4
  %call76 = call i32 @gimp_display_new(i32 %45)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.else.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.69
  %46 = load i32, i32* @run_mode, align 4
  %cmp79 = icmp eq i32 %46, 0
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.78
  %call82 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* bitcast (%struct.FilmVals* @filmvals to i8*), i32 664)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.60
  %47 = load i32, i32* %status, align 4
  store i32 %47, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.84, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @film_dialog(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %dlg = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %num_images = alloca i32, align 4
  %iter_valid = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %image_ID22 = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
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
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
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
  %call14 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %notebook, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %21 = load i32, i32* %image_ID.addr, align 4
  call void @create_selection_tab(%struct._GtkWidget* %20, i32 %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @create_advanced_tab(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dialog_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDialog*
  %call19 = call i32 @gimp_dialog_run(%struct._GimpDialog* %27)
  %cmp = icmp eq i32 %call19, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %28 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  store i32 0, i32* %num_images, align 4
  %29 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 2), align 8
  %call20 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %29, %struct._GtkTreeIter* %iter)
  store i32 %call20, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %30 = load i32, i32* %iter_valid, align 4
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 2), align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %31, %struct._GtkTreeIter* %iter, i32 0, i32* %image_ID22, i32 -1)
  %32 = load i32, i32* %image_ID22, align 4
  %cmp23 = icmp sge i32 %32, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %33 = load i32, i32* %num_images, align 4
  %cmp25 = icmp slt i32 %33, 64
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %land.lhs.true
  %34 = load i32, i32* %image_ID22, align 4
  %35 = load i32, i32* %num_images, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %num_images, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 15), i32 0, i64 %idxprom
  store i32 %34, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 2), align 8
  %call28 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %36, %struct._GtkTreeIter* %iter)
  store i32 %call28, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %num_images, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 14), align 4
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %entry
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %38)
  %39 = load i32, i32* %run, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @g_strlcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_filmvals() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 9), align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 9), align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i8, i8* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 11, i64 0), align 1
  %conv = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %call = call i8* @strcpy(i8* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 11, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0)) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %3 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 14), align 4
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @film() #0 {
entry:
  %retval = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %hole = alloca i8*, align 8
  %film_height = alloca i32, align 4
  %film_width = alloca i32, align 4
  %picture_width = alloca i32, align 4
  %picture_height = alloca i32, align 4
  %picture_space = alloca i32, align 4
  %picture_x0 = alloca i32, align 4
  %picture_y0 = alloca i32, align 4
  %hole_offset = alloca i32, align 4
  %hole_width = alloca i32, align 4
  %hole_height = alloca i32, align 4
  %hole_space = alloca i32, align 4
  %hole_x = alloca i32, align 4
  %number_height = alloca i32, align 4
  %num_images = alloca i32, align 4
  %num_pictures = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %picture_count = alloca i32, align 4
  %f = alloca double, align 8
  %num_layers = alloca i32, align 4
  %image_ID_src = alloca i32*, align 8
  %image_ID_dst = alloca i32, align 4
  %layer_ID_src = alloca i32, align 4
  %layer_ID_dst = alloca i32, align 4
  %image_ID_tmp = alloca i32, align 4
  %layers = alloca i32*, align 8
  %drawable_dst = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn_dst = alloca %struct._GimpPixelRgn, align 8
  %new_layer = alloca i32, align 4
  %floating_sel = alloca i32, align 4
  store i32* null, i32** %layers, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 14), align 4
  store i32 %0, i32* %num_images, align 4
  store i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 15, i32 0), i32** %image_ID_src, align 8
  %1 = load i32, i32* %num_images, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @gimp_context_push()
  %call1 = call i32 @gimp_context_set_foreground(%struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 10))
  %call2 = call i32 @gimp_context_set_background(%struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1))
  %2 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 13), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %picture_height, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %num_images, align 4
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %image_ID_src, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %call5 = call i32 @gimp_image_height(i32 %7)
  store i32 %call5, i32* %height, align 4
  %8 = load i32, i32* %height, align 4
  %9 = load i32, i32* %picture_height, align 4
  %cmp6 = icmp sgt i32 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %10 = load i32, i32* %height, align 4
  store i32 %10, i32* %picture_height, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %picture_height, align 4
  %conv = sitofp i32 %12 to double
  %13 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 2), align 8
  %div = fdiv double %conv, %13
  %add = fadd double %div, 5.000000e-01
  %conv9 = fptosi double %add to i32
  store i32 %conv9, i32* %film_height, align 4
  %14 = load i32, i32* %film_height, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 0), align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 0), align 4
  store i32 %15, i32* %film_height, align 4
  %16 = load i32, i32* %film_height, align 4
  %conv10 = sitofp i32 %16 to double
  %17 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 2), align 8
  %mul = fmul double %conv10, %17
  %add11 = fadd double %mul, 5.000000e-01
  %conv12 = fptosi double %add11 to i32
  store i32 %conv12, i32* %picture_height, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %for.end
  %18 = load i32, i32* %film_height, align 4
  %conv14 = sitofp i32 %18 to double
  %19 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 3), align 8
  %mul15 = fmul double %conv14, %19
  %add16 = fadd double %mul15, 5.000000e-01
  %conv17 = fptosi double %add16 to i32
  store i32 %conv17, i32* %picture_space, align 4
  %20 = load i32, i32* %film_height, align 4
  %21 = load i32, i32* %picture_height, align 4
  %sub = sub nsw i32 %20, %21
  %div18 = sdiv i32 %sub, 2
  store i32 %div18, i32* %picture_y0, align 4
  %22 = load i32, i32* %film_height, align 4
  %conv19 = sitofp i32 %22 to double
  %23 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 8), align 8
  %mul20 = fmul double %conv19, %23
  %conv21 = fptosi double %mul20 to i32
  store i32 %conv21, i32* %number_height, align 4
  store i32 0, i32* %film_width, align 4
  store i32 0, i32* %num_pictures, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.60, %if.end.13
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %num_images, align 4
  %cmp23 = icmp slt i32 %24, %25
  br i1 %cmp23, label %for.body.25, label %for.end.62

for.body.25:                                      ; preds = %for.cond.22
  %26 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load i32*, i32** %image_ID_src, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %27, i64 %idxprom26
  %28 = load i32, i32* %arrayidx27, align 4
  %call28 = call i32* @gimp_image_get_layers(i32 %28, i32* %num_layers)
  store i32* %call28, i32** %layers, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load i32*, i32** %image_ID_src, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %30, i64 %idxprom29
  %31 = load i32, i32* %arrayidx30, align 4
  %call31 = call i32 @gimp_image_width(i32 %31)
  store i32 %call31, i32* %width, align 4
  %32 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i32*, i32** %image_ID_src, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %33, i64 %idxprom32
  %34 = load i32, i32* %arrayidx33, align 4
  %call34 = call i32 @gimp_image_height(i32 %34)
  store i32 %call34, i32* %height, align 4
  %35 = load i32, i32* %picture_height, align 4
  %conv35 = sitofp i32 %35 to double
  %36 = load i32, i32* %height, align 4
  %conv36 = sitofp i32 %36 to double
  %div37 = fdiv double %conv35, %conv36
  store double %div37, double* %f, align 8
  %37 = load i32, i32* %width, align 4
  %conv38 = sitofp i32 %37 to double
  %38 = load double, double* %f, align 8
  %mul39 = fmul double %conv38, %38
  %conv40 = fptosi double %mul39 to i32
  store i32 %conv40, i32* %picture_width, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.57, %for.body.25
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %num_layers, align 4
  %cmp42 = icmp slt i32 %39, %40
  br i1 %cmp42, label %for.body.44, label %for.end.59

for.body.44:                                      ; preds = %for.cond.41
  %41 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load i32*, i32** %layers, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %42, i64 %idxprom45
  %43 = load i32, i32* %arrayidx46, align 4
  %call47 = call i32 @gimp_layer_is_floating_sel(i32 %43)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.44
  br label %for.inc.57

if.end.50:                                        ; preds = %for.body.44
  %44 = load i32, i32* %picture_space, align 4
  %div51 = sdiv i32 %44, 2
  %45 = load i32, i32* %film_width, align 4
  %add52 = add nsw i32 %45, %div51
  store i32 %add52, i32* %film_width, align 4
  %46 = load i32, i32* %picture_width, align 4
  %47 = load i32, i32* %film_width, align 4
  %add53 = add nsw i32 %47, %46
  store i32 %add53, i32* %film_width, align 4
  %48 = load i32, i32* %picture_space, align 4
  %div54 = sdiv i32 %48, 2
  %49 = load i32, i32* %film_width, align 4
  %add55 = add nsw i32 %49, %div54
  store i32 %add55, i32* %film_width, align 4
  %50 = load i32, i32* %num_pictures, align 4
  %inc56 = add nsw i32 %50, 1
  store i32 %inc56, i32* %num_pictures, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.50, %if.then.49
  %51 = load i32, i32* %k, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %k, align 4
  br label %for.cond.41

for.end.59:                                       ; preds = %for.cond.41
  %52 = load i32*, i32** %layers, align 8
  %53 = bitcast i32* %52 to i8*
  call void @g_free(i8* %53)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %54 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %54, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.22

for.end.62:                                       ; preds = %for.cond.22
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0)) #4
  %55 = load i32, i32* %film_width, align 4
  %56 = load i32, i32* %film_height, align 4
  %call64 = call i32 @create_new_image(i8* %call63, i32 %55, i32 %56, i32 0, i32* %layer_ID_dst, %struct._GimpDrawable** %drawable_dst, %struct._GimpPixelRgn* %pixel_rgn_dst)
  store i32 %call64, i32* %image_ID_dst, align 4
  %57 = load i32, i32* %layer_ID_dst, align 4
  %call65 = call i32 @gimp_drawable_fill(i32 %57, i32 1)
  %58 = load i32, i32* %film_height, align 4
  %conv66 = sitofp i32 %58 to double
  %59 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 4), align 8
  %mul67 = fmul double %conv66, %59
  %conv68 = fptosi double %mul67 to i32
  store i32 %conv68, i32* %hole_offset, align 4
  %60 = load i32, i32* %film_height, align 4
  %conv69 = sitofp i32 %60 to double
  %61 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 5), align 8
  %mul70 = fmul double %conv69, %61
  %conv71 = fptosi double %mul70 to i32
  store i32 %conv71, i32* %hole_width, align 4
  %62 = load i32, i32* %film_height, align 4
  %conv72 = sitofp i32 %62 to double
  %63 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 6), align 8
  %mul73 = fmul double %conv72, %63
  %conv74 = fptosi double %mul73 to i32
  store i32 %conv74, i32* %hole_height, align 4
  %64 = load i32, i32* %film_height, align 4
  %conv75 = sitofp i32 %64 to double
  %65 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 7), align 8
  %mul76 = fmul double %conv75, %65
  %conv77 = fptosi double %mul76 to i32
  store i32 %conv77, i32* %hole_space, align 4
  %66 = load i32, i32* %hole_space, align 4
  %div78 = sdiv i32 %66, 2
  store i32 %div78, i32* %hole_x, align 4
  %67 = load i32, i32* %hole_width, align 4
  %68 = load i32, i32* %hole_height, align 4
  %call79 = call i8* @create_hole_rgb(i32 %67, i32 %68)
  store i8* %call79, i8** %hole, align 8
  %69 = load i8*, i8** %hole, align 8
  %tobool80 = icmp ne i8* %69, null
  br i1 %tobool80, label %if.then.81, label %if.end.88

if.then.81:                                       ; preds = %for.end.62
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.81
  %70 = load i32, i32* %hole_x, align 4
  %71 = load i32, i32* %film_width, align 4
  %cmp82 = icmp slt i32 %70, %71
  br i1 %cmp82, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %73 = load i32, i32* %hole_x, align 4
  %74 = load i32, i32* %hole_offset, align 4
  %75 = load i32, i32* %hole_width, align 4
  %76 = load i32, i32* %hole_height, align 4
  %77 = load i8*, i8** %hole, align 8
  call void @draw_hole_rgb(%struct._GimpDrawable* %72, i32 %73, i32 %74, i32 %75, i32 %76, i8* %77)
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  %79 = load i32, i32* %hole_x, align 4
  %80 = load i32, i32* %film_height, align 4
  %81 = load i32, i32* %hole_offset, align 4
  %sub84 = sub nsw i32 %80, %81
  %82 = load i32, i32* %hole_height, align 4
  %sub85 = sub nsw i32 %sub84, %82
  %83 = load i32, i32* %hole_width, align 4
  %84 = load i32, i32* %hole_height, align 4
  %85 = load i8*, i8** %hole, align 8
  call void @draw_hole_rgb(%struct._GimpDrawable* %78, i32 %79, i32 %sub85, i32 %83, i32 %84, i8* %85)
  %86 = load i32, i32* %hole_width, align 4
  %87 = load i32, i32* %hole_space, align 4
  %add86 = add nsw i32 %86, %87
  %88 = load i32, i32* %hole_x, align 4
  %add87 = add nsw i32 %88, %add86
  store i32 %add87, i32* %hole_x, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %89 = load i8*, i8** %hole, align 8
  call void @g_free(i8* %89)
  br label %if.end.88

if.end.88:                                        ; preds = %while.end, %for.end.62
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_dst, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %90)
  store i32 0, i32* %picture_x0, align 4
  store i32 0, i32* %picture_count, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.166, %if.end.88
  %91 = load i32, i32* %j, align 4
  %92 = load i32, i32* %num_images, align 4
  %cmp90 = icmp slt i32 %91, %92
  br i1 %cmp90, label %for.body.92, label %for.end.168

for.body.92:                                      ; preds = %for.cond.89
  %93 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %93 to i64
  %94 = load i32*, i32** %image_ID_src, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %94, i64 %idxprom93
  %95 = load i32, i32* %arrayidx94, align 4
  %call95 = call i32 @gimp_image_duplicate(i32 %95)
  store i32 %call95, i32* %image_ID_tmp, align 4
  %96 = load i32, i32* %image_ID_tmp, align 4
  %call96 = call i32 @gimp_image_width(i32 %96)
  store i32 %call96, i32* %width, align 4
  %97 = load i32, i32* %image_ID_tmp, align 4
  %call97 = call i32 @gimp_image_height(i32 %97)
  store i32 %call97, i32* %height, align 4
  %98 = load i32, i32* %picture_height, align 4
  %conv98 = sitofp i32 %98 to double
  %99 = load i32, i32* %height, align 4
  %conv99 = sitofp i32 %99 to double
  %div100 = fdiv double %conv98, %conv99
  store double %div100, double* %f, align 8
  %100 = load i32, i32* %width, align 4
  %conv101 = sitofp i32 %100 to double
  %101 = load double, double* %f, align 8
  %mul102 = fmul double %conv101, %101
  %conv103 = fptosi double %mul102 to i32
  store i32 %conv103, i32* %picture_width, align 4
  %102 = load i32, i32* %image_ID_tmp, align 4
  %call104 = call i32 @gimp_image_base_type(i32 %102)
  %cmp105 = icmp ne i32 %call104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %for.body.92
  %103 = load i32, i32* %image_ID_tmp, align 4
  %call108 = call i32 @gimp_image_convert_rgb(i32 %103)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %for.body.92
  %104 = load i32, i32* %image_ID_tmp, align 4
  %105 = load i32, i32* %picture_width, align 4
  %106 = load i32, i32* %picture_height, align 4
  %call110 = call i32 @gimp_image_scale(i32 %104, i32 %105, i32 %106)
  %107 = load i32, i32* %image_ID_tmp, align 4
  %call111 = call i32* @gimp_image_get_layers(i32 %107, i32* %num_layers)
  store i32* %call111, i32** %layers, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.162, %if.end.109
  %108 = load i32, i32* %k, align 4
  %109 = load i32, i32* %num_layers, align 4
  %cmp113 = icmp slt i32 %108, %109
  br i1 %cmp113, label %for.body.115, label %for.end.164

for.body.115:                                     ; preds = %for.cond.112
  %110 = load i32, i32* %k, align 4
  %idxprom116 = sext i32 %110 to i64
  %111 = load i32*, i32** %layers, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %111, i64 %idxprom116
  %112 = load i32, i32* %arrayidx117, align 4
  %call118 = call i32 @gimp_layer_is_floating_sel(i32 %112)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %for.body.115
  br label %for.inc.162

if.end.121:                                       ; preds = %for.body.115
  %113 = load i32, i32* %picture_space, align 4
  %div122 = sdiv i32 %113, 2
  %114 = load i32, i32* %picture_x0, align 4
  %add123 = add nsw i32 %114, %div122
  store i32 %add123, i32* %picture_x0, align 4
  %115 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %115 to i64
  %116 = load i32*, i32** %layers, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %116, i64 %idxprom124
  %117 = load i32, i32* %arrayidx125, align 4
  store i32 %117, i32* %layer_ID_src, align 4
  %118 = load i32, i32* %layer_ID_src, align 4
  %call126 = call i32 @gimp_layer_resize_to_image_size(i32 %118)
  %119 = load i32, i32* %layer_ID_src, align 4
  %120 = load i32, i32* %image_ID_dst, align 4
  %call127 = call i32 @gimp_layer_new_from_drawable(i32 %119, i32 %120)
  store i32 %call127, i32* %new_layer, align 4
  %121 = load i32, i32* %image_ID_dst, align 4
  %122 = load i32, i32* %new_layer, align 4
  %call128 = call i32 @gimp_image_insert_layer(i32 %121, i32 %122, i32 -1, i32 -1)
  %123 = load i32, i32* %new_layer, align 4
  %124 = load i32, i32* %picture_x0, align 4
  %125 = load i32, i32* %picture_y0, align 4
  %call129 = call i32 @gimp_layer_set_offsets(i32 %123, i32 %124, i32 %125)
  %126 = load i32, i32* %number_height, align 4
  %cmp130 = icmp sgt i32 %126, 0
  br i1 %cmp130, label %land.lhs.true, label %if.end.152

land.lhs.true:                                    ; preds = %if.end.121
  %127 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12, i64 0), align 4
  %tobool132 = icmp ne i32 %127, 0
  br i1 %tobool132, label %if.then.134, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %128 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12, i64 1), align 4
  %tobool133 = icmp ne i32 %128, 0
  br i1 %tobool133, label %if.then.134, label %if.end.152

if.then.134:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %129 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12, i64 0), align 4
  %tobool135 = icmp ne i32 %129, 0
  br i1 %tobool135, label %if.then.136, label %if.end.142

if.then.136:                                      ; preds = %if.then.134
  %130 = load i32, i32* %layer_ID_dst, align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 9), align 4
  %132 = load i32, i32* %picture_count, align 4
  %add137 = add nsw i32 %131, %132
  %133 = load i32, i32* %picture_x0, align 4
  %134 = load i32, i32* %picture_width, align 4
  %div138 = sdiv i32 %134, 2
  %add139 = add nsw i32 %133, %div138
  %135 = load i32, i32* %hole_offset, align 4
  %136 = load i32, i32* %number_height, align 4
  %sub140 = sub nsw i32 %135, %136
  %div141 = sdiv i32 %sub140, 2
  %137 = load i32, i32* %number_height, align 4
  call void @draw_number(i32 %130, i32 %add137, i32 %add139, i32 %div141, i32 %137)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.136, %if.then.134
  %138 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12, i64 1), align 4
  %tobool143 = icmp ne i32 %138, 0
  br i1 %tobool143, label %if.then.144, label %if.end.151

if.then.144:                                      ; preds = %if.end.142
  %139 = load i32, i32* %layer_ID_dst, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 9), align 4
  %141 = load i32, i32* %picture_count, align 4
  %add145 = add nsw i32 %140, %141
  %142 = load i32, i32* %picture_x0, align 4
  %143 = load i32, i32* %picture_width, align 4
  %div146 = sdiv i32 %143, 2
  %add147 = add nsw i32 %142, %div146
  %144 = load i32, i32* %film_height, align 4
  %145 = load i32, i32* %hole_offset, align 4
  %146 = load i32, i32* %number_height, align 4
  %add148 = add nsw i32 %145, %146
  %div149 = sdiv i32 %add148, 2
  %sub150 = sub nsw i32 %144, %div149
  %147 = load i32, i32* %number_height, align 4
  call void @draw_number(i32 %139, i32 %add145, i32 %add147, i32 %sub150, i32 %147)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.144, %if.end.142
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %lor.lhs.false, %if.end.121
  %148 = load i32, i32* %picture_width, align 4
  %149 = load i32, i32* %picture_space, align 4
  %div153 = sdiv i32 %149, 2
  %add154 = add nsw i32 %148, %div153
  %150 = load i32, i32* %picture_x0, align 4
  %add155 = add nsw i32 %150, %add154
  store i32 %add155, i32* %picture_x0, align 4
  %151 = load i32, i32* %picture_count, align 4
  %add156 = add nsw i32 %151, 1
  %conv157 = sitofp i32 %add156 to double
  %152 = load i32, i32* %num_pictures, align 4
  %conv158 = sitofp i32 %152 to double
  %div159 = fdiv double %conv157, %conv158
  %call160 = call i32 @gimp_progress_update(double %div159)
  %153 = load i32, i32* %picture_count, align 4
  %inc161 = add nsw i32 %153, 1
  store i32 %inc161, i32* %picture_count, align 4
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.152, %if.then.120
  %154 = load i32, i32* %k, align 4
  %inc163 = add nsw i32 %154, 1
  store i32 %inc163, i32* %k, align 4
  br label %for.cond.112

for.end.164:                                      ; preds = %for.cond.112
  %155 = load i32*, i32** %layers, align 8
  %156 = bitcast i32* %155 to i8*
  call void @g_free(i8* %156)
  %157 = load i32, i32* %image_ID_tmp, align 4
  %call165 = call i32 @gimp_image_delete(i32 %157)
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end.164
  %158 = load i32, i32* %j, align 4
  %inc167 = add nsw i32 %158, 1
  store i32 %inc167, i32* %j, align 4
  br label %for.cond.89

for.end.168:                                      ; preds = %for.cond.89
  %call169 = call i32 @gimp_progress_update(double 1.000000e+00)
  %159 = load i32, i32* %image_ID_dst, align 4
  %call170 = call i32 @gimp_image_flatten(i32 %159)
  %160 = load i32, i32* %image_ID_dst, align 4
  %call171 = call i32 @gimp_image_get_floating_sel(i32 %160)
  store i32 %call171, i32* %floating_sel, align 4
  %161 = load i32, i32* %floating_sel, align 4
  %cmp172 = icmp ne i32 %161, -1
  br i1 %cmp172, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %for.end.168
  %162 = load i32, i32* %floating_sel, align 4
  %call175 = call i32 @gimp_floating_sel_anchor(i32 %162)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %for.end.168
  %call177 = call i32 @gimp_context_pop()
  %163 = load i32, i32* %image_ID_dst, align 4
  store i32 %163, i32* %retval
  br label %return

return:                                           ; preds = %if.end.176, %if.then
  %164 = load i32, i32* %retval
  ret i32 %164
}

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @gimp_image_clean_all(i32) #1

declare i32 @gimp_display_new(i32) #1

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

declare %struct._GtkWidget* @gtk_notebook_new() #1

; Function Attrs: nounwind uwtable
define internal void @create_selection_tab(%struct._GtkWidget* %notebook, i32 %image_ID) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %image_ID.addr = alloca i32, align 4
  %group = alloca %struct._GtkSizeGroup*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %font_button = alloca %struct._GtkWidget*, align 8
  %image_id_list = alloca i32*, align 8
  %nimages = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_notebook_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkNotebook*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0)) #4
  %call6 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call5)
  %call7 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %5, %struct._GtkWidget* %6, %struct._GtkWidget* %call6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %vbox2, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 0, i32 0, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call11 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call11, %struct._GtkSizeGroup** %group, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #4
  %call13 = call %struct._GtkWidget* @gimp_frame_new(i8* %call12)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %frame, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 0, i32 0, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call16 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %vbox, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %20, %struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0)) #4
  %call20 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call19)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %toggle, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 0, i32 0, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 13) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call24 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %table, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %32, i32 6)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %35, i32 6)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call29)
  %38 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %41 to double
  %call31 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 1.000000e+01, double 2.621440e+05, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %spinbutton, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call32)
  %44 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0)) #4
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call35 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %44, i32 0, i32 0, i8* %call34, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %45, i32 1, i32 1)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %label, align 8
  %46 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %46, %struct._GtkWidget* %47)
  %48 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %49 = bitcast %struct._GtkSizeGroup* %48 to i8*
  call void @g_object_unref(i8* %49)
  %50 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %51 = bitcast %struct._GtkObject* %50 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.FilmVals* @filmvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %call37 = call %struct._GBinding* @g_object_bind_property(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 6)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_container_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call38)
  %60 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkContainer*
  %call40 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %60)
  %call41 = call i8* @g_list_nth_data(%struct._GList* %call40, i32 1)
  %call42 = call %struct._GBinding* @g_object_bind_property(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* %call41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 6)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_toggle_button_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call43)
  %63 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkToggleButton*
  %64 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 13), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %63, i32 %64)
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0)) #4
  %call46 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call45, i32 50, i32 20, %struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1), i32 0)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %button, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call47)
  %67 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0)) #4
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call50 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %67, i32 0, i32 1, i8* %call49, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %68, i32 1, i32 0)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %label, align 8
  %69 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %69, %struct._GtkWidget* %70)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0)) #4
  %call53 = call %struct._GtkWidget* @gimp_frame_new(i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %frame, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call54)
  %75 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %75, %struct._GtkWidget* %76, i32 1, i32 1, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %call56 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %vbox, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_container_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call57)
  %80 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkContainer*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %80, %struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call59 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %table, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call60)
  %85 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %85, i32 6)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_table_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call62)
  %88 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %88, i32 6)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call64)
  %91 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %91, %struct._GtkWidget* %92, i32 0, i32 0, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %93)
  %94 = load i32, i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 9), align 4
  %conv66 = sitofp i32 %94 to double
  %call67 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv66, double 0.000000e+00, double 2.621440e+05, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %spinbutton, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_table_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call68)
  %97 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTable*
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0)) #4
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call71 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %97, i32 0, i32 0, i8* %call70, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %98, i32 1, i32 1)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %label, align 8
  %99 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %99, %struct._GtkWidget* %100)
  %101 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %102 = bitcast %struct._GtkObject* %101 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call73 = call %struct._GtkWidget* @gimp_font_select_button_new(i8* null, i8* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 11, i32 0))
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %font_button, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %font_button, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), void ()* bitcast (void (%struct._GimpFontSelectButton*, i8*, i32, i8*)* @film_font_select_callback to void ()*), i8* bitcast (%struct.FilmVals* @filmvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call75)
  %107 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0)) #4
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %font_button, align 8
  %call78 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %107, i32 0, i32 1, i8* %call77, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %108, i32 1, i32 0)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %label, align 8
  %109 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %109, %struct._GtkWidget* %110)
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0)) #4
  %call80 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call79, i32 50, i32 20, %struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 10), i32 0)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %button, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_table_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call81)
  %113 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkTable*
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0)) #4
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call84 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %113, i32 0, i32 2, i8* %call83, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %114, i32 1, i32 0)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %label, align 8
  %115 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %115, %struct._GtkWidget* %116)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %118 = bitcast %struct._GtkWidget* %117 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %119 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %119, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %120 = load i32, i32* %j, align 4
  %tobool = icmp ne i32 %120, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0)) #4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call87, %cond.true ], [ %call88, %cond.false ]
  %call89 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %cond)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %toggle, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call90)
  %123 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %123, %struct._GtkWidget* %124, i32 0, i32 0, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_toggle_button_get_type() #5
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call92)
  %127 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkToggleButton*
  %128 = load i32, i32* %j, align 4
  %idxprom = sext i32 %128 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12), i32 0, i64 %idxprom
  %129 = load i32, i32* %arrayidx, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %127, i32 %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %132 = bitcast %struct._GtkWidget* %131 to i8*
  %133 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %133 to i64
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 12), i32 0, i64 %idxprom94
  %134 = bitcast i32* %arrayidx95 to i8*
  %call96 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %135 = load i32, i32* %j, align 4
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0)) #4
  %call98 = call %struct._GtkWidget* @gimp_frame_new(i8* %call97)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %frame, align 8
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call99)
  %138 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %138, %struct._GtkWidget* %139, i32 1, i32 1, i32 0)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %140)
  %call101 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %hbox, align 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_box_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call102)
  %143 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %143, i32 1)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_container_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call104)
  %146 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkContainer*
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %146, %struct._GtkWidget* %147)
  %call106 = call i32* @gimp_image_list(i32* %nimages)
  store i32* %call106, i32** %image_id_list, align 8
  %148 = load i32, i32* %nimages, align 4
  %149 = load i32*, i32** %image_id_list, align 8
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call107 = call %struct._GtkTreeModel* @add_image_list(i32 1, i32 %148, i32* %149, %struct._GtkWidget* %150)
  store %struct._GtkTreeModel* %call107, %struct._GtkTreeModel** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 1), align 8
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call108 = call %struct._GtkTreeModel* @add_image_list(i32 0, i32 1, i32* %image_ID.addr, %struct._GtkWidget* %151)
  store %struct._GtkTreeModel* %call108, %struct._GtkTreeModel** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 2), align 8
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_advanced_tab(%struct._GtkWidget* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %row = alloca i32, align 4
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.68, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @gimp_frame_new(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_notebook_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkNotebook*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0)) #4
  %call7 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call6)
  %call8 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %5, %struct._GtkWidget* %6, %struct._GtkWidget* %call7)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %vbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call10)
  %10 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %10, %struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call12 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 3, i32 0)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %table, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %18, i32 6)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_table_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %21, i32 1, i32 12)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %24, i32 5, i32 12)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  store i32 0, i32* %row, align 4
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %33 = load i32, i32* %row, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %row, align 4
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0)) #4
  %34 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 2), align 8
  %call26 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %32, i32 0, i32 %33, i8* %call25, i32 0, i32 0, double %34, double 0.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call26, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call26, %struct._GtkObject** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0, i64 0), align 8
  %35 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %36 = bitcast %struct._GtkObject* %35 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  %40 = load i32, i32* %row, align 4
  %inc30 = add nsw i32 %40, 1
  store i32 %inc30, i32* %row, align 4
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0)) #4
  %41 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 3), align 8
  %call32 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 %40, i8* %call31, i32 0, i32 0, double %41, double 0.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call32, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call32, %struct._GtkObject** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0, i64 1), align 8
  %42 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %43 = bitcast %struct._GtkObject* %42 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call34)
  %46 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %47 = load i32, i32* %row, align 4
  %inc36 = add nsw i32 %47, 1
  store i32 %inc36, i32* %row, align 4
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0)) #4
  %48 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 4), align 8
  %call38 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %46, i32 0, i32 %47, i8* %call37, i32 0, i32 0, double %48, double 0.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call38, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call38, %struct._GtkObject** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0, i64 2), align 8
  %49 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %50 = bitcast %struct._GtkObject* %49 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call40)
  %53 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %54 = load i32, i32* %row, align 4
  %inc42 = add nsw i32 %54, 1
  store i32 %inc42, i32* %row, align 4
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0)) #4
  %55 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 5), align 8
  %call44 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %53, i32 0, i32 %54, i8* %call43, i32 0, i32 0, double %55, double 0.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call44, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call44, %struct._GtkObject** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0, i64 3), align 8
  %56 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %57 = bitcast %struct._GtkObject* %56 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call46)
  %60 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %61 = load i32, i32* %row, align 4
  %inc48 = add nsw i32 %61, 1
  store i32 %inc48, i32* %row, align 4
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0)) #4
  %62 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 6), align 8
  %call50 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %60, i32 0, i32 %61, i8* %call49, i32 0, i32 0, double %62, double 0.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call50, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call50, %struct._GtkObject** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0, i64 4), align 8
  %63 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %64 = bitcast %struct._GtkObject* %63 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call52)
  %67 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  %68 = load i32, i32* %row, align 4
  %inc54 = add nsw i32 %68, 1
  store i32 %inc54, i32* %row, align 4
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0)) #4
  %69 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 7), align 8
  %call56 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %67, i32 0, i32 %68, i8* %call55, i32 0, i32 0, double %69, double 0.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call56, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call56, %struct._GtkObject** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0, i64 5), align 8
  %70 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %71 = bitcast %struct._GtkObject* %70 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call58)
  %74 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %75 = load i32, i32* %row, align 4
  %inc60 = add nsw i32 %75, 1
  store i32 %inc60, i32* %row, align 4
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0)) #4
  %76 = load double, double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 8), align 8
  %call62 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %74, i32 0, i32 %75, i8* %call61, i32 0, i32 0, double %76, double 0.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call62, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %call62, %struct._GtkObject** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0, i64 6), align 8
  %77 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %78 = bitcast %struct._GtkObject* %77 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call64 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %hbox, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_box_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call65)
  %81 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkBox*
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %81, %struct._GtkWidget* %82, i32 0, i32 0, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %call67 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0))
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %button, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call68)
  %86 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %86, %struct._GtkWidget* %87, i32 0, i32 0, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @film_reset_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare %struct._GtkWidget* @gimp_font_select_button_new(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @film_font_select_callback(%struct._GimpFontSelectButton* %button, i8* %name, i32 %closing, i8* %data) #0 {
entry:
  %button.addr = alloca %struct._GimpFontSelectButton*, align 8
  %name.addr = alloca i8*, align 8
  %closing.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %vals = alloca %struct.FilmVals*, align 8
  store %struct._GimpFontSelectButton* %button, %struct._GimpFontSelectButton** %button.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.FilmVals*
  store %struct.FilmVals* %1, %struct.FilmVals** %vals, align 8
  %2 = load %struct.FilmVals*, %struct.FilmVals** %vals, align 8
  %number_font = getelementptr inbounds %struct.FilmVals, %struct.FilmVals* %2, i32 0, i32 11
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %number_font, i32 0, i32 0
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i64 @g_strlcpy(i8* %arraydecay, i8* %3, i64 256)
  ret void
}

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare i32* @gimp_image_list(i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkTreeModel* @add_image_list(i32 %add_box_flag, i32 %n, i32* %image_id, %struct._GtkWidget* %hbox) #0 {
entry:
  %add_box_flag.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %image_id.addr = alloca i32*, align 8
  %hbox.addr = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %tv = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %i = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %name = alloca i8*, align 8
  store i32 %add_box_flag, i32* %add_box_flag.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %image_id, i32** %image_id.addr, align 8
  store %struct._GtkWidget* %hbox, %struct._GtkWidget** %hbox.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %2, %struct._GtkWidget* %3, i32 1, i32 1, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %5 = load i32, i32* %add_box_flag.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %call4, %cond.false ]
  %call5 = call %struct._GtkWidget* @gtk_label_new(i8* %cond)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %label, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_misc_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %8, float 0.000000e+00, float 5.000000e-01)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call10 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %scrolled_win, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_scrolled_window_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %16, i32 1)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_scrolled_window_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %19, i32 1, i32 1)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 1, i32 1, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %call17 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 24, i64 64)
  store %struct._GtkListStore* %call17, %struct._GtkListStore** %store, align 8
  %25 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %26 = bitcast %struct._GtkListStore* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tree_model_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTreeModel*
  %call20 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %27)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %tv, align 8
  %28 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %29 = bitcast %struct._GtkListStore* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_tree_view_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %32, i32 0)
  %33 = load i32, i32* %add_box_flag.addr, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_view_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_reorderable(%struct._GtkTreeView* %36, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_tree_view_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTreeView*
  %call28 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call29 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %39, i32 0, i8* null, %struct._GtkCellRenderer* %call28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 1, i8* null)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %42, %struct._GtkWidget* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_tree_view_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call32)
  %47 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTreeView*
  %call34 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %47)
  store %struct._GtkTreeSelection* %call34, %struct._GtkTreeSelection** %sel, align 8
  %48 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %48, i32 3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %49, %50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %51, %struct._GtkTreeIter* %iter)
  %52 = load i32, i32* %i, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load i32*, i32** %image_id.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %53, i64 %idxprom
  %54 = load i32, i32* %arrayidx, align 4
  %call35 = call i8* @compose_image_name(i32 %54)
  store i8* %call35, i8** %name, align 8
  %55 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %56 to i64
  %57 = load i32*, i32** %image_id.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %57, i64 %idxprom36
  %58 = load i32, i32* %arrayidx37, align 4
  %59 = load i8*, i8** %name, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %55, %struct._GtkTreeIter* %iter, i32 0, i32 %58, i32 1, i8* %59, i32 -1)
  %60 = load i8*, i8** %name, align 8
  call void @g_free(i8* %60)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %add_box_flag.addr, align 4
  %tobool38 = icmp ne i32 %62, 0
  %cond39 = select i1 %tobool38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0)
  %call40 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* %cond39)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %button, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call41)
  %65 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 0, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %70 = load i32, i32* %add_box_flag.addr, align 4
  %tobool43 = icmp ne i32 %70, 0
  %cond44 = select i1 %tobool43, void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkTreeSelection*)* @add_list_item_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkTreeSelection*)* @del_list_item_callback to void ()*)
  %71 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %72 = bitcast %struct._GtkTreeSelection* %71 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), void ()* %cond44, i8* %72, void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %74 = bitcast %struct._GtkListStore* %73 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_tree_model_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call46)
  %75 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTreeModel*
  ret %struct._GtkTreeModel* %75
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #3

declare void @gtk_tree_view_set_reorderable(%struct._GtkTreeView*, i32) #1

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal i8* @compose_image_name(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %image_name = alloca i8*, align 8
  %name = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_name(i32 %0)
  store i8* %call, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %2 = load i32, i32* %image_ID.addr, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* %1, i32 %2)
  store i8* %call1, i8** %image_name, align 8
  %3 = load i8*, i8** %name, align 8
  call void @g_free(i8* %3)
  %4 = load i8*, i8** %image_name, align 8
  ret i8* %4
}

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @add_list_item_callback(%struct._GtkWidget* %widget, %struct._GtkTreeSelection* %sel) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %paths = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %image_ID = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model)
  store %struct._GList* %call, %struct._GList** %paths, align 8
  %1 = load %struct._GList*, %struct._GList** %paths, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GtkTreePath*
  %call1 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 0, i32* %image_ID, i32 1, i8** %name, i32 -1)
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 2), align 8
  %9 = bitcast %struct._GtkTreeModel* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_list_store_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkListStore*
  call void @gtk_list_store_append(%struct._GtkListStore* %10, %struct._GtkTreeIter* %iter)
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 2), align 8
  %12 = bitcast %struct._GtkTreeModel* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_list_store_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkListStore*
  %14 = load i32, i32* %image_ID, align 4
  %15 = load i8*, i8** %name, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %13, %struct._GtkTreeIter* %iter, i32 0, i32 %14, i32 1, i8* %15, i32 -1)
  %16 = load i8*, i8** %name, align 8
  call void @g_free(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data7 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data7, align 8
  %19 = bitcast i8* %18 to %struct._GtkTreePath*
  call void @gtk_tree_path_free(%struct._GtkTreePath* %19)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %20, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %paths, align 8
  call void @g_list_free(%struct._GList* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @del_list_item_callback(%struct._GtkWidget* %widget, %struct._GtkTreeSelection* %sel) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %paths = alloca %struct._GList*, align 8
  %references = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %ref = alloca %struct._GtkTreeRowReference*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GList* null, %struct._GList** %references, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model)
  store %struct._GList* %call, %struct._GList** %paths, align 8
  %1 = load %struct._GList*, %struct._GList** %paths, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GtkTreePath*
  %call1 = call %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel* %3, %struct._GtkTreePath* %6)
  store %struct._GtkTreeRowReference* %call1, %struct._GtkTreeRowReference** %ref, align 8
  %7 = load %struct._GList*, %struct._GList** %references, align 8
  %8 = load %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %ref, align 8
  %9 = bitcast %struct._GtkTreeRowReference* %8 to i8*
  %call2 = call %struct._GList* @g_list_prepend(%struct._GList* %7, i8* %9)
  store %struct._GList* %call2, %struct._GList** %references, align 8
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data3 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data3, align 8
  %12 = bitcast i8* %11 to %struct._GtkTreePath*
  call void @gtk_tree_path_free(%struct._GtkTreePath* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %13, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %paths, align 8
  call void @g_list_free(%struct._GList* %16)
  %17 = load %struct._GList*, %struct._GList** %references, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %cond.end.21, %for.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %18, null
  br i1 %tobool6, label %for.body.7, label %for.end.23

for.body.7:                                       ; preds = %for.cond.5
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data8, align 8
  %21 = bitcast i8* %20 to %struct._GtkTreeRowReference*
  %call9 = call %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference* %21)
  store %struct._GtkTreePath* %call9, %struct._GtkTreePath** %path, align 8
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %23 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call10 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %23)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %25 = bitcast %struct._GtkTreeModel* %24 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_list_store_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call12)
  %26 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkListStore*
  %call14 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %26, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  %27 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %27)
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %data15 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data15, align 8
  %30 = bitcast i8* %29 to %struct._GtkTreeRowReference*
  call void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference* %30)
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %31, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %for.inc.16
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next19 = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next19, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.inc.16
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi %struct._GList* [ %33, %cond.true.18 ], [ null, %cond.false.20 ]
  store %struct._GList* %cond22, %struct._GList** %list, align 8
  br label %for.cond.5

for.end.23:                                       ; preds = %for.cond.5
  %34 = load %struct._GList*, %struct._GList** %references, align 8
  call void @g_list_free(%struct._GList* %34)
  ret void
}

declare i8* @gimp_image_get_name(i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection*, %struct._GtkTreeModel**) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel*, %struct._GtkTreePath*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference*) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference*) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @film_reset_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* getelementptr inbounds (%struct.FilmInterface, %struct.FilmInterface* @filmint, i32 0, i32 0), i32 0, i64 %idxprom
  %2 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx, align 8
  %3 = bitcast %struct._GtkObject* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkAdjustment*
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [7 x double], [7 x double]* @advanced_defaults, i32 0, i64 %idxprom3
  %6 = load double, double* %arrayidx4, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %4, double %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @gimp_context_push() #1

declare i32 @gimp_context_set_foreground(%struct._GimpRGB*) #1

declare i32 @gimp_context_set_background(%struct._GimpRGB*) #1

declare i32 @gimp_image_height(i32) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_layer_is_floating_sel(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @create_new_image(i8* %filename, i32 %width, i32 %height, i32 %gdtype, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %gdtype.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32*, align 8
  %drawable.addr = alloca %struct._GimpDrawable**, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %image_ID = alloca i32, align 4
  %gitype = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %gdtype, i32* %gdtype.addr, align 4
  store i32* %layer_ID, i32** %layer_ID.addr, align 8
  store %struct._GimpDrawable** %drawable, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load i32, i32* %gdtype.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %gdtype.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %gitype, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %gdtype.addr, align 4
  %cmp2 = icmp eq i32 %2, 4
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.else
  %3 = load i32, i32* %gdtype.addr, align 4
  %cmp4 = icmp eq i32 %3, 5
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.else
  store i32 2, i32* %gitype, align 4
  br label %if.end

if.else.6:                                        ; preds = %lor.lhs.false.3
  store i32 0, i32* %gitype, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %6 = load i32, i32* %gitype, align 4
  %call = call i32 @gimp_image_new(i32 %4, i32 %5, i32 %6)
  store i32 %call, i32* %image_ID, align 4
  %7 = load i32, i32* %image_ID, align 4
  %8 = load i8*, i8** %filename.addr, align 8
  %call8 = call i32 @gimp_image_set_filename(i32 %7, i8* %8)
  %9 = load i32, i32* %image_ID, align 4
  %call9 = call i32 @gimp_image_undo_disable(i32 %9)
  %10 = load i32, i32* %image_ID, align 4
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0)) #4
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %13 = load i32, i32* %gdtype.addr, align 4
  %call11 = call i32 @gimp_layer_new(i32 %10, i8* %call10, i32 %11, i32 %12, i32 %13, double 1.000000e+02, i32 0)
  %14 = load i32*, i32** %layer_ID.addr, align 8
  store i32 %call11, i32* %14, align 4
  %15 = load i32, i32* %image_ID, align 4
  %16 = load i32*, i32** %layer_ID.addr, align 8
  %17 = load i32, i32* %16, align 4
  %call12 = call i32 @gimp_image_insert_layer(i32 %15, i32 %17, i32 -1, i32 0)
  %18 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %tobool = icmp ne %struct._GimpDrawable** %18, null
  br i1 %tobool, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.7
  %19 = load i32*, i32** %layer_ID.addr, align 8
  %20 = load i32, i32* %19, align 4
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %20)
  %21 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpDrawable* %call14, %struct._GimpDrawable** %21, align 8
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %cmp15 = icmp ne %struct._GimpPixelRgn* %22, null
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.13
  %23 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %24 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %24, align 8
  %26 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %26, align 8
  %width17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 1
  %28 = load i32, i32* %width17, align 4
  %29 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %29, align 8
  %height18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height18, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %23, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %28, i32 %31, i32 1, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.7
  %32 = load i32, i32* %image_ID, align 4
  ret i32 %32
}

declare i32 @gimp_drawable_fill(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @create_hole_rgb(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %hole = alloca i8*, align 8
  %top = alloca i8*, align 8
  %bottom = alloca i8*, align 8
  %radius = alloca i32, align 4
  %length = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %0, %1
  %mul1 = mul nsw i32 %mul, 3
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %hole, align 8
  %2 = load i8*, i8** %hole, align 8
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %mul2 = mul nsw i32 %3, %4
  %mul3 = mul nsw i32 %mul2, 3
  %conv4 = sext i32 %mul3 to i64
  call void @llvm.memset.p0i8.i64(i8* %2, i8 -1, i64 %conv4, i32 1, i1 false)
  %5 = load i32, i32* %height.addr, align 4
  %div = sdiv i32 %5, 4
  store i32 %div, i32* %radius, align 4
  %6 = load i32, i32* %radius, align 4
  %7 = load i32, i32* %width.addr, align 4
  %div5 = sdiv i32 %7, 2
  %cmp = icmp sgt i32 %6, %div5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %width.addr, align 4
  %div7 = sdiv i32 %8, 2
  store i32 %div7, i32* %radius, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %hole, align 8
  store i8* %9, i8** %top, align 8
  %10 = load i8*, i8** %hole, align 8
  %11 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %width.addr, align 4
  %mul8 = mul nsw i32 %sub, %12
  %mul9 = mul nsw i32 %mul8, 3
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %bottom, align 8
  %13 = load i32, i32* %radius, align 4
  %sub10 = sub nsw i32 %13, 1
  store i32 %sub10, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %k, align 4
  %cmp11 = icmp sgt i32 %14, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %radius, align 4
  %conv13 = sitofp i32 %15 to double
  %16 = load i32, i32* %radius, align 4
  %17 = load i32, i32* %radius, align 4
  %mul14 = mul nsw i32 %16, %17
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %k, align 4
  %mul15 = mul nsw i32 %18, %19
  %sub16 = sub nsw i32 %mul14, %mul15
  %conv17 = sitofp i32 %sub16 to double
  %call18 = call double @sqrt(double %conv17) #4
  %sub19 = fsub double %conv13, %call18
  %sub20 = fsub double %sub19, 5.000000e-01
  %conv21 = fptosi double %sub20 to i32
  store i32 %conv21, i32* %length, align 4
  %20 = load i32, i32* %length, align 4
  %cmp22 = icmp sgt i32 %20, 0
  br i1 %cmp22, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %for.body
  %21 = load i32, i32* %length, align 4
  %22 = load i8*, i8** %top, align 8
  call void @set_pixels(i32 %21, i8* %22, %struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1))
  %23 = load i32, i32* %length, align 4
  %24 = load i8*, i8** %top, align 8
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %length, align 4
  %sub25 = sub nsw i32 %25, %26
  %mul26 = mul nsw i32 %sub25, 3
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %24, i64 %idx.ext27
  call void @set_pixels(i32 %23, i8* %add.ptr28, %struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1))
  %27 = load i32, i32* %length, align 4
  %28 = load i8*, i8** %bottom, align 8
  call void @set_pixels(i32 %27, i8* %28, %struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1))
  %29 = load i32, i32* %length, align 4
  %30 = load i8*, i8** %bottom, align 8
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %length, align 4
  %sub29 = sub nsw i32 %31, %32
  %mul30 = mul nsw i32 %sub29, 3
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %30, i64 %idx.ext31
  call void @set_pixels(i32 %29, i8* %add.ptr32, %struct._GimpRGB* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 1))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.24, %for.body
  %33 = load i32, i32* %width.addr, align 4
  %mul34 = mul nsw i32 %33, 3
  %34 = load i8*, i8** %top, align 8
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %34, i64 %idx.ext35
  store i8* %add.ptr36, i8** %top, align 8
  %35 = load i32, i32* %width.addr, align 4
  %mul37 = mul nsw i32 %35, 3
  %36 = load i8*, i8** %bottom, align 8
  %idx.ext38 = sext i32 %mul37 to i64
  %idx.neg = sub i64 0, %idx.ext38
  %add.ptr39 = getelementptr inbounds i8, i8* %36, i64 %idx.neg
  store i8* %add.ptr39, i8** %bottom, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %37 = load i32, i32* %k, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i8*, i8** %hole, align 8
  ret i8* %38
}

; Function Attrs: nounwind uwtable
define internal void @draw_hole_rgb(%struct._GimpDrawable* %drw, i32 %x, i32 %y, i32 %width, i32 %height, i8* %hole) #0 {
entry:
  %drw.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %hole.addr = alloca i8*, align 8
  %rgn = alloca %struct._GimpPixelRgn, align 8
  %data = alloca i8*, align 8
  %tile_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %d_width = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct._GimpDrawable* %drw, %struct._GimpDrawable** %drw.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %hole, i8** %hole.addr, align 8
  %call = call i32 @gimp_tile_height() #5
  store i32 %call, i32* %tile_height, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_width(i32 %1)
  store i32 %call1, i32* %d_width, align 4
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %cmp2 = icmp sle i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %4, %5
  %cmp3 = icmp sle i32 %add, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %d_width, align 4
  %cmp5 = icmp sge i32 %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %if.end
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false.4
  %8 = load i32, i32* %width.addr, align 4
  store i32 %8, i32* %length, align 4
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %length, align 4
  %add8 = add nsw i32 %9, %10
  %11 = load i32, i32* %d_width, align 4
  %cmp9 = icmp sge i32 %add8, %11
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %12 = load i32, i32* %d_width, align 4
  %13 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %12, %13
  store i32 %sub, i32* %length, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %14 = load i32, i32* %length, align 4
  %15 = load i32, i32* %tile_height, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 3
  %17 = load i32, i32* %bpp, align 4
  %mul12 = mul i32 %mul, %17
  %conv = zext i32 %mul12 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call13, i8** %data, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw.addr, align 8
  %19 = load i32, i32* %x.addr, align 4
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %length, align 4
  %22 = load i32, i32* %height.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %rgn, %struct._GimpDrawable* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 1, i32 0)
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %if.end.11
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %tile_height, align 4
  %add16 = add nsw i32 %25, %26
  %sub17 = sub nsw i32 %add16, 1
  %27 = load i32, i32* %height.addr, align 4
  %cmp18 = icmp slt i32 %sub17, %27
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %28 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %29 = load i32, i32* %height.addr, align 4
  %30 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %29, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %sub20, %cond.false ]
  store i32 %cond, i32* %scan_lines, align 4
  %31 = load i32, i32* %length, align 4
  %32 = load i32, i32* %width.addr, align 4
  %cmp21 = icmp eq i32 %31, %32
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %cond.end
  %33 = load i8*, i8** %data, align 8
  %34 = load i8*, i8** %hole.addr, align 8
  %35 = load i32, i32* %width.addr, align 4
  %mul24 = mul nsw i32 3, %35
  %36 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 %mul24, %36
  %idx.ext = sext i32 %mul25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  %37 = load i32, i32* %width.addr, align 4
  %38 = load i32, i32* %scan_lines, align 4
  %mul26 = mul nsw i32 %37, %38
  %mul27 = mul nsw i32 %mul26, 3
  %conv28 = sext i32 %mul27 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %add.ptr, i64 %conv28, i32 1, i1 false)
  br label %if.end.42

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %scan_lines, align 4
  %cmp29 = icmp slt i32 %39, %40
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %data, align 8
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %length, align 4
  %mul31 = mul nsw i32 %42, %43
  %mul32 = mul nsw i32 %mul31, 3
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %41, i64 %idx.ext33
  %44 = load i8*, i8** %hole.addr, align 8
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %j, align 4
  %add35 = add nsw i32 %45, %46
  %47 = load i32, i32* %width.addr, align 4
  %mul36 = mul nsw i32 %add35, %47
  %mul37 = mul nsw i32 %mul36, 3
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %44, i64 %idx.ext38
  %48 = load i32, i32* %length, align 4
  %mul40 = mul nsw i32 %48, 3
  %conv41 = sext i32 %mul40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr34, i8* %add.ptr39, i64 %conv41, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %if.then.23
  %50 = load i8*, i8** %data, align 8
  %51 = load i32, i32* %x.addr, align 4
  %52 = load i32, i32* %y.addr, align 4
  %53 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %52, %53
  %54 = load i32, i32* %length, align 4
  %55 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %rgn, i8* %50, i32 %51, i32 %add43, i32 %54, i32 %55)
  %56 = load i32, i32* %scan_lines, align 4
  %57 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %57, %56
  store i32 %add44, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %58 = load i8*, i8** %data, align 8
  call void @g_free(i8* %58)
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_image_duplicate(i32) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_image_convert_rgb(i32) #1

declare i32 @gimp_image_scale(i32, i32, i32) #1

declare i32 @gimp_layer_resize_to_image_size(i32) #1

declare i32 @gimp_layer_new_from_drawable(i32, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @draw_number(i32 %layer_ID, i32 %num, i32 %x, i32 %y, i32 %height) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %drw = alloca %struct._GimpDrawable*, align 8
  %k = alloca i32, align 4
  %delta = alloca i32, align 4
  %max_delta = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %text_layer_ID = alloca i32, align 4
  %text_width = alloca i32, align 4
  %text_height = alloca i32, align 4
  %text_ascent = alloca i32, align 4
  %descent = alloca i32, align 4
  %fontname = alloca i8*, align 8
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* getelementptr inbounds (%struct.FilmVals, %struct.FilmVals* @filmvals, i32 0, i32 11, i32 0), i8** %fontname, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %0 = load i32, i32* %num.addr, align 4
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 %0)
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call1 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drw, align 8
  %2 = load i32, i32* %layer_ID.addr, align 4
  %call2 = call i32 @gimp_item_get_image(i32 %2)
  store i32 %call2, i32* %image_ID, align 4
  %3 = load i32, i32* %height.addr, align 4
  %div = sdiv i32 %3, 10
  store i32 %div, i32* %max_delta, align 4
  %4 = load i32, i32* %max_delta, align 4
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %max_delta, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %max_delta, align 4
  %mul = mul nsw i32 %6, 2
  %add = add nsw i32 %mul, 1
  %cmp3 = icmp slt i32 %5, %add
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %add4 = add nsw i32 %7, 1
  %div5 = sdiv i32 %add4, 2
  store i32 %div5, i32* %delta, align 4
  %8 = load i32, i32* %k, align 4
  %and = and i32 %8, 1
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %9 = load i32, i32* %delta, align 4
  %sub = sub nsw i32 0, %9
  store i32 %sub, i32* %delta, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %10 = load i32, i32* %height.addr, align 4
  %11 = load i32, i32* %delta, align 4
  %add10 = add nsw i32 %10, %11
  %conv = sitofp i32 %add10 to double
  %12 = load i8*, i8** %fontname, align 8
  %call11 = call i32 @gimp_text_get_extents_fontname(i8* %arraydecay9, double %conv, i32 0, i8* %12, i32* %text_width, i32* %text_height, i32* %text_ascent, i32* %descent)
  store i32 %call11, i32* %success, align 4
  %13 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %14 = load i32, i32* %delta, align 4
  %15 = load i32, i32* %height.addr, align 4
  %add13 = add nsw i32 %15, %14
  store i32 %add13, i32* %height.addr, align 4
  br label %for.end

if.end.14:                                        ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %17 = load i32, i32* %image_ID, align 4
  %18 = load i32, i32* %layer_ID.addr, align 4
  %19 = load i32, i32* %x.addr, align 4
  %conv15 = sitofp i32 %19 to double
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %descent, align 4
  %div16 = sdiv i32 %21, 2
  %add17 = add nsw i32 %20, %div16
  %conv18 = sitofp i32 %add17 to double
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %22 = load i32, i32* %height.addr, align 4
  %conv20 = sitofp i32 %22 to double
  %23 = load i8*, i8** %fontname, align 8
  %call21 = call i32 @gimp_text_fontname(i32 %17, i32 %18, double %conv15, double %conv18, i8* %arraydecay19, i32 1, i32 0, double %conv20, i32 0, i8* %23)
  store i32 %call21, i32* %text_layer_ID, align 4
  %24 = load i32, i32* %text_layer_ID, align 4
  %cmp22 = icmp eq i32 %24, -1
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %for.end
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %25)
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare i32 @gimp_image_delete(i32) #1

declare i32 @gimp_image_flatten(i32) #1

declare i32 @gimp_image_get_floating_sel(i32) #1

declare i32 @gimp_floating_sel_anchor(i32) #1

declare i32 @gimp_context_pop() #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal void @set_pixels(i32 %numpix, i8* %dst, %struct._GimpRGB* %color) #0 {
entry:
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %k = alloca i32, align 4
  %ur = alloca i8, align 1
  %ug = alloca i8, align 1
  %ub = alloca i8, align 1
  %udest = alloca i8*, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %0, i32 0, i32 0
  %1 = load double, double* %r, align 8
  %mul = fmul double %1, 2.559990e+02
  %conv = fptoui double %mul to i8
  store i8 %conv, i8* %ur, align 1
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 1
  %3 = load double, double* %g, align 8
  %mul1 = fmul double %3, 2.559990e+02
  %conv2 = fptoui double %mul1 to i8
  store i8 %conv2, i8* %ug, align 1
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 2
  %5 = load double, double* %b, align 8
  %mul3 = fmul double %5, 2.559990e+02
  %conv4 = fptoui double %mul3 to i8
  store i8 %conv4, i8* %ub, align 1
  %6 = load i32, i32* %numpix.addr, align 4
  store i32 %6, i32* %k, align 4
  %7 = load i8*, i8** %dst.addr, align 8
  store i8* %7, i8** %udest, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %k, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %k, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8, i8* %ur, align 1
  %10 = load i8*, i8** %udest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %udest, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8, i8* %ug, align 1
  %12 = load i8*, i8** %udest, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr6, i8** %udest, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i8, i8* %ub, align 1
  %14 = load i8*, i8** %udest, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr7, i8** %udest, align 8
  store i8 %13, i8* %14, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare i32 @gimp_drawable_width(i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_text_get_extents_fontname(i8*, double, i32, i8*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_text_fontname(i32, i32, double, double, i8*, i32, i32, double, i32, i8*) #1

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
