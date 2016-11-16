; ModuleID = './plug-ins/common/file-gih.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.anon = type { i32, [257 x i8] }
%struct._GimpPixPipeParams = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, [4 x i32], [4 x i8*], i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
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
%struct.SizeAdjustmentData = type { i32, i32, i32, i32, i32*, i32*, %struct._GtkWidget*, i32*, i32*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkWidget*, [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*] }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkComboBoxText = type { %struct._GtkComboBox, %struct._GtkComboBoxTextPrivate* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkComboBoxTextPrivate = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._BrushHeader = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._PatternHeader = type { i32, i32, i32, i32, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.gih_save_args = internal constant [15 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpParamDef { i32 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"The name of the file to save the brush pipe in\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Spacing of the brush\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Short description of the brush pipe\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"cell-width\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Width of the brush cells\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"cell-height\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"display-cols\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Display column number\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"display-rows\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Display row number\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"dimension\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Dimension of the brush pipe\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"rank\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Ranks of the dimensions\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Dimension (again)\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"sel\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Selection modes\00", align 1
@query.gih_load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0) }], align 16
@.str.27 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@query.gih_load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0) }], align 16
@.str.28 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"file-gih-load\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"loads images in GIMP brush pipe format\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"This plug-in loads a GIMP brush pipe as an image.\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Jens Lautenbacher, Sven Neumann\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"2000\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"GIMP brush (animated)\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"image/x-gimp-gih\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"gih\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"file-gih-save\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"saves images in GIMP brush pipe format\00", align 1
@.str.41 = private unnamed_addr constant [267 x i8] c"This plug-in saves an image in the GIMP brush pipe format. For a colored brush pipe, RGBA layers are used, otherwise the layers should be grayscale masks. The image can be multi-layered, and additionally the layers can be divided into a rectangular array of brushes.\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Tor Lillqvist\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"1999\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"file_gih_save\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.46 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"file-gih\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"GIH\00", align 1
@num_layers = internal global i32 0, align 4
@info = internal global %struct.anon { i32 20, [257 x i8] c"GIMP Brush Pipe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@gihparams = internal global %struct._GimpPixPipeParams zeroinitializer, align 8
@.str.50 = private unnamed_addr constant [27 x i8] c"gimp-brush-pipe-parameters\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"Couldn't read name for brush pipe from '%s'\00", align 1
@.str.54 = private unnamed_addr constant [44 x i8] c"Brush pipes should have at least one brush.\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.56 = private unnamed_addr constant [48 x i8] c"Couldn't load one brush in the pipe, giving up.\00", align 1
@g_ascii_table = external constant i16*, align 8
@__func__.gih_load_one_brush = private unnamed_addr constant [19 x i8] c"gih_load_one_brush\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"fd != -1\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"image_ID != -1\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"Error in GIMP brush pipe file.\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"GIMP brush file appears to be corrupted.\00", align 1
@.str.62 = private unnamed_addr constant [63 x i8] c"Unsupported brush depth: %d\0AGIMP Brushes must be GRAY or RGBA\0A\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"Brush Pipe\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"Spacing (percent):\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"Description:\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"Pixels\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"Cell size:\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"Number of cells:\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c" Rows of \00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c" Columns on each layer\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c" (Width Mismatch!) \00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c" (Height Mismatch!) \00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"Display as:\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"Dimension:\00", align 1
@selection_modes = internal global [7 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)], align 16
@.str.79 = private unnamed_addr constant [7 x i8] c"Ranks:\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"incremental\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"angular\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"xtilt\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"ytilt\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"%s\0A%d %s\0A\00", align 1
@__func__.gih_save_one_brush = private unnamed_addr constant [19 x i8] c"gih_save_one_brush\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"pixel_rgn != NULL\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"file-gih.c\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.gih_load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.gih_load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0))
  %call1 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0))
  %call2 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 15, i32 0, %struct._GimpParamDef* getelementptr inbounds ([15 x %struct._GimpParamDef], [15 x %struct._GimpParamDef]* @query.gih_save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call3 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0))
  %call4 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0))
  %call5 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0))
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
  %pipe_parasite = alloca %struct._GimpParasite*, align 8
  %image_ID = alloca i32, align 4
  %orig_image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %i = alloca i32, align 4
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %2, align 8
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0)) #9
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %do.end
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data6 to i8**
  %6 = load i8*, i8** %d_string, align 8
  %call7 = call i32 @gih_load_image(i8* %6, %struct._GError** %error)
  store i32 %call7, i32* %image_ID, align 4
  %7 = load i32, i32* %image_ID, align 4
  %cmp8 = icmp ne i32 %7, -1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %8 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %8, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %9 = load i32, i32* %image_ID, align 4
  store i32 %9, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.130

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0)) #9
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.128

if.then.13:                                       ; preds = %if.else.10
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %12 = load i32, i32* %d_int3216, align 4
  store i32 %12, i32* %orig_image_ID, align 4
  store i32 %12, i32* %image_ID, align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 2
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %14 = load i32, i32* %d_int3219, align 4
  store i32 %14, i32* %drawable_ID, align 4
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.13, %if.then.13
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 51)
  store i32 %call20, i32* %export, align 4
  %16 = load i32, i32* %export, align 4
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.23:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.23
  %17 = load i32, i32* %image_ID, align 4
  %call24 = call i32* @gimp_image_get_layers(i32 %17, i32* @num_layers)
  %18 = bitcast i32* %call24 to i8*
  call void @g_free(i8* %18)
  %19 = load i32, i32* %run_mode, align 4
  switch i32 %19, label %sw.epilog.109 [
    i32 0, label %sw.bb.25
    i32 1, label %sw.bb.49
    i32 2, label %sw.bb.102
  ]

sw.bb.25:                                         ; preds = %sw.epilog
  %call26 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* bitcast (%struct.anon* @info to i8*))
  call void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams* @gihparams)
  %20 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %cmp27 = icmp slt i32 %20, 1
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.25
  store i32 1, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %sw.bb.25
  %21 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %cmp30 = icmp slt i32 %21, 1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i32 1, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %22 = load i32, i32* @num_layers, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %mul = mul nsw i32 %22, %23
  %24 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %mul33 = mul nsw i32 %mul, %24
  store i32 %mul33, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 5), align 4
  %cmp34 = icmp eq i32 %25, 1
  br i1 %cmp34, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.32
  %26 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 6), align 4
  %cmp35 = icmp eq i32 %26, 1
  br i1 %cmp35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %image_ID, align 4
  %call37 = call i32 @gimp_image_width(i32 %27)
  %28 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %div = sdiv i32 %call37, %28
  store i32 %div, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 5), align 4
  %29 = load i32, i32* %image_ID, align 4
  %call38 = call i32 @gimp_image_height(i32 %29)
  %30 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %div39 = sdiv i32 %call38, %30
  store i32 %div39, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 6), align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %land.lhs.true, %if.end.32
  %31 = load i32, i32* %orig_image_ID, align 4
  %call41 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i32 0, i32 0))
  store %struct._GimpParasite* %call41, %struct._GimpParasite** %pipe_parasite, align 8
  %32 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %32, null
  br i1 %tobool, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %33 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  %call43 = call i8* @gimp_parasite_data(%struct._GimpParasite* %33)
  call void @gimp_pixpipe_params_parse(i8* %call43, %struct._GimpPixPipeParams* @gihparams)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  %34 = load i32, i32* %image_ID, align 4
  %call45 = call i32 @gih_save_dialog(i32 %34)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  store i32 4, i32* %status, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  br label %sw.epilog.109

sw.bb.49:                                         ; preds = %sw.epilog
  %35 = load i32, i32* %nparams.addr, align 4
  %cmp50 = icmp ne i32 %35, 15
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %sw.bb.49
  store i32 1, i32* %status, align 4
  br label %if.end.101

if.else.52:                                       ; preds = %sw.bb.49
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 5
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_int3255 = bitcast %union._GimpParamData* %data54 to i32*
  %37 = load i32, i32* %d_int3255, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 0), align 4
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 6
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_string58 = bitcast %union._GimpParamData* %data57 to i8**
  %39 = load i8*, i8** %d_string58, align 8
  %call59 = call i8* @strncpy(i8* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i32 0), i8* %39, i64 256) #6
  store i8 0, i8* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i64 256), align 1
  call void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams* @gihparams)
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 7
  %data61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx60, i32 0, i32 1
  %d_int3262 = bitcast %union._GimpParamData* %data61 to i32*
  %41 = load i32, i32* %d_int3262, align 4
  store i32 %41, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 5), align 4
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 8
  %data64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 1
  %d_int3265 = bitcast %union._GimpParamData* %data64 to i32*
  %43 = load i32, i32* %d_int3265, align 4
  store i32 %43, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 6), align 4
  %44 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 9
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int8 = bitcast %union._GimpParamData* %data67 to i8*
  %45 = load i8, i8* %d_int8, align 1
  %conv = zext i8 %45 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 10
  %data69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx68, i32 0, i32 1
  %d_int870 = bitcast %union._GimpParamData* %data69 to i8*
  %47 = load i8, i8* %d_int870, align 1
  %conv71 = zext i8 %47 to i32
  store i32 %conv71, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %48 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 11
  %data73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx72, i32 0, i32 1
  %d_int3274 = bitcast %union._GimpParamData* %data73 to i32*
  %49 = load i32, i32* %d_int3274, align 4
  store i32 %49, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %50 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %50, i64 13
  %data76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx75, i32 0, i32 1
  %d_int3277 = bitcast %union._GimpParamData* %data76 to i32*
  %51 = load i32, i32* %d_int3277, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp78 = icmp ne i32 %51, %52
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else.52
  store i32 1, i32* %status, align 4
  br label %if.end.100

if.else.81:                                       ; preds = %if.else.52
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.81
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp82 = icmp slt i32 %53, %54
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %i, align 4
  %idxprom = sext i32 %55 to i64
  %56 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %56, i64 12
  %data85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx84, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data85 to i8**
  %57 = load i8*, i8** %d_int8array, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %57, i64 %idxprom
  %58 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %58 to i32
  %59 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %59 to i64
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 9), i32 0, i64 %idxprom88
  store i32 %conv87, i32* %arrayidx89, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %60 to i64
  %61 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %61, i64 14
  %data92 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx91, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data92 to i8***
  %62 = load i8**, i8*** %d_stringarray, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %62, i64 %idxprom90
  %63 = load i8*, i8** %arrayidx93, align 8
  %call94 = call noalias i8* @g_strdup(i8* %63)
  %64 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %64 to i64
  %arrayidx96 = getelementptr inbounds [4 x i8*], [4 x i8*]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 10), i32 0, i64 %idxprom95
  store i8* %call94, i8** %arrayidx96, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %65 to i64
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 9), i32 0, i64 %idxprom97
  %66 = load i32, i32* %arrayidx98, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %mul99 = mul nsw i32 %67, %66
  store i32 %mul99, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.100

if.end.100:                                       ; preds = %for.end, %if.then.80
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.51
  br label %sw.epilog.109

sw.bb.102:                                        ; preds = %sw.epilog
  %call103 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* bitcast (%struct.anon* @info to i8*))
  %69 = load i32, i32* %orig_image_ID, align 4
  %call104 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i32 0, i32 0))
  store %struct._GimpParasite* %call104, %struct._GimpParasite** %pipe_parasite, align 8
  call void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams* @gihparams)
  %70 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  %tobool105 = icmp ne %struct._GimpParasite* %70, null
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %sw.bb.102
  %71 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  %call107 = call i8* @gimp_parasite_data(%struct._GimpParasite* %71)
  call void @gimp_pixpipe_params_parse(i8* %call107, %struct._GimpPixPipeParams* @gihparams)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %sw.bb.102
  br label %sw.epilog.109

sw.epilog.109:                                    ; preds = %sw.epilog, %if.end.108, %if.end.101, %if.end.48
  %72 = load i32, i32* %status, align 4
  %cmp110 = icmp eq i32 %72, 3
  br i1 %cmp110, label %if.then.112, label %if.end.122

if.then.112:                                      ; preds = %sw.epilog.109
  %73 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %73, i64 3
  %data114 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx113, i32 0, i32 1
  %d_string115 = bitcast %union._GimpParamData* %data114 to i8**
  %74 = load i8*, i8** %d_string115, align 8
  %75 = load i32, i32* %image_ID, align 4
  %76 = load i32, i32* %orig_image_ID, align 4
  %77 = load i32, i32* %drawable_ID, align 4
  %call116 = call i32 @gih_save_image(i8* %74, i32 %75, i32 %76, i32 %77, %struct._GError** %error)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.then.112
  %call119 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* bitcast (%struct.anon* @info to i8*), i32 264)
  br label %if.end.121

if.else.120:                                      ; preds = %if.then.112
  store i32 0, i32* %status, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.118
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %sw.epilog.109
  %78 = load i32, i32* %export, align 4
  %cmp123 = icmp eq i32 %78, 2
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.122
  %79 = load i32, i32* %image_ID, align 4
  %call126 = call i32 @gimp_image_delete(i32 %79)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.122
  br label %if.end.129

if.else.128:                                      ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %if.end.127
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end
  %80 = load i32, i32* %status, align 4
  %cmp131 = icmp ne i32 %80, 3
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.136

land.lhs.true.133:                                ; preds = %if.end.130
  %81 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool134 = icmp ne %struct._GError* %81, null
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %land.lhs.true.133
  %82 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %82, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %83 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %83, i32 0, i32 2
  %84 = load i8*, i8** %message, align 8
  store i8* %84, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %land.lhs.true.133, %if.end.130
  %85 = load i32, i32* %status, align 4
  store i32 %85, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.136, %if.then.22
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

declare i32 @gimp_plugin_icon_register(i8*, i32, i8*) #1

declare i32 @gimp_register_file_handler_mime(i8*, i8*) #1

