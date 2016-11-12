; ModuleID = './plug-ins/common/decompose.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.EXTRACT = type { i8*, i32, i32, [4 x i8*], void (i8*, i32, i32, i8**)* }
%struct.DecoVals = type { [32 x i8], i32, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpHSL = type { double, double, double, double }
%struct._GimpCMYK = type { double, double, double, double, double }
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
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal global [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"decompose-type\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"layers-mode\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Create channels as layers in a single image\00", align 1
@query.return_vals = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str.9 = private unnamed_addr constant [10 x i8] c"new-image\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Output gray image\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Output gray image (N/A for single channel extract)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"What to decompose: \00", align 1
@extract = internal global [27 x %struct.EXTRACT] [%struct.EXTRACT { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_rgb }, %struct.EXTRACT { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_red }, %struct.EXTRACT { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_green }, %struct.EXTRACT { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_blue }, %struct.EXTRACT { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 4, [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)], void (i8*, i32, i32, i8**)* @extract_rgba }, %struct.EXTRACT { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_hsv }, %struct.EXTRACT { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_hue }, %struct.EXTRACT { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_sat }, %struct.EXTRACT { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_val }, %struct.EXTRACT { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_hsl }, %struct.EXTRACT { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_huel }, %struct.EXTRACT { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_satl }, %struct.EXTRACT { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_lightness }, %struct.EXTRACT { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_cmy }, %struct.EXTRACT { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_cyan }, %struct.EXTRACT { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_magenta }, %struct.EXTRACT { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_yellow }, %struct.EXTRACT { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 4, [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)], void (i8*, i32, i32, i8**)* @extract_cmyk }, %struct.EXTRACT { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_cyank }, %struct.EXTRACT { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_magentak }, %struct.EXTRACT { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 0, i32 1, [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_yellowk }, %struct.EXTRACT { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 1, i32 1, [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* null, i8* null], void (i8*, i32, i32, i8**)* @extract_alpha }, %struct.EXTRACT { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_lab }, %struct.EXTRACT { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_ycbcr470 }, %struct.EXTRACT { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_ycbcr709 }, %struct.EXTRACT { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_ycbcr470f }, %struct.EXTRACT { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i32 1, i32 3, [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), i8* null], void (i8*, i32, i32, i8**)* @extract_ycbcr709f }], align 16
@.str.13 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"plug-in-decompose\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Decompose an image into separate colorspace components\00", align 1
@.str.16 = private unnamed_addr constant [89 x i8] c"This function creates new gray images with different channel information in each of them\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Peter Kirchgessner\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"_Decompose...\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"plug-in-decompose-registered\00", align 1
@.str.22 = private unnamed_addr constant [244 x i8] c"This function creates new gray images with different channel information in each of them. Pixels in the foreground color will appear black in all output images.  This can be used for things like crop marks that have to show up on all channels.\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Peter Kirchgessner, Clarence Risher\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"<Image>/Colors/Components\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"hue_l\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"saturation_l\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"Hue (HSL)\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Saturation (HSL)\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Lightness\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"CMY\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"cyan-k\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"magenta-k\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"yellow-k\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Cyan_K\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"Magenta_K\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"Yellow_K\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"LAB\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"YCbCr_ITU_R470\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"luma-y470\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"blueness-cb470\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"redness-cr470\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"YCbCr_ITU_R709\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"luma-y709\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"blueness-cb709\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"redness-cr709\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"YCbCr_ITU_R470_256\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"luma-y470f\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"blueness-cb470f\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"redness-cr470f\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"YCbCr_ITU_R709_256\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"luma-y709f\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"blueness-cb709f\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"redness-cr709f\00", align 1
@run.values = internal global [5 x %struct._GimpParam] zeroinitializer, align 16
@.str.84 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@run_mode = internal global i32 0, align 4
@decovals = internal global %struct.DecoVals { [32 x i8] c"rgb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0 }, align 4
@.str.86 = private unnamed_addr constant [29 x i8] c"Can only work on RGB images.\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"Decomposing\00", align 1
@.str.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"source=%d type=%s \00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"decompose-data\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"decompose\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"Decompose\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"gimp-decompose\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"Extract Channels\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"Color _model:\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"_Decompose to layers\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"_Foreground as registration color\00", align 1
@.str.102 = private unnamed_addr constant [154 x i8] c"Pixels in the foreground color will appear black in all output images.  This can be used for things like crop marks that have to show up on all channels.\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"Not an RGB image.\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"No alpha channel available.\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"%s-%s.%s\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"Background\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %type_desc = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GString* %call, %struct._GString** %type_desc, align 8
  %0 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call1 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %0, i8 signext 34)
  %1 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %2 = load i8*, i8** getelementptr inbounds ([27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 0, i32 0), align 8
  %call2 = call %struct._GString* @g_string_append(%struct._GString* %1, i8* %2)
  %3 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call3 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %3, i8 signext 34)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call5 = call %struct._GString* @g_string_append(%struct._GString* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  %6 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call6 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %6, i8 signext 34)
  %7 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %type, align 8
  %call7 = call %struct._GString* @g_string_append(%struct._GString* %7, i8* %9)
  %10 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call8 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %10, i8 signext 34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %12, i32 0, i32 0
  %13 = load i8*, i8** %str, align 8
  store i8* %13, i8** getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i64 3, i32 2), align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 5, i32 4, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([244 x i8], [244 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 5, i32 4, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call9 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  %14 = load %struct._GString*, %struct._GString** %type_desc, align 8
  %call10 = call i8* @g_string_free(%struct._GString* %14, i32 1)
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
  %num_images = alloca i32, align 4
  %image_ID_extract = alloca [4 x i32], align 16
  %layer_ID_extract = alloca [4 x i32], align 16
  %j = alloca i32, align 4
  %layer = alloca i32, align 4
  %num_layers = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %data50 = alloca %struct._GString*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* @run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_image, align 4
  store i32 %3, i32* %image_ID, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  store i32 %5, i32* %layer, align 4
  %6 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 5, i32* %6, align 4
  %7 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %7, align 8
  store i32 21, i32* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %9, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %j, align 4
  %add = add nsw i32 %10, 1
  %idxprom = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 0
  store i32 13, i32* %type, align 4
  %11 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %11, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 %idxprom10
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  store i32 -1, i32* %d_int3213, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* @run_mode, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %for.end
  %call14 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0))
  %call15 = call i32 @decompose_dialog()
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.end
  %14 = load i32, i32* %nparams.addr, align 4
  %cmp17 = icmp ne i32 %14, 4
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.16
  %15 = load i32, i32* %nparams.addr, align 4
  %cmp18 = icmp ne i32 %15, 5
  br i1 %cmp18, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %nparams.addr, align 4
  %cmp20 = icmp ne i32 %16, 6
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true.19
  store i32 1, i32* %status, align 4
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true.19, %land.lhs.true, %sw.bb.16
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data23 to i8**
  %18 = load i8*, i8** %d_string, align 8
  %call24 = call i8* @strncpy(i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0), i8* %18, i64 32) #6
  store i8 0, i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i64 31), align 1
  %19 = load i32, i32* %nparams.addr, align 4
  %cmp25 = icmp sgt i32 %19, 4
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_int3228 = bitcast %union._GimpParamData* %data27 to i32*
  %21 = load i32, i32* %d_int3228, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 1), align 4
  %22 = load i8*, i8** %name.addr, align 8
  %call29 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0)) #8
  %cmp30 = icmp eq i32 %call29, 0
  %conv = zext i1 %cmp30 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 2), align 4
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end, %if.then.21
  br label %sw.epilog

sw.bb.32:                                         ; preds = %for.end
  %call33 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.32, %if.end.31, %if.end
  %23 = load i32, i32* %layer, align 4
  %call34 = call i32 @gimp_drawable_type_with_alpha(i32 %23)
  %cmp35 = icmp ne i32 %call34, 1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %sw.epilog
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i32 0, i32 0))
  store i32 1, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %sw.epilog
  %24 = load i32, i32* %status, align 4
  %cmp39 = icmp eq i32 %24, 3
  br i1 %cmp39, label %if.then.41, label %if.end.101

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0)) #6
  %call43 = call i32 @gimp_progress_init(i8* %call42)
  %25 = load i32, i32* %image_ID, align 4
  %26 = load i32, i32* %layer, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %image_ID_extract, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [4 x i32], [4 x i32]* %layer_ID_extract, i32 0, i32 0
  %call45 = call i32 @decompose(i32 %25, i32 %26, i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0), i32* %arraydecay, i32* %num_layers, i32* %arraydecay44)
  store i32 %call45, i32* %num_images, align 4
  %27 = load i32, i32* %num_images, align 4
  %cmp46 = icmp sle i32 %27, 0
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.then.41
  store i32 0, i32* %status, align 4
  br label %if.end.99

if.else.49:                                       ; preds = %if.then.41
  %call51 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.88, i32 0, i32 0))
  store %struct._GString* %call51, %struct._GString** %data50, align 8
  %28 = load %struct._GString*, %struct._GString** %data50, align 8
  %29 = load i32, i32* %layer, align 4
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i32 0, i32 0), i32 %29, i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.58, %if.else.49
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %num_layers, align 4
  %cmp53 = icmp slt i32 %30, %31
  br i1 %cmp53, label %for.body.55, label %for.end.60

for.body.55:                                      ; preds = %for.cond.52
  %32 = load %struct._GString*, %struct._GString** %data50, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %33 to i64
  %arrayidx57 = getelementptr inbounds [4 x i32], [4 x i32]* %layer_ID_extract, i32 0, i64 %idxprom56
  %34 = load i32, i32* %arrayidx57, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 %34)
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.55
  %35 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %35, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.52

for.end.60:                                       ; preds = %for.cond.52
  store i32 0, i32* %j, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.91, %for.end.60
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %num_images, align 4
  %cmp62 = icmp slt i32 %36, %37
  br i1 %cmp62, label %for.body.64, label %for.end.93