declare i32 @gimp_register_magic_load_handler(i8*, i8*, i8*, i8*) #1

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @gih_load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %buffer = alloca %struct._GString*, align 8
  %c = alloca i8, align 1
  %name = alloca i8*, align 8
  %num_of_brushes = alloca i32, align 4
  %paramstring = alloca i8*, align 8
  %pipe_parasite = alloca %struct._GimpParasite*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %name, align 8
  store i32 0, i32* %num_of_brushes, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0, i32 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #8
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0)) #6
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #8
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0)) #6
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %call11 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call11, %struct._GString** %buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %fd, align 4
  %call12 = call i64 @read(i32 %7, i8* %c, i64 1)
  %cmp13 = icmp eq i64 %call12, 1
  br i1 %cmp13, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %8 = load i8, i8* %c, align 1
  %conv = sext i8 %8 to i32
  %cmp14 = icmp ne i32 %conv, 10
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len, align 8
  %cmp16 = icmp ult i64 %10, 1024
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct._GString*, %struct._GString** %buffer, align 8
  %13 = load i8, i8* %c, align 1
  %call18 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %12, i8 signext %13)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len19 = getelementptr inbounds %struct._GString, %struct._GString* %14, i32 0, i32 1
  %15 = load i64, i64* %len19, align 8
  %cmp20 = icmp ugt i64 %15, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %while.end
  %16 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len23 = getelementptr inbounds %struct._GString, %struct._GString* %16, i32 0, i32 1
  %17 = load i64, i64* %len23, align 8
  %cmp24 = icmp ult i64 %17, 1024
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.22
  %18 = load %struct._GString*, %struct._GString** %buffer, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %18, i32 0, i32 0
  %19 = load i8*, i8** %str, align 8
  store i8* %19, i8** %name, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.22, %while.end
  %20 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call28 = call i8* @g_string_free(%struct._GString* %20, i32 0)
  %21 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %21, null
  br i1 %tobool, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  %22 = load i8*, i8** %filename.addr, align 8
  %call30 = call i8* @gimp_filename_to_utf8(i8* %22)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.53, i32 0, i32 0), i8* %call30)
  %23 = load i32, i32* %fd, align 4
  %call31 = call i32 @close(i32 %23)
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.27
  %call33 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call33, %struct._GString** %buffer, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.47, %if.end.32
  %24 = load i32, i32* %fd, align 4
  %call35 = call i64 @read(i32 %24, i8* %c, i64 1)
  %cmp36 = icmp eq i64 %call35, 1
  br i1 %cmp36, label %land.lhs.true.38, label %land.end.46

land.lhs.true.38:                                 ; preds = %while.cond.34
  %25 = load i8, i8* %c, align 1
  %conv39 = sext i8 %25 to i32
  %cmp40 = icmp ne i32 %conv39, 10
  br i1 %cmp40, label %land.rhs.42, label %land.end.46

land.rhs.42:                                      ; preds = %land.lhs.true.38
  %26 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len43 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 1
  %27 = load i64, i64* %len43, align 8
  %cmp44 = icmp ult i64 %27, 1024
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.42, %land.lhs.true.38, %while.cond.34
  %28 = phi i1 [ false, %land.lhs.true.38 ], [ false, %while.cond.34 ], [ %cmp44, %land.rhs.42 ]
  br i1 %28, label %while.body.47, label %while.end.49

while.body.47:                                    ; preds = %land.end.46
  %29 = load %struct._GString*, %struct._GString** %buffer, align 8
  %30 = load i8, i8* %c, align 1
  %call48 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %29, i8 signext %30)
  br label %while.cond.34

while.end.49:                                     ; preds = %land.end.46
  %31 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len50 = getelementptr inbounds %struct._GString, %struct._GString* %31, i32 0, i32 1
  %32 = load i64, i64* %len50, align 8
  %cmp51 = icmp ugt i64 %32, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.61

land.lhs.true.53:                                 ; preds = %while.end.49
  %33 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len54 = getelementptr inbounds %struct._GString, %struct._GString* %33, i32 0, i32 1
  %34 = load i64, i64* %len54, align 8
  %cmp55 = icmp ult i64 %34, 1024
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %land.lhs.true.53
  %35 = load %struct._GString*, %struct._GString** %buffer, align 8
  %str58 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0
  %36 = load i8*, i8** %str58, align 8
  %call59 = call i64 @strtol(i8* %36, i8** %paramstring, i32 10) #6
  %conv60 = trunc i64 %call59 to i32
  store i32 %conv60, i32* %num_of_brushes, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %land.lhs.true.53, %while.end.49
  %37 = load i32, i32* %num_of_brushes, align 4
  %cmp62 = icmp slt i32 %37, 1
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.61
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.54, i32 0, i32 0))
  %38 = load i32, i32* %fd, align 4
  %call65 = call i32 @close(i32 %38)
  %39 = load i8*, i8** %name, align 8
  call void @g_free(i8* %39)
  %40 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call66 = call i8* @g_string_free(%struct._GString* %40, i32 1)
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.61
  %call68 = call i32 @gimp_image_new(i32 1, i32 1, i32 1)
  store i32 %call68, i32* %image_ID, align 4
  %41 = load i32, i32* %image_ID, align 4
  %42 = load i8*, i8** %filename.addr, align 8
  %call69 = call i32 @gimp_image_set_filename(i32 %41, i8* %42)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.67
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %num_of_brushes, align 4
  %cmp70 = icmp slt i32 %43, %44
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %fd, align 4
  %46 = load i32, i32* %image_ID, align 4
  %call72 = call i32 @gih_load_one_brush(i32 %45, i32 %46)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.79, label %if.then.74

if.then.74:                                       ; preds = %for.body
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call75 = call i32 @g_file_error_quark()
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.56, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %47, i32 %call75, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %call76)
  %48 = load i32, i32* %fd, align 4
  %call77 = call i32 @close(i32 %48)
  %49 = load i8*, i8** %name, align 8
  call void @g_free(i8* %49)
  %50 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call78 = call i8* @g_string_free(%struct._GString* %50, i32 1)
  store i32 -1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %conv80 = sitofp i32 %51 to double
  %52 = load i32, i32* %num_of_brushes, align 4
  %conv81 = sitofp i32 %52 to double
  %div = fdiv double %conv80, %conv81
  %call82 = call i32 @gimp_progress_update(double %div)
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.83

while.cond.83:                                    ; preds = %while.body.91, %for.end
  %54 = load i8*, i8** %paramstring, align 8
  %55 = load i8, i8* %54, align 1
  %conv84 = sext i8 %55 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %land.rhs.86, label %land.end.90

land.rhs.86:                                      ; preds = %while.cond.83
  %56 = load i8*, i8** %paramstring, align 8
  %57 = load i8, i8* %56, align 1
  %idxprom = zext i8 %57 to i64
  %58 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %58, i64 %idxprom
  %59 = load i16, i16* %arrayidx, align 2
  %conv87 = zext i16 %59 to i32
  %and = and i32 %conv87, 256
  %cmp88 = icmp ne i32 %and, 0
  br label %land.end.90

land.end.90:                                      ; preds = %land.rhs.86, %while.cond.83
  %60 = phi i1 [ false, %while.cond.83 ], [ %cmp88, %land.rhs.86 ]
  br i1 %60, label %while.body.91, label %while.end.92

while.body.91:                                    ; preds = %land.end.90
  %61 = load i8*, i8** %paramstring, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %paramstring, align 8
  br label %while.cond.83

while.end.92:                                     ; preds = %land.end.90
  %62 = load i8*, i8** %paramstring, align 8
  %63 = load i8, i8* %62, align 1
  %tobool93 = icmp ne i8 %63, 0
  br i1 %tobool93, label %if.then.94, label %if.end.105

if.then.94:                                       ; preds = %while.end.92
  %64 = load i8*, i8** %paramstring, align 8
  call void @gimp_pixpipe_params_parse(i8* %64, %struct._GimpPixPipeParams* @gihparams)
  %65 = load i32, i32* %image_ID, align 4
  %call95 = call i32 @gimp_image_width(i32 %65)
  store i32 %call95, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 5), align 4
  %66 = load i32, i32* %image_ID, align 4
  %call96 = call i32 @gimp_image_height(i32 %66)
  store i32 %call96, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 6), align 4
  store i32 1, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %call97 = call noalias i8* @gimp_pixpipe_params_build(%struct._GimpPixPipeParams* @gihparams)
  store i8* %call97, i8** %paramstring, align 8
  %67 = load i8*, i8** %paramstring, align 8
  %tobool98 = icmp ne i8* %67, null
  br i1 %tobool98, label %if.then.99, label %if.end.104

if.then.99:                                       ; preds = %if.then.94
  %68 = load i8*, i8** %paramstring, align 8
  %call100 = call i64 @strlen(i8* %68) #9
  %add = add i64 %call100, 1
  %conv101 = trunc i64 %add to i32
  %69 = load i8*, i8** %paramstring, align 8
  %call102 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i32 0, i32 0), i32 1, i32 %conv101, i8* %69)
  store %struct._GimpParasite* %call102, %struct._GimpParasite** %pipe_parasite, align 8
  %70 = load i32, i32* %image_ID, align 4
  %71 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  %call103 = call i32 @gimp_image_attach_parasite(i32 %70, %struct._GimpParasite* %71)
  %72 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %72)
  %73 = load i8*, i8** %paramstring, align 8
  call void @g_free(i8* %73)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.99, %if.then.94
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %while.end.92
  %74 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call106 = call i8* @g_string_free(%struct._GString* %74, i32 1)
  %75 = load i32, i32* %image_ID, align 4
  store i32 %75, i32* %retval
  br label %return

return:                                           ; preds = %if.end.105, %if.then.74, %if.then.64, %if.then.29, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams*) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare void @gimp_pixpipe_params_parse(i8*, %struct._GimpPixPipeParams*) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gih_save_dialog(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %dimtable = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %cb = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %buffer = alloca [100 x i8], align 16
  %cellw_adjust = alloca %struct.SizeAdjustmentData, align 8
  %cellh_adjust = alloca %struct.SizeAdjustmentData, align 8
  %layer_ID = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %run = alloca i32, align 4
  %j = alloca i32, align 4
  %i217 = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0)) #6
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 8, i32 2, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %table, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call4)
  %2 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %2, i32 6)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %5, i32 6)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call10 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %9)
  %10 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 1, i32 1, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 0), align 4
  %conv = uitofp i32 %14 to double
  %call13 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv, double 1.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %spinbutton, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0)) #6
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call17 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %17, i32 0, i32 0, i8* %call16, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %18, i32 1, i32 1)
  %19 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %20 = bitcast %struct._GtkObject* %19 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.anon* @info to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call19 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %entry1, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %21, i32 200, i32 -1)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_entry_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call20)
  %24 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %24, i8* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i32 0))
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0)) #6
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call25 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %27, i32 0, i32 1, i8* %call24, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %28, i32 1, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entry_callback to void ()*), i8* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i32 0), void (i8*, %struct._GClosure*)* null, i32 0)
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %box, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 5), align 4
  %conv28 = sitofp i32 %31 to double
  %32 = load i32, i32* %image_ID.addr, align 4
  %call29 = call i32 @gimp_image_width(i32 %32)
  %conv30 = sitofp i32 %call29 to double
  %call31 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv28, double 2.000000e+00, double %conv30, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %spinbutton, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call32)
  %35 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load i32, i32* %image_ID.addr, align 4
  %call34 = call i32* @gimp_image_get_layers(i32 %38, i32* %nlayers)
  store i32* %call34, i32** %layer_ID, align 8
  %orientation = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 0
  store i32 1, i32* %orientation, align 4
  %39 = load i32, i32* %image_ID.addr, align 4
  %image = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 1
  store i32 %39, i32* %image, align 4
  %40 = load i32, i32* %nlayers, align 4
  %sub = sub nsw i32 %40, 1
  %idxprom = sext i32 %sub to i64
  %41 = load i32*, i32** %layer_ID, align 8
  %arrayidx = getelementptr inbounds i32, i32* %41, i64 %idxprom
  %42 = load i32, i32* %arrayidx, align 4
  %toplayer = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 2
  store i32 %42, i32* %toplayer, align 4
  %nguides = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 3
  store i32 0, i32* %nguides, align 4
  %guides = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 4
  store i32* null, i32** %guides, align 8
  %value = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 5
  store i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 5), i32** %value, align 8
  %43 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %45 = bitcast %struct.SizeAdjustmentData* %cellw_adjust to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @size_adjustment_callback to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 0)
  %call36 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0))
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %label, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call37)
  %48 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 6), align 4
  %conv39 = sitofp i32 %51 to double
  %52 = load i32, i32* %image_ID.addr, align 4
  %call40 = call i32 @gimp_image_height(i32 %52)
  %conv41 = sitofp i32 %call40 to double
  %call42 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv39, double 2.000000e+00, double %conv41, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %spinbutton, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call43)
  %55 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %56, i32 0, i32 0, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %orientation45 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 0
  store i32 0, i32* %orientation45, align 4
  %58 = load i32, i32* %image_ID.addr, align 4
  %image46 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 1
  store i32 %58, i32* %image46, align 4
  %59 = load i32, i32* %nlayers, align 4
  %sub47 = sub nsw i32 %59, 1
  %idxprom48 = sext i32 %sub47 to i64
  %60 = load i32*, i32** %layer_ID, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %60, i64 %idxprom48
  %61 = load i32, i32* %arrayidx49, align 4
  %toplayer50 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 2
  store i32 %61, i32* %toplayer50, align 4
  %nguides51 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 3
  store i32 0, i32* %nguides51, align 4
  %guides52 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 4
  store i32* null, i32** %guides52, align 8
  %value53 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 5
  store i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 6), i32** %value53, align 8
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %63 = bitcast %struct._GtkObject* %62 to i8*
  %64 = bitcast %struct.SizeAdjustmentData* %cellh_adjust to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @size_adjustment_callback to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 0)
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0)) #6
  %call56 = call %struct._GtkWidget* @gtk_label_new(i8* %call55)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %label, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call57)
  %67 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_table_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call59)
  %72 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTable*
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0)) #6
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call62 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %72, i32 0, i32 2, i8* %call61, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %73, i32 1, i32 0)
  %74 = load i32*, i32** %layer_ID, align 8
  %75 = bitcast i32* %74 to i8*
  call void @g_free(i8* %75)
  %76 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %conv63 = sitofp i32 %76 to double
  %call64 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv63, double 1.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %spinbutton, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #8
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call65)
  %79 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0)) #6
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call68 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %79, i32 0, i32 3, i8* %call67, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %80, i32 1, i32 1)
  %81 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %82 = bitcast %struct._GtkObject* %81 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %83, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %84 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %ncells = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 9
  store %struct._GtkObject* %84, %struct._GtkObject** %ncells, align 8
  %ncells71 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 9
  store %struct._GtkObject* %84, %struct._GtkObject** %ncells71, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %ncells72 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 9
  store %struct._GtkObject* null, %struct._GtkObject** %ncells72, align 8
  %ncells73 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 9
  store %struct._GtkObject* null, %struct._GtkObject** %ncells73, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call74 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %box, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0
  %85 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %call75 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i32 %85)
  %arraydecay76 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0
  %call77 = call %struct._GtkWidget* @gtk_label_new(i8* %arraydecay76)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %label, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call78)
  %88 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %count_label = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 6
  store %struct._GtkWidget* %90, %struct._GtkWidget** %count_label, align 8
  %count = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 7
  store i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), i32** %count, align 8
  %other_count = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 8
  store i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), i32** %other_count, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0)) #6
  %call81 = call %struct._GtkWidget* @gtk_label_new(i8* %call80)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %label, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call82)
  %94 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %95, i32 0, i32 0, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %arraydecay84 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0
  %97 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %call85 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay84, i64 100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i32 %97)
  %arraydecay86 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0
  %call87 = call %struct._GtkWidget* @gtk_label_new(i8* %arraydecay86)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %label, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_box_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call88)
  %100 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkBox*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %100, %struct._GtkWidget* %101, i32 0, i32 0, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %count_label90 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 6
  store %struct._GtkWidget* %102, %struct._GtkWidget** %count_label90, align 8
  %count91 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 7
  store i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), i32** %count91, align 8
  %other_count92 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 8
  store i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), i32** %other_count92, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0)) #6
  %call94 = call %struct._GtkWidget* @gtk_label_new(i8* %call93)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %label, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #8
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call95)
  %106 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %106, %struct._GtkWidget* %107, i32 0, i32 0, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0)) #6
  %call98 = call %struct._GtkWidget* @gtk_label_new(i8* %call97)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %label, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #8
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call99)
  %111 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %111, %struct._GtkWidget* %112, i32 0, i32 0, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %warning_label = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 11
  store %struct._GtkWidget* %113, %struct._GtkWidget** %warning_label, align 8
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0)) #6
  %call102 = call %struct._GtkWidget* @gtk_label_new(i8* %call101)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %label, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_box_get_type() #8
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call103)
  %116 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkBox*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %117, i32 0, i32 0, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %warning_label105 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 11
  store %struct._GtkWidget* %118, %struct._GtkWidget** %warning_label105, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_table_get_type() #8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call106)
  %121 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkTable*
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0)) #6
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call109 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %121, i32 0, i32 4, i8* %call108, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %122, i32 1, i32 0)
  %123 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %conv110 = sitofp i32 %123 to double
  %call111 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv110, double 1.000000e+00, double 4.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %spinbutton, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_table_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call112)
  %126 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTable*
  %call114 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0)) #6
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call115 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %126, i32 0, i32 5, i8* %call114, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %127, i32 1, i32 1)
  %128 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %129 = bitcast %struct._GtkObject* %128 to i8*
  %130 = bitcast %struct.SizeAdjustmentData* %cellw_adjust to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.SizeAdjustmentData*)* @dim_callback to void ()*), i8* %130, void (i8*, %struct._GClosure*)* null, i32 0)
  %call117 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 4, i32 0)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %dimtable, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %dimtable, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_table_get_type() #8
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call118)
  %133 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %133, i32 4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.203, %if.end
  %134 = load i32, i32* %i, align 4
  %cmp120 = icmp slt i32 %134, 4
  br i1 %cmp120, label %for.body, label %for.end.205

for.body:                                         ; preds = %for.cond
  %135 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %135 to i64
  %arrayidx123 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 9), i32 0, i64 %idxprom122
  %136 = load i32, i32* %arrayidx123, align 4
  %conv124 = sitofp i32 %136 to double
  %call125 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv124, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call125, %struct._GtkWidget** %spinbutton, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %dimtable, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_table_get_type() #8
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call126)
  %139 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkTable*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %141 = load i32, i32* %i, align 4
  %142 = load i32, i32* %i, align 4
  %add = add nsw i32 %142, 1
  call void @gtk_table_attach(%struct._GtkTable* %139, %struct._GtkWidget* %140, i32 0, i32 1, i32 %141, i32 %add, i32 5, i32 5, i32 0, i32 0)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %143)
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp128 = icmp sge i32 %144, %145
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %for.body
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %146, i32 0)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %for.body
  %147 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %148 = bitcast %struct._GtkObject* %147 to i8*
  %149 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %149 to i64
  %arrayidx133 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 9), i32 0, i64 %idxprom132
  %150 = bitcast i32* %arrayidx133 to i8*
  %call134 = call i64 @g_signal_connect_data(i8* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %150, void (i8*, %struct._GClosure*)* null, i32 0)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %152 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %152 to i64
  %rank_entry = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 12
  %arrayidx136 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %rank_entry, i32 0, i64 %idxprom135
  store %struct._GtkWidget* %151, %struct._GtkWidget** %arrayidx136, align 8
  %153 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %153 to i64
  %rank_entry138 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 12
  %arrayidx139 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %rank_entry138, i32 0, i64 %idxprom137
  store %struct._GtkWidget* %151, %struct._GtkWidget** %arrayidx139, align 8
  %154 = load i32, i32* %i, align 4
  %cmp140 = icmp eq i32 %154, 0
  br i1 %cmp140, label %if.then.142, label %if.end.151

if.then.142:                                      ; preds = %if.end.131
  %155 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp143 = icmp eq i32 %155, 1
  br i1 %cmp143, label %if.then.145, label %if.else.147

if.then.145:                                      ; preds = %if.then.142
  %156 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %rank0 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 10
  store %struct._GtkObject* %156, %struct._GtkObject** %rank0, align 8
  %rank0146 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 10
  store %struct._GtkObject* %156, %struct._GtkObject** %rank0146, align 8
  br label %if.end.150

if.else.147:                                      ; preds = %if.then.142
  %rank0148 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 10
  store %struct._GtkObject* null, %struct._GtkObject** %rank0148, align 8
  %rank0149 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 10
  store %struct._GtkObject* null, %struct._GtkObject** %rank0149, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.145
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.131
  %call152 = call %struct._GtkWidget* @gtk_combo_box_text_new()
  store %struct._GtkWidget* %call152, %struct._GtkWidget** %cb, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc, %if.end.151
  %157 = load i32, i32* %j, align 4
  %conv154 = sext i32 %157 to i64
  %cmp155 = icmp ult i64 %conv154, 7
  br i1 %cmp155, label %for.body.157, label %for.end

for.body.157:                                     ; preds = %for.cond.153
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_combo_box_text_get_type() #8
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call158)
  %160 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkComboBoxText*
  %161 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %161 to i64
  %arrayidx161 = getelementptr inbounds [7 x i8*], [7 x i8*]* @selection_modes, i32 0, i64 %idxprom160
  %162 = load i8*, i8** %arrayidx161, align 8
  call void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText* %160, i8* %162)
  br label %for.inc

for.inc:                                          ; preds = %for.body.157
  %163 = load i32, i32* %j, align 4
  %inc = add nsw i32 %163, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.153

for.end:                                          ; preds = %for.cond.153
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call162 = call i64 @gtk_combo_box_get_type() #8
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call162)
  %166 = bitcast %struct._GTypeInstance* %call163 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %166, i32 2)
  %167 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %167 to i64
  %arrayidx165 = getelementptr inbounds [4 x i8*], [4 x i8*]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 10), i32 0, i64 %idxprom164
  %168 = load i8*, i8** %arrayidx165, align 8
  %tobool = icmp ne i8* %168, null
  br i1 %tobool, label %if.then.166, label %if.end.185

if.then.166:                                      ; preds = %for.end
  store i32 0, i32* %j, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.182, %if.then.166
  %169 = load i32, i32* %j, align 4
  %conv168 = sext i32 %169 to i64
  %cmp169 = icmp ult i64 %conv168, 7
  br i1 %cmp169, label %for.body.171, label %for.end.184

for.body.171:                                     ; preds = %for.cond.167
  %170 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %170 to i64
  %arrayidx173 = getelementptr inbounds [4 x i8*], [4 x i8*]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 10), i32 0, i64 %idxprom172
  %171 = load i8*, i8** %arrayidx173, align 8
  %172 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %172 to i64
  %arrayidx175 = getelementptr inbounds [7 x i8*], [7 x i8*]* @selection_modes, i32 0, i64 %idxprom174
  %173 = load i8*, i8** %arrayidx175, align 8
  %call176 = call i32 @strcmp(i8* %171, i8* %173) #9
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.end.181, label %if.then.178

if.then.178:                                      ; preds = %for.body.171
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call179 = call i64 @gtk_combo_box_get_type() #8
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call179)
  %176 = bitcast %struct._GTypeInstance* %call180 to %struct._GtkComboBox*
  %177 = load i32, i32* %j, align 4
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %176, i32 %177)
  br label %for.end.184

if.end.181:                                       ; preds = %for.body.171
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %178 = load i32, i32* %j, align 4
  %inc183 = add nsw i32 %178, 1
  store i32 %inc183, i32* %j, align 4
  br label %for.cond.167

for.end.184:                                      ; preds = %if.then.178, %for.cond.167
  br label %if.end.185

if.end.185:                                       ; preds = %for.end.184, %for.end
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %dimtable, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call186 = call i64 @gtk_table_get_type() #8
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call186)
  %181 = bitcast %struct._GTypeInstance* %call187 to %struct._GtkTable*
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  %183 = load i32, i32* %i, align 4
  %184 = load i32, i32* %i, align 4
  %add188 = add nsw i32 %184, 1
  call void @gtk_table_attach(%struct._GtkTable* %181, %struct._GtkWidget* %182, i32 1, i32 2, i32 %183, i32 %add188, i32 5, i32 5, i32 0, i32 0)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %185)
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp189 = icmp sge i32 %186, %187
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.185
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %188, i32 0)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %if.end.185
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call193 = call i64 @gtk_combo_box_get_type() #8
  %call194 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call193)
  %191 = bitcast %struct._GTypeInstance* %call194 to %struct._GtkComboBox*
  %192 = bitcast %struct._GtkComboBox* %191 to i8*
  %193 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %193 to i64
  %arrayidx196 = getelementptr inbounds [4 x i8*], [4 x i8*]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 10), i32 0, i64 %idxprom195
  %194 = bitcast i8** %arrayidx196 to i8*
  %call197 = call i64 @g_signal_connect_data(i8* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @cb_callback to void ()*), i8* %194, void (i8*, %struct._GClosure*)* null, i32 0)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %cb, align 8
  %196 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %196 to i64
  %mode_entry = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 13
  %arrayidx199 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %mode_entry, i32 0, i64 %idxprom198
  store %struct._GtkWidget* %195, %struct._GtkWidget** %arrayidx199, align 8
  %197 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %197 to i64
  %mode_entry201 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 13
  %arrayidx202 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %mode_entry201, i32 0, i64 %idxprom200
  store %struct._GtkWidget* %195, %struct._GtkWidget** %arrayidx202, align 8
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.192
  %198 = load i32, i32* %i, align 4
  %inc204 = add nsw i32 %198, 1
  store i32 %inc204, i32* %i, align 4
  br label %for.cond

for.end.205:                                      ; preds = %for.cond
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call206 = call i64 @gtk_table_get_type() #8
  %call207 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call206)
  %201 = bitcast %struct._GTypeInstance* %call207 to %struct._GtkTable*
  %call208 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0)) #6
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %dimtable, align 8
  %call209 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %201, i32 0, i32 6, i8* %call208, float 0.000000e+00, float 0.000000e+00, %struct._GtkWidget* %202, i32 1, i32 0)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %203)
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %205 = bitcast %struct._GtkWidget* %204 to %struct._GTypeInstance*
  %call210 = call i64 @gimp_dialog_get_type() #8
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %205, i64 %call210)
  %206 = bitcast %struct._GTypeInstance* %call211 to %struct._GimpDialog*
  %call212 = call i32 @gimp_dialog_run(%struct._GimpDialog* %206)
  %cmp213 = icmp eq i32 %call212, -5
  %conv214 = zext i1 %cmp213 to i32
  store i32 %conv214, i32* %run, align 4
  %207 = load i32, i32* %run, align 4
  %tobool215 = icmp ne i32 %207, 0
  br i1 %tobool215, label %if.then.216, label %if.end.235

if.then.216:                                      ; preds = %for.end.205
  store i32 0, i32* %i217, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.227, %if.then.216
  %208 = load i32, i32* %i217, align 4
  %cmp219 = icmp slt i32 %208, 4
  br i1 %cmp219, label %for.body.221, label %for.end.229

for.body.221:                                     ; preds = %for.cond.218
  %209 = load i32, i32* %i217, align 4
  %idxprom222 = sext i32 %209 to i64
  %arrayidx223 = getelementptr inbounds [4 x i8*], [4 x i8*]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 10), i32 0, i64 %idxprom222
  %210 = load i8*, i8** %arrayidx223, align 8
  %call224 = call noalias i8* @g_strdup(i8* %210)
  %211 = load i32, i32* %i217, align 4
  %idxprom225 = sext i32 %211 to i64
  %arrayidx226 = getelementptr inbounds [4 x i8*], [4 x i8*]* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 10), i32 0, i64 %idxprom225
  store i8* %call224, i8** %arrayidx226, align 8
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.body.221
  %212 = load i32, i32* %i217, align 4
  %inc228 = add nsw i32 %212, 1
  store i32 %inc228, i32* %i217, align 4
  br label %for.cond.218

for.end.229:                                      ; preds = %for.cond.218
  %213 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %214 = load i32, i32* @num_layers, align 4
  %215 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %mul = mul nsw i32 %214, %215
  %216 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %mul230 = mul nsw i32 %mul, %216
  %cmp231 = icmp slt i32 %213, %mul230
  br i1 %cmp231, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.229
  %217 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.229
  %218 = load i32, i32* @num_layers, align 4
  %219 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %mul233 = mul nsw i32 %218, %219
  %220 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %mul234 = mul nsw i32 %mul233, %220
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %217, %cond.true ], [ %mul234, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  br label %if.end.235

if.end.235:                                       ; preds = %cond.end, %for.end.205
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %221)
  store i32 0, i32* %i, align 4
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.245, %if.end.235
  %222 = load i32, i32* %i, align 4
  %nguides237 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 3
  %223 = load i32, i32* %nguides237, align 4
  %cmp238 = icmp slt i32 %222, %223
  br i1 %cmp238, label %for.body.240, label %for.end.247