for.body.64:                                      ; preds = %for.cond.61
  %38 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %38 to i64
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %image_ID_extract, i32 0, i64 %idxprom65
  %39 = load i32, i32* %arrayidx66, align 4
  %40 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %40, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 %idxprom68
  %data70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx69, i32 0, i32 1
  %d_int3271 = bitcast %union._GimpParamData* %data70 to i32*
  store i32 %39, i32* %d_int3271, align 4
  %41 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %41 to i64
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %image_ID_extract, i32 0, i64 %idxprom72
  %42 = load i32, i32* %arrayidx73, align 4
  %call74 = call i32 @gimp_image_undo_enable(i32 %42)
  %43 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %43 to i64
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %image_ID_extract, i32 0, i64 %idxprom75
  %44 = load i32, i32* %arrayidx76, align 4
  %call77 = call i32 @gimp_image_clean_all(i32 %44)
  %45 = load %struct._GString*, %struct._GString** %data50, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %45, i32 0, i32 1
  %46 = load i64, i64* %len, align 8
  %add78 = add i64 %46, 1
  %conv79 = trunc i64 %add78 to i32
  %47 = load %struct._GString*, %struct._GString** %data50, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %47, i32 0, i32 0
  %48 = load i8*, i8** %str, align 8
  %call80 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 %conv79, i8* %48)
  store %struct._GimpParasite* %call80, %struct._GimpParasite** %parasite, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %49 to i64
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* %image_ID_extract, i32 0, i64 %idxprom81
  %50 = load i32, i32* %arrayidx82, align 4
  %51 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call83 = call i32 @gimp_image_attach_parasite(i32 %50, %struct._GimpParasite* %51)
  %52 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %52)
  %53 = load i32, i32* @run_mode, align 4
  %cmp84 = icmp ne i32 %53, 1
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %for.body.64
  %54 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %image_ID_extract, i32 0, i64 %idxprom87
  %55 = load i32, i32* %arrayidx88, align 4
  %call89 = call i32 @gimp_display_new(i32 %55)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %for.body.64
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %56 = load i32, i32* %j, align 4
  %inc92 = add nsw i32 %56, 1
  store i32 %inc92, i32* %j, align 4
  br label %for.cond.61