for.body.240:                                     ; preds = %for.cond.236
  %224 = load i32, i32* %image_ID.addr, align 4
  %225 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %225 to i64
  %guides242 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellw_adjust, i32 0, i32 4
  %226 = load i32*, i32** %guides242, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %226, i64 %idxprom241
  %227 = load i32, i32* %arrayidx243, align 4
  %call244 = call i32 @gimp_image_delete_guide(i32 %224, i32 %227)
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.240
  %228 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %228, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.236

for.end.247:                                      ; preds = %for.cond.236
  store i32 0, i32* %i, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.257, %for.end.247
  %229 = load i32, i32* %i, align 4
  %nguides249 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 3
  %230 = load i32, i32* %nguides249, align 4
  %cmp250 = icmp slt i32 %229, %230
  br i1 %cmp250, label %for.body.252, label %for.end.259

for.body.252:                                     ; preds = %for.cond.248
  %231 = load i32, i32* %image_ID.addr, align 4
  %232 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %232 to i64
  %guides254 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %cellh_adjust, i32 0, i32 4
  %233 = load i32*, i32** %guides254, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %233, i64 %idxprom253
  %234 = load i32, i32* %arrayidx255, align 4
  %call256 = call i32 @gimp_image_delete_guide(i32 %231, i32 %234)
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.body.252
  %235 = load i32, i32* %i, align 4
  %inc258 = add nsw i32 %235, 1
  store i32 %inc258, i32* %i, align 4
  br label %for.cond.248

for.end.259:                                      ; preds = %for.cond.248
  %236 = load i32, i32* %run, align 4
  ret i32 %236
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gih_save_image(i8* %filename, i32 %image_ID, i32 %orig_image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %orig_image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %pipe_parasite = alloca %struct._GimpParasite*, align 8
  %header = alloca i8*, align 8
  %parstring = alloca i8*, align 8
  %layer_ID = alloca i32*, align 8
  %fd = alloca i32, align 4
  %nlayers = alloca i32, align 4
  %layer = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %imagew = alloca i32, align 4
  %imageh = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %k = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %name = alloca i8*, align 8
  %y = alloca i32, align 4
  %ynext = alloca i32, align 4
  %thisy = alloca i32, align 4
  %thish = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %x = alloca i32, align 4
  %xnext = alloca i32, align 4
  %thisx = alloca i32, align 4
  %thisw = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %orig_image_ID, i32* %orig_image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_width(i32 %1)
  store i32 %call, i32* %imagew, align 4
  %2 = load i32, i32* %image_ID.addr, align 4
  %call1 = call i32 @gimp_image_height(i32 %2)
  store i32 %call1, i32* %imageh, align 4
  %call2 = call i32 @gimp_tile_height() #8
  %3 = load i32, i32* %imagew, align 4
  %mul = mul i32 %call2, %3
  %mul3 = mul i32 %mul, 4
  %conv = zext i32 %mul3 to i64
  call void @gimp_tile_cache_size(i64 %conv)
  %4 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32 (i8*, i32, ...) @open(i8* %4, i32 577, i32 438)
  store i32 %call4, i32* %fd, align 4
  %5 = load i32, i32* %fd, align 4
  %cmp5 = icmp eq i32 %5, -1
  br i1 %cmp5, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @g_file_error_quark()
  %call9 = call i32* @__errno_location() #8
  %7 = load i32, i32* %call9, align 4
  %call10 = call i32 @g_file_error_from_errno(i32 %7)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i32 0, i32 0)) #6
  %8 = load i8*, i8** %filename.addr, align 8
  %call12 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call13 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call13, align 4
  %call14 = call i8* @g_strerror(i32 %9) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %6, i32 %call8, i32 %call10, i8* %call11, i8* %call12, i8* %call14)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0)) #6
  %10 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call18 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call16, i8* %call17)
  %call19 = call noalias i8* @gimp_pixpipe_params_build(%struct._GimpPixPipeParams* @gihparams)
  store i8* %call19, i8** %parstring, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %12 = load i8*, i8** %parstring, align 8
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i32 0), i32 %11, i8* %12)
  store i8* %call20, i8** %header, align 8
  %13 = load i32, i32* %fd, align 4
  %14 = load i8*, i8** %header, align 8
  %15 = load i8*, i8** %header, align 8
  %call21 = call i64 @strlen(i8* %15) #9
  %call22 = call i64 @write(i32 %13, i8* %14, i64 %call21)
  %16 = load i8*, i8** %header, align 8
  %call23 = call i64 @strlen(i8* %16) #9
  %cmp24 = icmp ne i64 %call22, %call23
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.15
  %17 = load i8*, i8** %parstring, align 8
  call void @g_free(i8* %17)
  %18 = load i8*, i8** %header, align 8
  call void @g_free(i8* %18)
  %19 = load i32, i32* %fd, align 4
  %call27 = call i32 @close(i32 %19)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.15
  %20 = load i8*, i8** %header, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %parstring, align 8
  %call29 = call i64 @strlen(i8* %21) #9
  %add = add i64 %call29, 1
  %conv30 = trunc i64 %add to i32
  %22 = load i8*, i8** %parstring, align 8
  %call31 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i32 0, i32 0), i32 1, i32 %conv30, i8* %22)
  store %struct._GimpParasite* %call31, %struct._GimpParasite** %pipe_parasite, align 8
  %23 = load i32, i32* %orig_image_ID.addr, align 4
  %24 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  %call32 = call i32 @gimp_image_attach_parasite(i32 %23, %struct._GimpParasite* %24)
  %25 = load %struct._GimpParasite*, %struct._GimpParasite** %pipe_parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %25)
  %26 = load i8*, i8** %parstring, align 8
  call void @g_free(i8* %26)
  %27 = load i32, i32* %image_ID.addr, align 4
  %call33 = call i32* @gimp_image_get_layers(i32 %27, i32* %nlayers)
  store i32* %call33, i32** %layer_ID, align 8
  store i32 0, i32* %layer, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %if.end.28
  %28 = load i32, i32* %layer, align 4
  %29 = load i32, i32* %nlayers, align 4
  %cmp34 = icmp slt i32 %28, %29
  br i1 %cmp34, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %layer, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %layer_ID, align 8
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 %idxprom
  %32 = load i32, i32* %arrayidx, align 4
  %call36 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %32)
  store %struct._GimpDrawable* %call36, %struct._GimpDrawable** %drawable, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id, align 4
  %call37 = call i8* @gimp_item_get_name(i32 %34)
  store i8* %call37, i8** %name, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id38, align 4
  %call39 = call i32 @gimp_drawable_offsets(i32 %36, i32* %offsetx, i32* %offsety)
  store i32 0, i32* %row, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.99, %for.body
  %37 = load i32, i32* %row, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %cmp41 = icmp slt i32 %37, %38
  br i1 %cmp41, label %for.body.43, label %for.end.101

for.body.43:                                      ; preds = %for.cond.40
  %39 = load i32, i32* %row, align 4
  %40 = load i32, i32* %imageh, align 4
  %mul44 = mul nsw i32 %39, %40
  %41 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %div = sdiv i32 %mul44, %41
  store i32 %div, i32* %y, align 4
  %42 = load i32, i32* %row, align 4
  %add45 = add nsw i32 %42, 1
  %43 = load i32, i32* %imageh, align 4
  %mul46 = mul nsw i32 %add45, %43
  %44 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 4), align 4
  %div47 = sdiv i32 %mul46, %44
  store i32 %div47, i32* %ynext, align 4
  %45 = load i32, i32* %y, align 4
  %46 = load i32, i32* %offsety, align 4
  %sub = sub nsw i32 %45, %46
  %cmp48 = icmp sgt i32 0, %sub
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.43
  br label %cond.end

cond.false:                                       ; preds = %for.body.43
  %47 = load i32, i32* %y, align 4
  %48 = load i32, i32* %offsety, align 4
  %sub50 = sub nsw i32 %47, %48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub50, %cond.false ]
  store i32 %cond, i32* %thisy, align 4
  %49 = load i32, i32* %ynext, align 4
  %50 = load i32, i32* %offsety, align 4
  %sub51 = sub nsw i32 %49, %50
  %51 = load i32, i32* %thisy, align 4
  %sub52 = sub nsw i32 %sub51, %51
  store i32 %sub52, i32* %thish, align 4
  %52 = load i32, i32* %thish, align 4
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 2
  %54 = load i32, i32* %height, align 4
  %55 = load i32, i32* %thisy, align 4
  %sub53 = sub i32 %54, %55
  %cmp54 = icmp ult i32 %52, %sub53
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end
  %56 = load i32, i32* %thish, align 4
  br label %cond.end.60

cond.false.57:                                    ; preds = %cond.end
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height58 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %57, i32 0, i32 2
  %58 = load i32, i32* %height58, align 4
  %59 = load i32, i32* %thisy, align 4
  %sub59 = sub i32 %58, %59
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.56
  %cond61 = phi i32 [ %56, %cond.true.56 ], [ %sub59, %cond.false.57 ]
  store i32 %cond61, i32* %thish, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc, %cond.end.60
  %60 = load i32, i32* %col, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %cmp63 = icmp slt i32 %60, %61
  br i1 %cmp63, label %for.body.65, label %for.end

for.body.65:                                      ; preds = %for.cond.62
  %62 = load i32, i32* %col, align 4
  %63 = load i32, i32* %imagew, align 4
  %mul66 = mul nsw i32 %62, %63
  %64 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %div67 = sdiv i32 %mul66, %64
  store i32 %div67, i32* %x, align 4
  %65 = load i32, i32* %col, align 4
  %add68 = add nsw i32 %65, 1
  %66 = load i32, i32* %imagew, align 4
  %mul69 = mul nsw i32 %add68, %66
  %67 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 3), align 4
  %div70 = sdiv i32 %mul69, %67
  store i32 %div70, i32* %xnext, align 4
  %68 = load i32, i32* %x, align 4
  %69 = load i32, i32* %offsetx, align 4
  %sub71 = sub nsw i32 %68, %69
  %cmp72 = icmp sgt i32 0, %sub71
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %for.body.65
  br label %cond.end.77

cond.false.75:                                    ; preds = %for.body.65
  %70 = load i32, i32* %x, align 4
  %71 = load i32, i32* %offsetx, align 4
  %sub76 = sub nsw i32 %70, %71
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.74
  %cond78 = phi i32 [ 0, %cond.true.74 ], [ %sub76, %cond.false.75 ]
  store i32 %cond78, i32* %thisx, align 4
  %72 = load i32, i32* %xnext, align 4
  %73 = load i32, i32* %offsetx, align 4
  %sub79 = sub nsw i32 %72, %73
  %74 = load i32, i32* %thisx, align 4
  %sub80 = sub nsw i32 %sub79, %74
  store i32 %sub80, i32* %thisw, align 4
  %75 = load i32, i32* %thisw, align 4
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %76, i32 0, i32 1
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %thisx, align 4
  %sub81 = sub i32 %77, %78
  %cmp82 = icmp ult i32 %75, %sub81
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.77
  %79 = load i32, i32* %thisw, align 4
  br label %cond.end.88

cond.false.85:                                    ; preds = %cond.end.77
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width86 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %80, i32 0, i32 1
  %81 = load i32, i32* %width86, align 4
  %82 = load i32, i32* %thisx, align 4
  %sub87 = sub i32 %81, %82
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.84
  %cond89 = phi i32 [ %79, %cond.true.84 ], [ %sub87, %cond.false.85 ]
  store i32 %cond89, i32* %thisw, align 4
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %84 = load i32, i32* %thisx, align 4
  %85 = load i32, i32* %thisy, align 4
  %86 = load i32, i32* %thisw, align 4
  %87 = load i32, i32* %thish, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 0, i32 0)
  %88 = load i32, i32* %fd, align 4
  %89 = load i8*, i8** %name, align 8
  %call90 = call i32 @gih_save_one_brush(i32 %88, %struct._GimpPixelRgn* %pixel_rgn, i8* %89)
  %tobool = icmp ne i32 %call90, 0
  br i1 %tobool, label %if.end.93, label %if.then.91

if.then.91:                                       ; preds = %cond.end.88
  %90 = load i32, i32* %fd, align 4
  %call92 = call i32 @close(i32 %90)
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %cond.end.88
  %91 = load i32, i32* %k, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %k, align 4
  %92 = load i32, i32* %k, align 4
  %conv94 = sitofp i32 %92 to double
  %93 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 1), align 4
  %conv95 = sitofp i32 %93 to double
  %div96 = fdiv double %conv94, %conv95
  %call97 = call i32 @gimp_progress_update(double %div96)
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %94 = load i32, i32* %col, align 4
  %inc98 = add nsw i32 %94, 1
  store i32 %inc98, i32* %col, align 4
  br label %for.cond.62

for.end:                                          ; preds = %for.cond.62
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end
  %95 = load i32, i32* %row, align 4
  %inc100 = add nsw i32 %95, 1
  store i32 %inc100, i32* %row, align 4
  br label %for.cond.40

for.end.101:                                      ; preds = %for.cond.40
  %96 = load i8*, i8** %name, align 8
  call void @g_free(i8* %96)
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %97)
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %98 = load i32, i32* %layer, align 4
  %inc103 = add nsw i32 %98, 1
  store i32 %inc103, i32* %layer, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  %call105 = call i32 @gimp_progress_update(double 1.000000e+00)
  %99 = load i32*, i32** %layer_ID, align 8
  %100 = bitcast i32* %99 to i8*
  call void @g_free(i8* %100)
  %101 = load i32, i32* %fd, align 4
  %call106 = call i32 @close(i32 %101)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.104, %if.then.91, %if.then.26, %if.then.7, %if.then
  %102 = load i32, i32* %retval
  ret i32 %102
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

declare i32 @open(i8*, i32, ...) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare %struct._GString* @g_string_new(i8*) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare i8* @g_string_free(%struct._GString*, i32) #1

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

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gih_load_one_brush(i32 %fd, i32 %image_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %bh = alloca %struct._BrushHeader, align 4
  %brush_buf = alloca i8*, align 8
  %layer_ID = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %bn_size = alloca i32, align 4
  %image_type = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %ph = alloca %struct._PatternHeader, align 4
  %plain_brush = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %name, align 8
  store i8* null, i8** %brush_buf, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gih_load_one_brush, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %image_ID.addr, align 4
  %cmp2 = icmp ne i32 %1, -1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gih_load_one_brush, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i32, i32* %fd.addr, align 4
  %3 = bitcast %struct._BrushHeader* %bh to i8*
  %call = call i64 @read(i32 %2, i8* %3, i64 28)
  %cmp7 = icmp ne i64 %call, 28
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end.6
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %do.end.6
  %header_size = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %4 = load i32, i32* %header_size, align 4
  %and = and i32 %4, 255
  %shl = shl i32 %and, 24
  %header_size10 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %5 = load i32, i32* %header_size10, align 4
  %and11 = and i32 %5, 65280
  %shl12 = shl i32 %and11, 8
  %or = or i32 %shl, %shl12
  %header_size13 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %6 = load i32, i32* %header_size13, align 4
  %and14 = and i32 %6, 16711680
  %shr = lshr i32 %and14, 8
  %or15 = or i32 %or, %shr
  %header_size16 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %7 = load i32, i32* %header_size16, align 4
  %and17 = and i32 %7, -16777216
  %shr18 = lshr i32 %and17, 24
  %or19 = or i32 %or15, %shr18
  %header_size20 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  store i32 %or19, i32* %header_size20, align 4
  %version = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %8 = load i32, i32* %version, align 4
  %and21 = and i32 %8, 255
  %shl22 = shl i32 %and21, 24
  %version23 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %9 = load i32, i32* %version23, align 4
  %and24 = and i32 %9, 65280
  %shl25 = shl i32 %and24, 8
  %or26 = or i32 %shl22, %shl25
  %version27 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %10 = load i32, i32* %version27, align 4
  %and28 = and i32 %10, 16711680
  %shr29 = lshr i32 %and28, 8
  %or30 = or i32 %or26, %shr29
  %version31 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %11 = load i32, i32* %version31, align 4
  %and32 = and i32 %11, -16777216
  %shr33 = lshr i32 %and32, 24
  %or34 = or i32 %or30, %shr33
  %version35 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  store i32 %or34, i32* %version35, align 4
  %width36 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %12 = load i32, i32* %width36, align 4
  %and37 = and i32 %12, 255
  %shl38 = shl i32 %and37, 24
  %width39 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %13 = load i32, i32* %width39, align 4
  %and40 = and i32 %13, 65280
  %shl41 = shl i32 %and40, 8
  %or42 = or i32 %shl38, %shl41
  %width43 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %14 = load i32, i32* %width43, align 4
  %and44 = and i32 %14, 16711680
  %shr45 = lshr i32 %and44, 8
  %or46 = or i32 %or42, %shr45
  %width47 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %15 = load i32, i32* %width47, align 4
  %and48 = and i32 %15, -16777216
  %shr49 = lshr i32 %and48, 24
  %or50 = or i32 %or46, %shr49
  %width51 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  store i32 %or50, i32* %width51, align 4
  %height52 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %16 = load i32, i32* %height52, align 4
  %and53 = and i32 %16, 255
  %shl54 = shl i32 %and53, 24
  %height55 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %17 = load i32, i32* %height55, align 4
  %and56 = and i32 %17, 65280
  %shl57 = shl i32 %and56, 8
  %or58 = or i32 %shl54, %shl57
  %height59 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %18 = load i32, i32* %height59, align 4
  %and60 = and i32 %18, 16711680
  %shr61 = lshr i32 %and60, 8
  %or62 = or i32 %or58, %shr61
  %height63 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %19 = load i32, i32* %height63, align 4
  %and64 = and i32 %19, -16777216
  %shr65 = lshr i32 %and64, 24
  %or66 = or i32 %or62, %shr65
  %height67 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  store i32 %or66, i32* %height67, align 4
  %bytes = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %20 = load i32, i32* %bytes, align 4
  %and68 = and i32 %20, 255
  %shl69 = shl i32 %and68, 24
  %bytes70 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %21 = load i32, i32* %bytes70, align 4
  %and71 = and i32 %21, 65280
  %shl72 = shl i32 %and71, 8
  %or73 = or i32 %shl69, %shl72
  %bytes74 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %22 = load i32, i32* %bytes74, align 4
  %and75 = and i32 %22, 16711680
  %shr76 = lshr i32 %and75, 8
  %or77 = or i32 %or73, %shr76
  %bytes78 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %23 = load i32, i32* %bytes78, align 4
  %and79 = and i32 %23, -16777216
  %shr80 = lshr i32 %and79, 24
  %or81 = or i32 %or77, %shr80
  %bytes82 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  store i32 %or81, i32* %bytes82, align 4
  %magic_number = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %24 = load i32, i32* %magic_number, align 4
  %and83 = and i32 %24, 255
  %shl84 = shl i32 %and83, 24
  %magic_number85 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %25 = load i32, i32* %magic_number85, align 4
  %and86 = and i32 %25, 65280
  %shl87 = shl i32 %and86, 8
  %or88 = or i32 %shl84, %shl87
  %magic_number89 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %26 = load i32, i32* %magic_number89, align 4
  %and90 = and i32 %26, 16711680
  %shr91 = lshr i32 %and90, 8
  %or92 = or i32 %or88, %shr91
  %magic_number93 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %27 = load i32, i32* %magic_number93, align 4
  %and94 = and i32 %27, -16777216
  %shr95 = lshr i32 %and94, 24
  %or96 = or i32 %or92, %shr95
  %magic_number97 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  store i32 %or96, i32* %magic_number97, align 4
  %spacing = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %28 = load i32, i32* %spacing, align 4
  %and98 = and i32 %28, 255
  %shl99 = shl i32 %and98, 24
  %spacing100 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %29 = load i32, i32* %spacing100, align 4
  %and101 = and i32 %29, 65280
  %shl102 = shl i32 %and101, 8
  %or103 = or i32 %shl99, %shl102
  %spacing104 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %30 = load i32, i32* %spacing104, align 4
  %and105 = and i32 %30, 16711680
  %shr106 = lshr i32 %and105, 8
  %or107 = or i32 %or103, %shr106
  %spacing108 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  %31 = load i32, i32* %spacing108, align 4
  %and109 = and i32 %31, -16777216
  %shr110 = lshr i32 %and109, 24
  %or111 = or i32 %or107, %shr110
  %spacing112 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  store i32 %or111, i32* %spacing112, align 4
  %version113 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %32 = load i32, i32* %version113, align 4
  %cmp114 = icmp eq i32 %32, 1
  br i1 %cmp114, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %if.end.9
  %spacing116 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 6
  store i32 25, i32* %spacing116, align 4
  %33 = load i32, i32* %fd.addr, align 4
  %call117 = call i64 @lseek(i32 %33, i64 -8, i32 1) #6
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %if.end.9
  %version119 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %34 = load i32, i32* %version119, align 4
  %cmp120 = icmp ne i32 %34, 1
  br i1 %cmp120, label %land.lhs.true, label %lor.lhs.false.125

land.lhs.true:                                    ; preds = %if.end.118
  %magic_number121 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 5
  %35 = load i32, i32* %magic_number121, align 4
  %cmp122 = icmp ne i32 %35, 1195986256
  br i1 %cmp122, label %if.then.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %version123 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 1
  %36 = load i32, i32* %version123, align 4
  %cmp124 = icmp ne i32 %36, 2
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false, %if.end.118
  %header_size126 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %37 = load i32, i32* %header_size126, align 4
  %conv = zext i32 %37 to i64
  %cmp127 = icmp ule i64 %conv, 28
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %lor.lhs.false.125, %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.130:                                       ; preds = %lor.lhs.false.125
  %header_size131 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 0
  %38 = load i32, i32* %header_size131, align 4
  %conv132 = zext i32 %38 to i64
  %sub = sub i64 %conv132, 28
  %conv133 = trunc i64 %sub to i32
  store i32 %conv133, i32* %bn_size, align 4
  %cmp134 = icmp sgt i32 %conv133, 0
  br i1 %cmp134, label %if.then.136, label %if.else.147

if.then.136:                                      ; preds = %if.end.130
  %39 = load i32, i32* %bn_size, align 4
  %conv137 = sext i32 %39 to i64
  %call138 = call noalias i8* @g_malloc_n(i64 %conv137, i64 1)
  store i8* %call138, i8** %name, align 8
  %40 = load i32, i32* %fd.addr, align 4
  %41 = load i8*, i8** %name, align 8
  %42 = load i32, i32* %bn_size, align 4
  %conv139 = sext i32 %42 to i64
  %call140 = call i64 @read(i32 %40, i8* %41, i64 %conv139)
  %43 = load i32, i32* %bn_size, align 4
  %conv141 = sext i32 %43 to i64
  %cmp142 = icmp slt i64 %call140, %conv141
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %if.then.136
  %call145 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call145)
  %44 = load i8*, i8** %name, align 8
  call void @g_free(i8* %44)
  store i32 0, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.then.136
  br label %if.end.150

if.else.147:                                      ; preds = %if.end.130
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)) #6
  %call149 = call noalias i8* @g_strdup(i8* %call148)
  store i8* %call149, i8** %name, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.end.146
  %width151 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %45 = load i32, i32* %width151, align 4
  %height152 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %46 = load i32, i32* %height152, align 4
  %mul = mul i32 %45, %46
  %bytes153 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %47 = load i32, i32* %bytes153, align 4
  %mul154 = mul i32 %mul, %47
  %conv155 = zext i32 %mul154 to i64
  %call156 = call noalias i8* @g_malloc(i64 %conv155)
  store i8* %call156, i8** %brush_buf, align 8
  %48 = load i32, i32* %fd.addr, align 4
  %49 = load i8*, i8** %brush_buf, align 8
  %width157 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %50 = load i32, i32* %width157, align 4
  %height158 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %51 = load i32, i32* %height158, align 4
  %mul159 = mul i32 %50, %51
  %bytes160 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %52 = load i32, i32* %bytes160, align 4
  %mul161 = mul i32 %mul159, %52
  %conv162 = zext i32 %mul161 to i64
  %call163 = call i64 @read(i32 %48, i8* %49, i64 %conv162)
  %width164 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %53 = load i32, i32* %width164, align 4
  %height165 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %54 = load i32, i32* %height165, align 4
  %mul166 = mul i32 %53, %54
  %bytes167 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %55 = load i32, i32* %bytes167, align 4
  %mul168 = mul i32 %mul166, %55
  %conv169 = zext i32 %mul168 to i64
  %cmp170 = icmp ne i64 %call163, %conv169
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.150
  %56 = load i8*, i8** %brush_buf, align 8
  call void @g_free(i8* %56)
  %57 = load i8*, i8** %name, align 8
  call void @g_free(i8* %57)
  store i32 0, i32* %retval
  br label %return

if.end.173:                                       ; preds = %if.end.150
  %bytes174 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %58 = load i32, i32* %bytes174, align 4
  %cmp175 = icmp eq i32 %58, 1
  br i1 %cmp175, label %if.then.177, label %if.end.342

if.then.177:                                      ; preds = %if.end.173
  %59 = load i32, i32* %fd.addr, align 4
  %60 = bitcast %struct._PatternHeader* %ph to i8*
  %call178 = call i64 @read(i32 %59, i8* %60, i64 24)
  %cmp179 = icmp eq i64 %call178, 24
  br i1 %cmp179, label %if.then.181, label %if.end.341