for.end.93:                                       ; preds = %for.cond.61
  %57 = load i32, i32* @run_mode, align 4
  %cmp94 = icmp eq i32 %57, 0
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %for.end.93
  %call97 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0), i32 40)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.end.93
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.48
  %call100 = call i32 @gimp_progress_end()
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.99, %if.end.38
  %58 = load i32, i32* %status, align 4
  store i32 %58, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([5 x %struct._GimpParam], [5 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #2 {
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

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal void @extract_rgb(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %red_dst = alloca i8*, align 8
  %green_dst = alloca i8*, align 8
  %blue_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %red_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %green_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %blue_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %8, 3
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %red_dst, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr3, i8** %red_dst, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr4, i8** %rgb_src, align 8
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %green_dst, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr5, i8** %green_dst, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr6, i8** %rgb_src, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %blue_dst, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %blue_dst, align 8
  store i8 %17, i8* %18, align 1
  %19 = load i32, i32* %offset, align 4
  %20 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_red(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %red_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %red_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %red_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %red_dst, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_green(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %green_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %green_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %green_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %green_dst, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr1, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_blue(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %blue_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %blue_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %blue_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %blue_dst, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr1, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_rgba(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgba_src = alloca i8*, align 8
  %red_dst = alloca i8*, align 8
  %green_dst = alloca i8*, align 8
  %blue_dst = alloca i8*, align 8
  %alpha_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgba_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %red_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %green_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %blue_dst, align 8
  %7 = load i8**, i8*** %dst.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 3
  %8 = load i8*, i8** %arrayidx3, align 8
  store i8* %8, i8** %alpha_dst, align 8
  %9 = load i32, i32* %numpix.addr, align 4
  store i32 %9, i32* %count, align 4
  %10 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %10, 4
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load i32, i32* %count, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %rgba_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %rgba_src, align 8
  %13 = load i8, i8* %12, align 1
  %14 = load i8*, i8** %red_dst, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr4, i8** %red_dst, align 8
  store i8 %13, i8* %14, align 1
  %15 = load i8*, i8** %rgba_src, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr5, i8** %rgba_src, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %green_dst, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr6, i8** %green_dst, align 8
  store i8 %16, i8* %17, align 1
  %18 = load i8*, i8** %rgba_src, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %rgba_src, align 8
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %blue_dst, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr8, i8** %blue_dst, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i8*, i8** %rgba_src, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr9, i8** %rgba_src, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %alpha_dst, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr10, i8** %alpha_dst, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* %offset, align 4
  %25 = load i8*, i8** %rgba_src, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %rgba_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_hsv(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %hue_dst = alloca i8*, align 8
  %sat_dst = alloca i8*, align 8
  %val_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %hue = alloca double, align 8
  %sat = alloca double, align 8
  %val = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %hue_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %sat_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %val_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  store i32 %8, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  call void @gimp_rgb_to_hsv4(i8* %10, double* %hue, double* %sat, double* %val)
  %11 = load double, double* %hue, align 8
  %mul = fmul double %11, 2.559990e+02
  %conv = fptoui double %mul to i8
  %12 = load i8*, i8** %hue_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %hue_dst, align 8
  store i8 %conv, i8* %12, align 1
  %13 = load double, double* %sat, align 8
  %mul3 = fmul double %13, 2.559990e+02
  %conv4 = fptoui double %mul3 to i8
  %14 = load i8*, i8** %sat_dst, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %sat_dst, align 8
  store i8 %conv4, i8* %14, align 1
  %15 = load double, double* %val, align 8
  %mul6 = fmul double %15, 2.559990e+02
  %conv7 = fptoui double %mul6 to i8
  %16 = load i8*, i8** %val_dst, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr8, i8** %val_dst, align 8
  store i8 %conv7, i8* %16, align 1
  %17 = load i32, i32* %offset, align 4
  %18 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_hue(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %hue_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %hue = alloca double, align 8
  %dummy = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %hue_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  call void @gimp_rgb_to_hsv4(i8* %6, double* %hue, double* %dummy, double* %dummy)
  %7 = load double, double* %hue, align 8
  %mul = fmul double %7, 2.559990e+02
  %conv = fptoui double %mul to i8
  %8 = load i8*, i8** %hue_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %hue_dst, align 8
  store i8 %conv, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_sat(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %sat_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %sat = alloca double, align 8
  %dummy = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %sat_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  call void @gimp_rgb_to_hsv4(i8* %6, double* %dummy, double* %sat, double* %dummy)
  %7 = load double, double* %sat, align 8
  %mul = fmul double %7, 2.559990e+02
  %conv = fptoui double %mul to i8
  %8 = load i8*, i8** %sat_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %sat_dst, align 8
  store i8 %conv, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_val(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %val_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %val = alloca double, align 8
  %dummy = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %val_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  call void @gimp_rgb_to_hsv4(i8* %6, double* %dummy, double* %dummy, double* %val)
  %7 = load double, double* %val, align 8
  %mul = fmul double %7, 2.559990e+02
  %conv = fptoui double %mul to i8
  %8 = load i8*, i8** %val_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %val_dst, align 8
  store i8 %conv, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_hsl(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %hue_dst = alloca i8*, align 8
  %sat_dst = alloca i8*, align 8
  %lum_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %hue_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %sat_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %lum_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  store i32 %8, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx3, align 1
  %12 = load i8*, i8** %rgb_src, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx4, align 1
  %14 = load i8*, i8** %rgb_src, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx5, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %11, i8 zeroext %13, i8 zeroext %15)
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %16 = load double, double* %h, align 8
  %mul = fmul double %16, 2.559990e+02
  %conv = fptoui double %mul to i8
  %17 = load i8*, i8** %hue_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %hue_dst, align 8
  store i8 %conv, i8* %17, align 1
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  %18 = load double, double* %s, align 8
  %mul6 = fmul double %18, 2.559990e+02
  %conv7 = fptoui double %mul6 to i8
  %19 = load i8*, i8** %sat_dst, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr8, i8** %sat_dst, align 8
  store i8 %conv7, i8* %19, align 1
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %20 = load double, double* %l, align 8
  %mul9 = fmul double %20, 2.559990e+02
  %conv10 = fptoui double %mul9 to i8
  %21 = load i8*, i8** %lum_dst, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr11, i8** %lum_dst, align 8
  store i8 %conv10, i8* %21, align 1
  %22 = load i32, i32* %offset, align 4
  %23 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_huel(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %hue_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %hue_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx1, align 1
  %8 = load i8*, i8** %rgb_src, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx2, align 1
  %10 = load i8*, i8** %rgb_src, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx3, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %7, i8 zeroext %9, i8 zeroext %11)
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %12 = load double, double* %h, align 8
  %mul = fmul double %12, 2.559990e+02
  %conv = fptoui double %mul to i8
  %13 = load i8*, i8** %hue_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %hue_dst, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i32, i32* %offset, align 4
  %15 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_satl(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %sat_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %sat_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx1, align 1
  %8 = load i8*, i8** %rgb_src, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx2, align 1
  %10 = load i8*, i8** %rgb_src, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx3, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %7, i8 zeroext %9, i8 zeroext %11)
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  %12 = load double, double* %s, align 8
  %mul = fmul double %12, 2.559990e+02
  %conv = fptoui double %mul to i8
  %13 = load i8*, i8** %sat_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %sat_dst, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i32, i32* %offset, align 4
  %15 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_lightness(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %lum_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %lum_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx1, align 1
  %8 = load i8*, i8** %rgb_src, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx2, align 1
  %10 = load i8*, i8** %rgb_src, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx3, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %7, i8 zeroext %9, i8 zeroext %11)
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %12 = load double, double* %l, align 8
  %mul = fmul double %12, 2.559990e+02
  %conv = fptoui double %mul to i8
  %13 = load i8*, i8** %lum_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %lum_dst, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i32, i32* %offset, align 4
  %15 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_cmy(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %cyan_dst = alloca i8*, align 8
  %magenta_dst = alloca i8*, align 8
  %yellow_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %cyan_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %magenta_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %yellow_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %8, 3
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %sub3 = sub nsw i32 255, %conv
  %conv4 = trunc i32 %sub3 to i8
  %12 = load i8*, i8** %cyan_dst, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr5, i8** %cyan_dst, align 8
  store i8 %conv4, i8* %12, align 1
  %13 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr6, i8** %rgb_src, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = zext i8 %14 to i32
  %sub8 = sub nsw i32 255, %conv7
  %conv9 = trunc i32 %sub8 to i8
  %15 = load i8*, i8** %magenta_dst, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr10, i8** %magenta_dst, align 8
  store i8 %conv9, i8* %15, align 1
  %16 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr11, i8** %rgb_src, align 8
  %17 = load i8, i8* %16, align 1
  %conv12 = zext i8 %17 to i32
  %sub13 = sub nsw i32 255, %conv12
  %conv14 = trunc i32 %sub13 to i8
  %18 = load i8*, i8** %yellow_dst, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr15, i8** %yellow_dst, align 8
  store i8 %conv14, i8* %18, align 1
  %19 = load i32, i32* %offset, align 4
  %20 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_cyan(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %cyan_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %cyan_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %sub1 = sub nsw i32 255, %conv
  %conv2 = trunc i32 %sub1 to i8
  %8 = load i8*, i8** %cyan_dst, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr3, i8** %cyan_dst, align 8
  store i8 %conv2, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_magenta(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %magenta_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %magenta_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %sub1 = sub nsw i32 255, %conv
  %conv2 = trunc i32 %sub1 to i8
  %8 = load i8*, i8** %magenta_dst, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr3, i8** %magenta_dst, align 8
  store i8 %conv2, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr4, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_yellow(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %yellow_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %yellow_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %sub1 = sub nsw i32 255, %conv
  %conv2 = trunc i32 %sub1 to i8
  %8 = load i8*, i8** %yellow_dst, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr3, i8** %yellow_dst, align 8
  store i8 %conv2, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr4, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_cmyk(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %cyan_dst = alloca i8*, align 8
  %magenta_dst = alloca i8*, align 8
  %yellow_dst = alloca i8*, align 8
  %black_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %gcmyk = alloca %struct._GimpCMYK, align 8
  %grgb = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %cyan_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %magenta_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %yellow_dst, align 8
  %7 = load i8**, i8*** %dst.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 3
  %8 = load i8*, i8** %arrayidx3, align 8
  store i8* %8, i8** %black_dst, align 8
  %9 = load i32, i32* %numpix.addr, align 4
  store i32 %9, i32* %count, align 4
  %10 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %10, 3
  store i32 %sub, i32* %offset, align 4
  call void @gimp_cmyk_set(%struct._GimpCMYK* %gcmyk, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load i32, i32* %count, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %r, align 1
  %14 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr4, i8** %rgb_src, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %g, align 1
  %16 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr5, i8** %rgb_src, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %b, align 1
  %18 = load i8, i8* %r, align 1
  %19 = load i8, i8* %g, align 1
  %20 = load i8, i8* %b, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %grgb, i8 zeroext %18, i8 zeroext %19, i8 zeroext %20)
  call void @gimp_rgb_to_cmyk(%struct._GimpRGB* %grgb, double 1.000000e+00, %struct._GimpCMYK* %gcmyk)
  %21 = load i8*, i8** %cyan_dst, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr6, i8** %cyan_dst, align 8
  %22 = load i8*, i8** %magenta_dst, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr7, i8** %magenta_dst, align 8
  %23 = load i8*, i8** %yellow_dst, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr8, i8** %yellow_dst, align 8
  %24 = load i8*, i8** %black_dst, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr9, i8** %black_dst, align 8
  call void @gimp_cmyk_get_uchar(%struct._GimpCMYK* %gcmyk, i8* %21, i8* %22, i8* %23, i8* %24)
  %25 = load i32, i32* %offset, align 4
  %26 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_cyank(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %cyan_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %gcmyk = alloca %struct._GimpCMYK, align 8
  %grgb = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %cyan_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %4, 3
  store i32 %sub, i32* %offset, align 4
  call void @gimp_cmyk_set(%struct._GimpCMYK* %gcmyk, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %r, align 1
  %8 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr1, i8** %rgb_src, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %g, align 1
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %b, align 1
  %12 = load i8, i8* %r, align 1
  %13 = load i8, i8* %g, align 1
  %14 = load i8, i8* %b, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %grgb, i8 zeroext %12, i8 zeroext %13, i8 zeroext %14)
  call void @gimp_rgb_to_cmyk(%struct._GimpRGB* %grgb, double 1.000000e+00, %struct._GimpCMYK* %gcmyk)
  %15 = load i8*, i8** %cyan_dst, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr3, i8** %cyan_dst, align 8
  call void @gimp_cmyk_get_uchar(%struct._GimpCMYK* %gcmyk, i8* %15, i8* null, i8* null, i8* null)
  %16 = load i32, i32* %offset, align 4
  %17 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_magentak(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %magenta_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %gcmyk = alloca %struct._GimpCMYK, align 8
  %grgb = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %magenta_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %4, 3
  store i32 %sub, i32* %offset, align 4
  call void @gimp_cmyk_set(%struct._GimpCMYK* %gcmyk, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %r, align 1
  %8 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr1, i8** %rgb_src, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %g, align 1
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %b, align 1
  %12 = load i8, i8* %r, align 1
  %13 = load i8, i8* %g, align 1
  %14 = load i8, i8* %b, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %grgb, i8 zeroext %12, i8 zeroext %13, i8 zeroext %14)
  call void @gimp_rgb_to_cmyk(%struct._GimpRGB* %grgb, double 1.000000e+00, %struct._GimpCMYK* %gcmyk)
  %15 = load i8*, i8** %magenta_dst, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr3, i8** %magenta_dst, align 8
  call void @gimp_cmyk_get_uchar(%struct._GimpCMYK* %gcmyk, i8* null, i8* %15, i8* null, i8* null)
  %16 = load i32, i32* %offset, align 4
  %17 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_yellowk(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %yellow_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %gcmyk = alloca %struct._GimpCMYK, align 8
  %grgb = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %yellow_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %4, 3
  store i32 %sub, i32* %offset, align 4
  call void @gimp_cmyk_set(%struct._GimpCMYK* %gcmyk, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %r, align 1
  %8 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr1, i8** %rgb_src, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %g, align 1
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %b, align 1
  %12 = load i8, i8* %r, align 1
  %13 = load i8, i8* %g, align 1
  %14 = load i8, i8* %b, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %grgb, i8 zeroext %12, i8 zeroext %13, i8 zeroext %14)
  call void @gimp_rgb_to_cmyk(%struct._GimpRGB* %grgb, double 1.000000e+00, %struct._GimpCMYK* %gcmyk)
  %15 = load i8*, i8** %yellow_dst, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr3, i8** %yellow_dst, align 8
  call void @gimp_cmyk_get_uchar(%struct._GimpCMYK* %gcmyk, i8* null, i8* null, i8* %15, i8* null)
  %16 = load i32, i32* %offset, align 4
  %17 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_alpha(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %alpha_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 3
  store i8* %add.ptr, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %alpha_dst, align 8
  %3 = load i32, i32* %numpix.addr, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32, i32* %bpp.addr, align 4
  store i32 %4, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %rgb_src, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %alpha_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %alpha_dst, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i32, i32* %offset, align 4
  %10 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr1, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_lab(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %l_dst = alloca i8*, align 8
  %a_dst = alloca i8*, align 8
  %b_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %red = alloca double, align 8
  %green = alloca double, align 8
  %blue = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %l = alloca double, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %tz = alloca double, align 8
  %ftx = alloca double, align 8
  %fty = alloca double, align 8
  %ftz = alloca double, align 8
  %sixteenth = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %l_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %a_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %b_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  store i32 %8, i32* %offset, align 4
  store double 0x3FC1A7B9611A7B96, double* %sixteenth, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.108, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %conv4 = sitofp i32 %conv to double
  %div = fdiv double %conv4, 2.550000e+02
  store double %div, double* %red, align 8
  %12 = load i8*, i8** %rgb_src, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i32
  %conv7 = sitofp i32 %conv6 to double
  %div8 = fdiv double %conv7, 2.550000e+02
  store double %div8, double* %green, align 8
  %14 = load i8*, i8** %rgb_src, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %conv11 = sitofp i32 %conv10 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  store double %div12, double* %blue, align 8
  %16 = load double, double* %red, align 8
  %mul = fmul double 4.310000e-01, %16
  %17 = load double, double* %green, align 8
  %mul13 = fmul double 3.420000e-01, %17
  %add = fadd double %mul, %mul13
  %18 = load double, double* %blue, align 8
  %mul14 = fmul double 1.780000e-01, %18
  %add15 = fadd double %add, %mul14
  store double %add15, double* %x, align 8
  %19 = load double, double* %red, align 8
  %mul16 = fmul double 2.220000e-01, %19
  %20 = load double, double* %green, align 8
  %mul17 = fmul double 7.070000e-01, %20
  %add18 = fadd double %mul16, %mul17
  %21 = load double, double* %blue, align 8
  %mul19 = fmul double 7.100000e-02, %21
  %add20 = fadd double %add18, %mul19
  store double %add20, double* %y, align 8
  %22 = load double, double* %red, align 8
  %mul21 = fmul double 2.000000e-02, %22
  %23 = load double, double* %green, align 8
  %mul22 = fmul double 1.300000e-01, %23
  %add23 = fadd double %mul21, %mul22
  %24 = load double, double* %blue, align 8
  %mul24 = fmul double 9.390000e-01, %24
  %add25 = fadd double %add23, %mul24
  store double %add25, double* %z, align 8
  %25 = load double, double* %y, align 8
  %div26 = fdiv double %25, 1.000000e+00
  store double %div26, double* %ty, align 8
  %cmp27 = fcmp ogt double %div26, 8.856000e-03
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %26 = load double, double* %ty, align 8
  %call = call double @cbrt(double %26) #6
  %mul29 = fmul double 1.160000e+02, %call
  %sub = fsub double %mul29, 1.600000e+01
  store double %sub, double* %l, align 8
  %27 = load double, double* %ty, align 8
  %call30 = call double @cbrt(double %27) #6
  store double %call30, double* %fty, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %28 = load double, double* %ty, align 8
  %mul31 = fmul double 9.033000e+02, %28
  store double %mul31, double* %l, align 8
  %29 = load double, double* %ty, align 8
  %mul32 = fmul double 7.780000e+00, %29
  %30 = load double, double* %sixteenth, align 8
  %add33 = fadd double %mul32, %30
  store double %add33, double* %fty, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load double, double* %x, align 8
  %div34 = fdiv double %31, 9.510000e-01
  store double %div34, double* %tx, align 8
  %cmp35 = fcmp ogt double %div34, 8.856000e-03
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load double, double* %tx, align 8
  %call37 = call double @cbrt(double %32) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %33 = load double, double* %tx, align 8
  %mul38 = fmul double 7.780000e+00, %33
  %34 = load double, double* %sixteenth, align 8
  %add39 = fadd double %mul38, %34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call37, %cond.true ], [ %add39, %cond.false ]
  store double %cond, double* %ftx, align 8
  %35 = load double, double* %z, align 8
  %div40 = fdiv double %35, 1.089000e+00
  store double %div40, double* %tz, align 8
  %cmp41 = fcmp ogt double %div40, 8.856000e-03
  br i1 %cmp41, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.end
  %36 = load double, double* %tz, align 8
  %call44 = call double @cbrt(double %36) #6
  br label %cond.end.48

cond.false.45:                                    ; preds = %cond.end
  %37 = load double, double* %tz, align 8
  %mul46 = fmul double 7.780000e+00, %37
  %38 = load double, double* %sixteenth, align 8
  %add47 = fadd double %mul46, %38
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.43
  %cond49 = phi double [ %call44, %cond.true.43 ], [ %add47, %cond.false.45 ]
  store double %cond49, double* %ftz, align 8
  %39 = load double, double* %l, align 8
  %mul50 = fmul double %39, 2.559900e+00
  %cmp51 = fcmp ogt double %mul50, 2.560000e+02
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.48
  br label %cond.end.63

cond.false.54:                                    ; preds = %cond.end.48
  %40 = load double, double* %l, align 8
  %mul55 = fmul double %40, 2.559900e+00
  %cmp56 = fcmp olt double %mul55, 0.000000e+00
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.false.54
  br label %cond.end.61

cond.false.59:                                    ; preds = %cond.false.54
  %41 = load double, double* %l, align 8
  %mul60 = fmul double %41, 2.559900e+00
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.58
  %cond62 = phi double [ 0.000000e+00, %cond.true.58 ], [ %mul60, %cond.false.59 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.53
  %cond64 = phi double [ 2.560000e+02, %cond.true.53 ], [ %cond62, %cond.end.61 ]
  %conv65 = fptoui double %cond64 to i8
  %42 = load i8*, i8** %l_dst, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %l_dst, align 8
  store i8 %conv65, i8* %42, align 1
  %43 = load double, double* %ftx, align 8
  %44 = load double, double* %fty, align 8
  %sub66 = fsub double %43, %44
  %mul67 = fmul double %sub66, 6.350000e+02
  %add68 = fadd double 1.280000e+02, %mul67
  %cmp69 = fcmp ogt double %add68, 2.560000e+02
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.end.63
  br label %cond.end.85

cond.false.72:                                    ; preds = %cond.end.63
  %45 = load double, double* %ftx, align 8
  %46 = load double, double* %fty, align 8
  %sub73 = fsub double %45, %46
  %mul74 = fmul double %sub73, 6.350000e+02
  %add75 = fadd double 1.280000e+02, %mul74
  %cmp76 = fcmp olt double %add75, 0.000000e+00
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.false.72
  br label %cond.end.83

cond.false.79:                                    ; preds = %cond.false.72
  %47 = load double, double* %ftx, align 8
  %48 = load double, double* %fty, align 8
  %sub80 = fsub double %47, %48
  %mul81 = fmul double %sub80, 6.350000e+02
  %add82 = fadd double 1.280000e+02, %mul81
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.79, %cond.true.78
  %cond84 = phi double [ 0.000000e+00, %cond.true.78 ], [ %add82, %cond.false.79 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.71
  %cond86 = phi double [ 2.560000e+02, %cond.true.71 ], [ %cond84, %cond.end.83 ]
  %conv87 = fptoui double %cond86 to i8
  %49 = load i8*, i8** %a_dst, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr88, i8** %a_dst, align 8
  store i8 %conv87, i8* %49, align 1
  %50 = load double, double* %fty, align 8
  %51 = load double, double* %ftz, align 8
  %sub89 = fsub double %50, %51
  %mul90 = fmul double %sub89, 2.540000e+02
  %add91 = fadd double 1.280000e+02, %mul90
  %cmp92 = fcmp ogt double %add91, 2.560000e+02
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.end.85
  br label %cond.end.108

cond.false.95:                                    ; preds = %cond.end.85
  %52 = load double, double* %fty, align 8
  %53 = load double, double* %ftz, align 8
  %sub96 = fsub double %52, %53
  %mul97 = fmul double %sub96, 2.540000e+02
  %add98 = fadd double 1.280000e+02, %mul97
  %cmp99 = fcmp olt double %add98, 0.000000e+00
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.false.95
  br label %cond.end.106

cond.false.102:                                   ; preds = %cond.false.95
  %54 = load double, double* %fty, align 8
  %55 = load double, double* %ftz, align 8
  %sub103 = fsub double %54, %55
  %mul104 = fmul double %sub103, 2.540000e+02
  %add105 = fadd double 1.280000e+02, %mul104
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.102, %cond.true.101
  %cond107 = phi double [ 0.000000e+00, %cond.true.101 ], [ %add105, %cond.false.102 ]
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.end.106, %cond.true.94
  %cond109 = phi double [ 2.560000e+02, %cond.true.94 ], [ %cond107, %cond.end.106 ]
  %conv110 = fptoui double %cond109 to i8
  %56 = load i8*, i8** %b_dst, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr111, i8** %b_dst, align 8
  store i8 %conv110, i8* %56, align 1
  %57 = load i32, i32* %offset, align 4
  %58 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %57 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_ycbcr470(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %y_dst = alloca i8*, align 8
  %cb_dst = alloca i8*, align 8
  %cr_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %y_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %cb_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %cr_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %8, 3
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %r, align 4
  %12 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr3, i8** %rgb_src, align 8
  %13 = load i8, i8* %12, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %g, align 4
  %14 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %rgb_src, align 8
  %15 = load i8, i8* %14, align 1
  %conv6 = zext i8 %15 to i32
  store i32 %conv6, i32* %b, align 4
  %16 = load i32, i32* %r, align 4
  %mul = mul nsw i32 16823, %16
  %17 = load i32, i32* %g, align 4
  %mul7 = mul nsw i32 33016, %17
  %add = add nsw i32 %mul, %mul7
  %18 = load i32, i32* %b, align 4
  %mul8 = mul nsw i32 6445, %18
  %add9 = add nsw i32 %add, %mul8
  %add10 = add nsw i32 %add9, 1081344
  %shr = ashr i32 %add10, 16
  %conv11 = trunc i32 %shr to i8
  %19 = load i8*, i8** %y_dst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr12, i8** %y_dst, align 8
  store i8 %conv11, i8* %19, align 1
  %20 = load i32, i32* %r, align 4
  %mul13 = mul nsw i32 -9718, %20
  %21 = load i32, i32* %g, align 4
  %mul14 = mul nsw i32 19067, %21
  %sub15 = sub nsw i32 %mul13, %mul14
  %22 = load i32, i32* %b, align 4
  %mul16 = mul nsw i32 28784, %22
  %add17 = add nsw i32 %sub15, %mul16
  %add18 = add nsw i32 %add17, 8421376
  %shr19 = ashr i32 %add18, 16
  %conv20 = trunc i32 %shr19 to i8
  %23 = load i8*, i8** %cb_dst, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr21, i8** %cb_dst, align 8
  store i8 %conv20, i8* %23, align 1
  %24 = load i32, i32* %r, align 4
  %mul22 = mul nsw i32 28784, %24
  %25 = load i32, i32* %g, align 4
  %mul23 = mul nsw i32 24087, %25
  %sub24 = sub nsw i32 %mul22, %mul23
  %26 = load i32, i32* %b, align 4
  %mul25 = mul nsw i32 4698, %26
  %sub26 = sub nsw i32 %sub24, %mul25
  %add27 = add nsw i32 %sub26, 8421376
  %shr28 = ashr i32 %add27, 16
  %conv29 = trunc i32 %shr28 to i8
  %27 = load i8*, i8** %cr_dst, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr30, i8** %cr_dst, align 8
  store i8 %conv29, i8* %27, align 1
  %28 = load i32, i32* %offset, align 4
  %29 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_ycbcr709(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %y_dst = alloca i8*, align 8
  %cb_dst = alloca i8*, align 8
  %cr_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %y_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %cb_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %cr_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %8, 3
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %r, align 4
  %12 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr3, i8** %rgb_src, align 8
  %13 = load i8, i8* %12, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %g, align 4
  %14 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %rgb_src, align 8
  %15 = load i8, i8* %14, align 1
  %conv6 = zext i8 %15 to i32
  store i32 %conv6, i32* %b, align 4
  %16 = load i32, i32* %r, align 4
  %mul = mul nsw i32 11966, %16
  %17 = load i32, i32* %g, align 4
  %mul7 = mul nsw i32 40254, %17
  %add = add nsw i32 %mul, %mul7
  %18 = load i32, i32* %b, align 4
  %mul8 = mul nsw i32 4064, %18
  %add9 = add nsw i32 %add, %mul8
  %add10 = add nsw i32 %add9, 1081344
  %shr = ashr i32 %add10, 16
  %conv11 = trunc i32 %shr to i8
  %19 = load i8*, i8** %y_dst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr12, i8** %y_dst, align 8
  store i8 %conv11, i8* %19, align 1
  %20 = load i32, i32* %r, align 4
  %mul13 = mul nsw i32 -6620, %20
  %21 = load i32, i32* %g, align 4
  %mul14 = mul nsw i32 22222, %21
  %sub15 = sub nsw i32 %mul13, %mul14
  %22 = load i32, i32* %b, align 4
  %mul16 = mul nsw i32 28784, %22
  %add17 = add nsw i32 %sub15, %mul16
  %add18 = add nsw i32 %add17, 8421376
  %shr19 = ashr i32 %add18, 16
  %conv20 = trunc i32 %shr19 to i8
  %23 = load i8*, i8** %cb_dst, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr21, i8** %cb_dst, align 8
  store i8 %conv20, i8* %23, align 1
  %24 = load i32, i32* %r, align 4
  %mul22 = mul nsw i32 28784, %24
  %25 = load i32, i32* %g, align 4
  %mul23 = mul nsw i32 26136, %25
  %sub24 = sub nsw i32 %mul22, %mul23
  %26 = load i32, i32* %b, align 4
  %mul25 = mul nsw i32 2648, %26
  %sub26 = sub nsw i32 %sub24, %mul25
  %add27 = add nsw i32 %sub26, 8421376
  %shr28 = ashr i32 %add27, 16
  %conv29 = trunc i32 %shr28 to i8
  %27 = load i8*, i8** %cr_dst, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr30, i8** %cr_dst, align 8
  store i8 %conv29, i8* %27, align 1
  %28 = load i32, i32* %offset, align 4
  %29 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_ycbcr470f(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %y_dst = alloca i8*, align 8
  %cb_dst = alloca i8*, align 8
  %cr_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %y_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %cb_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %cr_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %8, 3
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %r, align 4
  %12 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr3, i8** %rgb_src, align 8
  %13 = load i8, i8* %12, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %g, align 4
  %14 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %rgb_src, align 8
  %15 = load i8, i8* %14, align 1
  %conv6 = zext i8 %15 to i32
  store i32 %conv6, i32* %b, align 4
  %16 = load i32, i32* %r, align 4
  %mul = mul nsw i32 19589, %16
  %17 = load i32, i32* %g, align 4
  %mul7 = mul nsw i32 38443, %17
  %add = add nsw i32 %mul, %mul7
  %18 = load i32, i32* %b, align 4
  %mul8 = mul nsw i32 7504, %18
  %add9 = add nsw i32 %add, %mul8
  %add10 = add nsw i32 %add9, 32768
  %shr = ashr i32 %add10, 16
  %conv11 = trunc i32 %shr to i8
  %19 = load i8*, i8** %y_dst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr12, i8** %y_dst, align 8
  store i8 %conv11, i8* %19, align 1
  %20 = load i32, i32* %r, align 4
  %mul13 = mul nsw i32 -11062, %20
  %21 = load i32, i32* %g, align 4
  %mul14 = mul nsw i32 21706, %21
  %sub15 = sub nsw i32 %mul13, %mul14
  %22 = load i32, i32* %b, align 4
  %mul16 = mul nsw i32 32768, %22
  %add17 = add nsw i32 %sub15, %mul16
  %add18 = add nsw i32 %add17, 8421376
  %shr19 = ashr i32 %add18, 16
  store i32 %shr19, i32* %cb, align 4
  %23 = load i32, i32* %r, align 4
  %mul20 = mul nsw i32 32768, %23
  %24 = load i32, i32* %g, align 4
  %mul21 = mul nsw i32 27420, %24
  %sub22 = sub nsw i32 %mul20, %mul21
  %25 = load i32, i32* %b, align 4
  %mul23 = mul nsw i32 5348, %25
  %sub24 = sub nsw i32 %sub22, %mul23
  %add25 = add nsw i32 %sub24, 8421376
  %shr26 = ashr i32 %add25, 16
  store i32 %shr26, i32* %cr, align 4
  %26 = load i32, i32* %cb, align 4
  %cmp27 = icmp sgt i32 %26, 255
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 255, i32* %cb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %27 = load i32, i32* %cr, align 4
  %cmp29 = icmp sgt i32 %27, 255
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  store i32 255, i32* %cr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end
  %28 = load i32, i32* %cb, align 4
  %conv33 = trunc i32 %28 to i8
  %29 = load i8*, i8** %cb_dst, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr34, i8** %cb_dst, align 8
  store i8 %conv33, i8* %29, align 1
  %30 = load i32, i32* %cr, align 4
  %conv35 = trunc i32 %30 to i8
  %31 = load i8*, i8** %cr_dst, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr36, i8** %cr_dst, align 8
  store i8 %conv35, i8* %31, align 1
  %32 = load i32, i32* %offset, align 4
  %33 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extract_ycbcr709f(i8* %src, i32 %bpp, i32 %numpix, i8** %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %rgb_src = alloca i8*, align 8
  %y_dst = alloca i8*, align 8
  %cb_dst = alloca i8*, align 8
  %cr_dst = alloca i8*, align 8
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %y_dst, align 8
  %3 = load i8**, i8*** %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  store i8* %4, i8** %cb_dst, align 8
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx2, align 8
  store i8* %6, i8** %cr_dst, align 8
  %7 = load i32, i32* %numpix.addr, align 4
  store i32 %7, i32* %count, align 4
  %8 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %8, 3
  store i32 %sub, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %rgb_src, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %r, align 4
  %12 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr3, i8** %rgb_src, align 8
  %13 = load i8, i8* %12, align 1
  %conv4 = zext i8 %13 to i32
  store i32 %conv4, i32* %g, align 4
  %14 = load i8*, i8** %rgb_src, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %rgb_src, align 8
  %15 = load i8, i8* %14, align 1
  %conv6 = zext i8 %15 to i32
  store i32 %conv6, i32* %b, align 4
  %16 = load i32, i32* %r, align 4
  %mul = mul nsw i32 13933, %16
  %17 = load i32, i32* %g, align 4
  %mul7 = mul nsw i32 46871, %17
  %add = add nsw i32 %mul, %mul7
  %18 = load i32, i32* %b, align 4
  %mul8 = mul nsw i32 4732, %18
  %add9 = add nsw i32 %add, %mul8
  %add10 = add nsw i32 %add9, 32768
  %shr = ashr i32 %add10, 16
  %conv11 = trunc i32 %shr to i8
  %19 = load i8*, i8** %y_dst, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr12, i8** %y_dst, align 8
  store i8 %conv11, i8* %19, align 1
  %20 = load i32, i32* %r, align 4
  %mul13 = mul nsw i32 -7537, %20
  %21 = load i32, i32* %g, align 4
  %mul14 = mul nsw i32 25297, %21
  %sub15 = sub nsw i32 %mul13, %mul14
  %22 = load i32, i32* %b, align 4
  %mul16 = mul nsw i32 32768, %22
  %add17 = add nsw i32 %sub15, %mul16
  %add18 = add nsw i32 %add17, 8421376
  %shr19 = ashr i32 %add18, 16
  store i32 %shr19, i32* %cb, align 4
  %23 = load i32, i32* %r, align 4
  %mul20 = mul nsw i32 32768, %23
  %24 = load i32, i32* %g, align 4
  %mul21 = mul nsw i32 29753, %24
  %sub22 = sub nsw i32 %mul20, %mul21
  %25 = load i32, i32* %b, align 4
  %mul23 = mul nsw i32 3015, %25
  %sub24 = sub nsw i32 %sub22, %mul23
  %add25 = add nsw i32 %sub24, 8421376
  %shr26 = ashr i32 %add25, 16
  store i32 %shr26, i32* %cr, align 4
  %26 = load i32, i32* %cb, align 4
  %cmp27 = icmp sgt i32 %26, 255
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 255, i32* %cb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %27 = load i32, i32* %cr, align 4
  %cmp29 = icmp sgt i32 %27, 255
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  store i32 255, i32* %cr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end
  %28 = load i32, i32* %cb, align 4
  %conv33 = trunc i32 %28 to i8
  %29 = load i8*, i8** %cb_dst, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr34, i8** %cb_dst, align 8
  store i8 %conv33, i8* %29, align 1
  %30 = load i32, i32* %cr, align 4
  %conv35 = trunc i32 %30 to i8
  %31 = load i8*, i8** %cr_dst, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr36, i8** %cr_dst, align 8
  store i8 %conv35, i8* %31, align 1
  %32 = load i32, i32* %offset, align 4
  %33 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @gimp_rgb_to_hsv4(i8*, double*, double*, double*) #1

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare void @gimp_rgb_to_hsl(%struct._GimpRGB*, %struct._GimpHSL*) #1

declare void @gimp_cmyk_set(%struct._GimpCMYK*, double, double, double, double) #1

declare void @gimp_rgb_to_cmyk(%struct._GimpRGB*, double, %struct._GimpCMYK*) #1

declare void @gimp_cmyk_get_uchar(%struct._GimpCMYK*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare double @cbrt(double) #3

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @decompose_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %j = alloca i32, align 4
  %extract_idx = alloca i32, align 4
  %run = alloca i32, align 4
  %label51 = alloca i8*, align 8
  %l = alloca i8*, align 8
  store i32 0, i32* %extract_idx, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom
  %dialog2 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %dialog2, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom3
  %type = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx4, i32 0, i32 0
  %4 = load i8*, i8** %type, align 8
  %call = call i32 @g_ascii_strcasecmp(i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0), i8* %4)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %j, align 4
  store i32 %5, i32* %extract_idx, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i32 0)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0)) #6
  %call8 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %dialog, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call9)
  %9 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %9, i32 -5, i32 -6, i32 -1)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call11)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %12, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_window_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %15)
  %call15 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %main_vbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %18, i32 12)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_dialog_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkDialog*
  %call20 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %21)
  %22 = bitcast %struct._GtkWidget* %call20 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call21)
  %23 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0)) #6
  %call24 = call %struct._GtkWidget* @gimp_frame_new(i8* %call23)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %frame, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call25)
  %28 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 1, i32 1, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %vbox, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_container_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call28)
  %33 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkContainer*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %33, %struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call30 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %hbox, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call31)
  %38 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0)) #6
  %call34 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_misc_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call35)
  %43 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %43, float 0.000000e+00, float 5.000000e-01)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call37)
  %46 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %call39 = call i64 @gimp_int_combo_box_get_type() #7
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* null)
  %49 = bitcast i8* %call40 to %struct._GtkWidget*
  store %struct._GtkWidget* %49, %struct._GtkWidget** %combo, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.73, %for.end
  %50 = load i32, i32* %j, align 4
  %conv42 = sext i32 %50 to i64
  %cmp43 = icmp ult i64 %conv42, 27
  br i1 %cmp43, label %for.body.45, label %for.end.75

for.body.45:                                      ; preds = %for.cond.41
  %51 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom46
  %dialog48 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx47, i32 0, i32 1
  %52 = load i32, i32* %dialog48, align 4
  %tobool49 = icmp ne i32 %52, 0
  br i1 %tobool49, label %if.then.50, label %if.end.72

if.then.50:                                       ; preds = %for.body.45
  %53 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %53 to i64
  %arrayidx53 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom52
  %type54 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx53, i32 0, i32 0
  %54 = load i8*, i8** %type54, align 8
  %call55 = call i8* @gettext(i8* %54) #6
  %call56 = call noalias i8* @g_strdup(i8* %call55)
  store i8* %call56, i8** %label51, align 8
  %55 = load i8*, i8** %label51, align 8
  store i8* %55, i8** %l, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.68, %if.then.50
  %56 = load i8*, i8** %l, align 8
  %57 = load i8, i8* %56, align 1
  %tobool58 = icmp ne i8 %57, 0
  br i1 %tobool58, label %for.body.59, label %for.end.69

for.body.59:                                      ; preds = %for.cond.57
  %58 = load i8*, i8** %l, align 8
  %59 = load i8, i8* %58, align 1
  %conv60 = sext i8 %59 to i32
  %cmp61 = icmp eq i32 %conv60, 45
  br i1 %cmp61, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.59
  %60 = load i8*, i8** %l, align 8
  %61 = load i8, i8* %60, align 1
  %conv63 = sext i8 %61 to i32
  %cmp64 = icmp eq i32 %conv63, 95
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false, %for.body.59
  %62 = load i8*, i8** %l, align 8
  store i8 32, i8* %62, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %lor.lhs.false
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %63 = load i8*, i8** %l, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr, i8** %l, align 8
  br label %for.cond.57

for.end.69:                                       ; preds = %for.cond.57
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_int_combo_box_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call70)
  %66 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpIntComboBox*
  %67 = load i8*, i8** %label51, align 8
  %68 = load i32, i32* %j, align 4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %66, i32 1, i8* %67, i32 0, i32 %68, i32 -1)
  %69 = load i8*, i8** %label51, align 8
  call void @g_free(i8* %69)
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.69, %for.body.45
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %70 = load i32, i32* %j, align 4
  %inc74 = add nsw i32 %70, 1
  store i32 %inc74, i32* %j, align 4
  br label %for.cond.41

for.end.75:                                       ; preds = %for.cond.41
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call76)
  %73 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 1, i32 1, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_label_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call78)
  %78 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkLabel*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %78, %struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_int_combo_box_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call80)
  %82 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpIntComboBox*
  %83 = load i32, i32* %extract_idx, align 4
  %84 = bitcast i32* %extract_idx to i8*
  %call82 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %82, i32 %83, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %84)
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0)) #6
  %call84 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call83)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %toggle, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_toggle_button_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call85)
  %87 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkToggleButton*
  %88 = load i32, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %87, i32 %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call87)
  %91 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %91, %struct._GtkWidget* %92, i32 0, i32 0, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.101, i32 0, i32 0)) #6
  %call91 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call90)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %toggle, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.102, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %96, i8* %call92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0))
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_toggle_button_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call93)
  %99 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkToggleButton*
  %100 = load i32, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %99, i32 %100)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #7
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call95)
  %103 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %103, %struct._GtkWidget* %104, i32 0, i32 0, i32 0)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %call97 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_dialog_get_type() #7
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call98)
  %111 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpDialog*
  %call100 = call i32 @gimp_dialog_run(%struct._GimpDialog* %111)
  %cmp101 = icmp eq i32 %call100, -5
  %conv102 = zext i1 %cmp101 to i32
  store i32 %conv102, i32* %run, align 4
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %112)
  %113 = load i32, i32* %run, align 4
  %tobool103 = icmp ne i32 %113, 0
  br i1 %tobool103, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %for.end.75
  %114 = load i32, i32* %extract_idx, align 4
  %idxprom105 = sext i32 %114 to i64
  %arrayidx106 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom105
  %type107 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx106, i32 0, i32 0
  %115 = load i8*, i8** %type107, align 8
  %call108 = call i8* @strncpy(i8* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 0, i32 0), i8* %115, i64 31) #6
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %for.end.75
  %116 = load i32, i32* %run, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @gimp_drawable_type_with_alpha(i32) #1

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

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @decompose(i32 %image_ID, i32 %drawable_ID, i8* %extract_type, i32* %image_ID_dst, i32* %nlayers, i32* %layer_ID_dst) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %extract_type.addr = alloca i8*, align 8
  %image_ID_dst.addr = alloca i32*, align 8
  %nlayers.addr = alloca i32*, align 8
  %layer_ID_dst.addr = alloca i32*, align 8
  %layername = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %extract_idx = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %num_layers = alloca i32, align 4
  %filename = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dst = alloca [4 x i8*], align 16
  %drawable_src = alloca %struct._GimpDrawable*, align 8
  %drawable_dst = alloca [4 x %struct._GimpDrawable*], align 16
  %pixel_rgn_src = alloca %struct._GimpPixelRgn, align 8
  %pixel_rgn_dst = alloca [4 x %struct._GimpPixelRgn], align 16
  %fname = alloca i8*, align 8
  %extension = alloca i8*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %extract_type, i8** %extract_type.addr, align 8
  store i32* %image_ID_dst, i32** %image_ID_dst.addr, align 8
  store i32* %nlayers, i32** %nlayers.addr, align 8
  store i32* %layer_ID_dst, i32** %layer_ID_dst.addr, align 8
  store i32 -1, i32* %extract_idx, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %extract_type.addr, align 8
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %type, align 8
  %call = call i32 @g_ascii_strcasecmp(i8* %1, i8* %3)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  store i32 %4, i32* %extract_idx, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, i32* %extract_idx, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  %7 = load i32, i32* %drawable_ID.addr, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %7)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable_src, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp, align 4
  %cmp9 = icmp ult i32 %9, 3
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.103, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %10 = load i32, i32* %extract_idx, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom13
  %extract_fun = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx14, i32 0, i32 4
  %11 = load void (i8*, i32, i32, i8**)*, void (i8*, i32, i32, i8**)** %extract_fun, align 8
  %cmp15 = icmp eq void (i8*, i32, i32, i8**)* %11, @extract_alpha
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %12 = load i32, i32* %extract_idx, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom17
  %extract_fun19 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx18, i32 0, i32 4
  %13 = load void (i8*, i32, i32, i8**)*, void (i8*, i32, i32, i8**)** %extract_fun19, align 8
  %cmp20 = icmp eq void (i8*, i32, i32, i8**)* %13, @extract_rgba
  br i1 %cmp20, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.12
  %14 = load i32, i32* %drawable_ID.addr, align 4
  %call22 = call i32 @gimp_drawable_has_alpha(i32 %14)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  %width25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width25, align 4
  store i32 %16, i32* %width, align 4
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  %height26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 2
  %18 = load i32, i32* %height26, align 4
  store i32 %18, i32* %height, align 4
  %call27 = call i32 @gimp_tile_height() #7
  store i32 %call27, i32* %tile_height, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn_src, %struct._GimpDrawable* %19, i32 0, i32 0, i32 %20, i32 %21, i32 0, i32 0)
  %22 = load i32, i32* %tile_height, align 4
  %23 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %22, %23
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  %bpp28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 3
  %25 = load i32, i32* %bpp28, align 4
  %mul29 = mul i32 %mul, %25
  %conv30 = zext i32 %mul29 to i64
  %call31 = call noalias i8* @g_malloc_n(i64 %conv30, i64 1)
  store i8* %call31, i8** %src, align 8
  %26 = load i32, i32* %extract_idx, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom32
  %num_images = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx33, i32 0, i32 2
  %27 = load i32, i32* %num_images, align 4
  store i32 %27, i32* %num_layers, align 4
  %28 = load i32, i32* %num_layers, align 4
  %cmp34 = icmp sgt i32 %28, 4
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.24
  store i32 4, i32* %num_layers, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.24
  store i32 0, i32* %j, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.150, %if.end.37
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %num_layers, align 4
  %cmp39 = icmp slt i32 %29, %30
  br i1 %cmp39, label %for.body.41, label %for.end.152

for.body.41:                                      ; preds = %for.cond.38
  %31 = load i32, i32* %image_ID.addr, align 4
  %call42 = call i8* @gimp_image_get_filename(i32 %31)
  store i8* %call42, i8** %fname, align 8
  %32 = load i8*, i8** %fname, align 8
  %tobool43 = icmp ne i8* %32, null
  br i1 %tobool43, label %if.then.44, label %if.else.90

if.then.44:                                       ; preds = %for.body.41
  %33 = load i8*, i8** %fname, align 8
  %34 = load i8*, i8** %fname, align 8
  %call45 = call i64 @strlen(i8* %34) #8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %call45
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr46, i8** %extension, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.then.44
  %35 = load i8*, i8** %extension, align 8
  %36 = load i8*, i8** %fname, align 8
  %cmp47 = icmp uge i8* %35, %36
  br i1 %cmp47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i8*, i8** %extension, align 8
  %38 = load i8, i8* %37, align 1
  %conv49 = sext i8 %38 to i32
  %cmp50 = icmp eq i32 %conv49, 46
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %while.body
  br label %while.end

if.end.53:                                        ; preds = %while.body
  %39 = load i8*, i8** %extension, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr, i8** %extension, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.52, %while.cond
  %40 = load i8*, i8** %extension, align 8
  %41 = load i8*, i8** %fname, align 8
  %cmp54 = icmp uge i8* %40, %41
  br i1 %cmp54, label %if.then.56, label %if.else.72