if.then.181:                                      ; preds = %if.then.177
  %header_size182 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %61 = load i32, i32* %header_size182, align 4
  %and183 = and i32 %61, 255
  %shl184 = shl i32 %and183, 24
  %header_size185 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %62 = load i32, i32* %header_size185, align 4
  %and186 = and i32 %62, 65280
  %shl187 = shl i32 %and186, 8
  %or188 = or i32 %shl184, %shl187
  %header_size189 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %63 = load i32, i32* %header_size189, align 4
  %and190 = and i32 %63, 16711680
  %shr191 = lshr i32 %and190, 8
  %or192 = or i32 %or188, %shr191
  %header_size193 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %64 = load i32, i32* %header_size193, align 4
  %and194 = and i32 %64, -16777216
  %shr195 = lshr i32 %and194, 24
  %or196 = or i32 %or192, %shr195
  %header_size197 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  store i32 %or196, i32* %header_size197, align 4
  %version198 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %65 = load i32, i32* %version198, align 4
  %and199 = and i32 %65, 255
  %shl200 = shl i32 %and199, 24
  %version201 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %66 = load i32, i32* %version201, align 4
  %and202 = and i32 %66, 65280
  %shl203 = shl i32 %and202, 8
  %or204 = or i32 %shl200, %shl203
  %version205 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %67 = load i32, i32* %version205, align 4
  %and206 = and i32 %67, 16711680
  %shr207 = lshr i32 %and206, 8
  %or208 = or i32 %or204, %shr207
  %version209 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %68 = load i32, i32* %version209, align 4
  %and210 = and i32 %68, -16777216
  %shr211 = lshr i32 %and210, 24
  %or212 = or i32 %or208, %shr211
  %version213 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  store i32 %or212, i32* %version213, align 4
  %width214 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %69 = load i32, i32* %width214, align 4
  %and215 = and i32 %69, 255
  %shl216 = shl i32 %and215, 24
  %width217 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %70 = load i32, i32* %width217, align 4
  %and218 = and i32 %70, 65280
  %shl219 = shl i32 %and218, 8
  %or220 = or i32 %shl216, %shl219
  %width221 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %71 = load i32, i32* %width221, align 4
  %and222 = and i32 %71, 16711680
  %shr223 = lshr i32 %and222, 8
  %or224 = or i32 %or220, %shr223
  %width225 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %72 = load i32, i32* %width225, align 4
  %and226 = and i32 %72, -16777216
  %shr227 = lshr i32 %and226, 24
  %or228 = or i32 %or224, %shr227
  %width229 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  store i32 %or228, i32* %width229, align 4
  %height230 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %73 = load i32, i32* %height230, align 4
  %and231 = and i32 %73, 255
  %shl232 = shl i32 %and231, 24
  %height233 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %74 = load i32, i32* %height233, align 4
  %and234 = and i32 %74, 65280
  %shl235 = shl i32 %and234, 8
  %or236 = or i32 %shl232, %shl235
  %height237 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %75 = load i32, i32* %height237, align 4
  %and238 = and i32 %75, 16711680
  %shr239 = lshr i32 %and238, 8
  %or240 = or i32 %or236, %shr239
  %height241 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %76 = load i32, i32* %height241, align 4
  %and242 = and i32 %76, -16777216
  %shr243 = lshr i32 %and242, 24
  %or244 = or i32 %or240, %shr243
  %height245 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  store i32 %or244, i32* %height245, align 4
  %bytes246 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %77 = load i32, i32* %bytes246, align 4
  %and247 = and i32 %77, 255
  %shl248 = shl i32 %and247, 24
  %bytes249 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %78 = load i32, i32* %bytes249, align 4
  %and250 = and i32 %78, 65280
  %shl251 = shl i32 %and250, 8
  %or252 = or i32 %shl248, %shl251
  %bytes253 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %79 = load i32, i32* %bytes253, align 4
  %and254 = and i32 %79, 16711680
  %shr255 = lshr i32 %and254, 8
  %or256 = or i32 %or252, %shr255
  %bytes257 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %80 = load i32, i32* %bytes257, align 4
  %and258 = and i32 %80, -16777216
  %shr259 = lshr i32 %and258, 24
  %or260 = or i32 %or256, %shr259
  %bytes261 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  store i32 %or260, i32* %bytes261, align 4
  %magic_number262 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %81 = load i32, i32* %magic_number262, align 4
  %and263 = and i32 %81, 255
  %shl264 = shl i32 %and263, 24
  %magic_number265 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %82 = load i32, i32* %magic_number265, align 4
  %and266 = and i32 %82, 65280
  %shl267 = shl i32 %and266, 8
  %or268 = or i32 %shl264, %shl267
  %magic_number269 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %83 = load i32, i32* %magic_number269, align 4
  %and270 = and i32 %83, 16711680
  %shr271 = lshr i32 %and270, 8
  %or272 = or i32 %or268, %shr271
  %magic_number273 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %84 = load i32, i32* %magic_number273, align 4
  %and274 = and i32 %84, -16777216
  %shr275 = lshr i32 %and274, 24
  %or276 = or i32 %or272, %shr275
  %magic_number277 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  store i32 %or276, i32* %magic_number277, align 4
  %magic_number278 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 5
  %85 = load i32, i32* %magic_number278, align 4
  %cmp279 = icmp eq i32 %85, 1196441940
  br i1 %cmp279, label %land.lhs.true.281, label %if.else.333

land.lhs.true.281:                                ; preds = %if.then.181
  %version282 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 1
  %86 = load i32, i32* %version282, align 4
  %cmp283 = icmp eq i32 %86, 1
  br i1 %cmp283, label %land.lhs.true.285, label %if.else.333

land.lhs.true.285:                                ; preds = %land.lhs.true.281
  %header_size286 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %87 = load i32, i32* %header_size286, align 4
  %conv287 = zext i32 %87 to i64
  %cmp288 = icmp ugt i64 %conv287, 24
  br i1 %cmp288, label %land.lhs.true.290, label %if.else.333

land.lhs.true.290:                                ; preds = %land.lhs.true.285
  %bytes291 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 4
  %88 = load i32, i32* %bytes291, align 4
  %cmp292 = icmp eq i32 %88, 3
  br i1 %cmp292, label %land.lhs.true.294, label %if.else.333

land.lhs.true.294:                                ; preds = %land.lhs.true.290
  %width295 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %89 = load i32, i32* %width295, align 4
  %width296 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %90 = load i32, i32* %width296, align 4
  %cmp297 = icmp eq i32 %89, %90
  br i1 %cmp297, label %land.lhs.true.299, label %if.else.333

land.lhs.true.299:                                ; preds = %land.lhs.true.294
  %height300 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %91 = load i32, i32* %height300, align 4
  %height301 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %92 = load i32, i32* %height301, align 4
  %cmp302 = icmp eq i32 %91, %92
  br i1 %cmp302, label %land.lhs.true.304, label %if.else.333

land.lhs.true.304:                                ; preds = %land.lhs.true.299
  %93 = load i32, i32* %fd.addr, align 4
  %header_size305 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 0
  %94 = load i32, i32* %header_size305, align 4
  %conv306 = zext i32 %94 to i64
  %sub307 = sub i64 %conv306, 24
  %call308 = call i64 @lseek(i32 %93, i64 %sub307, i32 1) #6
  %cmp309 = icmp sgt i64 %call308, 0
  br i1 %cmp309, label %if.then.311, label %if.else.333

if.then.311:                                      ; preds = %land.lhs.true.304
  %95 = load i8*, i8** %brush_buf, align 8
  store i8* %95, i8** %plain_brush, align 8
  %bytes312 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  store i32 4, i32* %bytes312, align 4
  %width313 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %96 = load i32, i32* %width313, align 4
  %mul314 = mul i32 4, %96
  %height315 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %97 = load i32, i32* %height315, align 4
  %mul316 = mul i32 %mul314, %97
  %conv317 = zext i32 %mul316 to i64
  %call318 = call noalias i8* @g_malloc(i64 %conv317)
  store i8* %call318, i8** %brush_buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.311
  %98 = load i32, i32* %i, align 4
  %width319 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 2
  %99 = load i32, i32* %width319, align 4
  %height320 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %ph, i32 0, i32 3
  %100 = load i32, i32* %height320, align 4
  %mul321 = mul i32 %99, %100
  %cmp322 = icmp ult i32 %98, %mul321
  br i1 %cmp322, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %101 = load i32, i32* %fd.addr, align 4
  %102 = load i8*, i8** %brush_buf, align 8
  %103 = load i32, i32* %i, align 4
  %mul324 = mul nsw i32 %103, 4
  %idx.ext = sext i32 %mul324 to i64
  %add.ptr = getelementptr inbounds i8, i8* %102, i64 %idx.ext
  %call325 = call i64 @read(i32 %101, i8* %add.ptr, i64 3)
  %cmp326 = icmp ne i64 %call325, 3
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %for.body
  %104 = load i8*, i8** %name, align 8
  call void @g_free(i8* %104)
  %105 = load i8*, i8** %plain_brush, align 8
  call void @g_free(i8* %105)
  %106 = load i8*, i8** %brush_buf, align 8
  call void @g_free(i8* %106)
  store i32 0, i32* %retval
  br label %return

if.end.329:                                       ; preds = %for.body
  %107 = load i32, i32* %i, align 4
  %idxprom = sext i32 %107 to i64
  %108 = load i8*, i8** %plain_brush, align 8
  %arrayidx = getelementptr inbounds i8, i8* %108, i64 %idxprom
  %109 = load i8, i8* %arrayidx, align 1
  %110 = load i32, i32* %i, align 4
  %mul330 = mul nsw i32 %110, 4
  %add = add nsw i32 %mul330, 3
  %idxprom331 = sext i32 %add to i64
  %111 = load i8*, i8** %brush_buf, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %111, i64 %idxprom331
  store i8 %109, i8* %arrayidx332, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.329
  %112 = load i32, i32* %i, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load i8*, i8** %plain_brush, align 8
  call void @g_free(i8* %113)
  br label %if.end.340

if.else.333:                                      ; preds = %land.lhs.true.304, %land.lhs.true.299, %land.lhs.true.294, %land.lhs.true.290, %land.lhs.true.285, %land.lhs.true.281, %if.then.181
  %114 = load i32, i32* %fd.addr, align 4
  %call334 = call i64 @lseek(i32 %114, i64 -24, i32 1) #6
  %cmp335 = icmp slt i64 %call334, 0
  br i1 %cmp335, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %if.else.333
  %call338 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call338)
  %115 = load i8*, i8** %name, align 8
  call void @g_free(i8* %115)
  %116 = load i8*, i8** %brush_buf, align 8
  call void @g_free(i8* %116)
  store i32 0, i32* %retval
  br label %return

if.end.339:                                       ; preds = %if.else.333
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %for.end
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.then.177
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.end.173
  %bytes343 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %117 = load i32, i32* %bytes343, align 4
  switch i32 %117, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.344
  ]

sw.bb:                                            ; preds = %if.end.342
  store i32 2, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.344:                                        ; preds = %if.end.342
  store i32 1, i32* %image_type, align 4
  %118 = load i32, i32* %image_ID.addr, align 4
  %call345 = call i32 @gimp_image_base_type(i32 %118)
  %cmp346 = icmp eq i32 %call345, 1
  br i1 %cmp346, label %if.then.348, label %if.end.350

if.then.348:                                      ; preds = %sw.bb.344
  %119 = load i32, i32* %image_ID.addr, align 4
  %call349 = call i32 @gimp_image_convert_rgb(i32 %119)
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.348, %sw.bb.344
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.342
  %bytes351 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 4
  %120 = load i32, i32* %bytes351, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.62, i32 0, i32 0), i32 %120)
  %121 = load i8*, i8** %name, align 8
  call void @g_free(i8* %121)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.350, %sw.bb
  %122 = load i32, i32* %image_ID.addr, align 4
  %call352 = call i32 @gimp_image_width(i32 %122)
  store i32 %call352, i32* %width, align 4
  store i32 %call352, i32* %new_width, align 4
  %123 = load i32, i32* %image_ID.addr, align 4
  %call353 = call i32 @gimp_image_height(i32 %123)
  store i32 %call353, i32* %height, align 4
  store i32 %call353, i32* %new_height, align 4
  %width354 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %124 = load i32, i32* %width354, align 4
  %125 = load i32, i32* %width, align 4
  %cmp355 = icmp ugt i32 %124, %125
  br i1 %cmp355, label %if.then.361, label %lor.lhs.false.357

lor.lhs.false.357:                                ; preds = %sw.epilog
  %height358 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %126 = load i32, i32* %height358, align 4
  %127 = load i32, i32* %height, align 4
  %cmp359 = icmp ugt i32 %126, %127
  br i1 %cmp359, label %if.then.361, label %if.end.378

if.then.361:                                      ; preds = %lor.lhs.false.357, %sw.epilog
  %128 = load i32, i32* %width, align 4
  %width362 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %129 = load i32, i32* %width362, align 4
  %cmp363 = icmp ugt i32 %128, %129
  br i1 %cmp363, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.361
  %130 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.361
  %width365 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %131 = load i32, i32* %width365, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %130, %cond.true ], [ %131, %cond.false ]
  store i32 %cond, i32* %new_width, align 4
  %132 = load i32, i32* %height, align 4
  %height366 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %133 = load i32, i32* %height366, align 4
  %cmp367 = icmp ugt i32 %132, %133
  br i1 %cmp367, label %cond.true.369, label %cond.false.370

cond.true.369:                                    ; preds = %cond.end
  %134 = load i32, i32* %height, align 4
  br label %cond.end.372

cond.false.370:                                   ; preds = %cond.end
  %height371 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %135 = load i32, i32* %height371, align 4
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.370, %cond.true.369
  %cond373 = phi i32 [ %134, %cond.true.369 ], [ %135, %cond.false.370 ]
  store i32 %cond373, i32* %new_height, align 4
  %136 = load i32, i32* %image_ID.addr, align 4
  %137 = load i32, i32* %new_width, align 4
  %138 = load i32, i32* %new_height, align 4
  %139 = load i32, i32* %width, align 4
  %140 = load i32, i32* %new_width, align 4
  %sub374 = sub nsw i32 %139, %140
  %div = sdiv i32 %sub374, 2
  %141 = load i32, i32* %height, align 4
  %142 = load i32, i32* %new_height, align 4
  %sub375 = sub nsw i32 %141, %142
  %div376 = sdiv i32 %sub375, 2
  %call377 = call i32 @gimp_image_resize(i32 %136, i32 %137, i32 %138, i32 %div, i32 %div376)
  br label %if.end.378

if.end.378:                                       ; preds = %cond.end.372, %lor.lhs.false.357
  %143 = load i32, i32* %image_ID.addr, align 4
  %144 = load i8*, i8** %name, align 8
  %width379 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %145 = load i32, i32* %width379, align 4
  %height380 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %146 = load i32, i32* %height380, align 4
  %147 = load i32, i32* %image_type, align 4
  %call381 = call i32 @gimp_layer_new(i32 %143, i8* %144, i32 %145, i32 %146, i32 %147, double 1.000000e+02, i32 0)
  store i32 %call381, i32* %layer_ID, align 4
  %148 = load i8*, i8** %name, align 8
  call void @g_free(i8* %148)
  %149 = load i32, i32* %layer_ID, align 4
  %cmp382 = icmp ne i32 %149, -1
  br i1 %cmp382, label %if.then.384, label %if.end.404

if.then.384:                                      ; preds = %if.end.378
  %150 = load i32, i32* %image_ID.addr, align 4
  %151 = load i32, i32* %layer_ID, align 4
  %152 = load i32, i32* @num_layers, align 4
  %inc385 = add nsw i32 %152, 1
  store i32 %inc385, i32* @num_layers, align 4
  %call386 = call i32 @gimp_image_insert_layer(i32 %150, i32 %151, i32 -1, i32 %152)
  %153 = load i32, i32* %layer_ID, align 4
  %154 = load i32, i32* %new_width, align 4
  %width387 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %155 = load i32, i32* %width387, align 4
  %sub388 = sub i32 %154, %155
  %div389 = udiv i32 %sub388, 2
  %156 = load i32, i32* %new_height, align 4
  %height390 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %157 = load i32, i32* %height390, align 4
  %sub391 = sub i32 %156, %157
  %div392 = udiv i32 %sub391, 2
  %call393 = call i32 @gimp_layer_set_offsets(i32 %153, i32 %div389, i32 %div392)
  %158 = load i32, i32* %layer_ID, align 4
  %call394 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %158)
  store %struct._GimpDrawable* %call394, %struct._GimpDrawable** %drawable, align 8
  %159 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %160 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width395 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %160, i32 0, i32 1
  %161 = load i32, i32* %width395, align 4
  %162 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height396 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %162, i32 0, i32 2
  %163 = load i32, i32* %height396, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %159, i32 0, i32 0, i32 %161, i32 %163, i32 1, i32 0)
  %164 = load i8*, i8** %brush_buf, align 8
  %width397 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 2
  %165 = load i32, i32* %width397, align 4
  %height398 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %bh, i32 0, i32 3
  %166 = load i32, i32* %height398, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %164, i32 0, i32 0, i32 %165, i32 %166)
  %167 = load i32, i32* %image_type, align 4
  %cmp399 = icmp eq i32 %167, 2
  br i1 %cmp399, label %if.then.401, label %if.end.403

if.then.401:                                      ; preds = %if.then.384
  %168 = load i32, i32* %layer_ID, align 4
  %call402 = call i32 @gimp_invert(i32 %168)
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.401, %if.then.384
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.end.378
  %169 = load i8*, i8** %brush_buf, align 8
  call void @g_free(i8* %169)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.404, %sw.default, %if.then.337, %if.then.328, %if.then.172, %if.then.144, %if.then.129, %if.then.8, %if.else.4, %if.else
  %170 = load i32, i32* %retval
  ret i32 %170
}

declare i32 @gimp_progress_update(double) #1

declare noalias i8* @gimp_pixpipe_params_build(%struct._GimpPixPipeParams*) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_malloc(i64) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_image_convert_rgb(i32) #1

declare i32 @gimp_image_resize(i32, i32, i32, i32, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_invert(i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %cmp = icmp eq i8* %0, getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i32 0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %3)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i32 0), i8* %call2, i64 256) #6
  store i8 0, i8* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 1, i64 256), align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @size_adjustment_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %newn = alloca i32, align 4
  %buf = alloca [10 x i8], align 1
  %adj = alloca %struct.SizeAdjustmentData*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SizeAdjustmentData*
  store %struct.SizeAdjustmentData* %1, %struct.SizeAdjustmentData** %adj, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %nguides = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %3, i32 0, i32 3
  %4 = load i32, i32* %nguides, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %image = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %5, i32 0, i32 1
  %6 = load i32, i32* %image, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %guides = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %8, i32 0, i32 4
  %9 = load i32*, i32** %guides, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %call = call i32 @gimp_image_delete_guide(i32 %6, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %guides1 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %12, i32 0, i32 4
  %13 = load i32*, i32** %guides1, align 8
  %14 = bitcast i32* %13 to i8*
  call void @g_free(i8* %14)
  %15 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %guides2 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %15, i32 0, i32 4
  store i32* null, i32** %guides2, align 8
  %call3 = call i32 @gimp_displays_flush()
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call4)
  %18 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %call6 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %18)
  %conv = fptosi double %call6 to i32
  %19 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %value = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %19, i32 0, i32 5
  %20 = load i32*, i32** %value, align 8
  store i32 %conv, i32* %20, align 4
  %21 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %orientation = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %21, i32 0, i32 0
  %22 = load i32, i32* %orientation, align 4
  %cmp7 = icmp eq i32 %22, 1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %23 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %image9 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %23, i32 0, i32 1
  %24 = load i32, i32* %image9, align 4
  %call10 = call i32 @gimp_image_width(i32 %24)
  store i32 %call10, i32* %size, align 4
  %25 = load i32, i32* %size, align 4
  %26 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %value11 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %26, i32 0, i32 5
  %27 = load i32*, i32** %value11, align 8
  %28 = load i32, i32* %27, align 4
  %div = sdiv i32 %25, %28
  store i32 %div, i32* %newn, align 4
  %29 = load i32, i32* %newn, align 4
  %sub = sub nsw i32 %29, 1
  %30 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %nguides12 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %30, i32 0, i32 3
  store i32 %sub, i32* %nguides12, align 4
  %31 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %nguides13 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %31, i32 0, i32 3
  %32 = load i32, i32* %nguides13, align 4
  %conv14 = sext i32 %32 to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv14, i64 4)
  %33 = bitcast i8* %call15 to i32*
  %34 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %guides16 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %34, i32 0, i32 4
  store i32* %33, i32** %guides16, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.28, %if.then
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %nguides18 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %36, i32 0, i32 3
  %37 = load i32, i32* %nguides18, align 4
  %cmp19 = icmp slt i32 %35, %37
  br i1 %cmp19, label %for.body.21, label %for.end.30

for.body.21:                                      ; preds = %for.cond.17
  %38 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %image22 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %38, i32 0, i32 1
  %39 = load i32, i32* %image22, align 4
  %40 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %value23 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %40, i32 0, i32 5
  %41 = load i32*, i32** %value23, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %i, align 4
  %add = add nsw i32 %43, 1
  %mul = mul nsw i32 %42, %add
  %call24 = call i32 @gimp_image_add_vguide(i32 %39, i32 %mul)
  %44 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %44 to i64
  %45 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %guides26 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %45, i32 0, i32 4
  %46 = load i32*, i32** %guides26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %46, i64 %idxprom25
  store i32 %call24, i32* %arrayidx27, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.21
  %47 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %47, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.17

for.end.30:                                       ; preds = %for.cond.17
  br label %if.end

if.else:                                          ; preds = %for.end
  %48 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %image31 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %48, i32 0, i32 1
  %49 = load i32, i32* %image31, align 4
  %call32 = call i32 @gimp_image_height(i32 %49)
  store i32 %call32, i32* %size, align 4
  %50 = load i32, i32* %size, align 4
  %51 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %value33 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %51, i32 0, i32 5
  %52 = load i32*, i32** %value33, align 8
  %53 = load i32, i32* %52, align 4
  %div34 = sdiv i32 %50, %53
  store i32 %div34, i32* %newn, align 4
  %54 = load i32, i32* %newn, align 4
  %sub35 = sub nsw i32 %54, 1
  %55 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %nguides36 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %55, i32 0, i32 3
  store i32 %sub35, i32* %nguides36, align 4
  %56 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %nguides37 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %56, i32 0, i32 3
  %57 = load i32, i32* %nguides37, align 4
  %conv38 = sext i32 %57 to i64
  %call39 = call noalias i8* @g_malloc_n(i64 %conv38, i64 4)
  %58 = bitcast i8* %call39 to i32*
  %59 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %guides40 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %59, i32 0, i32 4
  store i32* %58, i32** %guides40, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.54, %if.else
  %60 = load i32, i32* %i, align 4
  %61 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %nguides42 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %61, i32 0, i32 3
  %62 = load i32, i32* %nguides42, align 4
  %cmp43 = icmp slt i32 %60, %62
  br i1 %cmp43, label %for.body.45, label %for.end.56

for.body.45:                                      ; preds = %for.cond.41
  %63 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %image46 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %63, i32 0, i32 1
  %64 = load i32, i32* %image46, align 4
  %65 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %value47 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %65, i32 0, i32 5
  %66 = load i32*, i32** %value47, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %68, 1
  %mul49 = mul nsw i32 %67, %add48
  %call50 = call i32 @gimp_image_add_hguide(i32 %64, i32 %mul49)
  %69 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %69 to i64
  %70 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %guides52 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %70, i32 0, i32 4
  %71 = load i32*, i32** %guides52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %71, i64 %idxprom51
  store i32 %call50, i32* %arrayidx53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.45
  %72 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %72, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.41

for.end.56:                                       ; preds = %for.cond.41
  br label %if.end

if.end:                                           ; preds = %for.end.56, %for.end.30
  %call57 = call i32 @gimp_displays_flush()
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %73 = load i32, i32* %newn, align 4
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i32 %73) #6
  %74 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %count_label = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %74, i32 0, i32 6
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_label_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call59)
  %77 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkLabel*
  %arraydecay61 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %77, i8* %arraydecay61)
  %78 = load i32, i32* %newn, align 4
  %79 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %count = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %79, i32 0, i32 7
  %80 = load i32*, i32** %count, align 8
  store i32 %78, i32* %80, align 4
  %81 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %warning_label = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %81, i32 0, i32 11
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %warning_label, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_widget_get_type() #8
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call62)
  %84 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkWidget*
  %85 = load i32, i32* %newn, align 4
  %86 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %value64 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %86, i32 0, i32 5
  %87 = load i32*, i32** %value64, align 8
  %88 = load i32, i32* %87, align 4
  %mul65 = mul nsw i32 %85, %88
  %89 = load i32, i32* %size, align 4
  %cmp66 = icmp ne i32 %mul65, %89
  %conv67 = zext i1 %cmp66 to i32
  call void @gtk_widget_set_visible(%struct._GtkWidget* %84, i32 %conv67)
  %90 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %ncells = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %90, i32 0, i32 9
  %91 = load %struct._GtkObject*, %struct._GtkObject** %ncells, align 8
  %cmp68 = icmp ne %struct._GtkObject* %91, null
  br i1 %cmp68, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %if.end
  %92 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %ncells71 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %92, i32 0, i32 9
  %93 = load %struct._GtkObject*, %struct._GtkObject** %ncells71, align 8
  %94 = bitcast %struct._GtkObject* %93 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_adjustment_get_type() #8
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call72)
  %95 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkAdjustment*
  %96 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %other_count = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %96, i32 0, i32 8
  %97 = load i32*, i32** %other_count, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %count74 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %99, i32 0, i32 7
  %100 = load i32*, i32** %count74, align 8
  %101 = load i32, i32* %100, align 4
  %mul75 = mul nsw i32 %98, %101
  %conv76 = sitofp i32 %mul75 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %95, double %conv76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.70, %if.end
  %102 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %rank0 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %102, i32 0, i32 10
  %103 = load %struct._GtkObject*, %struct._GtkObject** %rank0, align 8
  %cmp78 = icmp ne %struct._GtkObject* %103, null
  br i1 %cmp78, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %if.end.77
  %104 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %rank081 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %104, i32 0, i32 10
  %105 = load %struct._GtkObject*, %struct._GtkObject** %rank081, align 8
  %106 = bitcast %struct._GtkObject* %105 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_adjustment_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call82)
  %107 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkAdjustment*
  %108 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %other_count84 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %108, i32 0, i32 8
  %109 = load i32*, i32** %other_count84, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %adj, align 8
  %count85 = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %111, i32 0, i32 7
  %112 = load i32*, i32** %count85, align 8
  %113 = load i32, i32* %112, align 4
  %mul86 = mul nsw i32 %110, %113
  %conv87 = sitofp i32 %mul86 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %107, double %conv87)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.80, %if.end.77
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dim_callback(%struct._GtkAdjustment* %adjustment, %struct.SizeAdjustmentData* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca %struct.SizeAdjustmentData*, align 8
  %i = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct.SizeAdjustmentData* %data, %struct.SizeAdjustmentData** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  %call1 = call double @rint(double %call) #8
  %conv = fptosi double %call1 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %data.addr, align 8
  %rank_entry = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %3, i32 0, i32 12
  %arrayidx = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %rank_entry, i32 0, i64 %idxprom
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp3 = icmp slt i32 %5, %6
  %conv4 = zext i1 %cmp3 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %4, i32 %conv4)
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.SizeAdjustmentData*, %struct.SizeAdjustmentData** %data.addr, align 8
  %mode_entry = getelementptr inbounds %struct.SizeAdjustmentData, %struct.SizeAdjustmentData* %8, i32 0, i32 13
  %arrayidx6 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %mode_entry, i32 0, i64 %idxprom5
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx6, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct._GimpPixPipeParams, %struct._GimpPixPipeParams* @gihparams, i32 0, i32 2), align 4
  %cmp7 = icmp slt i32 %10, %11
  %conv8 = zext i1 %cmp7 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %9, i32 %conv8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_combo_box_text_new() #1

declare void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_text_get_type() #3