if.then.56:                                       ; preds = %while.end
  %42 = load i8*, i8** %extension, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr57, i8** %extension, align 8
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 1), align 4
  %tobool58 = icmp ne i32 %43, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.then.56
  %44 = load i8*, i8** %fname, align 8
  %45 = load i32, i32* %extract_idx, align 4
  %idxprom60 = sext i32 %45 to i64
  %arrayidx61 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom60
  %type62 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx61, i32 0, i32 0
  %46 = load i8*, i8** %type62, align 8
  %call63 = call i8* @gettext(i8* %46) #6
  %47 = load i8*, i8** %extension, align 8
  %call64 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i8* %44, i8* %call63, i8* %47)
  store i8* %call64, i8** %filename, align 8
  br label %if.end.71

if.else:                                          ; preds = %if.then.56
  %48 = load i8*, i8** %fname, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %49 to i64
  %50 = load i32, i32* %extract_idx, align 4
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom66
  %channel_name = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx67, i32 0, i32 3
  %arrayidx68 = getelementptr inbounds [4 x i8*], [4 x i8*]* %channel_name, i32 0, i64 %idxprom65
  %51 = load i8*, i8** %arrayidx68, align 8
  %call69 = call i8* @gettext(i8* %51) #6
  %52 = load i8*, i8** %extension, align 8
  %call70 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i8* %48, i8* %call69, i8* %52)
  store i8* %call70, i8** %filename, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %if.then.59
  br label %if.end.89

if.else.72:                                       ; preds = %while.end
  %53 = load i32, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 1), align 4
  %tobool73 = icmp ne i32 %53, 0
  br i1 %tobool73, label %if.then.74, label %if.else.80

if.then.74:                                       ; preds = %if.else.72
  %54 = load i8*, i8** %fname, align 8
  %55 = load i32, i32* %extract_idx, align 4
  %idxprom75 = sext i32 %55 to i64
  %arrayidx76 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom75
  %type77 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx76, i32 0, i32 0
  %56 = load i8*, i8** %type77, align 8
  %call78 = call i8* @gettext(i8* %56) #6
  %call79 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* %54, i8* %call78)
  store i8* %call79, i8** %filename, align 8
  br label %if.end.88

if.else.80:                                       ; preds = %if.else.72
  %57 = load i8*, i8** %fname, align 8
  %58 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load i32, i32* %extract_idx, align 4
  %idxprom82 = sext i32 %59 to i64
  %arrayidx83 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom82
  %channel_name84 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx83, i32 0, i32 3
  %arrayidx85 = getelementptr inbounds [4 x i8*], [4 x i8*]* %channel_name84, i32 0, i64 %idxprom81
  %60 = load i8*, i8** %arrayidx85, align 8
  %call86 = call i8* @gettext(i8* %60) #6
  %call87 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* %57, i8* %call86)
  store i8* %call87, i8** %filename, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.80, %if.then.74
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.71
  br label %if.end.98

if.else.90:                                       ; preds = %for.body.41
  %61 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %61 to i64
  %62 = load i32, i32* %extract_idx, align 4
  %idxprom92 = sext i32 %62 to i64
  %arrayidx93 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom92
  %channel_name94 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx93, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [4 x i8*], [4 x i8*]* %channel_name94, i32 0, i64 %idxprom91
  %63 = load i8*, i8** %arrayidx95, align 8
  %call96 = call i8* @gettext(i8* %63) #6
  %call97 = call noalias i8* @g_strdup(i8* %call96)
  store i8* %call97, i8** %filename, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.90, %if.end.89
  %64 = load i32, i32* %image_ID.addr, align 4
  %call99 = call i32 @gimp_image_get_resolution(i32 %64, double* %xres, double* %yres)
  %65 = load i32, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 1), align 4
  %tobool100 = icmp ne i32 %65, 0
  br i1 %tobool100, label %if.then.101, label %if.else.132