declare void @gtk_combo_box_set_active(%struct._GtkComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @cb_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call i32 @gtk_combo_box_get_active(%struct._GtkComboBox* %2)
  store i32 %call2, i32* %index, align 4
  %3 = load i32, i32* %index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [7 x i8*], [7 x i8*]* @selection_modes, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = bitcast i8* %5 to i8**
  store i8* %4, i8** %6, align 8
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_image_delete_guide(i32, i32) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare i32 @gimp_displays_flush() #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @gimp_image_add_vguide(i32, i32) #1

declare i32 @gimp_image_add_hguide(i32, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare i32 @gtk_combo_box_get_active(%struct._GtkComboBox*) #1

declare void @gimp_tile_cache_size(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i64 @write(i32, i8*, i64) #1

declare i8* @gimp_item_get_name(i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gih_save_one_brush(i32 %fd, %struct._GimpPixelRgn* %pixel_rgn, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %name.addr = alloca i8*, align 8
  %header = alloca %struct._BrushHeader, align 4
  %buffer = alloca i8*, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %value = alloca i8, align 1
  %value145 = alloca i8, align 1
  %value166 = alloca [4 x i8], align 1
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gih_save_one_brush, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %cmp2 = icmp ne %struct._GimpPixelRgn* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gih_save_one_brush, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %2, i32 0, i32 6
  %3 = load i32, i32* %w, align 4
  %cmp7 = icmp slt i32 %3, 1
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.6
  %4 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %4, i32 0, i32 7
  %5 = load i32, i32* %h, align 4
  %cmp8 = icmp slt i32 %5, 1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.end.6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %6 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.10
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)) #6
  store i8* %call, i8** %name.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.10
  %7 = load i8*, i8** %name.addr, align 8
  %call13 = call i64 @strlen(i8* %7) #9
  %add = add i64 28, %call13
  %add14 = add i64 %add, 1
  %conv = trunc i64 %add14 to i32
  %and = and i32 %conv, 255
  %shl = shl i32 %and, 24
  %8 = load i8*, i8** %name.addr, align 8
  %call15 = call i64 @strlen(i8* %8) #9
  %add16 = add i64 28, %call15
  %add17 = add i64 %add16, 1
  %conv18 = trunc i64 %add17 to i32
  %and19 = and i32 %conv18, 65280
  %shl20 = shl i32 %and19, 8
  %or = or i32 %shl, %shl20
  %9 = load i8*, i8** %name.addr, align 8
  %call21 = call i64 @strlen(i8* %9) #9
  %add22 = add i64 28, %call21
  %add23 = add i64 %add22, 1
  %conv24 = trunc i64 %add23 to i32
  %and25 = and i32 %conv24, 16711680
  %shr = lshr i32 %and25, 8
  %or26 = or i32 %or, %shr
  %10 = load i8*, i8** %name.addr, align 8
  %call27 = call i64 @strlen(i8* %10) #9
  %add28 = add i64 28, %call27
  %add29 = add i64 %add28, 1
  %conv30 = trunc i64 %add29 to i32
  %and31 = and i32 %conv30, -16777216
  %shr32 = lshr i32 %and31, 24
  %or33 = or i32 %or26, %shr32
  %header_size = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  store i32 %or33, i32* %header_size, align 4
  %version = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  store i32 33554432, i32* %version, align 4
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w34 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %11, i32 0, i32 6
  %12 = load i32, i32* %w34, align 4
  %and35 = and i32 %12, 255
  %shl36 = shl i32 %and35, 24
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w37 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 6
  %14 = load i32, i32* %w37, align 4
  %and38 = and i32 %14, 65280
  %shl39 = shl i32 %and38, 8
  %or40 = or i32 %shl36, %shl39
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w41 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %15, i32 0, i32 6
  %16 = load i32, i32* %w41, align 4
  %and42 = and i32 %16, 16711680
  %shr43 = lshr i32 %and42, 8
  %or44 = or i32 %or40, %shr43
  %17 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w45 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %17, i32 0, i32 6
  %18 = load i32, i32* %w45, align 4
  %and46 = and i32 %18, -16777216
  %shr47 = lshr i32 %and46, 24
  %or48 = or i32 %or44, %shr47
  %width = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  store i32 %or48, i32* %width, align 4
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h49 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 7
  %20 = load i32, i32* %h49, align 4
  %and50 = and i32 %20, 255
  %shl51 = shl i32 %and50, 24
  %21 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h52 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %21, i32 0, i32 7
  %22 = load i32, i32* %h52, align 4
  %and53 = and i32 %22, 65280
  %shl54 = shl i32 %and53, 8
  %or55 = or i32 %shl51, %shl54
  %23 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h56 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %23, i32 0, i32 7
  %24 = load i32, i32* %h56, align 4
  %and57 = and i32 %24, 16711680
  %shr58 = lshr i32 %and57, 8
  %or59 = or i32 %or55, %shr58
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h60 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 7
  %26 = load i32, i32* %h60, align 4
  %and61 = and i32 %26, -16777216
  %shr62 = lshr i32 %and61, 24
  %or63 = or i32 %or59, %shr62
  %height = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  store i32 %or63, i32* %height, align 4
  %27 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %27, i32 0, i32 2
  %28 = load i32, i32* %bpp, align 4
  %cmp64 = icmp sgt i32 %28, 2
  %cond = select i1 %cmp64, i32 4, i32 1
  %and66 = and i32 %cond, 255
  %shl67 = shl i32 %and66, 24
  %29 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp68 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %29, i32 0, i32 2
  %30 = load i32, i32* %bpp68, align 4
  %cmp69 = icmp sgt i32 %30, 2
  %cond71 = select i1 %cmp69, i32 4, i32 1
  %and72 = and i32 %cond71, 65280
  %shl73 = shl i32 %and72, 8
  %or74 = or i32 %shl67, %shl73
  %31 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp75 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %31, i32 0, i32 2
  %32 = load i32, i32* %bpp75, align 4
  %cmp76 = icmp sgt i32 %32, 2
  %cond78 = select i1 %cmp76, i32 4, i32 1
  %and79 = and i32 %cond78, 16711680
  %shr80 = lshr i32 %and79, 8
  %or81 = or i32 %or74, %shr80
  %33 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp82 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %33, i32 0, i32 2
  %34 = load i32, i32* %bpp82, align 4
  %cmp83 = icmp sgt i32 %34, 2
  %cond85 = select i1 %cmp83, i32 4, i32 1
  %and86 = and i32 %cond85, -16777216
  %shr87 = lshr i32 %and86, 24
  %or88 = or i32 %or81, %shr87
  %bytes = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  store i32 %or88, i32* %bytes, align 4
  %magic_number = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 5
  store i32 1347242311, i32* %magic_number, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 0), align 4
  %and89 = and i32 %35, 255
  %shl90 = shl i32 %and89, 24
  %36 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 0), align 4
  %and91 = and i32 %36, 65280
  %shl92 = shl i32 %and91, 8
  %or93 = or i32 %shl90, %shl92
  %37 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 0), align 4
  %and94 = and i32 %37, 16711680
  %shr95 = lshr i32 %and94, 8
  %or96 = or i32 %or93, %shr95
  %38 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @info, i32 0, i32 0), align 4
  %and97 = and i32 %38, -16777216
  %shr98 = lshr i32 %and97, 24
  %or99 = or i32 %or96, %shr98
  %spacing = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  store i32 %or99, i32* %spacing, align 4
  %39 = load i32, i32* %fd.addr, align 4
  %40 = bitcast %struct._BrushHeader* %header to i8*
  %call100 = call i64 @write(i32 %39, i8* %40, i64 28)
  %cmp101 = icmp ne i64 %call100, 28
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.12
  %41 = load i32, i32* %fd.addr, align 4
  %42 = load i8*, i8** %name.addr, align 8
  %43 = load i8*, i8** %name.addr, align 8
  %call105 = call i64 @strlen(i8* %43) #9
  %add106 = add i64 %call105, 1
  %call107 = call i64 @write(i32 %41, i8* %42, i64 %add106)
  %44 = load i8*, i8** %name.addr, align 8
  %call108 = call i64 @strlen(i8* %44) #9
  %add109 = add i64 %call108, 1
  %cmp110 = icmp ne i64 %call107, %add109
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.104
  store i32 0, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.end.104
  %45 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w114 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %45, i32 0, i32 6
  %46 = load i32, i32* %w114, align 4
  %47 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp115 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %47, i32 0, i32 2
  %48 = load i32, i32* %bpp115, align 4
  %mul = mul nsw i32 %46, %48
  %conv116 = sext i32 %mul to i64
  %call117 = call noalias i8* @g_malloc(i64 %conv116)
  store i8* %call117, i8** %buffer, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.207, %if.end.113
  %49 = load i32, i32* %y, align 4
  %50 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h118 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %50, i32 0, i32 7
  %51 = load i32, i32* %h118, align 4
  %cmp119 = icmp ult i32 %49, %51
  br i1 %cmp119, label %for.body, label %for.end.209

for.body:                                         ; preds = %for.cond
  %52 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %53 = load i8*, i8** %buffer, align 8
  %54 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %x121 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %54, i32 0, i32 4
  %55 = load i32, i32* %x121, align 4
  %add122 = add nsw i32 0, %55
  %56 = load i32, i32* %y, align 4
  %57 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %y123 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %57, i32 0, i32 5
  %58 = load i32, i32* %y123, align 4
  %add124 = add i32 %56, %58
  %59 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w125 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %59, i32 0, i32 6
  %60 = load i32, i32* %w125, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %52, i8* %53, i32 %add122, i32 %add124, i32 %60)
  %61 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp126 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %61, i32 0, i32 2
  %62 = load i32, i32* %bpp126, align 4
  switch i32 %62, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.139
    i32 3, label %sw.bb.160
    i32 4, label %sw.bb.191
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc, %sw.bb
  %63 = load i32, i32* %x, align 4
  %64 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w128 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %64, i32 0, i32 6
  %65 = load i32, i32* %w128, align 4
  %cmp129 = icmp ult i32 %63, %65
  br i1 %cmp129, label %for.body.131, label %for.end

for.body.131:                                     ; preds = %for.cond.127
  %66 = load i32, i32* %x, align 4
  %idxprom = zext i32 %66 to i64
  %67 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 %idxprom
  %68 = load i8, i8* %arrayidx, align 1
  %conv132 = zext i8 %68 to i32
  %sub = sub nsw i32 255, %conv132
  %conv133 = trunc i32 %sub to i8
  store i8 %conv133, i8* %value, align 1
  %69 = load i32, i32* %fd.addr, align 4
  %call134 = call i64 @write(i32 %69, i8* %value, i64 1)
  %cmp135 = icmp ne i64 %call134, 1
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %for.body.131
  %70 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %70)
  store i32 0, i32* %retval
  br label %return

if.end.138:                                       ; preds = %for.body.131
  br label %for.inc

for.inc:                                          ; preds = %if.end.138
  %71 = load i32, i32* %x, align 4
  %inc = add i32 %71, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.127

for.end:                                          ; preds = %for.cond.127
  br label %sw.epilog

sw.bb.139:                                        ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.157, %sw.bb.139
  %72 = load i32, i32* %x, align 4
  %73 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w141 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %73, i32 0, i32 6
  %74 = load i32, i32* %w141, align 4
  %cmp142 = icmp ult i32 %72, %74
  br i1 %cmp142, label %for.body.144, label %for.end.159

for.body.144:                                     ; preds = %for.cond.140
  %75 = load i32, i32* %x, align 4
  %mul146 = mul i32 2, %75
  %idxprom147 = zext i32 %mul146 to i64
  %76 = load i8*, i8** %buffer, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %76, i64 %idxprom147
  %77 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %77 to i32
  %sub150 = sub nsw i32 255, %conv149
  %conv151 = trunc i32 %sub150 to i8
  store i8 %conv151, i8* %value145, align 1
  %78 = load i32, i32* %fd.addr, align 4
  %call152 = call i64 @write(i32 %78, i8* %value145, i64 1)
  %cmp153 = icmp ne i64 %call152, 1
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %for.body.144
  %79 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %79)
  store i32 0, i32* %retval
  br label %return

if.end.156:                                       ; preds = %for.body.144
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %80 = load i32, i32* %x, align 4
  %inc158 = add i32 %80, 1
  store i32 %inc158, i32* %x, align 4
  br label %for.cond.140

for.end.159:                                      ; preds = %for.cond.140
  br label %sw.epilog

sw.bb.160:                                        ; preds = %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.188, %sw.bb.160
  %81 = load i32, i32* %x, align 4
  %82 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w162 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %82, i32 0, i32 6
  %83 = load i32, i32* %w162, align 4
  %cmp163 = icmp ult i32 %81, %83
  br i1 %cmp163, label %for.body.165, label %for.end.190

for.body.165:                                     ; preds = %for.cond.161
  %84 = load i32, i32* %x, align 4
  %mul167 = mul i32 3, %84
  %add168 = add i32 %mul167, 0
  %idxprom169 = zext i32 %add168 to i64
  %85 = load i8*, i8** %buffer, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %85, i64 %idxprom169
  %86 = load i8, i8* %arrayidx170, align 1
  %arrayidx171 = getelementptr inbounds [4 x i8], [4 x i8]* %value166, i32 0, i64 0
  store i8 %86, i8* %arrayidx171, align 1
  %87 = load i32, i32* %x, align 4
  %mul172 = mul i32 3, %87
  %add173 = add i32 %mul172, 1
  %idxprom174 = zext i32 %add173 to i64
  %88 = load i8*, i8** %buffer, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %88, i64 %idxprom174
  %89 = load i8, i8* %arrayidx175, align 1
  %arrayidx176 = getelementptr inbounds [4 x i8], [4 x i8]* %value166, i32 0, i64 1
  store i8 %89, i8* %arrayidx176, align 1
  %90 = load i32, i32* %x, align 4
  %mul177 = mul i32 3, %90
  %add178 = add i32 %mul177, 2
  %idxprom179 = zext i32 %add178 to i64
  %91 = load i8*, i8** %buffer, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %91, i64 %idxprom179
  %92 = load i8, i8* %arrayidx180, align 1
  %arrayidx181 = getelementptr inbounds [4 x i8], [4 x i8]* %value166, i32 0, i64 2
  store i8 %92, i8* %arrayidx181, align 1
  %arrayidx182 = getelementptr inbounds [4 x i8], [4 x i8]* %value166, i32 0, i64 3
  store i8 -1, i8* %arrayidx182, align 1
  %93 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %value166, i32 0, i32 0
  %call183 = call i64 @write(i32 %93, i8* %arraydecay, i64 4)
  %cmp184 = icmp ne i64 %call183, 4
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %for.body.165
  %94 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %94)
  store i32 0, i32* %retval
  br label %return

if.end.187:                                       ; preds = %for.body.165
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %95 = load i32, i32* %x, align 4
  %inc189 = add i32 %95, 1
  store i32 %inc189, i32* %x, align 4
  br label %for.cond.161

for.end.190:                                      ; preds = %for.cond.161
  br label %sw.epilog

sw.bb.191:                                        ; preds = %for.body
  %96 = load i32, i32* %fd.addr, align 4
  %97 = load i8*, i8** %buffer, align 8
  %98 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w192 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %98, i32 0, i32 6
  %99 = load i32, i32* %w192, align 4
  %100 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp193 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %100, i32 0, i32 2
  %101 = load i32, i32* %bpp193, align 4
  %mul194 = mul nsw i32 %99, %101
  %conv195 = sext i32 %mul194 to i64
  %call196 = call i64 @write(i32 %96, i8* %97, i64 %conv195)
  %102 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %w197 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %102, i32 0, i32 6
  %103 = load i32, i32* %w197, align 4
  %104 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp198 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %104, i32 0, i32 2
  %105 = load i32, i32* %bpp198, align 4
  %mul199 = mul nsw i32 %103, %105
  %conv200 = sext i32 %mul199 to i64
  %cmp201 = icmp ne i64 %call196, %conv200
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %sw.bb.191
  %106 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %106)
  store i32 0, i32* %retval
  br label %return

if.end.204:                                       ; preds = %sw.bb.191
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %do.body.205

do.body.205:                                      ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i32 1220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gih_save_one_brush, i32 0, i32 0), i8* null) #10
  unreachable

do.end.206:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.206, %if.end.204, %for.end.190, %for.end.159, %for.end
  br label %for.inc.207

for.inc.207:                                      ; preds = %sw.epilog
  %107 = load i32, i32* %y, align 4
  %inc208 = add i32 %107, 1
  store i32 %inc208, i32* %y, align 4
  br label %for.cond

for.end.209:                                      ; preds = %for.cond
  %108 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %108)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.209, %if.then.203, %if.then.186, %if.then.155, %if.then.137, %if.then.112, %if.then.103, %if.then.9, %if.else.4, %if.else
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