if.then.101:                                      ; preds = %if.end.98
  %66 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %66 to i64
  %67 = load i32, i32* %extract_idx, align 4
  %idxprom103 = sext i32 %67 to i64
  %arrayidx104 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom103
  %channel_name105 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx104, i32 0, i32 3
  %arrayidx106 = getelementptr inbounds [4 x i8*], [4 x i8*]* %channel_name105, i32 0, i64 %idxprom102
  %68 = load i8*, i8** %arrayidx106, align 8
  %call107 = call i8* @gettext(i8* %68) #6
  store i8* %call107, i8** %layername, align 8
  %69 = load i32, i32* %j, align 4
  %cmp108 = icmp eq i32 %69, 0
  br i1 %cmp108, label %if.then.110, label %if.else.120

if.then.110:                                      ; preds = %if.then.101
  %70 = load i8*, i8** %filename, align 8
  %71 = load i8*, i8** %layername, align 8
  %72 = load i32, i32* %width, align 4
  %73 = load i32, i32* %height, align 4
  %74 = load double, double* %xres, align 8
  %75 = load double, double* %yres, align 8
  %76 = load i32*, i32** %layer_ID_dst.addr, align 8
  %77 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %77 to i64
  %add.ptr111 = getelementptr inbounds i32, i32* %76, i64 %idx.ext
  %arraydecay = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_dst, i32 0, i32 0
  %78 = load i32, i32* %j, align 4
  %idx.ext112 = sext i32 %78 to i64
  %add.ptr113 = getelementptr inbounds %struct._GimpDrawable*, %struct._GimpDrawable** %arraydecay, i64 %idx.ext112
  %arraydecay114 = getelementptr inbounds [4 x %struct._GimpPixelRgn], [4 x %struct._GimpPixelRgn]* %pixel_rgn_dst, i32 0, i32 0
  %79 = load i32, i32* %j, align 4
  %idx.ext115 = sext i32 %79 to i64
  %add.ptr116 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %arraydecay114, i64 %idx.ext115
  %call117 = call i32 @create_new_image(i8* %70, i8* %71, i32 %72, i32 %73, i32 1, double %74, double %75, i32* %add.ptr111, %struct._GimpDrawable** %add.ptr113, %struct._GimpPixelRgn* %add.ptr116)
  %80 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %80 to i64
  %81 = load i32*, i32** %image_ID_dst.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %81, i64 %idxprom118
  store i32 %call117, i32* %arrayidx119, align 4
  br label %if.end.131

if.else.120:                                      ; preds = %if.then.101
  %82 = load i32*, i32** %image_ID_dst.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %82, i64 0
  %83 = load i32, i32* %arrayidx121, align 4
  %84 = load i32, i32* %j, align 4
  %85 = load i8*, i8** %layername, align 8
  %86 = load i32, i32* %width, align 4
  %87 = load i32, i32* %height, align 4
  %arraydecay122 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_dst, i32 0, i32 0
  %88 = load i32, i32* %j, align 4
  %idx.ext123 = sext i32 %88 to i64
  %add.ptr124 = getelementptr inbounds %struct._GimpDrawable*, %struct._GimpDrawable** %arraydecay122, i64 %idx.ext123
  %arraydecay125 = getelementptr inbounds [4 x %struct._GimpPixelRgn], [4 x %struct._GimpPixelRgn]* %pixel_rgn_dst, i32 0, i32 0
  %89 = load i32, i32* %j, align 4
  %idx.ext126 = sext i32 %89 to i64
  %add.ptr127 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %arraydecay125, i64 %idx.ext126
  %call128 = call i32 @create_new_layer(i32 %83, i32 %84, i8* %85, i32 %86, i32 %87, i32 1, %struct._GimpDrawable** %add.ptr124, %struct._GimpPixelRgn* %add.ptr127)
  %90 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %90 to i64
  %91 = load i32*, i32** %layer_ID_dst.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %91, i64 %idxprom129
  store i32 %call128, i32* %arrayidx130, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.120, %if.then.110
  br label %if.end.144

if.else.132:                                      ; preds = %if.end.98
  %92 = load i8*, i8** %filename, align 8
  %93 = load i32, i32* %width, align 4
  %94 = load i32, i32* %height, align 4
  %95 = load double, double* %xres, align 8
  %96 = load double, double* %yres, align 8
  %97 = load i32*, i32** %layer_ID_dst.addr, align 8
  %98 = load i32, i32* %j, align 4
  %idx.ext133 = sext i32 %98 to i64
  %add.ptr134 = getelementptr inbounds i32, i32* %97, i64 %idx.ext133
  %arraydecay135 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_dst, i32 0, i32 0
  %99 = load i32, i32* %j, align 4
  %idx.ext136 = sext i32 %99 to i64
  %add.ptr137 = getelementptr inbounds %struct._GimpDrawable*, %struct._GimpDrawable** %arraydecay135, i64 %idx.ext136
  %arraydecay138 = getelementptr inbounds [4 x %struct._GimpPixelRgn], [4 x %struct._GimpPixelRgn]* %pixel_rgn_dst, i32 0, i32 0
  %100 = load i32, i32* %j, align 4
  %idx.ext139 = sext i32 %100 to i64
  %add.ptr140 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %arraydecay138, i64 %idx.ext139
  %call141 = call i32 @create_new_image(i8* %92, i8* null, i32 %93, i32 %94, i32 1, double %95, double %96, i32* %add.ptr134, %struct._GimpDrawable** %add.ptr137, %struct._GimpPixelRgn* %add.ptr140)
  %101 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %101 to i64
  %102 = load i32*, i32** %image_ID_dst.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %102, i64 %idxprom142
  store i32 %call141, i32* %arrayidx143, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.132, %if.end.131
  %103 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %103)
  %104 = load i8*, i8** %fname, align 8
  call void @g_free(i8* %104)
  %105 = load i32, i32* %tile_height, align 4
  %106 = load i32, i32* %width, align 4
  %mul145 = mul nsw i32 %105, %106
  %conv146 = sext i32 %mul145 to i64
  %call147 = call noalias i8* @g_malloc_n(i64 %conv146, i64 1)
  %107 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %107 to i64
  %arrayidx149 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dst, i32 0, i64 %idxprom148
  store i8* %call147, i8** %arrayidx149, align 8
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.144
  %108 = load i32, i32* %j, align 4
  %inc151 = add nsw i32 %108, 1
  store i32 %inc151, i32* %j, align 4
  br label %for.cond.38

for.end.152:                                      ; preds = %for.cond.38
  store i32 0, i32* %i, align 4
  br label %while.cond.153

while.cond.153:                                   ; preds = %for.end.185, %for.end.152
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %height, align 4
  %cmp154 = icmp slt i32 %109, %110
  br i1 %cmp154, label %while.body.156, label %while.end.190

while.body.156:                                   ; preds = %while.cond.153
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %tile_height, align 4
  %add = add nsw i32 %111, %112
  %sub = sub nsw i32 %add, 1
  %113 = load i32, i32* %height, align 4
  %cmp157 = icmp slt i32 %sub, %113
  br i1 %cmp157, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.156
  %114 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body.156
  %115 = load i32, i32* %height, align 4
  %116 = load i32, i32* %i, align 4
  %sub159 = sub nsw i32 %115, %116
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %114, %cond.true ], [ %sub159, %cond.false ]
  store i32 %cond, i32* %scan_lines, align 4
  %117 = load i8*, i8** %src, align 8
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %width, align 4
  %120 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn_src, i8* %117, i32 0, i32 %118, i32 %119, i32 %120)
  %121 = load i32, i32* %extract_idx, align 4
  %idxprom160 = sext i32 %121 to i64
  %arrayidx161 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom160
  %extract_fun162 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx161, i32 0, i32 4
  %122 = load void (i8*, i32, i32, i8**)*, void (i8*, i32, i32, i8**)** %extract_fun162, align 8
  %123 = load i8*, i8** %src, align 8
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  %bpp163 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %124, i32 0, i32 3
  %125 = load i32, i32* %bpp163, align 4
  %126 = load i32, i32* %scan_lines, align 4
  %127 = load i32, i32* %width, align 4
  %mul164 = mul nsw i32 %126, %127
  %arraydecay165 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dst, i32 0, i32 0
  call void %122(i8* %123, i32 %125, i32 %mul164, i8** %arraydecay165)
  %128 = load i32, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 2), align 4
  %tobool166 = icmp ne i32 %128, 0
  br i1 %tobool166, label %if.then.167, label %if.end.174

if.then.167:                                      ; preds = %cond.end
  %129 = load i8*, i8** %src, align 8
  %130 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  %bpp168 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %130, i32 0, i32 3
  %131 = load i32, i32* %bpp168, align 4
  %132 = load i32, i32* %scan_lines, align 4
  %133 = load i32, i32* %width, align 4
  %mul169 = mul nsw i32 %132, %133
  %arraydecay170 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dst, i32 0, i32 0
  %134 = load i32, i32* %extract_idx, align 4
  %idxprom171 = sext i32 %134 to i64
  %arrayidx172 = getelementptr inbounds [27 x %struct.EXTRACT], [27 x %struct.EXTRACT]* @extract, i32 0, i64 %idxprom171
  %num_images173 = getelementptr inbounds %struct.EXTRACT, %struct.EXTRACT* %arrayidx172, i32 0, i32 2
  %135 = load i32, i32* %num_images173, align 4
  call void @transfer_registration_color(i8* %129, i32 %131, i32 %mul169, i8** %arraydecay170, i32 %135)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.167, %cond.end
  store i32 0, i32* %j, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.183, %if.end.174
  %136 = load i32, i32* %j, align 4
  %137 = load i32, i32* %num_layers, align 4
  %cmp176 = icmp slt i32 %136, %137
  br i1 %cmp176, label %for.body.178, label %for.end.185

for.body.178:                                     ; preds = %for.cond.175
  %138 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %138 to i64
  %arrayidx180 = getelementptr inbounds [4 x %struct._GimpPixelRgn], [4 x %struct._GimpPixelRgn]* %pixel_rgn_dst, i32 0, i64 %idxprom179
  %139 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %139 to i64
  %arrayidx182 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dst, i32 0, i64 %idxprom181
  %140 = load i8*, i8** %arrayidx182, align 8
  %141 = load i32, i32* %i, align 4
  %142 = load i32, i32* %width, align 4
  %143 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %arrayidx180, i8* %140, i32 0, i32 %141, i32 %142, i32 %143)
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.178
  %144 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %144, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.175

for.end.185:                                      ; preds = %for.cond.175
  %145 = load i32, i32* %scan_lines, align 4
  %146 = load i32, i32* %i, align 4
  %add186 = add nsw i32 %146, %145
  store i32 %add186, i32* %i, align 4
  %147 = load i32, i32* %i, align 4
  %conv187 = sitofp i32 %147 to double
  %148 = load i32, i32* %height, align 4
  %conv188 = sitofp i32 %148 to double
  %div = fdiv double %conv187, %conv188
  %call189 = call i32 @gimp_progress_update(double %div)
  br label %while.cond.153

while.end.190:                                    ; preds = %while.cond.153
  %call191 = call i32 @gimp_progress_update(double 1.000000e+00)
  %149 = load i8*, i8** %src, align 8
  call void @g_free(i8* %149)
  store i32 0, i32* %j, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.212, %while.end.190
  %150 = load i32, i32* %j, align 4
  %151 = load i32, i32* %num_layers, align 4
  %cmp193 = icmp slt i32 %150, %151
  br i1 %cmp193, label %for.body.195, label %for.end.214

for.body.195:                                     ; preds = %for.cond.192
  %152 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %152 to i64
  %arrayidx197 = getelementptr inbounds [4 x %struct._GimpDrawable*], [4 x %struct._GimpDrawable*]* %drawable_dst, i32 0, i64 %idxprom196
  %153 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx197, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %153)
  %154 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %154 to i64
  %155 = load i32*, i32** %layer_ID_dst.addr, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %155, i64 %idxprom198
  %156 = load i32, i32* %arrayidx199, align 4
  %157 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %157 to i64
  %158 = load i32*, i32** %layer_ID_dst.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %158, i64 %idxprom200
  %159 = load i32, i32* %arrayidx201, align 4
  %call202 = call i32 @gimp_drawable_width(i32 %159)
  %160 = load i32, i32* %j, align 4
  %idxprom203 = sext i32 %160 to i64
  %161 = load i32*, i32** %layer_ID_dst.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %161, i64 %idxprom203
  %162 = load i32, i32* %arrayidx204, align 4
  %call205 = call i32 @gimp_drawable_height(i32 %162)
  %call206 = call i32 @gimp_drawable_update(i32 %156, i32 0, i32 0, i32 %call202, i32 %call205)
  %163 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %163 to i64
  %164 = load i32*, i32** %layer_ID_dst.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %164, i64 %idxprom207
  %165 = load i32, i32* %arrayidx208, align 4
  %call209 = call i32 @gimp_layer_add_alpha(i32 %165)
  %166 = load i32, i32* %j, align 4
  %idxprom210 = sext i32 %166 to i64
  %arrayidx211 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dst, i32 0, i64 %idxprom210
  %167 = load i8*, i8** %arrayidx211, align 8
  call void @g_free(i8* %167)
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.195
  %168 = load i32, i32* %j, align 4
  %inc213 = add nsw i32 %168, 1
  store i32 %inc213, i32* %j, align 4
  br label %for.cond.192

for.end.214:                                      ; preds = %for.cond.192
  %169 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable_src, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %169)
  %170 = load i32, i32* %num_layers, align 4
  %171 = load i32*, i32** %nlayers.addr, align 8
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.DecoVals, %struct.DecoVals* @decovals, i32 0, i32 1), align 4
  %tobool215 = icmp ne i32 %172, 0
  br i1 %tobool215, label %cond.true.216, label %cond.false.217

cond.true.216:                                    ; preds = %for.end.214
  br label %cond.end.218

cond.false.217:                                   ; preds = %for.end.214
  %173 = load i32, i32* %num_layers, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.217, %cond.true.216
  %cond219 = phi i32 [ 1, %cond.true.216 ], [ %173, %cond.false.217 ]
  store i32 %cond219, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.218, %if.then.23, %if.then.11, %if.then.6
  %174 = load i32, i32* %retval
  ret i32 %174
}

declare void @g_string_printf(%struct._GString*, i8*, ...) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @gimp_image_clean_all(i32) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i32 @gimp_display_new(i32) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_progress_end() #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #4

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #4

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #4

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #4

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_int_combo_box_append(%struct._GimpIntComboBox*, ...) #1

declare void @g_free(i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #4

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #4

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #4

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #4

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @gimp_image_get_filename(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal i32 @create_new_image(i8* %filename, i8* %layername, i32 %width, i32 %height, i32 %type, double %xres, double %yres, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %layername.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %layer_ID.addr = alloca i32*, align 8
  %drawable.addr = alloca %struct._GimpDrawable**, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %image_ID = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %layername, i8** %layername.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  store i32* %layer_ID, i32** %layer_ID.addr, align 8
  store %struct._GimpDrawable** %drawable, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %2 = load i32, i32* %type.addr, align 4
  %call = call i32 @gimp_image_new(i32 %0, i32 %1, i32 %2)
  store i32 %call, i32* %image_ID, align 4
  %3 = load i32, i32* %image_ID, align 4
  %call1 = call i32 @gimp_image_undo_disable(i32 %3)
  %4 = load i32, i32* %image_ID, align 4
  %5 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 @gimp_image_set_filename(i32 %4, i8* %5)
  %6 = load i32, i32* %image_ID, align 4
  %7 = load double, double* %xres.addr, align 8
  %8 = load double, double* %yres.addr, align 8
  %call3 = call i32 @gimp_image_set_resolution(i32 %6, double %7, double %8)
  %9 = load i32, i32* %image_ID, align 4
  %10 = load i8*, i8** %layername.addr, align 8
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %13 = load i32, i32* %type.addr, align 4
  %14 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %call4 = call i32 @create_new_layer(i32 %9, i32 0, i8* %10, i32 %11, i32 %12, i32 %13, %struct._GimpDrawable** %14, %struct._GimpPixelRgn* %15)
  %16 = load i32*, i32** %layer_ID.addr, align 8
  store i32 %call4, i32* %16, align 4
  %17 = load i32, i32* %image_ID, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @create_new_layer(i32 %image_ID, i32 %position, i8* %layername, i32 %width, i32 %height, i32 %type, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %layername.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable**, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %layer_ID = alloca i32, align 4
  %gdtype = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i8* %layername, i8** %layername.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store %struct._GimpDrawable** %drawable, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i32 0, i32* %gdtype, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %gdtype, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 2, i32* %gdtype, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 4, i32* %gdtype, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %layername.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0)) #6
  store i8* %call, i8** %layername.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %2 = load i32, i32* %image_ID.addr, align 4
  %3 = load i8*, i8** %layername.addr, align 8
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %6 = load i32, i32* %gdtype, align 4
  %call3 = call i32 @gimp_layer_new(i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, double 1.000000e+02, i32 0)
  store i32 %call3, i32* %layer_ID, align 4
  %7 = load i32, i32* %image_ID.addr, align 4
  %8 = load i32, i32* %layer_ID, align 4
  %9 = load i32, i32* %position.addr, align 4
  %call4 = call i32 @gimp_image_insert_layer(i32 %7, i32 %8, i32 -1, i32 %9)
  %10 = load i32, i32* %layer_ID, align 4
  %call5 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %10)
  %11 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpDrawable* %call5, %struct._GimpDrawable** %11, align 8
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %13 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %13, align 8
  %15 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %15, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width6, align 4
  %18 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %18, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height7, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %12, %struct._GimpDrawable* %14, i32 0, i32 0, i32 %17, i32 %20, i32 1, i32 0)
  %21 = load i32, i32* %layer_ID, align 4
  ret i32 %21
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @transfer_registration_color(i8* %src, i32 %bpp, i32 %numpix, i8** %dst, i32 %num_channels) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %numpix.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %num_channels.addr = alloca i32, align 4
  %rgb_src = alloca i8*, align 8
  %dsts = alloca [4 x i8*], align 16
  %count = alloca i32, align 4
  %channel = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %red = alloca i8, align 1
  %green = alloca i8, align 1
  %blue = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8** %dst, i8*** %dst.addr, align 8
  store i32 %num_channels, i32* %num_channels.addr, align 4
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %rgb_src, align 8
  %1 = load i32, i32* %numpix.addr, align 4
  store i32 %1, i32* %count, align 4
  %call = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %red, i8* %green, i8* %blue)
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %channel, align 4
  %3 = load i32, i32* %num_channels.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %channel, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i32, i32* %channel, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dsts, i32 0, i64 %idxprom1
  store i8* %6, i8** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %channel, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %9 = load i32, i32* %count, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %count, align 4
  %cmp3 = icmp sgt i32 %9, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %rgb_src, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %11 to i32
  %12 = load i8, i8* %red, align 1
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %13 = load i8*, i8** %rgb_src, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %15 = load i8, i8* %green, align 1
  %conv10 = zext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv9, %conv10
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %16 = load i8*, i8** %rgb_src, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %18 = load i8, i8* %blue, align 1
  %conv16 = zext i8 %18 to i32
  %cmp17 = icmp eq i32 %conv15, %conv16
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.13
  store i32 0, i32* %channel, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.25, %if.then
  %19 = load i32, i32* %channel, align 4
  %20 = load i32, i32* %num_channels.addr, align 4
  %cmp20 = icmp slt i32 %19, %20
  br i1 %cmp20, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.19
  %21 = load i32, i32* %channel, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dsts, i32 0, i64 %idxprom23
  %22 = load i8*, i8** %arrayidx24, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %arrayidx24, align 8
  store i8 -1, i8* %22, align 1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %23 = load i32, i32* %channel, align 4
  %inc26 = add nsw i32 %23, 1
  store i32 %inc26, i32* %channel, align 4
  br label %for.cond.19

for.end.27:                                       ; preds = %for.cond.19
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.13, %land.lhs.true, %while.body
  store i32 0, i32* %channel, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %if.else
  %24 = load i32, i32* %channel, align 4
  %25 = load i32, i32* %num_channels.addr, align 4
  %cmp29 = icmp slt i32 %24, %25
  br i1 %cmp29, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.28
  %26 = load i32, i32* %channel, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [4 x i8*], [4 x i8*]* %dsts, i32 0, i64 %idxprom32
  %27 = load i8*, i8** %arrayidx33, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %arrayidx33, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %28 = load i32, i32* %channel, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* %channel, align 4
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  br label %if.end

if.end:                                           ; preds = %for.end.37, %for.end.27
  %29 = load i32, i32* %bpp.addr, align 4
  %30 = load i8*, i8** %rgb_src, align 8
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %rgb_src, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_image_set_resolution(i32, double, double) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
